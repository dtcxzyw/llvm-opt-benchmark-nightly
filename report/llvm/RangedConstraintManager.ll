Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RangedConstraintManager?download=true
inline.NumInlined: 647
inline.NumDeleted: 387
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::FoldingSetBase::FoldingSetInfo" = type { ptr, ptr, ptr }
%"class.llvm::IntrusiveRefCntPtr" = type { ptr }
%"class.clang::ento::SVal" = type <{ ptr, i8, [7 x i8] }>
%"class.clang::QualType" = type { %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::FoldingSetNodeID" = type { %"class.llvm::SmallVector.471" }
%"class.llvm::SmallVector.471" = type { %"class.llvm::SmallVectorImpl.472", %"struct.llvm::SmallVectorStorage.475" }
%"class.llvm::SmallVectorImpl.472" = type { %"class.llvm::SmallVectorTemplateBase.473" }
%"class.llvm::SmallVectorTemplateBase.473" = type { %"class.llvm::SmallVectorTemplateCommon.474" }
%"class.llvm::SmallVectorTemplateCommon.474" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.475" = type { [128 x i8] }
%"class.clang::ento::APSIntType" = type <{ i32, i8, [3 x i8] }>
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon, i32 }>
%union.anon = type { i64 }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>

$_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPKT_DpOT0_ = comdat any

$_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE = comdat any

$_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE = comdat any

$_ZNK5clang4ento17ConstraintManager9getSymValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE = comdat any

$_ZNK5clang4ento17ConstraintManager12getSymMinValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE = comdat any

$_ZNK5clang4ento17ConstraintManager12getSymMaxValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE = comdat any

$_ZN5clang4ento17ConstraintManager10printValueERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE = comdat any

$_ZN4llvm6APSInt13compareValuesERKS0_S2_ = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDES4_NS_18BinaryOperatorKindES4_NS_8QualTypeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE14GetNodeProfileEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE10NodeEqualsEPKNS_14FoldingSetBaseEPNS5_4NodeERKNS_16FoldingSetNodeIDEjRSA_ = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE15ComputeNodeHashEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN5clang4ento7SymExprD2Ev = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EED0Ev = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE12dumpToStreamERN4llvm11raw_ostreamE = comdat any

$_ZNK5clang4ento13BinarySymExpr7getTypeEv = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDE = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE17computeComplexityEv = comdat any

$_ZNK5clang4ento7SymExpr15getOriginRegionEv = comdat any

$_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info = comdat any

$_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN5clang4ento23RangedConstraintManagerE = unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr null, ptr @_ZN5clang4ento23RangedConstraintManagerD1Ev, ptr @_ZN5clang4ento23RangedConstraintManagerD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK5clang4ento17ConstraintManager9getSymValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE, ptr @_ZNK5clang4ento17ConstraintManager12getSymMinValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE, ptr @_ZNK5clang4ento17ConstraintManager12getSymMaxValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5clang4ento17ConstraintManager10printValueERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE, ptr @_ZN5clang4ento23SimpleConstraintManager14assumeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb, ptr @_ZN5clang4ento23SimpleConstraintManager28assumeInclusiveRangeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_6NonLocERKNS2_6APSIntESA_b, ptr @__cxa_pure_virtual, ptr @_ZN5clang4ento17ConstraintManager9checkNullEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE, ptr @_ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb, ptr @_ZN5clang4ento23RangedConstraintManager23assumeSymInclusiveRangeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprERKNS2_6APSIntESC_b, ptr @_ZN5clang4ento23RangedConstraintManager20assumeSymUnsupportedEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb, ptr @_ZN5clang4ento23RangedConstraintManager12assumeSymRelEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprENS_18BinaryOperatorKindERKNS2_6APSIntE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info = linkonce_odr constant %"struct.llvm::FoldingSetBase::FoldingSetInfo" { ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE14GetNodeProfileEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE, ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE10NodeEqualsEPKNS_14FoldingSetBaseEPNS5_4NodeERKNS_16FoldingSetNodeIDEjRSA_, ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE15ComputeNodeHashEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE }, comdat, align 8
@_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN5clang4ento7SymExpr6anchorEv, ptr @_ZN5clang4ento7SymExprD2Ev, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EED0Ev, ptr @_ZNK5clang4ento7SymExpr4dumpEv, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE12dumpToStreamERN4llvm11raw_ostreamE, ptr @_ZNK5clang4ento13BinarySymExpr7getTypeEv, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDE, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE17computeComplexityEv, ptr @_ZNK5clang4ento7SymExpr15getOriginRegionEv] }, comdat, align 8
@switch.table._ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb.1 = private unnamed_addr constant [6 x i8] c"\0B\0A\0D\0C\0E\0F", align 4
@switch.table._ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb.2 = private unnamed_addr constant [6 x i8] c"\0D\0C\0B\0A\0F\0E", align 4

@_ZN5clang4ento23RangedConstraintManagerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5clang4ento23RangedConstraintManagerD2Ev

; Function Attrs: nounwind
declare void @_ZN5clang4ento23SimpleConstraintManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento23RangedConstraintManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5clang4ento23SimpleConstraintManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN5clang4ento23RangedConstraintManagerD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %10 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %12 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %15 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !8      ; 6 uses
  %.not.i.i = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, label %bb.b

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %6, align 8, !tbaa !8
  %i.h = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3)
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %i.g, ptr %6, align 8, !tbaa !8
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #14
  %i.i = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #14
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, %bb.b
  %.pn.i = phi { ptr, i8 } [ %i.h, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %.fca.1.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 1
  %.fca.0.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 0
  store ptr %.fca.0.extract.sink.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.fca.1.extract.sink.i, ptr %i.j, align 8
  %i.k = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %5, i1 noundef zeroext false) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %.1.i = select i1 %.not.i, ptr %3, ptr %i.k     ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = add i32 %i.m, -5
  %i.o = icmp ult i32 %i.n, 5
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !8
  %.not.i.i60 = icmp eq ptr %i.p, null
  br i1 %.not.i.i60, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.p) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61: ; preds = %bb.d, %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.1.i, i1 noundef zeroext %4) #14
  %i.t = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.t, null
  br i1 %.not.i.i62, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.t) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  switch i32 %i.m, label %bb.ab [
    i32 2, label %bb.h
    i32 3, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 3 uses
  %i.w = add i32 %i.v, -10
  %or.cond = icmp ult i32 %i.w, 6
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %_ZN5clang14BinaryOperator18negateComparisonOpENS_18BinaryOperatorKindE.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.i
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr i8, ptr @switch.table._ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb.2, i64 %i.x
  %switch.gep = getelementptr i8, ptr %i.y, i64 -10
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN5clang14BinaryOperator18negateComparisonOpENS_18BinaryOperatorKindE.exit

_ZN5clang14BinaryOperator18negateComparisonOpENS_18BinaryOperatorKindE.exit: ; preds = %switch.lookup, %bb.i
  %.0 = phi i32 [ %i.v, %bb.i ], [ %switch.ext, %switch.lookup ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !8
  %.not.i.i64 = icmp eq ptr %i.z, null
end_hunk_0
begin_hunk_1_@_ZN5clang4ento23RangedConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb:bb.a
  %i.ef = load ptr, ptr %13, align 8, !tbaa !8    ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i85, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.sink.split

bb.z:                                             ; preds = %bb.w
  store ptr %i.eb, ptr %14, align 8, !tbaa !8
  br i1 %.not.i.i83, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88: ; preds = %bb.z, %bb.aa
  %i.eg = load ptr, ptr %1, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.du, ptr noundef nonnull align 8 dereferenceable(13) %i.ea, ptr noundef nonnull align 8 dereferenceable(13) %i.ea) #14
  %i.ej = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i89, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.sink.split: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit84
  %.sink = phi ptr [ %i.ef, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit84 ], [ %i.ej, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sink) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.sink.split, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63

bb.ab:                                            ; preds = %bb.g, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread105, %bb.o
  %i.ek = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  store ptr %i.ek, ptr %15, align 8, !tbaa !8
  %.not.i.i91 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i91, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ek) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92: ; preds = %bb.ab, %bb.ac
  %i.el = load ptr, ptr %1, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %.1.i, i1 noundef zeroext %4) #14
  %i.eo = load ptr, ptr %15, align 8, !tbaa !8    ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i93, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eo) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit63: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65, %bb.k, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit69, %bb.n, %bb.ad, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82, %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.clang::ento::SVal", align 8 ; 5 uses
  %3 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !8
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, label %bb.b

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread: ; preds = %bb.a
  %i.b = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  %i.c = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, %bb.b
  %.pn = phi { ptr, i8 } [ %i.b, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %i.c, %bb.b ] ; 2 uses
  %.fca.1.extract.sink = extractvalue { ptr, i8 } %.pn, 1
  %.fca.0.extract.sink = extractvalue { ptr, i8 } %.pn, 0
  store ptr %.fca.0.extract.sink, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.fca.1.extract.sink, ptr %i.d, align 8
  %i.e = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %2, i1 noundef zeroext false) #14 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %.1 = select i1 %.not, ptr %1, ptr %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, i64) local_unnamed_addr #5

declare i64 @_ZNK5clang10ASTContext18getPointerDiffTypeEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.d, align 4, !tbaa !68
  %i.e = load ptr, ptr %1, align 8, !tbaa !64
  %i.f = load i32, ptr %2, align 4, !tbaa !65
  %i.g = load ptr, ptr %3, align 8, !tbaa !64
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !49
  call void @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDES4_NS_18BinaryOperatorKindES4_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef %i.e, i32 noundef %i.f, ptr noundef %i.g, i64 %.sroa.0.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.h = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info) #14 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69, !nonnull !42, !align !43 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 15
  %i.q = and i64 %i.p, -16                        ; 2 uses
  %i.r = add i64 %i.q, 56                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !83
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.m, align 8, !tbaa !70
  %i.w = inttoptr i64 %i.q to ptr
  br label %_ZN5clang4ento16SymExprAllocator4makeINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 56, i64 noundef 56, i8 4)
  br label %_ZN5clang4ento16SymExprAllocator4makeINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPT_DpOT0_.exit

_ZN5clang4ento16SymExprAllocator4makeINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %i.x, %bb.d ] ; 10 uses
  %i.y = load i32, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.k, align 8, !tbaa !85
  %i.aa = load ptr, ptr %1, align 8, !tbaa !64
  %i.ab = load i32, ptr %2, align 4, !tbaa !65
  %i.ac = load ptr, ptr %3, align 8, !tbaa !64
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 3, ptr %i.ae, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 %i.y, ptr %i.af, align 4, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i32 0, ptr %i.ag, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 28
  store i32 %i.ab, ptr %i.ah, align 4, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.ai, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  store ptr %i.aa, ptr %i.aj, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !50
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ad, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang4ento16SymExprAllocator4makeINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPT_DpOT0_.exit, %bb.a
  %.0 = phi ptr [ %i.j, %bb.a ], [ %.0.i.i.i.i, %_ZN5clang4ento16SymExprAllocator4makeINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJS6_NS_18BinaryOperatorKindES6_RNS_8QualTypeEEEEPT_DpOT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.am = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.am) #14
  br label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit

_ZN4llvm16FoldingSetNodeIDD2Ev.exit:              ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento23RangedConstraintManager23assumeSymInclusiveRangeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprERKNS2_6APSIntESC_b(ptr dead_on_unwind noalias writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(13) %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %9 = alloca %"class.clang::ento::APSIntType", align 8 ; 4 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %"class.clang::ento::APSIntType", align 8 ; 5 uses
  %12 = alloca %"class.clang::ento::APSIntType", align 4 ; 5 uses
  %13 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %14 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %15 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !8      ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, label %bb.b

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %8, align 8, !tbaa !8
  %i.c = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3)
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %i.b, ptr %8, align 8, !tbaa !8
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #14
  %i.d = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #14
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, %bb.b
  %.pn.i = phi { ptr, i8 } [ %i.c, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i ], [ %i.d, %bb.b ] ; 2 uses
  %.fca.1.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 1
  %.fca.0.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 0
  store ptr %.fca.0.extract.sink.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %.fca.1.extract.sink.i, ptr %i.e, align 8
  %i.f = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %7, i1 noundef zeroext false) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %.1.i = select i1 %.not.i, ptr %3, ptr %i.f     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30, !nonnull !42, !align !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.j = load ptr, ptr %.1.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i64 %i.l(ptr noundef nonnull align 8 dereferenceable(28) %.1.i) #14
  %i.n = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 %i.m) ; 3 uses
  %i.o = trunc i64 %i.n to i40
  store i40 %i.o, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.p = trunc i64 %i.n to i32                    ; 5 uses
  %i.q = lshr i64 %i.n, 32                        ; 2 uses
  %i.r = trunc i64 %i.q to i8                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %i.p, ptr %i.s, align 8, !tbaa !90, !alias.scope !92
  %i.t = icmp ult i32 %i.p, 65
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  store i64 0, ptr %10, align 8, !tbaa !49, !alias.scope !92
  br label %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %10, i64 noundef 0, i1 noundef zeroext false) #14
  br label %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit

_ZNK5clang4ento10APSIntType12getZeroValueEv.exit: ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i8 %i.r, ptr %i.u, align 4, !tbaa !95, !alias.scope !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.1.i, ptr %i.a, align 8, !tbaa !64
  call void @_ZN5clang4ento23RangedConstraintManager17computeAdjustmentERPKNS0_7SymExprERN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(13) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !90   ; 3 uses
  store i32 %i.w, ptr %12, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !95, !range !100, !noundef !42 ; 2 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 %i.y, ptr %.4..4..4..sroa_idx, align 4, !tbaa !101
  %i.z = icmp ugt i32 %i.w, %i.p
  br i1 %i.z, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit
  %i.aa = icmp uge i32 %i.w, %i.p
  %i.ab = icmp samesign ugt i8 %i.y, %i.r
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i: ; preds = %bb.f, %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit
  br label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit: ; preds = %bb.f, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i
  %i.ac = phi ptr [ %12, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i ], [ %9, %bb.f ]
  %i.ad = load i64, ptr %i.ac, align 4            ; 3 uses
  store i64 %i.ad, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %13, ptr noundef nonnull readonly align 4 dereferenceable(5) %11, ptr noundef nonnull readonly align 8 dereferenceable(13) %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %14, ptr noundef nonnull readonly align 4 dereferenceable(5) %11, ptr noundef nonnull readonly align 8 dereferenceable(13) %5) #16
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp ne i32 %i.ae, %i.p
  %i.ag = and i64 %i.ad, 4294967296
  %i.ah = icmp eq i64 %i.ag, 0
  %or.cond32.not45 = or i1 %i.af, %i.ah
  %i.ai = trunc i64 %i.q to i1
  %or.cond33 = or i1 %or.cond32.not45, %i.ai
  br i1 %or.cond33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  store i8 1, ptr %i.u, align 4, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  %i.aj = load ptr, ptr %2, align 8, !tbaa !8     ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.aj, null            ; 2 uses
  br i1 %6, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %15, align 8, !tbaa !8
  br i1 %.not.i.i9, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10: ; preds = %bb.i, %bb.j
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.al = load ptr, ptr %1, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(13) %13, ptr noundef nonnull align 8 dereferenceable(13) %14, ptr noundef nonnull align 8 dereferenceable(13) %10) #14
  %i.ao = load ptr, ptr %15, align 8, !tbaa !8    ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i11, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12.sink.split

bb.k:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %16, align 8, !tbaa !8
  br i1 %.not.i.i9, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14: ; preds = %bb.k, %bb.l
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.aq = load ptr, ptr %1, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(13) %13, ptr noundef nonnull align 8 dereferenceable(13) %14, ptr noundef nonnull align 8 dereferenceable(13) %10) #14
  %i.at = load ptr, ptr %16, align 8, !tbaa !8    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.at, null
  br i1 %.not.i.i15, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12.sink.split: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10
  %.sink = phi ptr [ %i.ao, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10 ], [ %i.at, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sink) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12.sink.split, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit14, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit10
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !90
  %i.aw = icmp ugt i32 %i.av, 64
  br i1 %i.aw, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12
  %i.ax = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #17
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit12, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !90
  %i.bb = icmp ugt i32 %i.ba, 64
  br i1 %i.bb, label %bb.o, label %_ZN4llvm5APIntD2Ev.exit17

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bc = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #17
  br label %_ZN4llvm5APIntD2Ev.exit17

_ZN4llvm5APIntD2Ev.exit17:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.be = load i32, ptr %i.s, align 8, !tbaa !90
  %i.bf = icmp ugt i32 %i.be, 64
  br i1 %i.bf, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit18

bb.q:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit17
  %i.bg = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4llvm5APIntD2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #17
  br label %_ZN4llvm5APIntD2Ev.exit18

_ZN4llvm5APIntD2Ev.exit18:                        ; preds = %_ZN4llvm5APIntD2Ev.exit17, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !46  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  %.not.i = icmp eq i8 %i.e, 7
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !49
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 7
  br i1 %i.l, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #14 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.1.i24 = phi ptr [ %i.m, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i24, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 16, !tbaa !49 ; 2 uses
  %.pre40 = and i64 %.sroa.0.0.copyload.i, -16
  %.pre41 = inttoptr i64 %.pre40 to ptr
  br label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.pre-phi42 = phi ptr [ %i.b, %bb.b ], [ %.pre41, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21 ], [ %i.b, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread21 ], [ %1, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ] ; 2 uses
  %i.o = load ptr, ptr %.pre-phi42, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !46  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 2 uses
  %i.v = icmp ne i8 %i.u, 13
  %.not.not3039.i = icmp eq ptr %i.s, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.v
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph.i.preheader:                               ; preds = %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread
  %.not.i732 = icmp eq i8 %i.u, 47
  br i1 %.not.i732, label %.split25, label %.lr.ph

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i7 = icmp eq i8 %i.au, 47
  br i1 %.not.i7, label %.split25, label %.lr.ph

.split25:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.s, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %i.y = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.x) #14, !inline_history !108 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.y, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.x, ptr %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = trunc i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ae = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %i.ae, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %.split25._crit_edge

.split25._crit_edge:                              ; preds = %.split25
  %.pre = load ptr, ptr %.pre-phi42, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.pre43 = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.pre, -16
  %.pre45 = inttoptr i64 %.pre43 to ptr
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i33 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i8, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i33, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !46 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 16            ; 2 uses
  %i.ak = icmp ne i8 %i.aj, 35
  %.not17.not32.i = icmp eq ptr %i.ah, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.ak
  br i1 %.not17.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 16, !tbaa !49
  %i.am = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i.i8 = load i64, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i8, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !46 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16            ; 2 uses
  %i.av = icmp ne i8 %i.au, 13
  %.not.not30.i = icmp eq ptr %i.as, null
  %.not.not.i = or i1 %.not.not30.i, %i.av
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.split:                                           ; preds = %.lr.ph
  %i.aw = icmp eq i8 %i.aj, 10
  br i1 %i.aw, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %bb.c

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %tailrecurse.i, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread
  %.lcssa.i = phi ptr [ %i.s, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread ], [ %i.as, %tailrecurse.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = lshr i32 %i.ay, 19
  %i.ba = and i32 %i.az, 1023
  %i.bb = add nsw i32 %i.ba, -453
  %spec.select.i.i = icmp ult i32 %i.bb, 20
  br i1 %spec.select.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split25._crit_edge, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %.pre-phi46 = phi ptr [ %.pre45, %.split25._crit_edge ], [ %i.r, %.split ], [ %i.r, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ]
  %i.bc = load ptr, ptr %.pre-phi46, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 16            ; 3 uses
  switch i8 %i.be, label %bb.d [
    i8 40, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 31, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 11, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.bf = and i8 %i.be, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp eq i8 %i.be, 13
  br i1 %i.bg, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread26

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit:  ; preds = %bb.e
  %i.bh = load i32, ptr %i.bd, align 16
  %i.bi = and i32 %i.bh, 536346624
  %i.bj = icmp eq i32 %i.bi, 264765440
  br i1 %i.bj, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread26

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread: ; preds = %bb.c, %bb.c, %bb.c, %bb.d, %.split25, %.split, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !109, !nonnull !42, !align !43
  %i.bl = tail call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, i64 %.sroa.0.0) #14 ; 2 uses
  %i.bm = load ptr, ptr %.pre-phi42, align 8, !tbaa !46
  %i.bn = tail call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bm) #14
  br i1 %i.bn, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread56

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread26: ; preds = %bb.e, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !109, !nonnull !42, !align !43
  %i.bp = tail call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bo, i64 %.sroa.0.0) #14 ; 7 uses
  %i.bq = load ptr, ptr %.pre-phi42, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i11 = load i64, ptr %i.br, align 8, !tbaa !49
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i.i11, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !46 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 16
  %i.bx = icmp eq i8 %i.bw, 13
  %.not8.i.i = icmp ne ptr %i.bu, null
  %.not.not.not.i.i = and i1 %.not8.i.i, %i.bx
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.i, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit.i:       ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread26
  %i.by = load i32, ptr %i.bv, align 16
  %.fr67 = freeze i32 %i.by
  %i.bz = lshr i32 %.fr67, 19
  %i.ca = and i32 %i.bz, 1023                     ; 6 uses
  %i.cb = add nsw i32 %i.ca, -497
  %or.cond.i = icmp ult i32 %i.cb, -21
  br i1 %or.cond.i, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.i
  %i.cc = icmp samesign ugt i32 %i.ca, 478
  br i1 %i.cc, label %bb.g, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread56

bb.g:                                             ; preds = %bb.f
  %i.cd = icmp samesign ult i32 %i.ca, 482
  br i1 %i.cd, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = icmp samesign ugt i32 %i.ca, 484
  br i1 %i.ce, label %bb.i, label %_ZNK5clang4Type24isUnsignedFixedPointTypeEv.exit.thread56

end_hunk_1
begin_hunk_2_@_ZN5clang4ento23RangedConstraintManager20assumeSymUnsupportedEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb
define dso_local void @_ZN5clang4ento23RangedConstraintManager20assumeSymUnsupportedEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8      ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, label %bb.b

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %6, align 8, !tbaa !8
  %i.b = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3)
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %i.a, ptr %6, align 8, !tbaa !8
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  %i.c = call { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  br label %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit

_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, %bb.b
  %.pn.i = phi { ptr, i8 } [ %i.b, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i ], [ %i.c, %bb.b ] ; 2 uses
  %.fca.1.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 1
  %.fca.0.extract.sink.i = extractvalue { ptr, i8 } %.pn.i, 0
  store ptr %.fca.0.extract.sink.i, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.fca.1.extract.sink.i, ptr %i.d, align 8
  %i.e = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %5, i1 noundef zeroext false) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %.1.i = select i1 %.not.i, ptr %3, ptr %i.e     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento8simplifyEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE.exit, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30, !nonnull !42, !align !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %.1.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(28) %.1.i) #14 ; 2 uses
  %i.m = and i64 %i.l, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !46  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 2 uses
  %i.v = icmp ne i8 %i.u, 13
  %.not.not3039.i = icmp eq ptr %i.s, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.v
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %.not.i1130 = icmp eq i8 %i.u, 47
  br i1 %.not.i1130, label %.split24, label %.lr.ph

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i11 = icmp eq i8 %i.au, 47
  br i1 %.not.i11, label %.split24, label %.lr.ph

.split24:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.s, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %i.y = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.x) #14, !inline_history !108 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.y, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.x, ptr %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = trunc i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ae = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i31 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i31, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !46 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 16            ; 2 uses
  %i.ak = icmp ne i8 %i.aj, 35
  %.not17.not32.i = icmp eq ptr %i.ah, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.ak
  br i1 %.not17.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 16, !tbaa !49
  %i.am = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !46 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16            ; 2 uses
  %i.av = icmp ne i8 %i.au, 13
  %.not.not30.i = icmp eq ptr %i.as, null
  %.not.not.i = or i1 %.not.not30.i, %i.av
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.split:                                           ; preds = %.lr.ph
  %i.aw = icmp eq i8 %i.aj, 10
  br i1 %i.aw, label %bb.e, label %bb.d

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %tailrecurse.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %.lcssa.i = phi ptr [ %i.s, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ], [ %i.as, %tailrecurse.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = lshr i32 %i.ay, 19
  %i.ba = and i32 %i.az, 1023
  %i.bb = add nsw i32 %i.ba, -453
  %spec.select.i.i = icmp ult i32 %i.bb, 20
  br i1 %spec.select.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split24, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %i.bc = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.bc, ptr %0, align 8, !tbaa !8
  store ptr null, ptr %2, align 8, !tbaa !8
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15

bb.e:                                             ; preds = %.split24, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %i.bd = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 noundef 0, i64 %i.l) #14 ; 4 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !8     ; 5 uses
  %.not.i.i12 = icmp eq ptr %i.be, null           ; 2 uses
  br i1 %4, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.be, ptr %7, align 8, !tbaa !8
  br i1 %.not.i.i12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.be) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit13

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit13: ; preds = %bb.f, %bb.g
  %i.bf = load ptr, ptr %1, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.1.i, ptr noundef nonnull align 8 dereferenceable(13) %i.bd, ptr noundef nonnull align 8 dereferenceable(13) %i.bd) #14
  %i.bi = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit13
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bi) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15

bb.i:                                             ; preds = %bb.e
  store ptr %i.be, ptr %8, align 8, !tbaa !8
  br i1 %.not.i.i12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.be) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17: ; preds = %bb.i, %bb.j
  %i.bj = load ptr, ptr %1, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %.1.i, ptr noundef nonnull align 8 dereferenceable(13) %i.bd, ptr noundef nonnull align 8 dereferenceable(13) %i.bd) #14
  %i.bm = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i18, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bm) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit15: ; preds = %bb.k, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17, %bb.h, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit13, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento23RangedConstraintManager12assumeSymRelEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprENS_18BinaryOperatorKindERKNS2_6APSIntE(ptr dead_on_unwind noalias writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(13) %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %8 = alloca %"class.clang::ento::APSIntType", align 8 ; 4 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 14 uses
  %10 = alloca %"class.clang::ento::APSIntType", align 8 ; 4 uses
  %11 = alloca %"class.clang::ento::APSIntType", align 4 ; 5 uses
  %12 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %15 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %17 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %18 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %i.b, align 8, !tbaa !90, !alias.scope !135
  store i64 0, ptr %6, align 8, !alias.scope !135
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !95, !alias.scope !135
  %i.d = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %5, ptr noundef nonnull align 8 dereferenceable(13) %6)
  %i.e = load i32, ptr %i.b, align 8, !tbaa !90
  %i.f = icmp ugt i32 %i.e, 64
  br i1 %i.f, label %bb.b, label %_ZNK4llvm6APSInteqEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK4llvm6APSInteqEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.g) #17
  br label %_ZNK4llvm6APSInteqEl.exit

_ZNK4llvm6APSInteqEl.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %i.i = icmp eq i32 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %i.i, label %bb.d, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm6APSInteqEl.exit
  %i.j = icmp eq i32 %4, 15
  %i.k = and i32 %4, -2
  %or.cond = icmp eq i32 %i.k, 14
  br i1 %or.cond, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12
  %i.n = add i32 %i.m, -4
  %i.o = icmp ult i32 %i.n, -3
  %.not55 = icmp eq ptr %3, null
  %.not = or i1 %.not55, %i.o
  br i1 %.not, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = add i32 %i.q, -9
  %i.s = icmp ult i32 %i.r, 7
  br i1 %i.s, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !8
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.t) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.g, %bb.h
  %i.u = load ptr, ptr %1, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3, i1 noundef zeroext %i.j) #14
  %i.x = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.x, null
  br i1 %.not.i.i13, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.x) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %_ZNK4llvm6APSInteqEl.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30, !nonnull !42, !align !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(28) %3) #14
  %i.af = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i64 %i.ae) ; 3 uses
  %i.ag = trunc i64 %i.af to i40
  store i40 %i.ag, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ah = trunc i64 %i.af to i32                  ; 5 uses
  %i.ai = lshr i64 %i.af, 32                      ; 2 uses
  %i.aj = trunc i64 %i.ai to i8                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %i.ah, ptr %i.ak, align 8, !tbaa !90, !alias.scope !138
  %i.al = icmp ult i32 %i.ah, 65
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread
  store i64 0, ptr %9, align 8, !tbaa !49, !alias.scope !138
  br label %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %9, i64 noundef 0, i1 noundef zeroext false) #14
  br label %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit

_ZNK5clang4ento10APSIntType12getZeroValueEv.exit: ; preds = %bb.j, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i8 %i.aj, ptr %i.am, align 4, !tbaa !95, !alias.scope !138
  call void @_ZN5clang4ento23RangedConstraintManager17computeAdjustmentERPKNS0_7SymExprERN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(13) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !90 ; 3 uses
  store i32 %i.ao, ptr %11, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !95, !range !100, !noundef !42 ; 2 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 %i.aq, ptr %.4..4..4..sroa_idx, align 4, !tbaa !101
  %i.ar = icmp ugt i32 %i.ao, %i.ah
  br i1 %i.ar, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit
  %i.as = icmp uge i32 %i.ao, %i.ah
  %i.at = icmp samesign ugt i8 %i.aq, %i.aj
  %or.cond50 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond50, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i: ; preds = %bb.l, %_ZNK5clang4ento10APSIntType12getZeroValueEv.exit
  br label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit: ; preds = %bb.l, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i
  %i.au = phi ptr [ %11, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i ], [ %8, %bb.l ]
  %i.av = load i64, ptr %i.au, align 4            ; 3 uses
  store i64 %i.av, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %12, ptr noundef nonnull readonly align 4 dereferenceable(5) %10, ptr noundef nonnull readonly align 8 dereferenceable(13) %5) #16
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp ne i32 %i.aw, %i.ah
  %i.ay = and i64 %i.av, 4294967296
  %i.az = icmp eq i64 %i.ay, 0
  %or.cond53.not78 = or i1 %i.ax, %i.az
  %i.ba = trunc i64 %i.ai to i1
  %or.cond54 = or i1 %or.cond53.not78, %i.ba
  br i1 %or.cond54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  store i8 1, ptr %i.am, align 4, !tbaa !95
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  %i.bb = load ptr, ptr %2, align 8, !tbaa !8     ; 13 uses
  %.not.i.i14 = icmp eq ptr %i.bb, null           ; 6 uses
  switch i32 %4, label %bb.o [
    i32 14, label %bb.p
    i32 15, label %bb.r
    i32 11, label %bb.t
    i32 13, label %bb.v
    i32 10, label %bb.x
    i32 12, label %bb.z
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %13, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15: ; preds = %bb.p, %bb.q
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bd = load ptr, ptr %1, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.bg = load ptr, ptr %13, align 8, !tbaa !8    ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i16, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

bb.r:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %14, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19: ; preds = %bb.r, %bb.s
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bi = load ptr, ptr %1, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.bl = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i20, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

bb.t:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %15, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23: ; preds = %bb.t, %bb.u
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bn = load ptr, ptr %1, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.bq = load ptr, ptr %15, align 8, !tbaa !8    ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i24, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

bb.v:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %16, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27: ; preds = %bb.v, %bb.w
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bs = load ptr, ptr %1, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.bv = load ptr, ptr %16, align 8, !tbaa !8    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i28, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

bb.x:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %17, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31: ; preds = %bb.x, %bb.y
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bx = load ptr, ptr %1, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 152
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.ca = load ptr, ptr %17, align 8, !tbaa !8    ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i32, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

bb.z:                                             ; preds = %bb.n
  store ptr %i.bb, ptr %18, align 8, !tbaa !8
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bb) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35: ; preds = %bb.z, %bb.aa
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.cc = load ptr, ptr %1, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 168
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(13) %9) #14
  %i.cf = load ptr, ptr %18, align 8, !tbaa !8    ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i36, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15
  %.sink = phi ptr [ %i.ca, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31 ], [ %i.bv, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27 ], [ %i.bq, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23 ], [ %i.bl, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19 ], [ %i.bg, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15 ], [ %i.cf, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sink) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17.sink.split, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit35, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit31, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit15
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !90
  %i.ci = icmp ugt i32 %i.ch, 64
  br i1 %i.ci, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit

bb.ab:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17
  %i.cj = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #17
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit17, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.cl = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.cm = icmp ugt i32 %i.cl, 64
  br i1 %i.cm, label %bb.ad, label %_ZN4llvm5APIntD2Ev.exit38

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.cn = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm5APIntD2Ev.exit38, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #17
  br label %_ZN4llvm5APIntD2Ev.exit38

_ZN4llvm5APIntD2Ev.exit38:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.i, %_ZN4llvm5APIntD2Ev.exit38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN5clang4ento14simplifyToSValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 {
_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !8
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  %i.f = load ptr, ptr %1, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(28) %1) #14, !inline_history !152
  %i.j = and i64 %i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !49
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 16              ; 3 uses
  switch i8 %i.r, label %bb.a [
    i8 40, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i
    i8 31, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i
    i8 11, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i
  ]

bb.a:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.s = and i8 %i.r, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i8 %i.r, 13
  br i1 %i.t, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, label %_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i: ; preds = %bb.b
  %i.u = load i32, ptr %i.q, align 16
  %i.v = and i32 %i.u, 536346624
  %i.w = icmp eq i32 %i.v, 264765440
  br i1 %i.w, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i, label %_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %bb.a, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.y = tail call noundef ptr @_ZN5clang4ento16MemRegionManager17getSymbolicRegionEPKNS0_7SymExprEPKNS0_14MemSpaceRegionE(ptr noundef nonnull align 8 dereferenceable(152) %i.x, ptr noundef nonnull %1, ptr noundef null) #14
  br label %_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit

_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit: ; preds = %bb.b, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i
  %.pn10.i = phi ptr [ %i.y, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i ], [ %1, %bb.b ], [ %1, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ]
  %.pn.i = phi i8 [ 4, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread.i ], [ 9, %bb.b ], [ 9, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ]
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call { ptr, i8 } %i.ab(ptr noundef nonnull align 8 dereferenceable(412) %i.e, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr %.pn10.i, i8 %.pn.i) #14
  %i.ad = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i13, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ad) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE.exit, %bb.c
  ret { ptr, i8 } %i.ac
}

declare noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento17ConstraintManager9getSymValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento17ConstraintManager12getSymMinValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento17ConstraintManager12getSymMaxValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento17ConstraintManager10printValueERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN5clang4ento23SimpleConstraintManager14assumeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr nofree noundef align 8 dereferenceable(8), ptr, i8, i1 noundef zeroext) unnamed_addr #5

declare void @_ZN5clang4ento23SimpleConstraintManager28assumeInclusiveRangeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_6NonLocERKNS2_6APSIntESA_b(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr nofree noundef align 8 dereferenceable(8), ptr, i8, ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(13), i1 noundef zeroext) unnamed_addr #5

declare i16 @_ZN5clang4ento17ConstraintManager9checkNullEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56), ptr nofree noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

declare noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %7 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90   ; 7 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %.sink7.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sink7.i.sroa.gep31 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink7.i25.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink7.i25.sroa.gep32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !95, !range !100, !noundef !42 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !95, !range !100, !noundef !42
  %.not = icmp eq i8 %i.g, %i.i
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw i8 %i.g to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #18
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #18
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.m = icmp ugt i32 %i.b, %i.d
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !95, !range !100, !noalias !153, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit2.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.g
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %i.b) #14, !noalias !153
  br label %_ZNK4llvm6APSInt6extendEj.exit

_ZN4llvm5APIntD2Ev.exit2.i:                       ; preds = %bb.g
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %i.b) #14, !noalias !153
  br label %_ZNK4llvm6APSInt6extendEj.exit

_ZNK4llvm6APSInt6extendEj.exit:                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit2.i
  %.sink7.i.sroa.phi = phi ptr [ %.sink7.i.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %.sink7.i.sroa.gep31, %_ZN4llvm5APIntD2Ev.exit.i ]
  %.sink7.i = phi ptr [ %5, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %4, %_ZN4llvm5APIntD2Ev.exit.i ]
  %i.q = load i8, ptr %i.n, align 4, !tbaa !95, !range !100, !noalias !153, !noundef !42
  %i.r = load i32, ptr %.sink7.i.sroa.phi, align 8, !tbaa !90, !noalias !153
  %i.s = load i64, ptr %.sink7.i, align 8, !noalias !153
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.r, ptr %i.t, align 8, !tbaa !90, !alias.scope !153
  store i64 %i.s, ptr %6, align 8, !alias.scope !153
end_hunk_2
