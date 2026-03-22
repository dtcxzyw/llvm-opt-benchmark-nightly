// SPDX-License-Identifier: MIT License
// Copyright (c) 2026 Yingwei Zheng
// This file is licensed under the MIT License.
// See the LICENSE file for more information.

#include <llvm/ADT/DenseMap.h>
#include <llvm/IR/AssemblyAnnotationWriter.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalValue.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/Error.h>
#include <llvm/Support/ErrorHandling.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/FormattedStream.h>
#include <llvm/Support/InitLLVM.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/ToolOutputFile.h>
#include <llvm/Support/raw_ostream.h>
#include <cstdlib>

using namespace llvm;

static cl::OptionCategory Category("llvm-relaxed-diff Options");
static cl::opt<std::string> OldFile(cl::Positional, cl::desc("<old>"),
                                    cl::Required,
                                    cl::value_desc("path to old IR"),
                                    cl::cat(Category));
static cl::opt<std::string> NewFile(cl::Positional, cl::desc("<new>"),
                                    cl::Required,
                                    cl::value_desc("path to new IR"),
                                    cl::cat(Category));
static cl::opt<std::string> OldFileOut(cl::Positional,
                                       cl::desc("<old_aligned>"), cl::Required,
                                       cl::value_desc("path to aligned old IR"),
                                       cl::cat(Category));
static cl::opt<std::string> NewFileOut(cl::Positional,
                                       cl::desc("<new_aligned>"), cl::Required,
                                       cl::value_desc("path to aligned new IR"),
                                       cl::cat(Category));

class TypeComparator {
  DenseMap<std::pair<const StructType *, const StructType *>, bool> QueryCache;

  bool isSameTypeImpl(const StructType *OldStruct,
                      const StructType *NewStruct) {
    // Named structs
    if (OldStruct->hasName() && NewStruct->hasName()) {
      StringRef OldName = OldStruct->getName();
      StringRef NewName = NewStruct->getName();
      auto Pos1 = OldName.find_last_of('.');
      auto Pos2 = NewName.find_last_of('.');
      if (Pos1 != StringRef::npos)
        OldName = OldName.substr(0, Pos1);
      if (Pos2 != StringRef::npos)
        NewName = NewName.substr(0, Pos2);
      return OldName == NewName;
    }
    // Named structs vs. anonymous structs
    if (OldStruct->hasName() || NewStruct->hasName())
      return false;
    // Anonymous structs. Compare element types.
    if (OldStruct->isOpaque() || NewStruct->isOpaque())
      return true;
    if (OldStruct->isPacked() != NewStruct->isPacked())
      return false;
    if (OldStruct->getNumElements() != NewStruct->getNumElements())
      return false;
    for (unsigned I = 0, E = OldStruct->getNumElements(); I != E; ++I)
      if (!isSameType(OldStruct->getElementType(I),
                      NewStruct->getElementType(I)))
        return false;
    return true;
  }

public:
  bool isSameType(const Type *OldTy, const Type *NewTy) {
    if (OldTy == NewTy)
      return true;

    if (auto *OldStruct = dyn_cast<StructType>(OldTy)) {
      if (auto *NewStruct = dyn_cast<StructType>(NewTy)) {
        auto CacheKey = std::make_pair(OldStruct, NewStruct);
        auto CacheIt = QueryCache.find(CacheKey);
        if (CacheIt != QueryCache.end())
          return CacheIt->second;
        bool Result = isSameTypeImpl(OldStruct, NewStruct);
        QueryCache[CacheKey] = Result;
        return Result;
      }
    }

    if (auto *OldArray = dyn_cast<ArrayType>(OldTy)) {
      if (auto *NewArray = dyn_cast<ArrayType>(NewTy)) {
        return OldArray->getNumElements() == NewArray->getNumElements() &&
               isSameType(OldArray->getElementType(),
                          NewArray->getElementType());
      }
    }

    return false;
  }
};

class FunctionMatcher {
  Function &OldF;
  Function &NewF;
  Module &OldM;
  Module &NewM;
  LLVMContext &Ctx;
  TypeComparator &Comparator;

  SmallPtrSet<const BasicBlock *, 16> MappedBBs;
  DenseMap<const BasicBlock *, const BasicBlock *> BBMap;
  SmallPtrSet<const Value *, 16> MappedVals;
  DenseMap<const Value *, const Value *> ValMap;

  DenseSet<std::pair<const Instruction *, const Instruction *>>
      PotentialInstPairs;
  DenseSet<std::pair<const BasicBlock *, const BasicBlock *>> PotentialBBPairs;

  bool isIdenticalValue(const Value *OldV, const Value *NewV) {
    if (OldV == NewV)
      return true;

    if (ValMap.lookup(OldV) == NewV)
      return true;

    if (!Comparator.isSameType(OldV->getType(), NewV->getType()))
      return false;

    if (auto *OldBB = dyn_cast<BasicBlock>(OldV))
      if (auto *NewBB = dyn_cast<BasicBlock>(NewV))
        return isIdenticalBB(OldBB, NewBB);

    if (auto *OldGV = dyn_cast<GlobalValue>(OldV))
      if (auto *NewGV = dyn_cast<GlobalValue>(NewV)) {
        if (OldGV->hasName() && NewGV->hasName())
          return OldGV->getName() == NewGV->getName();
      }
    return false;
  }

  bool hasSameSpecialStates(const Instruction *I1, const Instruction *I2) {
    if (const AllocaInst *AI = dyn_cast<AllocaInst>(I1))
      return AI->getAllocatedType() == cast<AllocaInst>(I2)->getAllocatedType();
    if (const LoadInst *LI = dyn_cast<LoadInst>(I1))
      return LI->isVolatile() == cast<LoadInst>(I2)->isVolatile() &&
             LI->getOrdering() == cast<LoadInst>(I2)->getOrdering() &&
             LI->getSyncScopeID() == cast<LoadInst>(I2)->getSyncScopeID();
    if (const StoreInst *SI = dyn_cast<StoreInst>(I1))
      return SI->isVolatile() == cast<StoreInst>(I2)->isVolatile() &&
             SI->getOrdering() == cast<StoreInst>(I2)->getOrdering() &&
             SI->getSyncScopeID() == cast<StoreInst>(I2)->getSyncScopeID();
    if (const CmpInst *CI = dyn_cast<CmpInst>(I1))
      return CI->getPredicate() == cast<CmpInst>(I2)->getPredicate();
    if (const CallInst *CI = dyn_cast<CallInst>(I1))
      return CI->isTailCall() == cast<CallInst>(I2)->isTailCall() &&
             CI->getCallingConv() == cast<CallInst>(I2)->getCallingConv();
    if (const InvokeInst *CI = dyn_cast<InvokeInst>(I1))
      return CI->getCallingConv() == cast<InvokeInst>(I2)->getCallingConv();
    if (const CallBrInst *CI = dyn_cast<CallBrInst>(I1))
      return CI->getCallingConv() == cast<CallBrInst>(I2)->getCallingConv();
    if (const SwitchInst *SI = dyn_cast<SwitchInst>(I1)) {
      for (auto [Case1, Case2] :
           zip(SI->cases(), cast<SwitchInst>(I2)->cases()))
        if (Case1.getCaseValue() != Case2.getCaseValue())
          return false;
      return true;
    }
    if (const InsertValueInst *IVI = dyn_cast<InsertValueInst>(I1))
      return IVI->getIndices() == cast<InsertValueInst>(I2)->getIndices();
    if (const ExtractValueInst *EVI = dyn_cast<ExtractValueInst>(I1))
      return EVI->getIndices() == cast<ExtractValueInst>(I2)->getIndices();
    if (const FenceInst *FI = dyn_cast<FenceInst>(I1))
      return FI->getOrdering() == cast<FenceInst>(I2)->getOrdering() &&
             FI->getSyncScopeID() == cast<FenceInst>(I2)->getSyncScopeID();
    if (const AtomicCmpXchgInst *CXI = dyn_cast<AtomicCmpXchgInst>(I1))
      return CXI->isVolatile() == cast<AtomicCmpXchgInst>(I2)->isVolatile() &&
             CXI->isWeak() == cast<AtomicCmpXchgInst>(I2)->isWeak() &&
             CXI->getSuccessOrdering() ==
                 cast<AtomicCmpXchgInst>(I2)->getSuccessOrdering() &&
             CXI->getFailureOrdering() ==
                 cast<AtomicCmpXchgInst>(I2)->getFailureOrdering() &&
             CXI->getSyncScopeID() ==
                 cast<AtomicCmpXchgInst>(I2)->getSyncScopeID();
    if (const AtomicRMWInst *RMWI = dyn_cast<AtomicRMWInst>(I1))
      return RMWI->getOperation() == cast<AtomicRMWInst>(I2)->getOperation() &&
             RMWI->isVolatile() == cast<AtomicRMWInst>(I2)->isVolatile() &&
             RMWI->getOrdering() == cast<AtomicRMWInst>(I2)->getOrdering() &&
             RMWI->getSyncScopeID() ==
                 cast<AtomicRMWInst>(I2)->getSyncScopeID();
    if (const ShuffleVectorInst *SVI = dyn_cast<ShuffleVectorInst>(I1))
      return SVI->getShuffleMask() ==
             cast<ShuffleVectorInst>(I2)->getShuffleMask();
    if (const GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(I1))
      return GEP->getSourceElementType() ==
             cast<GetElementPtrInst>(I2)->getSourceElementType();
    return true;
  }

  bool isIdenticalInstSlow(const Instruction *OldI, const Instruction *NewI) {
    if (OldI->getOpcode() != NewI->getOpcode())
      return false;
    if (OldI->getNumOperands() != NewI->getNumOperands())
      return false;
    if (!hasSameSpecialStates(OldI, NewI))
      return false;
    for (unsigned I = 0, E = OldI->getNumOperands(); I != E; ++I)
      if (!isIdenticalValue(OldI->getOperand(I), NewI->getOperand(I)))
        return false;
    return true;
  }

  bool newValMatch(const Value *OldV, const Value *NewV) {
    if (OldV == NewV)
      return false;
    if (!(isa<Argument>(OldV) && isa<Argument>(NewV)) &&
        !(isa<Instruction>(OldV) && isa<Instruction>(NewV)))
      return false;
    if (MappedVals.contains(OldV) || MappedVals.contains(NewV))
      return false;
    if (!Comparator.isSameType(OldV->getType(), NewV->getType()))
      return false;
    if (auto *OldArg = dyn_cast<Argument>(OldV))
      if (auto *NewArg = dyn_cast<Argument>(NewV))
        if (OldArg->getArgNo() == NewArg->getArgNo() &&
            OldArg->getName() == NewArg->getName()) {
          MappedVals.insert(OldV);
          MappedVals.insert(NewV);
          ValMap.insert({OldV, NewV});
          return true;
        }
    if (auto *OldI = dyn_cast<Instruction>(OldV))
      if (auto *NewI = dyn_cast<Instruction>(NewV)) {
        if (isIdenticalInstSlow(OldI, NewI)) {
          MappedVals.insert(OldV);
          MappedVals.insert(NewV);
          ValMap.insert({OldV, NewV});
          return true;
        } else {
          PotentialInstPairs.insert({OldI, NewI});
        }
      }
    return false;
  }

  bool newBBMatch(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    if (MappedBBs.contains(OldBB) || MappedBBs.contains(NewBB))
      return false;
    if (!isIdenticalBBSlow(OldBB, NewBB)) {
      PotentialBBPairs.insert({OldBB, NewBB});
      return false;
    }
    for (auto &&[OldI, NewI] : zip(*OldBB, *NewBB)) {
      MappedVals.insert(&OldI);
      MappedVals.insert(&NewI);
      ValMap.insert({&OldI, &NewI});
    }
    MappedBBs.insert(OldBB);
    MappedBBs.insert(NewBB);
    BBMap.insert({OldBB, NewBB});
    return true;
  }

  bool isIdenticalBB(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    return OldBB == NewBB || BBMap.lookup(OldBB) == NewBB;
  }

  bool isIdenticalBBSlow(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    if (OldBB->size() != NewBB->size())
      return false;
    for (auto &&[OldI, NewI] : zip(*OldBB, *NewBB)) {
      if (MappedVals.contains(&OldI) || MappedVals.contains(&NewI)) {
        if (isIdenticalValue(&OldI, &NewI))
          continue;
        return false;
      }
      if (!isIdenticalInstSlow(&OldI, &NewI))
        return false;
    }
    return true;
  }

  bool propagateBBMapping() {
    SmallVector<std::pair<const BasicBlock *, const BasicBlock *>, 16> WorkList(
        BBMap.begin(), BBMap.end());
    bool Modified = false;
    while (!WorkList.empty()) {
      auto [OldBB, NewBB] = WorkList.pop_back_val();
      if (auto *OldPred = OldBB->getUniquePredecessor())
        if (auto *NewPred = NewBB->getUniquePredecessor())
          if (newBBMatch(OldPred, NewPred))
            WorkList.emplace_back(OldPred, NewPred);

      if (auto *OldSucc = OldBB->getUniqueSuccessor())
        if (auto *NewSucc = NewBB->getUniqueSuccessor()) {
          if (newBBMatch(OldSucc, NewSucc))
            WorkList.emplace_back(OldSucc, NewSucc);
          continue;
        }

      // Terminators with identical cond & targets
      if (auto *OldBr = dyn_cast<CondBrInst>(OldBB->getTerminator()))
        if (auto *NewBr = dyn_cast<CondBrInst>(NewBB->getTerminator())) {
          // TODO: match inverse condition and swapped targets
          if (isIdenticalValue(OldBr->getCondition(), NewBr->getCondition())) {
            if (newBBMatch(OldBr->getSuccessor(0), NewBr->getSuccessor(0)))
              WorkList.emplace_back(OldBr->getSuccessor(0),
                                    NewBr->getSuccessor(0));
            if (newBBMatch(OldBr->getSuccessor(1), NewBr->getSuccessor(1)))
              WorkList.emplace_back(OldBr->getSuccessor(1),
                                    NewBr->getSuccessor(1));
          }

          continue;
        }

      if (auto *OldSwitch = dyn_cast<SwitchInst>(OldBB->getTerminator()))
        if (auto *NewSwitch = dyn_cast<SwitchInst>(NewBB->getTerminator())) {
          if (isIdenticalValue(OldSwitch->getCondition(),
                               NewSwitch->getCondition()) &&
              OldSwitch->getNumCases() == NewSwitch->getNumCases()) {
            bool IsValid = true;
            DenseMap<const BasicBlock *, const BasicBlock *> SuccMap;
            for (auto &Case : OldSwitch->cases()) {
              auto *OldSucc = Case.getCaseSuccessor();
              auto NewCase = NewSwitch->findCaseValue(Case.getCaseValue());
              if (NewCase == NewSwitch->case_default()) {
                IsValid = false;
                break;
              }
              auto *NewSucc = NewCase->getCaseSuccessor();
              if (auto *OldMap = SuccMap.lookup(OldSucc)) {
                if (OldMap != NewSucc) {
                  IsValid = false;
                  break;
                }
              }
              SuccMap[OldSucc] = NewSucc;
            }

            if (IsValid) {
              auto *OldDefault = OldSwitch->getDefaultDest();
              auto *NewDefault = NewSwitch->getDefaultDest();
              if (newBBMatch(OldDefault, NewDefault))
                WorkList.emplace_back(OldDefault, NewDefault);
              for (auto &[OldSucc, NewSucc] : SuccMap) {
                if (newBBMatch(OldSucc, NewSucc))
                  WorkList.emplace_back(OldSucc, NewSucc);
              }
            }
          }
          continue;
        }
    }

    return Modified;
  }

  static constexpr uint32_t MaxCost = 10;
  uint32_t computeCost(const Instruction *OldI, const Instruction *NewI) {
    if (OldI->getOpcode() != NewI->getOpcode())
      return MaxCost;
    if (OldI->getNumOperands() != NewI->getNumOperands())
      return MaxCost;
    if (!hasSameSpecialStates(OldI, NewI))
      return MaxCost;
    uint32_t Cost = 0;
    for (unsigned I = 0, E = OldI->getNumOperands(); I != E; ++I)
      if (!isIdenticalValue(OldI->getOperand(I), NewI->getOperand(I)))
        Cost += 1;
    return std::min(Cost, MaxCost);
  }

  uint32_t computeEditDistance(const BasicBlock *OldBB,
                               const BasicBlock *NewBB, SmallVectorImpl<uint32_t> *Solution = nullptr) {
    return 0;
  }

  bool applyMapping(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    SmallVector<uint32_t, 16> Solution;
    computeEditDistance(OldBB, NewBB, &Solution);

    return false;
  }

  bool propagateValMapping() {
    bool Modified = false;
    while (true) {
      bool Changed = false;
      DenseSet<std::pair<const Instruction *, const Instruction *>>
          InstWorkList;
      InstWorkList.swap(PotentialInstPairs);
      for (auto &[OldI, NewI] : InstWorkList) {
        if (newValMatch(OldI, NewI))
          Changed = true;
      }

      if (!Changed)
        break;
      Modified = true;
    }
    return Modified;
  }

public:
  FunctionMatcher(Function &OldF, Function &NewF, TypeComparator &Comparator)
      : OldF(OldF), NewF(NewF), OldM(*OldF.getParent()),
        NewM(*NewF.getParent()), Ctx(OldM.getContext()),
        Comparator(Comparator) {}

  void run() {
    newBBMatch(&OldF.getEntryBlock(), &NewF.getEntryBlock());
    for (uint32_t I = 0, E = std::min(OldF.arg_size(), NewF.arg_size()); I != E;
         ++I) {
      Value *OldArg = OldF.getArg(I);
      Value *NewArg = NewF.getArg(I);
      if (Comparator.isSameType(OldArg->getType(), NewArg->getType()))
        newValMatch(OldArg, NewArg);
    }

    while (true) {
      bool Changed = propagateBBMapping();
      std::pair<const BasicBlock *, const BasicBlock *> BestBBPair = {nullptr,
                                                                      nullptr};
      uint32_t MinCost = UINT32_MAX;
      for (auto &[OldBB, NewBB] : PotentialBBPairs) {
        uint32_t Cost = computeEditDistance(OldBB, NewBB);
        if (Cost < MinCost) {
          MinCost = Cost;
          BestBBPair = {OldBB, NewBB};
        }
      }

      if (BestBBPair.first)
        Changed |= applyMapping(BestBBPair.first, BestBBPair.second);

      Changed |= propagateValMapping();
      if (!Changed)
        break;
    }
  }
};

/// Behave like llvm-dis with --with-annotations.
class CommentWriter : public AssemblyAnnotationWriter {
public:
  void printInfoComment(const Value &V, formatted_raw_ostream &OS) override {
    if (isa<Instruction>(&V) && !V.getType()->isVoidTy() &&
        V.hasNUsesOrMore(2)) {
      OS.PadToColumn(50);
      OS << "; " << V.getNumUses() << "uses";
    }
  }
};

int main(int argc, char **argv) {
  InitLLVM Init{argc, argv};
  cl::HideUnrelatedOptions(Category);
  cl::ParseCommandLineOptions(argc, argv, "diff\n");

  LLVMContext Context;
  SMDiagnostic Err;
  auto OldM = parseIRFile(OldFile, Err, Context);
  if (!OldM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  auto NewM = parseIRFile(NewFile, Err, Context);
  if (!NewM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  TypeComparator Comparator;
  for (auto &OldF : *OldM) {
    if (OldF.empty())
      continue;
    auto *NewF = NewM->getFunction(OldF.getName());
    if (!NewF)
      continue;

    FunctionMatcher Matcher(OldF, *NewF, Comparator);
    Matcher.run();
  }

  // FIXME: Use a new context to rename values to avoid differences in named
  // structs.
  CommentWriter writer;
  std::error_code EC;
  auto OldOut =
      std::make_unique<ToolOutputFile>(OldFileOut, EC, sys::fs::OF_None);
  if (EC) {
    errs() << "Error opening file: " << EC.message() << "\n";
    return EXIT_FAILURE;
  }

  auto NewOut =
      std::make_unique<ToolOutputFile>(NewFileOut, EC, sys::fs::OF_None);
  if (EC) {
    errs() << "Error opening file: " << EC.message() << "\n";
    return EXIT_FAILURE;
  }
  OldM->print(OldOut->os(), &writer);
  NewM->print(NewOut->os(), &writer);

  OldOut->keep();
  NewOut->keep();
  return EXIT_SUCCESS;
}
