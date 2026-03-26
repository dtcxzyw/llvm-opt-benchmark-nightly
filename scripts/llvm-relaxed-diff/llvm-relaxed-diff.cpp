// SPDX-License-Identifier: MIT License
// Copyright (c) 2026 Yingwei Zheng
// This file is licensed under the MIT License.
// See the LICENSE file for more information.

#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/DenseSet.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/IR/AssemblyAnnotationWriter.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalValue.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/ValueSymbolTable.h>
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
#include <algorithm>
#include <cstdlib>

using namespace llvm;

struct InstructionLocation {
  uint32_t BBIndex;
  uint32_t InstIndex;
};

struct FunctionMapping {
  SmallVector<std::pair<uint32_t, uint32_t>, 16> BBMappings;
  SmallVector<std::pair<InstructionLocation, InstructionLocation>, 32>
      InstMappings;
};

static std::string getAlphabeticSuffix(uint32_t Index) {
  std::string Result;
  while (true) {
    Result.push_back(static_cast<char>('a' + Index % 26));
    if (Index < 26)
      break;
    Index = Index / 26 - 1;
  }
  std::reverse(Result.begin(), Result.end());
  return Result;
}

static std::string getUniqueRenamedValueName(Function &F, Value *V,
                                             StringRef BaseName) {
  ValueSymbolTable *VST = F.getValueSymbolTable();
  std::string Prefix =
      BaseName.empty() ? (isa<Instruction>(V) ? "i" : "bb") : BaseName.str();
  for (uint32_t I = 0;; ++I) {
    std::string Candidate = Prefix + "." + getAlphabeticSuffix(I);
    if (!VST || !VST->lookup(Candidate))
      return Candidate;
  }
}

static bool isNameAvailableForTarget(Function &F, StringRef Name,
                                     const Value *Target) {
  if (Name.empty())
    return false;
  ValueSymbolTable *VST = F.getValueSymbolTable();
  if (!VST)
    return true;
  Value *Conflict = VST->lookup(Name);
  return !Conflict || Conflict == Target;
}

static bool canAssignName(const Value &V) {
  if (const auto *I = dyn_cast<Instruction>(&V))
    return !I->getType()->isVoidTy();
  return isa<BasicBlock>(V);
}

static std::string getUniqueSharedValueName(Function &OldF, const Value *OldV,
                                            Function &NewF,
                                            const Value *NewV,
                                            StringRef BaseName) {
  std::string Prefix =
      BaseName.empty() ? (isa<Instruction>(OldV) ? "i" : "bb") : BaseName.str();
  for (uint32_t I = 0;; ++I) {
    std::string Candidate = Prefix + "." + getAlphabeticSuffix(I);
    if (isNameAvailableForTarget(OldF, Candidate, OldV) &&
        isNameAvailableForTarget(NewF, Candidate, NewV))
      return Candidate;
  }
}

static void makeDesiredNameAvailable(Function &F, StringRef DesiredName,
                                     Value &Target) {
  if (DesiredName.empty())
    return;

  ValueSymbolTable *VST = F.getValueSymbolTable();
  if (!VST)
    return;

  Value *Conflict = VST->lookup(DesiredName);
  if (!Conflict || Conflict == &Target || isa<Argument>(Conflict))
    return;
  Conflict->setName(getUniqueRenamedValueName(F, &Target, DesiredName));
}

static StringRef ensureUniquePrintableName(Function &F, Value &V) {
  if (!canAssignName(V))
    return "";

  ValueSymbolTable *VST = F.getValueSymbolTable();
  StringRef Name = V.getName();
  if (!Name.empty() && (!VST || VST->lookup(Name) == &V))
    return Name;

  std::string UniqueName = getUniqueRenamedValueName(F, &V, Name);
  V.setName(UniqueName);
  return V.getName();
}

static void alignValueName(Value &OldV, Value &NewV, Function &OldF,
                           Function &NewF) {
  if (!canAssignName(OldV) || !canAssignName(NewV))
    return;

  StringRef OldName = ensureUniquePrintableName(OldF, OldV);
  if (OldName.empty())
    return;

  if (!isNameAvailableForTarget(NewF, OldName, &NewV)) {
    std::string SharedName =
        getUniqueSharedValueName(OldF, &OldV, NewF, &NewV, OldName);
    OldV.setName(SharedName);
    OldName = ensureUniquePrintableName(OldF, OldV);
  }

  makeDesiredNameAvailable(NewF, OldName, NewV);
  if (!isNameAvailableForTarget(NewF, OldName, &NewV)) {
    std::string SharedName =
        getUniqueSharedValueName(OldF, &OldV, NewF, &NewV, OldName);
    OldV.setName(SharedName);
    OldName = ensureUniquePrintableName(OldF, OldV);
  }

  NewV.setName(OldName);
}

static BasicBlock *getBasicBlockByIndex(Function &F, uint32_t Index) {
  uint32_t Current = 0;
  for (BasicBlock &BB : F) {
    if (Current == Index)
      return &BB;
    ++Current;
  }
  return nullptr;
}

static Instruction *getInstructionByIndex(BasicBlock &BB, uint32_t Index) {
  uint32_t Current = 0;
  for (Instruction &Inst : BB) {
    if (Current == Index)
      return &Inst;
    ++Current;
  }
  return nullptr;
}

static void applyAlignedNames(Function &OldF, Function &NewF,
                              const FunctionMapping &Mapping) {
  for (auto [OldBBIndex, NewBBIndex] : Mapping.BBMappings) {
    auto *OldBB = getBasicBlockByIndex(OldF, OldBBIndex);
    auto *NewBB = getBasicBlockByIndex(NewF, NewBBIndex);
    if (!OldBB || !NewBB)
      continue;
    alignValueName(*OldBB, *NewBB, OldF, NewF);
  }

  for (auto [OldLoc, NewLoc] : Mapping.InstMappings) {
    auto *OldBB = getBasicBlockByIndex(OldF, OldLoc.BBIndex);
    auto *NewBB = getBasicBlockByIndex(NewF, NewLoc.BBIndex);
    if (!OldBB || !NewBB)
      continue;

    auto *OldI = getInstructionByIndex(*OldBB, OldLoc.InstIndex);
    auto *NewI = getInstructionByIndex(*NewBB, NewLoc.InstIndex);
    if (!OldI || !NewI)
      continue;
    alignValueName(*OldI, *NewI, OldF, NewF);
  }
}

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
static cl::opt<bool> Debug("debug-mappings",
                           cl::desc("emit basic block/instruction mappings"),
                           cl::init(false), cl::cat(Category));

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
  TypeComparator &Comparator;

  SmallPtrSet<const BasicBlock *, 16> MappedBBs;
  DenseMap<const BasicBlock *, const BasicBlock *> BBMap;
  SmallPtrSet<const Value *, 16> MappedVals;
  DenseMap<const Value *, const Value *> ValMap;

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

  bool isIdenticalInst(const Instruction *OldI, const Instruction *NewI) {
    if (OldI->getOpcode() != NewI->getOpcode())
      return false;
    if (OldI->getNumOperands() != NewI->getNumOperands())
      return false;
    if (!Comparator.isSameType(OldI->getType(), NewI->getType()))
      return false;
    if (!hasSameSpecialStates(OldI, NewI))
      return false;
    return true;
  }

  bool isIdenticalBB(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    return BBMap.lookup(OldBB) == NewBB;
  }

  void newValMatch(const Value *OldV, const Value *NewV) {
    if (OldV == NewV)
      return;
    if (!(isa<Argument>(OldV) && isa<Argument>(NewV)) &&
        !(isa<Instruction>(OldV) && isa<Instruction>(NewV)))
      return;
    if (MappedVals.contains(OldV) || MappedVals.contains(NewV))
      return;
    if (!Comparator.isSameType(OldV->getType(), NewV->getType()))
      return;
    if (auto *OldArg = dyn_cast<Argument>(OldV))
      if (auto *NewArg = dyn_cast<Argument>(NewV))
        if (OldArg->getArgNo() == NewArg->getArgNo()) {
          MappedVals.insert(OldV);
          MappedVals.insert(NewV);
          ValMap.insert({OldV, NewV});
          return;
        }
    if (auto *OldI = dyn_cast<Instruction>(OldV))
      if (auto *NewI = dyn_cast<Instruction>(NewV)) {
        if (isIdenticalInst(OldI, NewI)) {
          MappedVals.insert(OldV);
          MappedVals.insert(NewV);
          ValMap.insert({OldV, NewV});
          return;
        }
      }
  }

  // Keep substitution costs close to insert+delete so DP prefers alignment
  // for structurally similar instructions.
  static constexpr uint32_t MaxCost = 2;
  uint32_t computeCost(const Instruction *OldI, const Instruction *NewI) {
    if (!isIdenticalInst(OldI, NewI))
      return MaxCost;
    bool HasOperandMismatch = false;
    for (unsigned I = 0, E = OldI->getNumOperands(); I != E; ++I)
      if (!isIdenticalValue(OldI->getOperand(I), NewI->getOperand(I))) {
        HasOperandMismatch = true;
        break;
      }
    return HasOperandMismatch ? 1 : 0;
  }

  template <typename T, typename CostFn>
  uint32_t computeEditDistance(const SmallVectorImpl<T> &OldSeq,
                               const SmallVectorImpl<T> &NewSeq,
                               CostFn &&CostFnImpl,
                               uint32_t InsertDeleteCost = 1,
                               SmallVectorImpl<uint32_t> *Solution = nullptr) {
    return computeEditDistanceWithGapCosts(
        OldSeq, NewSeq,
        [&](const T &OldElem, const T &NewElem) {
          return CostFnImpl(OldElem, NewElem);
        },
        [&](const T &) { return InsertDeleteCost; },
        [&](const T &) { return InsertDeleteCost; }, Solution);
  }

  template <typename T, typename MatchCostFn, typename DeleteCostFn,
            typename InsertCostFn>
  uint32_t computeEditDistanceWithGapCosts(
      const SmallVectorImpl<T> &OldSeq, const SmallVectorImpl<T> &NewSeq,
      MatchCostFn &&MatchCostFnImpl, DeleteCostFn &&DeleteCostFnImpl,
      InsertCostFn &&InsertCostFnImpl,
      SmallVectorImpl<uint32_t> *Solution = nullptr) {
    const uint32_t OldSize = OldSeq.size();
    const uint32_t NewSize = NewSeq.size();
    SmallVector<SmallVector<uint32_t, 16>, 16> DP(
        OldSize + 1, SmallVector<uint32_t, 16>(NewSize + 1));

    DP[0][0] = 0;
    for (uint32_t I = 1; I <= OldSize; ++I)
      DP[I][0] = DP[I - 1][0] + DeleteCostFnImpl(OldSeq[I - 1]);
    for (uint32_t J = 1; J <= NewSize; ++J)
      DP[0][J] = DP[0][J - 1] + InsertCostFnImpl(NewSeq[J - 1]);

    for (uint32_t I = 1; I <= OldSize; ++I) {
      for (uint32_t J = 1; J <= NewSize; ++J) {
        uint32_t MatchCost =
            DP[I - 1][J - 1] + MatchCostFnImpl(OldSeq[I - 1], NewSeq[J - 1]);
        uint32_t DeleteCost = DP[I - 1][J] + DeleteCostFnImpl(OldSeq[I - 1]);
        uint32_t InsertCost = DP[I][J - 1] + InsertCostFnImpl(NewSeq[J - 1]);
        DP[I][J] = std::min(MatchCost, std::min(DeleteCost, InsertCost));
      }
    }

    if (!Solution)
      return DP[OldSize][NewSize];

    Solution->clear();
    Solution->resize(OldSize, UINT32_MAX);
    uint32_t I = OldSize;
    uint32_t J = NewSize;
    while (I != 0 || J != 0) {
      if (I != 0 && J != 0) {
        uint32_t MatchCost =
            DP[I - 1][J - 1] + MatchCostFnImpl(OldSeq[I - 1], NewSeq[J - 1]);
        if (DP[I][J] == MatchCost) {
          (*Solution)[I - 1] = J - 1;
          --I;
          --J;
          continue;
        }
      }

      if (I != 0) {
        uint32_t DeleteCost = DP[I - 1][J] + DeleteCostFnImpl(OldSeq[I - 1]);
        if (DP[I][J] == DeleteCost) {
          --I;
          continue;
        }
      }

      assert(J != 0);
      uint32_t InsertCost = DP[I][J - 1] + InsertCostFnImpl(NewSeq[J - 1]);
      assert(DP[I][J] == InsertCost);
      --J;
    }

    return DP[OldSize][NewSize];
  }

  template <typename T, typename ApplyFn>
  void applyMapping(const SmallVectorImpl<T> &OldSeq,
                    const SmallVectorImpl<T> &NewSeq,
                    const SmallVectorImpl<uint32_t> &Solution,
                    ApplyFn &&ApplyFnImpl) {
    for (uint32_t I = 0, E = OldSeq.size(); I != E; ++I) {
      uint32_t J = Solution[I];
      if (J == UINT32_MAX)
        continue;
      ApplyFnImpl(OldSeq[I], NewSeq[J]);
    }
  }

  void applyMapping(const BasicBlock *OldBB, const BasicBlock *NewBB) {
    if (MappedBBs.contains(OldBB) || MappedBBs.contains(NewBB))
      return;

    SmallVector<const Instruction *, 16> OldInsts;
    SmallVector<const Instruction *, 16> NewInsts;
    for (const Instruction &Inst : *OldBB)
      OldInsts.push_back(&Inst);
    for (const Instruction &Inst : *NewBB)
      NewInsts.push_back(&Inst);

    SmallVector<uint32_t, 16> Solution;
    computeEditDistance(
        OldInsts, NewInsts,
        [&](const Instruction *OldI, const Instruction *NewI) {
          return computeCost(OldI, NewI);
        },
        MaxCost, &Solution);

    MappedBBs.insert(OldBB);
    MappedBBs.insert(NewBB);
    BBMap.insert({OldBB, NewBB});

    applyMapping(OldInsts, NewInsts, Solution,
                 [&](const Instruction *OldI, const Instruction *NewI) {
                   newValMatch(OldI, NewI);
                 });
  }

  FunctionMapping buildMapping() const {
    DenseMap<const BasicBlock *, uint32_t> OldBBIndices;
    DenseMap<const BasicBlock *, uint32_t> NewBBIndices;
    DenseMap<const Instruction *, InstructionLocation> OldInstIndices;
    DenseMap<const Instruction *, InstructionLocation> NewInstIndices;

    uint32_t OldBBIndex = 0;
    for (const BasicBlock &BB : OldF) {
      OldBBIndices.insert({&BB, OldBBIndex});
      uint32_t InstIndex = 0;
      for (const Instruction &Inst : BB) {
        OldInstIndices.insert({&Inst, {OldBBIndex, InstIndex}});
        ++InstIndex;
      }
      ++OldBBIndex;
    }

    uint32_t NewBBIndex = 0;
    for (const BasicBlock &BB : NewF) {
      NewBBIndices.insert({&BB, NewBBIndex});
      uint32_t InstIndex = 0;
      for (const Instruction &Inst : BB) {
        NewInstIndices.insert({&Inst, {NewBBIndex, InstIndex}});
        ++InstIndex;
      }
      ++NewBBIndex;
    }

    FunctionMapping Mapping;
    Mapping.BBMappings.reserve(BBMap.size());
    for (auto &[OldBB, NewBB] : BBMap)
      Mapping.BBMappings.push_back({OldBBIndices.lookup(OldBB),
                                    NewBBIndices.lookup(NewBB)});
    sort(Mapping.BBMappings, [](const auto &LHS, const auto &RHS) {
      if (LHS.first != RHS.first)
        return LHS.first < RHS.first;
      return LHS.second < RHS.second;
    });

    for (auto &[OldV, NewV] : ValMap) {
      auto *OldI = dyn_cast<Instruction>(OldV);
      auto *NewI = dyn_cast<Instruction>(NewV);
      if (!OldI || !NewI)
        continue;
      Mapping.InstMappings.push_back(
          {OldInstIndices.lookup(OldI), NewInstIndices.lookup(NewI)});
    }
    sort(Mapping.InstMappings, [](const auto &LHS, const auto &RHS) {
      if (LHS.first.BBIndex != RHS.first.BBIndex)
        return LHS.first.BBIndex < RHS.first.BBIndex;
      if (LHS.first.InstIndex != RHS.first.InstIndex)
        return LHS.first.InstIndex < RHS.first.InstIndex;
      if (LHS.second.BBIndex != RHS.second.BBIndex)
        return LHS.second.BBIndex < RHS.second.BBIndex;
      return LHS.second.InstIndex < RHS.second.InstIndex;
    });
    return Mapping;
  }

public:
  FunctionMatcher(Function &OldF, Function &NewF, TypeComparator &Comparator)
      : OldF(OldF), NewF(NewF), Comparator(Comparator) {}

  FunctionMapping run() {
    for (uint32_t I = 0, E = std::min(OldF.arg_size(), NewF.arg_size()); I != E;
         ++I) {
      Value *OldArg = OldF.getArg(I);
      Value *NewArg = NewF.getArg(I);
      if (Comparator.isSameType(OldArg->getType(), NewArg->getType()))
        newValMatch(OldArg, NewArg);
    }

    SmallVector<const BasicBlock *, 16> OldBBs;
    SmallVector<const BasicBlock *, 16> NewBBs;
    for (const BasicBlock &BB : OldF)
      OldBBs.push_back(&BB);
    for (const BasicBlock &BB : NewF)
      NewBBs.push_back(&BB);

    SmallVector<uint32_t, 16> BBSolution;
    computeEditDistanceWithGapCosts(
        OldBBs, NewBBs,
        [&](const BasicBlock *OldBB, const BasicBlock *NewBB) {
          SmallVector<const Instruction *, 16> OldInsts;
          SmallVector<const Instruction *, 16> NewInsts;
          for (const Instruction &Inst : *OldBB)
            OldInsts.push_back(&Inst);
          for (const Instruction &Inst : *NewBB)
            NewInsts.push_back(&Inst);
          return computeEditDistance(
              OldInsts, NewInsts,
              [&](const Instruction *OldI, const Instruction *NewI) {
                return computeCost(OldI, NewI);
              },
              MaxCost);
        },
        [&](const BasicBlock *OldBB) {
          return static_cast<uint32_t>(OldBB->size()) * MaxCost;
        },
        [&](const BasicBlock *NewBB) {
          return static_cast<uint32_t>(NewBB->size()) * MaxCost;
        },
        &BBSolution);

    applyMapping(OldBBs, NewBBs, BBSolution,
                 [&](const BasicBlock *OldBB, const BasicBlock *NewBB) {
                   applyMapping(OldBB, NewBB);
                 });

    return buildMapping();
  }
};

/// Behave like llvm-dis with --with-annotations.
class CommentWriter : public AssemblyAnnotationWriter {
  struct FunctionAnnotMapping {
    DenseMap<uint32_t, uint32_t> BBMap;
    DenseMap<uint64_t, uint64_t> InstMap;
  };

  bool DebugEnabled = false;
  DenseMap<const BasicBlock *, uint32_t> BBIndices;
  DenseMap<const Instruction *, uint64_t> InstIndices;
  DenseMap<const Function *, FunctionAnnotMapping> MappingByFunction;

  static uint64_t packInstLocation(uint32_t BBIndex, uint32_t InstIndex) {
    return (static_cast<uint64_t>(BBIndex) << 32) | InstIndex;
  }

  static InstructionLocation unpackInstLocation(uint64_t Packed) {
    return {static_cast<uint32_t>(Packed >> 32),
            static_cast<uint32_t>(Packed & 0xffffffffu)};
  }

public:
  CommentWriter(Module &M,
                const SmallVectorImpl<std::pair<std::string, FunctionMapping>>
                    &FunctionMappings,
                bool ReverseDirection, bool DebugEnabled)
      : DebugEnabled(DebugEnabled) {
    for (Function &F : M) {
      uint32_t BBIndex = 0;
      for (BasicBlock &BB : F) {
        BBIndices.insert({&BB, BBIndex});
        uint32_t InstIndex = 0;
        for (Instruction &Inst : BB) {
          InstIndices.insert({&Inst, packInstLocation(BBIndex, InstIndex)});
          ++InstIndex;
        }
        ++BBIndex;
      }
    }

    for (const auto &[FunctionName, Mapping] : FunctionMappings) {
      Function *F = M.getFunction(FunctionName);
      if (!F || F->empty())
        continue;

      auto &FuncMapping = MappingByFunction[F];
      for (const auto &[OldBBIndex, NewBBIndex] : Mapping.BBMappings) {
        uint32_t Src = ReverseDirection ? NewBBIndex : OldBBIndex;
        uint32_t Dst = ReverseDirection ? OldBBIndex : NewBBIndex;
        FuncMapping.BBMap.insert({Src, Dst});
      }

      for (const auto &[OldLoc, NewLoc] : Mapping.InstMappings) {
        uint64_t Src = ReverseDirection
                           ? packInstLocation(NewLoc.BBIndex, NewLoc.InstIndex)
                           : packInstLocation(OldLoc.BBIndex, OldLoc.InstIndex);
        uint64_t Dst = ReverseDirection
                           ? packInstLocation(OldLoc.BBIndex, OldLoc.InstIndex)
                           : packInstLocation(NewLoc.BBIndex, NewLoc.InstIndex);
        FuncMapping.InstMap.insert({Src, Dst});
      }
    }
  }

  void emitBasicBlockStartAnnot(const BasicBlock *BB,
                                formatted_raw_ostream &OS) override {
    if (!DebugEnabled)
      return;

    auto BBIt = BBIndices.find(BB);
    if (BBIt == BBIndices.end())
      return;

    auto FuncIt = MappingByFunction.find(BB->getParent());
    if (FuncIt == MappingByFunction.end())
      return;

    auto MappedIt = FuncIt->second.BBMap.find(BBIt->second);
    if (MappedIt == FuncIt->second.BBMap.end())
      return;

    OS << "\t; map bb " << BBIt->second << " -> " << MappedIt->second << "\n";
  }

  void emitInstructionAnnot(const Instruction *I,
                            formatted_raw_ostream &OS) override {
    if (!DebugEnabled)
      return;

    auto InstIt = InstIndices.find(I);
    if (InstIt == InstIndices.end())
      return;

    auto FuncIt = MappingByFunction.find(I->getFunction());
    if (FuncIt == MappingByFunction.end())
      return;

    auto MappedIt = FuncIt->second.InstMap.find(InstIt->second);
    if (MappedIt == FuncIt->second.InstMap.end())
      return;

    InstructionLocation CurLoc = unpackInstLocation(InstIt->second);
    InstructionLocation MappedLoc = unpackInstLocation(MappedIt->second);
    OS << "\t; map inst " << CurLoc.BBIndex << "." << CurLoc.InstIndex << " -> "
       << MappedLoc.BBIndex << "." << MappedLoc.InstIndex << "\n";
  }

  void printInfoComment(const Value &V, formatted_raw_ostream &OS) override {
    if (isa<Instruction>(&V) && !V.getType()->isVoidTy() && !V.hasOneUse()) {
      OS.PadToColumn(50);
      OS << "; " << V.getNumUses() << " uses";
    }
  }
};

int main(int argc, char **argv) {
  InitLLVM Init{argc, argv};
  cl::HideUnrelatedOptions(Category);
  cl::ParseCommandLineOptions(argc, argv, "diff\n");

  LLVMContext MatchContext;
  SMDiagnostic Err;
  auto OldM = parseIRFile(OldFile, Err, MatchContext);
  if (!OldM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  auto NewM = parseIRFile(NewFile, Err, MatchContext);
  if (!NewM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  SmallVector<std::pair<std::string, FunctionMapping>, 16> FunctionMappings;
  TypeComparator Comparator;
  for (auto &OldF : *OldM) {
    if (OldF.empty())
      continue;
    auto *NewF = NewM->getFunction(OldF.getName());
    if (!NewF)
      continue;

    FunctionMatcher Matcher(OldF, *NewF, Comparator);
    FunctionMappings.emplace_back(OldF.getName().str(), Matcher.run());
  }

  LLVMContext OldPrintContext;
  auto OldOutM = parseIRFile(OldFile, Err, OldPrintContext);
  if (!OldOutM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  LLVMContext NewPrintContext;
  auto NewOutM = parseIRFile(NewFile, Err, NewPrintContext);
  if (!NewOutM) {
    Err.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  for (auto &[FunctionName, Mapping] : FunctionMappings) {
    auto *OldF = OldOutM->getFunction(FunctionName);
    auto *NewF = NewOutM->getFunction(FunctionName);
    if (!OldF || !NewF || OldF->empty() || NewF->empty())
      continue;
    applyAlignedNames(*OldF, *NewF, Mapping);
  }

  CommentWriter OldWriter(*OldOutM, FunctionMappings, false, Debug);
  CommentWriter NewWriter(*NewOutM, FunctionMappings, true, Debug);
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
  OldOutM->setModuleIdentifier("");
  NewOutM->setModuleIdentifier("");
  OldOutM->setSourceFileName("");
  NewOutM->setSourceFileName("");
  OldOutM->print(OldOut->os(), &OldWriter);
  NewOutM->print(NewOut->os(), &NewWriter);

  OldOut->keep();
  NewOut->keep();
  return EXIT_SUCCESS;
}
