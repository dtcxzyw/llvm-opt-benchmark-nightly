Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Passes?download=true
inline.NumInlined: 1569
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"struct.llvh::detail::DenseSetEmpty" = type { i8 }
%"struct.std::pair.137" = type <{ %"class.llvh::DenseMapIterator.135", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator.135" = type { ptr, ptr }
%"class.llvh::SmallSetVector" = type { %"class.llvh::SetVector" }
%"class.llvh::SetVector" = type { %"class.llvh::SmallDenseSet", %"class.llvh::SmallVector.31" }
%"class.llvh::SmallDenseSet" = type { %"class.llvh::detail::DenseSetImpl" }
%"class.llvh::detail::DenseSetImpl" = type { %"class.llvh::SmallDenseMap" }
%"class.llvh::SmallDenseMap" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.29" }
%"struct.llvh::AlignedCharArrayUnion.29" = type { %"struct.llvh::AlignedCharArray.30" }
%"struct.llvh::AlignedCharArray.30" = type { [128 x i8] }
%"class.llvh::SmallVector.31" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.32" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.32" = type { [16 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.hermes::DominanceInfo" = type { %"class.llvh::DominatorTreeBase" }
%"class.llvh::DominatorTreeBase" = type { %"class.llvh::SmallVector.33", %"class.llvh::DenseMap", ptr, ptr, i8, i32 }
%"class.llvh::SmallVector.33" = type { %"class.llvh::SmallVectorImpl.34", %"struct.llvh::SmallVectorStorage.37" }
%"class.llvh::SmallVectorImpl.34" = type { %"class.llvh::SmallVectorTemplateBase.35" }
%"class.llvh::SmallVectorTemplateBase.35" = type { %"class.llvh::SmallVectorTemplateCommon.36" }
%"class.llvh::SmallVectorTemplateCommon.36" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.37" = type { [1 x %"struct.llvh::AlignedCharArrayUnion.38"] }
%"struct.llvh::AlignedCharArrayUnion.38" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.hermes::PostOrderAnalysis" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector.40" }
%"class.llvh::SmallVector.40" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.41" }
%"struct.llvh::SmallVectorStorage.41" = type { [8 x %"struct.llvh::AlignedCharArrayUnion"] }
%"class.llvh::SmallVector.42" = type { %"class.llvh::SmallVectorImpl.34", %"struct.llvh::SmallVectorStorage.43" }
%"struct.llvh::SmallVectorStorage.43" = type { [16 x %"struct.llvh::AlignedCharArrayUnion.38"] }
%"class.llvh::SmallVector.44" = type { %"class.llvh::SmallVectorImpl.45", %"struct.llvh::SmallVectorStorage.48" }
%"class.llvh::SmallVectorImpl.45" = type { %"class.llvh::SmallVectorTemplateBase.46" }
%"class.llvh::SmallVectorTemplateBase.46" = type { %"class.llvh::SmallVectorTemplateCommon.47" }
%"class.llvh::SmallVectorTemplateCommon.47" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.48" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.49"] }
%"struct.llvh::AlignedCharArrayUnion.49" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.50" = type { %"class.llvh::SmallVectorImpl.51", %"struct.llvh::SmallVectorStorage.54" }
%"class.llvh::SmallVectorImpl.51" = type { %"class.llvh::SmallVectorTemplateBase.52" }
%"class.llvh::SmallVectorTemplateBase.52" = type { %"class.llvh::SmallVectorTemplateCommon.53" }
%"class.llvh::SmallVectorTemplateCommon.53" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.54" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.55"] }
%"struct.llvh::AlignedCharArrayUnion.55" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallPtrSet" = type { %"class.llvh::SmallPtrSetImpl.base", [4 x ptr] }
%"class.llvh::SmallPtrSetImpl.base" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.llvh::DenseMap.77" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallVector.82" = type { %"class.llvh::SmallVectorImpl.83", %"struct.llvh::SmallVectorStorage.86" }
%"class.llvh::SmallVectorImpl.83" = type { %"class.llvh::SmallVectorTemplateBase.84" }
%"class.llvh::SmallVectorTemplateBase.84" = type { %"class.llvh::SmallVectorTemplateCommon.85" }
%"class.llvh::SmallVectorTemplateCommon.85" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.86" = type { [2 x %"struct.llvh::AlignedCharArrayUnion.87"] }
%"struct.llvh::AlignedCharArrayUnion.87" = type { %"struct.llvh::AlignedCharArray.6" }
%"struct.llvh::AlignedCharArray.6" = type { [16 x i8] }
%"class.llvh::SmallVector.91" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.92" }
%"struct.llvh::SmallVectorStorage.92" = type { [4 x %"struct.llvh::AlignedCharArrayUnion"] }
%"class.llvh::SmallVector.93" = type { %"class.llvh::SmallVectorImpl.94", %"struct.llvh::SmallVectorStorage.97" }
%"class.llvh::SmallVectorImpl.94" = type { %"class.llvh::SmallVectorTemplateBase.95" }
%"class.llvh::SmallVectorTemplateBase.95" = type { %"class.llvh::SmallVectorTemplateCommon.96" }
%"class.llvh::SmallVectorTemplateCommon.96" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.97" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.98"] }
%"struct.llvh::AlignedCharArrayUnion.98" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.99" = type { %"class.llvh::SmallVectorImpl.100", %"struct.llvh::SmallVectorStorage.103" }
%"class.llvh::SmallVectorImpl.100" = type { %"class.llvh::SmallVectorTemplateBase.101" }
%"class.llvh::SmallVectorTemplateBase.101" = type { %"class.llvh::SmallVectorTemplateCommon.102" }
%"class.llvh::SmallVectorTemplateCommon.102" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.103" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.104"] }
%"struct.llvh::AlignedCharArrayUnion.104" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.105" = type { %"class.llvh::SmallVectorImpl.34", %"struct.llvh::SmallVectorStorage.106" }
%"struct.llvh::SmallVectorStorage.106" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.38"] }
%"struct.llvh::AlignedCharArrayUnion.140" = type { %"struct.llvh::AlignedCharArray.30" }

$_ZN6hermes3hbc13LoadConstantsD0Ev = comdat any

$_ZN6hermes3hbc14LoadParametersD0Ev = comdat any

$_ZN6hermes3hbc23LowerLoadStoreFrameInstD0Ev = comdat any

$_ZN6hermes3hbc19LowerArgumentsArrayD0Ev = comdat any

$_ZN6hermes3hbc19DedupReifyArgumentsD0Ev = comdat any

$_ZN6hermes3hbc17LowerConstructionD0Ev = comdat any

$_ZN6hermes3hbc10LowerCallsD0Ev = comdat any

$_ZN6hermes3hbc19RecreateCheapValuesD0Ev = comdat any

$_ZN6hermes3hbc26LoadConstantValueNumberingD0Ev = comdat any

$_ZN6hermes3hbc14SpillRegistersD0Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

$_ZN6hermes3hbc25LowerSwitchIntoJumpTablesD0Ev = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE16shrink_and_clearEv = comdat any

$_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj = comdat any

@.str = private unnamed_addr constant [10 x i8] c"arguments\00", align 1, !guid !12
@.str.2 = private unnamed_addr constant [44 x i8] c"CreateArguments used for a non-Instruction.\00", align 1, !guid !13
@.str.3 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1, !guid !14
@_ZTVN6hermes3hbc13LoadConstantsE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc13LoadConstantsD0Ev, ptr @_ZN6hermes3hbc13LoadConstants13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !15
@_ZTVN6hermes3hbc14LoadParametersE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc14LoadParametersD0Ev, ptr @_ZN6hermes3hbc14LoadParameters13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !16
@_ZTVN6hermes3hbc23LowerLoadStoreFrameInstE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc23LowerLoadStoreFrameInstD0Ev, ptr @_ZN6hermes3hbc23LowerLoadStoreFrameInst13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !17
@_ZTVN6hermes3hbc19LowerArgumentsArrayE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc19LowerArgumentsArrayD0Ev, ptr @_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !18
@_ZTVN6hermes3hbc19DedupReifyArgumentsE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc19DedupReifyArgumentsD0Ev, ptr @_ZN6hermes3hbc19DedupReifyArguments13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !19
@_ZTVN6hermes3hbc17LowerConstructionE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc17LowerConstructionD0Ev, ptr @_ZN6hermes3hbc17LowerConstruction13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !20
@_ZTVN6hermes3hbc10LowerCallsE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc10LowerCallsD0Ev, ptr @_ZN6hermes3hbc10LowerCalls13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !21
@_ZTVN6hermes3hbc19RecreateCheapValuesE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc19RecreateCheapValuesD0Ev, ptr @_ZN6hermes3hbc19RecreateCheapValues13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !22
@_ZTVN6hermes3hbc26LoadConstantValueNumberingE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc26LoadConstantValueNumberingD0Ev, ptr @_ZN6hermes3hbc26LoadConstantValueNumbering13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !23
@_ZTVN6hermes3hbc14SpillRegistersE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc14SpillRegistersD0Ev, ptr @_ZN6hermes3hbc14SpillRegisters13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !24
@_ZTVN6hermes3hbc25LowerSwitchIntoJumpTablesE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3hbc25LowerSwitchIntoJumpTablesD0Ev, ptr @_ZN6hermes3hbc25LowerSwitchIntoJumpTables13runOnFunctionEPNS_8FunctionE] }, align 8, !guid !25

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc13LoadConstants20operandMustBeLiteralEPNS_11InstructionEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !147 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37    ; 6 uses
  switch i8 %i.b, label %bb.d [
    i8 27, label %.thread
    i8 28, label %.thread
    i8 106, label %.thread
    i8 54, label %.thread
    i8 53, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge71 [
    i32 0, label %.thread
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #13
  %i.d = load i8, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp eq i8 %i.d, 121
  br i1 %i.e, label %.thread, label %.critedge71

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.b, 80
  %i.g = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.b, -43
  %i.i = icmp ult i8 %i.h, -4
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %2, label %.critedge71 [
    i32 2, label %bb.g
    i32 3, label %.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = icmp eq i8 %i.b, 41
  br i1 %i.j, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #13 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !37
  %.not = icmp eq i8 %i.l, 114
  br i1 %.not, label %bb.i, label %.critedge71

bb.i:                                             ; preds = %bb.h
  %i.m = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !149, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %.critedge71

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !45 ; 2 uses
  %i.s = fptoui double %i.r to i32                ; 2 uses
  %i.t = uitofp i32 %i.s to double
  %i.u = fcmp oeq double %i.r, %i.t
  %i.v = icmp ne i32 %i.s, -1
  %or.cond.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i, label %.thread, label %.critedge71

.critedge71:                                      ; preds = %bb.c, %bb.b, %bb.h, %bb.i, %bb.j, %bb.f
  br label %.thread

bb.k:                                             ; preds = %bb.e
  %i.w = add i8 %i.b, -35
  %i.x = icmp ult i8 %i.w, 4
  %i.y = icmp eq i32 %2, 2
  %or.cond5 = and i1 %i.y, %i.x
  br i1 %or.cond5, label %bb.l, label %.critedge7

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #13
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !37
  %i.ab = icmp eq i8 %i.aa, 116
  br i1 %i.ab, label %.thread, label %.critedge15.sink.split

.critedge7:                                       ; preds = %bb.k
  %i.ac = add i8 %i.b, -45
  %i.ad = icmp ult i8 %i.ac, 4
  %i.ae = icmp eq i32 %2, 1                       ; 2 uses
  %or.cond9 = and i1 %i.ae, %i.ad
  br i1 %or.cond9, label %bb.m, label %.critedge11

bb.m:                                             ; preds = %.critedge7
  %i.af = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #13
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !37
  %i.ah = icmp eq i8 %i.ag, 116
  br i1 %i.ah, label %.thread, label %.critedge11

.critedge11:                                      ; preds = %.critedge7, %bb.m
  %i.ai = phi i1 [ true, %bb.m ], [ %i.ae, %.critedge7 ] ; 3 uses
  %i.aj = load i8, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 44
  %or.cond13 = and i1 %i.ai, %i.ak
  br i1 %or.cond13, label %bb.n, label %.critedge15

bb.n:                                             ; preds = %.critedge11
  %i.al = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #13
  %i.am = load i8, ptr %i.al, align 8, !tbaa !37
  %i.an = icmp eq i8 %i.am, 116
  br i1 %i.an, label %.thread, label %.critedge15.sink.split

.critedge15.sink.split:                           ; preds = %bb.n, %bb.l
  %.ph = phi i1 [ false, %bb.l ], [ %i.ai, %bb.n ]
  %i.ao = load i8, ptr %i.a, align 8, !tbaa !37
  br label %.critedge15

.critedge15:                                      ; preds = %.critedge15.sink.split, %.critedge11
  %i.ap = phi i1 [ %i.ai, %.critedge11 ], [ %.ph, %.critedge15.sink.split ] ; 3 uses
  %i.aq = phi i8 [ %i.aj, %.critedge11 ], [ %i.ao, %.critedge15.sink.split ] ; 9 uses
  %i.ar = icmp eq i8 %i.aq, 43
  %i.as = icmp eq i32 %2, 4
  %or.cond17 = and i1 %i.as, %i.ar
  %i.at = icmp eq i8 %i.aq, 59
  %or.cond105 = or i1 %i.at, %or.cond17
  br i1 %or.cond105, label %.thread, label %bb.o

bb.o:                                             ; preds = %.critedge15
  %i.au = icmp eq i8 %i.aq, 87
  %or.cond21 = icmp ugt i32 %2, 1
  %or.cond72 = and i1 %or.cond21, %i.au
  br i1 %or.cond72, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq i8 %i.aq, 93
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  switch i32 %2, label %bb.r [
    i32 2, label %.thread
    i32 0, label %.thread
  ]

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = add i8 %i.aq, -90
  %i.ax = icmp ult i8 %i.aw, 8
  %or.cond25 = and i1 %i.ap, %i.ax
  br i1 %or.cond25, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp eq i8 %i.aq, 98
  %.not111 = xor i1 %i.g, true
  %i.az = icmp eq i8 %i.aq, 65
  %or.cond29 = and i1 %i.ap, %i.az
  %i.ba = icmp eq i8 %i.aq, 4
  %or.cond27109 = or i1 %i.ay, %i.ba
  %i.bb = and i1 %or.cond27109, %.not111
  %or.cond107 = or i1 %or.cond29, %i.bb
  br i1 %or.cond107, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp eq i8 %i.aq, 58
  %or.cond33 = and i1 %i.ap, %i.bc
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %.critedge71, %bb.g, %bb.j, %bb.f, %bb.t, %bb.s, %bb.r, %bb.q, %bb.q, %bb.o, %.critedge15, %bb.n, %bb.m, %bb.l, %bb.d, %bb.c
  %.2 = phi i1 [ true, %bb.q ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %.critedge15 ], [ true, %bb.j ], [ true, %bb.o ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.s ], [ false, %.critedge71 ], [ %or.cond33, %bb.t ], [ true, %bb.g ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc13LoadConstants13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 !guid !152 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc25LowerSwitchIntoJumpTables18lowerIntoJumpTableEPNS_10SwitchInstE:bb.a

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit, %bb.l
  %i.bv = phi i32 [ %.pre.i40, %bb.l ], [ %i.bt, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !89
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = ptrtoint ptr %i.az to i64
  store i64 %i.bz, ptr %i.by, align 1
  %i.ca = load i32, ptr %i.q, align 8, !tbaa !90
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !90
  %.sroa.speculated46 = call i32 @llvm.umin.i32(i32 %i.bf, i32 %.06070) ; 4 uses
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.071, i32 %i.bf) ; 3 uses
  %i.cc = add nuw i32 %.03172, 1                  ; 2 uses
  %.not = icmp eq i32 %i.cc, %i.l
  br i1 %.not, label %.critedge35, label %.lr.ph, !llvm.loop !280

.critedge35:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit
  %i.cd = sub i32 %.sroa.speculated, %.sroa.speculated46 ; 3 uses
  %i.ce = icmp eq i32 %.sroa.speculated, %.sroa.speculated46
  %i.cf = icmp eq i32 %i.cd, -1
  %or.cond64 = or i1 %i.ce, %i.cf
  br i1 %or.cond64, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.critedge35
  %i.cg = udiv i32 %i.cd, %i.l
  %i.ch = icmp ugt i32 %i.cg, 5
  %i.ci = icmp ult i32 %i.l, 10
  %or.cond = or i1 %i.ci, %i.ch
  br i1 %or.cond, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1) #13
  %i.cj = call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  %i.ck = call noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  %i.cl = uitofp i32 %.sroa.speculated46 to double
  %i.cm = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.cl) #13
  %i.cn = add nuw i32 %i.cd, 1
  %i.co = uitofp i32 %i.cn to double
  %i.cp = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.co) #13
  %i.cq = call noundef ptr @_ZN6hermes9IRBuilder19createSwitchImmInstEPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) #13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = icmp eq ptr %i.cq, null
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %spec.select = select i1 %i.cs, ptr null, ptr %i.ct
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef %spec.select) #13
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %.lr.ph, %bb.j, %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel, %bb.b, %.lr.ph.preheader, %bb.c, %bb.d, %bb.n, %.critedge35, %bb.m
  %.5 = phi i1 [ false, %bb.m ], [ true, %bb.n ], [ false, %.critedge35 ], [ false, %.lr.ph.preheader ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel ], [ false, %bb.e ], [ false, %bb.j ], [ false, %.lr.ph ], [ false, %bb.h ], [ false, %bb.i ]
  %i.cu = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.p
  br i1 %i.cv, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cu) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cw = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.m
  br i1 %i.cx, label %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.cw) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit
  %.6 = phi i1 [ %.5, %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.6
}

declare noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19createSwitchImmInstEPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc13LoadConstantsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !282 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14LoadParametersD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !283 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23LowerLoadStoreFrameInstD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !284 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19LowerArgumentsArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !285 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19DedupReifyArgumentsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !286 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc17LowerConstructionD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !287 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc10LowerCallsD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !guid !288 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19RecreateCheapValuesD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !guid !289 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc26LoadConstantValueNumberingD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !guid !290 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14SpillRegistersD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !guid !291 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !292 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc25LowerSwitchIntoJumpTablesD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !293 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef ptr @_ZN6hermes9IRBuilder28createHBCGetGlobalObjectInstEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.137") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !294 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 8                ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 9 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02745.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !132

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp eq ptr %i.v, inttoptr (i64 -16 to ptr)
  %i.aa = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.w, ptr %.02946.i.i
  %i.ab = add i32 %.047.i.i, 1
  %i.ac = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ac, %i.q                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100 ; 2 uses
  %i.ag = icmp eq ptr %i.k, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i, !prof !133, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !146
  %i.ah = lshr i32 %i.b, 1                        ; 2 uses
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.i, 3
  %.not.i.i6 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i6, label %bb.f, label %bb.e, !prof !102

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.al = shl i32 %i.i, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !98
  %.neg.i.i = xor i32 %i.ah, -1
  %.neg13.i.i = add i32 %i.i, %.neg.i.i
  %i.ao = sub i32 %.neg13.i.i, %i.an
  %i.ap = lshr i32 %i.i, 3
  %.not10.i.i = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !102

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i7 = phi i32 [ %i.al, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %.sink.i.i7)
  %i.aq = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %1, align 8
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.ar = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 3 uses
  %i.as = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.b, %bb.f ]
  %i.at = add i32 %i.as, 2
  store i32 %i.at, ptr %1, align 8
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.av = icmp eq ptr %i.au, inttoptr (i64 -8 to ptr)
  br i1 %i.av, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !98
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !98
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %2, align 8, !tbaa !100
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !100
  %i.ba = load i32, ptr %1, align 8
  %i.bb = and i32 %i.ba, 1
  %.not.i.i.i.i8 = icmp eq i32 %i.bb, 0           ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = select i1 %.not.i.i.i.i8, ptr %i.bc, ptr %i.d
  %i.be = load i32, ptr %i.g, align 8
  %i.bf = select i1 %.not.i.i.i.i8, i32 %i.be, i32 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit
  %.sink37 = phi i32 [ %i.bf, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.d ]
  %.sink35 = phi ptr [ %i.bd, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.d ]
  %.sink34 = phi ptr [ %i.ar, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.s, %bb.b ], [ %i.ae, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.bg = zext i32 %.sink37 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sink35, i64 %i.bg
  store ptr %.sink34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bi, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !298 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, i32 %i.g, i32 16  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02745.i = and i32 %i.o, %i.p                  ; 2 uses
  %i.q = zext nneg i32 %.02745.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100  ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !132

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.u = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.d ], [ %i.r, %bb.b ] ; 2 uses
  %.02748.i = phi i32 [ %.027.i, %bb.d ], [ %.02745.i, %bb.b ]
  %.047.i = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.w = icmp eq ptr %i.u, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02946.i, null
  %i.x = select i1 %.not.i, ptr %i.v, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.u, inttoptr (i64 -16 to ptr)
  %i.z = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.v, ptr %.02946.i
  %i.aa = add i32 %.047.i, 1
  %i.ab = add i32 %.047.i, %.02748.i
  %.027.i = and i32 %i.ab, %i.p                   ; 2 uses
  %i.ac = zext i32 %.027.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  %i.af = icmp eq ptr %i.j, %i.ae
  br i1 %i.af, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !133, !llvm.loop !3

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ], [ %i.r, %bb.b ], [ %i.ad, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !146
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !302 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.140", align 8 ; 8 uses
  %i.a = icmp ugt i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 4
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.o, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 8 uses
  %i.p = load i32, ptr %0, align 8
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.027, 16
  br i1 %i.r, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %magicptr = ptrtoint ptr %i.t to i64
  switch i64 %magicptr, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.ai, %bb.ai, %bb.aj
  %.1.15 = phi ptr [ %.1.14, %bb.ai ], [ %.1.14, %bb.ai ], [ %i.ay, %bb.aj ] ; 2 uses
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, -2
  store i32 %4, ptr %0, align 8
  %5 = zext i32 %.027 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #16 ; 2 uses
  store ptr %7, ptr %i.s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %.027, ptr %8, align 8
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 1                             ; 2 uses
  store i32 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %11, align 4, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i32 %10, 0            ; 2 uses
  %12 = select i1 %.not.i.i.i.i.i, ptr %7, ptr %i.s ; 3 uses
  %13 = select i1 %.not.i.i.i.i.i, i32 %.027, i32 16
  %14 = zext i32 %13 to i64
  %.idx.i.i = shl nuw nsw i64 %14, 3              ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %.idx.i.i
  %16 = add nsw i64 %.idx.i.i, -8                 ; 2 uses
  %17 = lshr exact i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %xtraiter = and i64 %18, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %19, %.lr.ph.i.i.prol ], [ %12, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !100
  %19 = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !299

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %12, %.lr.ph.i.i.preheader ], [ %19, %.lr.ph.i.i.prol ]
  %20 = icmp ult i64 %16, 56
  br i1 %20, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %28, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !100
  %21 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %21, align 8, !tbaa !100
  %22 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %22, align 8, !tbaa !100
  %23 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %23, align 8, !tbaa !100
  %24 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %24, align 8, !tbaa !100
  %25 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %25, align 8, !tbaa !100
  %26 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %26, align 8, !tbaa !100
  %27 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %27, align 8, !tbaa !100
  %28 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64 ; 2 uses
  %.not.i.i31.7 = icmp eq ptr %28, %15
  br i1 %.not.i.i31.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not20.i = icmp eq ptr %2, %.1.15
  br i1 %.not20.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i, %63
  %.021.i = phi ptr [ %64, %63 ], [ %2, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i ] ; 2 uses
  %29 = load ptr, ptr %.021.i, align 8, !tbaa !100 ; 4 uses
  %magicptr.i = ptrtoint ptr %29 to i64           ; 2 uses
  switch i64 %magicptr.i, label %30 [
    i64 -8, label %63
    i64 -16, label %63
  ]

30:                                               ; preds = %.lr.ph.i
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 1
  %.not.i.i.i.i15.i = icmp eq i32 %32, 0          ; 2 uses
  %33 = load ptr, ptr %i.s, align 8
  %34 = select i1 %.not.i.i.i.i15.i, ptr %33, ptr %i.s ; 2 uses
  %35 = load i32, ptr %8, align 8
  %36 = select i1 %.not.i.i.i.i15.i, i32 %35, i32 16 ; 2 uses
  %37 = icmp ne i32 %36, 0
  call void @llvm.assume(i1 %37)
  %38 = trunc i64 %magicptr.i to i32              ; 2 uses
  %39 = lshr i32 %38, 4
  %40 = lshr i32 %38, 9
  %41 = xor i32 %39, %40
  %42 = add i32 %36, -1                           ; 2 uses
  %.02745.i.i.i = and i32 %42, %41                ; 2 uses
  %43 = zext nneg i32 %.02745.i.i.i to i64
  %44 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %43 ; 3 uses
  %45 = load ptr, ptr %44, align 8, !tbaa !100    ; 2 uses
  %46 = icmp eq ptr %29, %45
  br i1 %46, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !132

.lr.ph.i.i.i:                                     ; preds = %30, %52
  %47 = phi ptr [ %59, %52 ], [ %45, %30 ]        ; 2 uses
  %48 = phi ptr [ %58, %52 ], [ %44, %30 ]        ; 2 uses
  %.02748.i.i.i = phi i32 [ %.027.i.i.i, %52 ], [ %.02745.i.i.i, %30 ]
  %.047.i.i.i = phi i32 [ %55, %52 ], [ 1, %30 ]  ; 2 uses
  %.02946.i.i.i = phi ptr [ %spec.select.i.i.i, %52 ], [ null, %30 ] ; 4 uses
  %49 = icmp eq ptr %47, inttoptr (i64 -8 to ptr)
  br i1 %49, label %50, label %52, !prof !102

50:                                               ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02946.i.i.i, null
  %51 = select i1 %.not.i.i.i, ptr %48, ptr %.02946.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

52:                                               ; preds = %.lr.ph.i.i.i
  %53 = icmp eq ptr %47, inttoptr (i64 -16 to ptr)
  %54 = icmp eq ptr %.02946.i.i.i, null
  %or.cond.not.i.i.i = select i1 %53, i1 %54, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %48, ptr %.02946.i.i.i
  %55 = add i32 %.047.i.i.i, 1
  %56 = add i32 %.047.i.i.i, %.02748.i.i.i
  %.027.i.i.i = and i32 %56, %42                  ; 2 uses
  %57 = zext i32 %.027.i.i.i to i64
  %58 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %57 ; 3 uses
  %59 = load ptr, ptr %58, align 8, !tbaa !100    ; 2 uses
  %60 = icmp eq ptr %29, %59
  br i1 %60, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !133, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %52, %50, %30
  %.sink.i.i.i = phi ptr [ %51, %50 ], [ %44, %30 ], [ %58, %52 ]
  store ptr %29, ptr %.sink.i.i.i, align 8, !tbaa !100
  %61 = load i32, ptr %0, align 8
  %62 = add i32 %61, 2
  store i32 %62, ptr %0, align 8
  br label %63

63:                                               ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %.lr.ph.i, %.lr.ph.i
  %64 = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %64, %.1.15
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i, !llvm.loop !300

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %63, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ap

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %2, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.1 = phi ptr [ %2, %bb.e ], [ %2, %bb.e ], [ %i.u, %bb.f ] ; 4 uses
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %.0.ptr.1, align 8, !tbaa !100 ; 2 uses
  %magicptr.1 = ptrtoint ptr %i.v to i64
  switch i64 %magicptr.1, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %.1, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.1.1 = phi ptr [ %.1, %bb.g ], [ %.1, %bb.g ], [ %i.w, %bb.h ] ; 4 uses
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %.0.ptr.2, align 8, !tbaa !100 ; 2 uses
  %magicptr.2 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.2, label %bb.j [
    i64 -8, label %bb.k
    i64 -16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store ptr %i.x, ptr %.1.1, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.1.2 = phi ptr [ %.1.1, %bb.i ], [ %.1.1, %bb.i ], [ %i.y, %bb.j ] ; 4 uses
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %.0.ptr.3, align 8, !tbaa !100 ; 2 uses
  %magicptr.3 = ptrtoint ptr %i.z to i64
  switch i64 %magicptr.3, label %bb.l [
    i64 -8, label %bb.m
    i64 -16, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store ptr %i.z, ptr %.1.2, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k
  %.1.3 = phi ptr [ %.1.2, %bb.k ], [ %.1.2, %bb.k ], [ %i.aa, %bb.l ] ; 4 uses
  %.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %.0.ptr.4, align 8, !tbaa !100 ; 2 uses
  %magicptr.4 = ptrtoint ptr %i.ab to i64
  switch i64 %magicptr.4, label %bb.n [
    i64 -8, label %bb.o
    i64 -16, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  store ptr %i.ab, ptr %.1.3, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.3, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.m
  %.1.4 = phi ptr [ %.1.3, %bb.m ], [ %.1.3, %bb.m ], [ %i.ac, %bb.n ] ; 4 uses
  %.0.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %.0.ptr.5, align 8, !tbaa !100 ; 2 uses
  %magicptr.5 = ptrtoint ptr %i.ad to i64
  switch i64 %magicptr.5, label %bb.p [
    i64 -8, label %bb.q
    i64 -16, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  store ptr %i.ad, ptr %.1.4, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.4, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.o
  %.1.5 = phi ptr [ %.1.4, %bb.o ], [ %.1.4, %bb.o ], [ %i.ae, %bb.p ] ; 4 uses
  %.0.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %.0.ptr.6, align 8, !tbaa !100 ; 2 uses
  %magicptr.6 = ptrtoint ptr %i.af to i64
  switch i64 %magicptr.6, label %bb.r [
    i64 -8, label %bb.s
    i64 -16, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  store ptr %i.af, ptr %.1.5, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.5, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %.1.6 = phi ptr [ %.1.5, %bb.q ], [ %.1.5, %bb.q ], [ %i.ag, %bb.r ] ; 4 uses
  %.0.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %.0.ptr.7, align 8, !tbaa !100 ; 2 uses
  %magicptr.7 = ptrtoint ptr %i.ah to i64
  switch i64 %magicptr.7, label %bb.t [
    i64 -8, label %bb.u
    i64 -16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  store ptr %i.ah, ptr %.1.6, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.6, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.s
  %.1.7 = phi ptr [ %.1.6, %bb.s ], [ %.1.6, %bb.s ], [ %i.ai, %bb.t ] ; 4 uses
  %.0.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %.0.ptr.8, align 8, !tbaa !100 ; 2 uses
  %magicptr.8 = ptrtoint ptr %i.aj to i64
  switch i64 %magicptr.8, label %bb.v [
    i64 -8, label %bb.w
    i64 -16, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  store ptr %i.aj, ptr %.1.7, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.7, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.u
  %.1.8 = phi ptr [ %.1.7, %bb.u ], [ %.1.7, %bb.u ], [ %i.ak, %bb.v ] ; 4 uses
  %.0.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %.0.ptr.9, align 8, !tbaa !100 ; 2 uses
  %magicptr.9 = ptrtoint ptr %i.al to i64
  switch i64 %magicptr.9, label %bb.x [
    i64 -8, label %bb.y
    i64 -16, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store ptr %i.al, ptr %.1.8, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %.1.8, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w
  %.1.9 = phi ptr [ %.1.8, %bb.w ], [ %.1.8, %bb.w ], [ %i.am, %bb.x ] ; 4 uses
  %.0.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %.0.ptr.10, align 8, !tbaa !100 ; 2 uses
  %magicptr.10 = ptrtoint ptr %i.an to i64
  switch i64 %magicptr.10, label %bb.z [
    i64 -8, label %bb.aa
    i64 -16, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  store ptr %i.an, ptr %.1.9, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.9, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.y
  %.1.10 = phi ptr [ %.1.9, %bb.y ], [ %.1.9, %bb.y ], [ %i.ao, %bb.z ] ; 4 uses
  %.0.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %.0.ptr.11, align 8, !tbaa !100 ; 2 uses
  %magicptr.11 = ptrtoint ptr %i.ap to i64
  switch i64 %magicptr.11, label %bb.ab [
    i64 -8, label %bb.ac
    i64 -16, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ap, ptr %.1.10, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.10, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.aa
  %.1.11 = phi ptr [ %.1.10, %bb.aa ], [ %.1.10, %bb.aa ], [ %i.aq, %bb.ab ] ; 4 uses
  %.0.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %.0.ptr.12, align 8, !tbaa !100 ; 2 uses
  %magicptr.12 = ptrtoint ptr %i.ar to i64
  switch i64 %magicptr.12, label %bb.ad [
    i64 -8, label %bb.ae
    i64 -16, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ar, ptr %.1.11, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %.1.11, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ac
  %.1.12 = phi ptr [ %.1.11, %bb.ac ], [ %.1.11, %bb.ac ], [ %i.as, %bb.ad ] ; 4 uses
  %.0.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %.0.ptr.13, align 8, !tbaa !100 ; 2 uses
  %magicptr.13 = ptrtoint ptr %i.at to i64
  switch i64 %magicptr.13, label %bb.af [
    i64 -8, label %bb.ag
    i64 -16, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  store ptr %i.at, ptr %.1.12, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %.1.12, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ae
  %.1.13 = phi ptr [ %.1.12, %bb.ae ], [ %.1.12, %bb.ae ], [ %i.au, %bb.af ] ; 4 uses
  %.0.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %.0.ptr.14, align 8, !tbaa !100 ; 2 uses
  %magicptr.14 = ptrtoint ptr %i.av to i64
  switch i64 %magicptr.14, label %bb.ah [
    i64 -8, label %bb.ai
    i64 -16, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.av, ptr %.1.13, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.13, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ag
  %.1.14 = phi ptr [ %.1.13, %bb.ag ], [ %.1.13, %bb.ag ], [ %i.aw, %bb.ah ] ; 4 uses
  %.0.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = load ptr, ptr %.0.ptr.15, align 8, !tbaa !100 ; 2 uses
  %magicptr.15 = ptrtoint ptr %i.ax to i64
  switch i64 %magicptr.15, label %bb.aj [
    i64 -8, label %.lr.ph.i.i.preheader
    i64 -16, label %.lr.ph.i.i.preheader
  ]

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ax, ptr %.1.14, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.14, i64 8
  br label %.lr.ph.i.i.preheader

65:                                               ; preds = %bb.c
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %66, align 8, !tbaa !146 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %67 = icmp ult i32 %.027, 17
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = zext i32 %.027 to i64
  %70 = shl nuw nsw i64 %69, 3
  %71 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %70) #16 ; 2 uses
  store ptr %71, ptr %66, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = load i32, ptr %0, align 8
  %72 = and i32 %.pre, 1
  br label %73

73:                                               ; preds = %65, %68
  %74 = phi i32 [ %.027, %68 ], [ %.sroa.6.0.copyload, %65 ]
  %75 = phi ptr [ %71, %68 ], [ %.sroa.0.0.copyload, %65 ]
  %76 = phi i32 [ %72, %68 ], [ 1, %65 ]          ; 2 uses
  %77 = zext i32 %.sroa.6.0.copyload to i64
  %.idx = shl nuw nsw i64 %77, 3
  %78 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx
  store i32 %76, ptr %0, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %79, align 4, !tbaa !98
  %.not.i.i.i.i.i34 = icmp eq i32 %76, 0          ; 2 uses
  %80 = select i1 %.not.i.i.i.i.i34, ptr %75, ptr %66 ; 3 uses
  %81 = select i1 %.not.i.i.i.i.i34, i32 %74, i32 16 ; 2 uses
  %82 = zext i32 %81 to i64
  %.idx.i.i35 = shl nuw nsw i64 %82, 3            ; 2 uses
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 %.idx.i.i35
  %.not6.i.i36 = icmp eq i32 %81, 0
  br i1 %.not6.i.i36, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %73
  %84 = add nsw i64 %.idx.i.i35, -8               ; 2 uses
  %85 = lshr exact i64 %84, 3
  %86 = add nuw nsw i64 %85, 1
  %xtraiter111 = and i64 %86, 7                   ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol

.lr.ph.i.i37.prol:                                ; preds = %.lr.ph.i.i37.preheader, %.lr.ph.i.i37.prol
  %.07.i.i38.prol = phi ptr [ %87, %.lr.ph.i.i37.prol ], [ %80, %.lr.ph.i.i37.preheader ] ; 2 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i37.prol ], [ 0, %.lr.ph.i.i37.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i38.prol, align 8, !tbaa !100
  %87 = getelementptr inbounds nuw i8, ptr %.07.i.i38.prol, i64 8 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol, !llvm.loop !301

.lr.ph.i.i37.prol.loopexit:                       ; preds = %.lr.ph.i.i37.prol, %.lr.ph.i.i37.preheader
  %.07.i.i38.unr = phi ptr [ %80, %.lr.ph.i.i37.preheader ], [ %87, %.lr.ph.i.i37.prol ]
  %88 = icmp ult i64 %84, 56
  br i1 %88, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i37.prol.loopexit, %bb.ak
  %.07.i.i38 = phi ptr [ %95, %bb.ak ], [ %.07.i.i38.unr, %.lr.ph.i.i37.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i38, align 8, !tbaa !100
  %89 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %89, align 8, !tbaa !100
  %90 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %90, align 8, !tbaa !100
  %91 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %91, align 8, !tbaa !100
  %92 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %92, align 8, !tbaa !100
  %93 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %93, align 8, !tbaa !100
  %94 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %94, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !100
  %95 = getelementptr inbounds nuw i8, ptr %.07.i.i38, i64 64 ; 2 uses
  %.not.i.i39.7 = icmp eq ptr %95, %83
  br i1 %.not.i.i39.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40, label %bb.ak, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40: ; preds = %.lr.ph.i.i37.prol.loopexit, %bb.ak, %73
  %.not20.i41 = icmp eq i32 %.sroa.6.0.copyload, 0
  br i1 %.not20.i41, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit58, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40, %125
  %.021.i43 = phi ptr [ %126, %125 ], [ %.sroa.0.0.copyload, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40 ] ; 2 uses
  %96 = load ptr, ptr %.021.i43, align 8, !tbaa !100 ; 4 uses
  %magicptr.i44 = ptrtoint ptr %96 to i64         ; 2 uses
  switch i64 %magicptr.i44, label %bb.al [
    i64 -8, label %125
    i64 -16, label %125
  ]

bb.al:                                            ; preds = %.lr.ph.i42
  %97 = load i32, ptr %0, align 8
  %98 = and i32 %97, 1
  %.not.i.i.i.i15.i46 = icmp eq i32 %98, 0        ; 2 uses
  %.sroa.0.0.copyload.a = load ptr, ptr %66, align 8
  %99 = select i1 %.not.i.i.i.i15.i46, ptr %.sroa.0.0.copyload.a, ptr %66 ; 2 uses
  %.sroa.6.0.copyload.a = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %100 = select i1 %.not.i.i.i.i15.i46, i32 %.sroa.6.0.copyload.a, i32 16 ; 2 uses
  %101 = icmp ne i32 %100, 0
  tail call void @llvm.assume(i1 %101)
  %102 = trunc i64 %magicptr.i44 to i32           ; 2 uses
  %103 = lshr i32 %102, 4
  %104 = lshr i32 %102, 9
  %105 = xor i32 %103, %104
  %106 = add i32 %100, -1                         ; 2 uses
  %.02745.i.i.i47 = and i32 %106, %105            ; 2 uses
  %107 = zext nneg i32 %.02745.i.i.i47 to i64
  %108 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 %107 ; 3 uses
  %109 = load ptr, ptr %108, align 8, !tbaa !100  ; 2 uses
  %110 = icmp eq ptr %96, %109
  br i1 %110, label %bb.ao, label %.lr.ph.i.i.i48, !prof !132

.lr.ph.i.i.i48:                                   ; preds = %bb.al, %bb.an
  %111 = phi ptr [ %121, %bb.an ], [ %109, %bb.al ] ; 2 uses
  %112 = phi ptr [ %120, %bb.an ], [ %108, %bb.al ] ; 2 uses
  %.02748.i.i.i49 = phi i32 [ %.027.i.i.i54, %bb.an ], [ %.02745.i.i.i47, %bb.al ]
  %.047.i.i.i50 = phi i32 [ %117, %bb.an ], [ 1, %bb.al ] ; 2 uses
  %.02946.i.i.i51 = phi ptr [ %spec.select.i.i.i53, %bb.an ], [ null, %bb.al ] ; 4 uses
  %113 = icmp eq ptr %111, inttoptr (i64 -8 to ptr)
  br i1 %113, label %bb.am, label %bb.an, !prof !102

bb.am:                                            ; preds = %.lr.ph.i.i.i48
  %.not.i.i.i57 = icmp eq ptr %.02946.i.i.i51, null
  %114 = select i1 %.not.i.i.i57, ptr %112, ptr %.02946.i.i.i51
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i.i48
  %115 = icmp eq ptr %111, inttoptr (i64 -16 to ptr)
  %116 = icmp eq ptr %.02946.i.i.i51, null
  %or.cond.not.i.i.i52 = select i1 %115, i1 %116, i1 false
  %spec.select.i.i.i53 = select i1 %or.cond.not.i.i.i52, ptr %112, ptr %.02946.i.i.i51
  %117 = add i32 %.047.i.i.i50, 1
  %118 = add i32 %.047.i.i.i50, %.02748.i.i.i49
  %.027.i.i.i54 = and i32 %118, %106              ; 2 uses
  %119 = zext i32 %.027.i.i.i54 to i64
  %120 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 %119 ; 3 uses
  %121 = load ptr, ptr %120, align 8, !tbaa !100  ; 2 uses
  %122 = icmp eq ptr %96, %121
  br i1 %122, label %bb.ao, label %.lr.ph.i.i.i48, !prof !133, !llvm.loop !3

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sink.i.i.i56 = phi ptr [ %114, %bb.am ], [ %108, %bb.al ], [ %120, %bb.an ]
  store ptr %96, ptr %.sink.i.i.i56, align 8, !tbaa !100
  %123 = load i32, ptr %0, align 8
  %124 = add i32 %123, 2
  store i32 %124, ptr %0, align 8
  br label %125

125:                                              ; preds = %bb.ao, %.lr.ph.i42, %.lr.ph.i42
  %126 = getelementptr inbounds nuw i8, ptr %.021.i43, i64 8 ; 2 uses
  %.not.i45 = icmp eq ptr %126, %78
  br i1 %.not.i45, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit58, label %.lr.ph.i42, !llvm.loop !300

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit58: ; preds = %125, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i40
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit58, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !guid !305 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 4 uses
  %i.b = lshr i32 %i.a, 1                         ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false) ; 2 uses
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %or.cond = icmp eq i32 %i.d, 28
  %spec.store.select = select i1 %or.cond, i32 64, i32 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %i.g = trunc i32 %i.a to i1                     ; 2 uses
  %i.h = icmp ult i32 %.0, 17
  %or.cond3 = select i1 %i.g, i1 %i.h, i1 false
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %or.cond3, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ne i32 %.0, %.pre
  %or.cond16.not = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond16.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %.0, %bb.d ], [ %.pre, %bb.c ]
  %i.k = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !98
  %.not.i.i.i.i = icmp eq i32 %i.k, 0             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %.not.i.i.i.i, ptr %i.n, ptr %i.m ; 3 uses
  %i.p = select i1 %.not.i.i.i.i, i32 %i.j, i32 16 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.q, 3               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.s = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1
  %xtraiter24 = and i64 %i.u, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8 ; 2 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !303

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.w = icmp ult i64 %i.s, 56
  br i1 %i.w, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.x, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.y, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.z, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aa, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ab, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ac, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ad, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !4

bb.e:                                             ; preds = %bb.d
  %i.af = and i32 %i.a, 1
  %.not.i11 = icmp eq i32 %i.af, 0
  br i1 %.not.i11, label %bb.f, label %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !107
  tail call void @_ZdlPv(ptr noundef %i.ah) #13
  br label %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.e, %bb.f
  %i.ai = icmp ugt i32 %.0, 16
  br i1 %i.ai, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre4.i = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.g:                                             ; preds = %_ZN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = zext i32 %.0 to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #16 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8
  store i32 %.0, ptr %.phi.trans.insert, align 8
  %.pre.i = load i32, ptr %0, align 8
  %i.ap = and i32 %.pre.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.aq = phi i32 [ %.0, %bb.g ], [ %.pre4.i, %._crit_edge.i ]
  %i.ar = phi ptr [ %i.ao, %bb.g ], [ %.pre2.i, %._crit_edge.i ]
  %i.as = phi i32 [ %i.ap, %bb.g ], [ 1, %._crit_edge.i ] ; 2 uses
  store i32 %i.as, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i32 %i.as, 0          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = select i1 %.not.i.i.i.i.i, ptr %i.ar, ptr %i.au ; 3 uses
  %i.aw = select i1 %.not.i.i.i.i.i, i32 %i.aq, i32 16 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx.i.i = shl nuw nsw i64 %i.ax, 3            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.az = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.prol ], [ %i.av, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !304

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.az, 56
  br i1 %i.bd, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bg, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bh, align 8, !tbaa !100
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bi, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bj, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bk, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.ay
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !310 {
_ZN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit:
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!99 = !{!"p1 _ZTSN6hermes11InstructionE", !29, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!30, !10, i64 12}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!"long", !9, i64 0}
!105 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes11InstructionEEE", !29, i64 0}
!106 = !{!"_ZTSN4llvh13SmallDenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE8LargeRepE", !105, i64 0, !10, i64 8}
!107 = !{!106, !105, i64 0}
!108 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !47, i64 0}
!109 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !108, i64 0}
!110 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !109, i64 0}
!111 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !30, i64 0}
!112 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !111, i64 0}
!113 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !112, i64 0}
!114 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !9, i64 0}
!115 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !113, i64 0, !114, i64 16}
!116 = !{!"_ZTSN6hermes11InstructionE", !110, i64 0, !36, i64 16, !84, i64 56, !115, i64 64, !52, i64 112, !67, i64 120, !10, i64 128}
!117 = !{!116, !84, i64 56}
!118 = !{!"any p2 pointer", !29, i64 0}
!119 = !{!"_ZTSN6hermes4Pass8PassKindE", !9, i64 0}
!120 = !{!"_ZTSN4llvh9StringRefE", !66, i64 0, !104, i64 8}
!121 = !{!"_ZTSN6hermes4PassE", !119, i64 8, !120, i64 16}
!122 = !{!"_ZTSN6hermes12FunctionPassE", !121, i64 0}
!123 = !{!"p1 _ZTSN6hermes3hbc20HVMRegisterAllocatorE", !29, i64 0}
!124 = !{i64 8}
!125 = !{!"vtable pointer", !8, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!"llvm.loop.peeled.count", i32 1}
!128 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjPN6hermes11InstructionEEE", !29, i64 0}
!129 = !{!"_ZTSN4llvh8DenseMapIjPN6hermes11InstructionENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEE", !128, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!130 = !{!129, !128, i64 0}
!131 = !{!129, !10, i64 16}
!132 = !{!"branch_weights", i32 1999, i32 1}
!133 = !{!"branch_weights", i32 1, i32 0}
!134 = !{!129, !10, i64 8}
!135 = !{!129, !10, i64 12}
!136 = !{!27, !27, i64 0}
!137 = !{!"p1 _ZTSN6hermes8FunctionE", !29, i64 0}
!138 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !53, i64 0}
!139 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !138, i64 0}
!140 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !108, i64 0}
!141 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !140, i64 0}
!142 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !141, i64 0}
!143 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !142, i64 0}
!144 = !{!"_ZTSN6hermes10BasicBlockE", !139, i64 0, !36, i64 16, !143, i64 56, !137, i64 72}
!145 = !{!144, !137, i64 72}
!146 = !{!105, !105, i64 0}
!147 = !{i64 -2875019157926897693}
!148 = !{!"_ZTSN6hermes11LiteralBoolE", !38, i64 0, !39, i64 40}
!149 = !{!148, !39, i64 40}
!150 = distinct !{!150, !88}
!151 = distinct !{!151, !88}
!152 = !{i64 5290342419967554090}
!153 = !{i64 2705105765259877725}
!154 = !{!80, !70, i64 224}
!155 = !{!70, !70, i64 0}
!156 = !{!80, !39, i64 188}
!157 = !{i64 -5464192654373617006}
!158 = distinct !{!158, !88}
!159 = distinct !{!159, !88}
!160 = !{i64 5107031842427063589}
!161 = !{ptr @_ZN6hermes3hbc23LowerLoadStoreFrameInst8getScopeERNS_9IRBuilderEPNS_8VariableEPNS_17ScopeCreationInstE}
!162 = distinct !{!162, i1 true, !"_ZN6hermes14TerminatorInst10successorsEv"}
!163 = distinct !{!163, !162, !"_ZN6hermes14TerminatorInst10successorsEv: argument 0"}
!164 = !{i64 7344279150377860918}
!165 = !{!163}
!166 = distinct !{!166, i1 true, !"_ZN6hermes14TerminatorInst10successorsEv"}
!167 = distinct !{!167, !166, !"_ZN6hermes14TerminatorInst10successorsEv: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_"}
!169 = distinct !{!169, !168, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_: argument 0"}
!170 = distinct !{!170, !88}
!171 = distinct !{!171, !103}
!172 = distinct !{!172, !88}
!173 = distinct !{!173, i1 true, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_"}
!174 = distinct !{!174, !173, !"_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_: argument 0"}
!175 = distinct !{!175, !88}
!176 = distinct !{!176, !88}
!177 = distinct !{!177, !88}
!178 = !{i64 3109061044327406754}
!179 = !{!167}
!180 = !{!169}
!181 = !{!39, !39, i64 0}
!182 = !{!174}
!183 = !{!63, !63, i64 0}
!184 = !{!104, !104, i64 0}
!185 = !{!66, !66, i64 0}
!186 = distinct !{!186, i1 true, !"_ZN6hermes17PostOrderAnalysis6rbeginEv"}
!187 = distinct !{!187, !186, !"_ZN6hermes17PostOrderAnalysis6rbeginEv: argument 0"}
!188 = distinct !{!188, i1 true, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6rbeginEv"}
!189 = distinct !{!189, !188, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6rbeginEv: argument 0"}
!190 = distinct !{!190, i1 true, !"_ZN6hermes17PostOrderAnalysis4rendEv"}
!191 = distinct !{!191, !190, !"_ZN6hermes17PostOrderAnalysis4rendEv: argument 0"}
!192 = distinct !{!192, i1 true, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE4rendEv"}
!193 = distinct !{!193, !192, !"_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE4rendEv: argument 0"}
!194 = distinct !{!194, !103}
!195 = distinct !{!195, !88}
!196 = distinct !{!196, !88}
!197 = !{i64 -5884934411283457972}
!198 = !{!"p2 _ZTSN6hermes10BasicBlockE", !118, i64 0}
!199 = !{!198, !198, i64 0}
!200 = !{!189, !187}
!201 = !{!193, !191}
!202 = !{!84, !84, i64 0}
!203 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE17_Vector_impl_dataE", !198, i64 0, !198, i64 8, !198, i64 16}
!204 = !{!203, !198, i64 0}
!205 = !{!203, !198, i64 16}
!206 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EEEE", !29, i64 0}
!207 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !206, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!208 = !{!207, !10, i64 16}
!209 = !{!207, !206, i64 0}
!210 = !{!"p1 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !29, i64 0}
!211 = !{!210, !210, i64 0}
!212 = !{!"p2 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !118, i64 0}
!213 = !{!"_ZTSNSt12_Vector_baseIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_Vector_impl_dataE", !212, i64 0, !212, i64 8, !212, i64 16}
!214 = !{!213, !212, i64 0}
!215 = !{!213, !212, i64 16}
!216 = !{!"p1 _ZTSN6hermes21HBCReifyArgumentsInstE", !29, i64 0}
!217 = !{!216, !216, i64 0}
!218 = distinct !{!218, !88}
!219 = !{i64 2146878189906901262}
!220 = distinct !{null}
!221 = distinct !{!221, !88, !127}
!222 = !{i64 2364447317254330125}
!223 = !{!"_ZTSN6hermes3hbc10LowerCallsE", !122, i64 0, !123, i64 32}
!224 = !{!223, !123, i64 32}
!225 = distinct !{!225, !88}
!226 = distinct !{!226, i1 true, !"_ZN4llvh15SmallPtrSetImplIPN6hermes11InstructionEE6insertES3_"}
!227 = distinct !{!227, !226, !"_ZN4llvh15SmallPtrSetImplIPN6hermes11InstructionEE6insertES3_: argument 0"}
!228 = distinct !{!228, !88}
!229 = !{i64 2865323124471538902}
!230 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !118, i64 0, !118, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!231 = !{!230, !118, i64 0}
!232 = !{!230, !118, i64 8}
!233 = !{!230, !10, i64 16}
!234 = !{!230, !10, i64 20}
!235 = !{!230, !10, i64 24}
!236 = !{!"_ZTSN6hermes3hbc19RecreateCheapValuesE", !122, i64 0, !123, i64 32}
!237 = !{!236, !123, i64 32}
!238 = !{!227}
!239 = !{i64 2545922944043306437}
!240 = !{!"_ZTSN6hermes3hbc26LoadConstantValueNumberingE", !122, i64 0, !123, i64 32}
!241 = !{!240, !123, i64 32}
!242 = !{!"_ZTSSt4pairIjPN6hermes11InstructionEE", !10, i64 0, !99, i64 8}
!243 = !{!242, !99, i64 8}
!244 = !{i64 -7865055566677971679}
!245 = !{i64 3938707310735022109}
!246 = !{i64 2056374218667928546}
!247 = distinct !{!247, !88, !127}
!248 = distinct !{!248, i1 true, !"_ZN6hermes3hbc12_GLOBAL__N_123getInsertionPointsAfterERNS_9IRBuilderEPNS_11InstructionE"}
!249 = distinct !{!249, !248, !"_ZN6hermes3hbc12_GLOBAL__N_123getInsertionPointsAfterERNS_9IRBuilderEPNS_11InstructionE: argument 0"}
!250 = distinct !{!250, !88}
!251 = distinct !{!251, !127}
!252 = !{i64 -13437016455437570}
!253 = !{!"_ZTSN6hermes3hbc14SpillRegistersE", !122, i64 0, !123, i64 32}
!254 = !{!253, !123, i64 32}
!255 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockENS2_17RegisterAllocator17BlockLifetimeInfoEEE", !29, i64 0}
!256 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockENS1_17RegisterAllocator17BlockLifetimeInfoENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEEE", !255, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!257 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes11InstructionEjEE", !29, i64 0}
!258 = !{!"_ZTSN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEE", !257, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!259 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj32EEE", !9, i64 0}
!260 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj32EEE", !33, i64 0, !259, i64 16}
!261 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8IntervalEvEE", !30, i64 0}
!262 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EEE", !261, i64 0}
!263 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8IntervalEEE", !262, i64 0}
!264 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8IntervalELj32EEE", !9, i64 0}
!265 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8IntervalELj32EEE", !263, i64 0, !264, i64 16}
!266 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes5ValueENS2_8RegisterEEE", !29, i64 0}
!267 = !{!"_ZTSN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEEE", !266, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!268 = !{!"p1 long", !29, i64 0}
!269 = !{!"_ZTSN4llvh8ArrayRefImEE", !268, i64 0, !104, i64 8}
!270 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !269, i64 0}
!271 = !{!"_ZTSN4llvh9BitVectorE", !270, i64 0, !10, i64 16}
!272 = !{!"_ZTSN6hermes12RegisterFileE", !271, i64 0}
!273 = !{!"_ZTSN6hermes17RegisterAllocatorE", !256, i64 8, !258, i64 32, !260, i64 56, !265, i64 328, !267, i64 1880, !272, i64 1904, !10, i64 1928, !104, i64 1936, !137, i64 1944}
!274 = !{!"_ZTSN6hermes3hbc20HVMRegisterAllocatorE", !273, i64 0, !10, i64 1952, !10, i64 1956}
!275 = !{!274, !10, i64 1956}
!276 = !{!249}
!277 = !{i64 -7592855531622214653}
!278 = !{!"p1 _ZTSN6hermes10SwitchInstE", !29, i64 0}
!279 = !{!278, !278, i64 0}
!280 = distinct !{!280, !88, !127}
!281 = !{i64 -735514827910668461}
!282 = !{i64 3533908348476626055}
!283 = !{i64 -6063226843071381848}
!284 = !{i64 -5272834465161197293}
!285 = !{i64 -5708781078663309834}
!286 = !{i64 -4945137567311155566}
!287 = !{i64 1624221695240570008}
!288 = !{i64 4252822695936297075}
!289 = !{i64 8489369488986581958}
!290 = !{i64 9013361709416396590}
!291 = !{i64 -174447771155999799}
!292 = !{i64 8477964516562754903}
!293 = !{i64 -4731440355989953712}
!294 = !{i64 1918359985375881010}
!295 = !{!"_ZTSN4llvh16DenseMapIteratorIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EELb0EEE", !105, i64 0, !105, i64 8}
!296 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPN6hermes11InstructionENS0_6detail13DenseSetEmptyENS0_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EELb0EEEbE", !295, i64 0, !39, i64 16}
!297 = !{!296, !39, i64 16}
!298 = !{i64 -4189976500389745329}
!299 = distinct !{!299, !103}
!300 = distinct !{!300, !88}
!301 = distinct !{!301, !103}
!302 = !{i64 -855155711695547290}
!303 = distinct !{!303, !103}
!304 = distinct !{!304, !103}
!305 = !{i64 -6130711092445622683}
!306 = distinct !{!306, !103}
!307 = distinct !{!307, !88}
!308 = distinct !{!308, !103}
!309 = distinct !{!309, !88}
!310 = !{i64 -5470394142884382251}
end_hunk_2
