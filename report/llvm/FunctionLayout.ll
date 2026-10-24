Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FunctionLayout?download=true
inline.NumInlined: 901
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"class.llvm::SmallVector.51" = type { %"class.llvm::SmallVectorImpl.52", %"struct.llvm::SmallVectorStorage.55" }
%"class.llvm::SmallVectorImpl.52" = type { %"class.llvm::SmallVectorTemplateBase.53" }
%"class.llvm::SmallVectorTemplateBase.53" = type { %"class.llvm::SmallVectorTemplateCommon.54" }
%"class.llvm::SmallVectorTemplateCommon.54" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.55" = type { [256 x i8] }

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEEaSEOS4_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEaSEOS4_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKPN4llvm4bolt16BinaryBasicBlockESt15insert_iteratorINS3_11SmallVectorIS6_Lj0EEEEEET0_T_SE_SD_ = comdat any

$_ZN4llvm25ComputeMappedEditDistanceIPKNS_4bolt16BinaryBasicBlockEZNS_19ComputeEditDistanceIS4_EEjNS_8ArrayRefIT_EES8_bjEUlRKS4_E_EEjS8_S8_T0_bj = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

@_ZN4llvm4bolt16FunctionFragmentC1ERNS0_14FunctionLayoutENS0_11FragmentNumE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm4bolt16FunctionFragmentC2ERNS0_14FunctionLayoutENS0_11FragmentNumE
@_ZN4llvm4bolt14FunctionLayoutC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm4bolt14FunctionLayoutC2Ev
@_ZN4llvm4bolt14FunctionLayoutC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm4bolt14FunctionLayoutC2ERKS1_
@_ZN4llvm4bolt14FunctionLayoutC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm4bolt14FunctionLayoutC2EOS1_
@_ZN4llvm4bolt14FunctionLayoutD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm4bolt14FunctionLayoutD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm4bolt16FunctionFragmentC2ERNS0_14FunctionLayoutENS0_11FragmentNumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 20), (24, 56)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  store i32 %i.d, ptr %i.b, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4llvm4bolt16FunctionFragment5beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt16FunctionFragment5beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4llvm4bolt16FunctionFragment3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt16FunctionFragment3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt16FunctionFragment5frontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt16FunctionFragment4backEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayoutC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.g, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !18
  tail call void @_ZN4llvm4bolt16FunctionFragmentC1ERNS0_14FunctionLayoutENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %i.i) #17
  store ptr %i.h, ptr %i.a, align 8, !tbaa !26
  %i.j = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store ptr %i.h, ptr %i.o, align 8, !tbaa !26
  %i.p = add nuw i32 %i.j, 1
  store i32 %i.p, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit

_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm4bolt14FunctionLayout11addFragmentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  tail call void @_ZN4llvm4bolt16FunctionFragmentC1ERNS0_14FunctionLayoutENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %i.d) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !26
  %i.e = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.e to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  store ptr %i.b, ptr %i.k, align 8, !tbaa !26
  %i.l = add nuw i32 %i.e, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayoutC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.k = icmp eq ptr %0, %1
  %or.cond.i = or i1 %i.k, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i: ; preds = %bb.a
  %i.l = zext i32 %i.j to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8) #17
  %i.m = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !21
  %gepdiff.i.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 8 %i.o, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i
  store i32 %i.j, ptr %i.g, align 8, !tbaa !18
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not10 = icmp eq i32 %i.s, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit
  %.011 = phi ptr [ %i.ae, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit ], [ %i.q, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2ERKS4_.exit ] ; 2 uses
  %i.v = load ptr, ptr %.011, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.w = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !tbaa.struct !30
  store ptr %i.w, ptr %i.a, align 8, !tbaa !26
  store ptr %0, ptr %i.w, align 16, !tbaa !15
  %i.x = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.y = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !27

bb.c:                                             ; preds = %.lr.ph
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %0, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !26
  %i.ad = add nuw i32 %i.x, 1
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRS3_EEES6_DpOT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayoutC2EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEC2EOS4_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.i, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %.not.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i10, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2EOS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEC2EOS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2EOS4_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2EOS4_.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEC2EOS4_.exit, %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 3                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not11 = icmp eq i32 %i.o, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2EOS4_.exit
  %i.r = add nsw i64 %.idx, -8                    ; 2 uses
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.012.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = load ptr, ptr %.012.prol, align 8, !tbaa !26
  store ptr %0, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %.012.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !61

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.r, 56
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2EOS4_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi ptr [ %i.am, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.x = load ptr, ptr %.012, align 8, !tbaa !26
  store ptr %0, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  store ptr %0, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  store ptr %0, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  store ptr %0, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  store ptr %0, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %.012, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  store ptr %0, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.012, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  store ptr %0, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  store ptr %0, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %.012, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.am, %i.q
  br i1 %.not.7, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm4bolt14FunctionLayoutaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 6 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not.i.i = icmp ult i32 %i.i, %i.f
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29.i.i = icmp eq i32 %i.f, 0
  br i1 %.not29.i.i, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not31.i.i = icmp eq i32 %i.f, 1
  br i1 %.not31.i.i, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %.idx.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %.idx.i.i, i1 false)
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !23
  store ptr %i.m, ptr %i.l, align 8, !tbaa !23
  br label %.sink.split.i.i

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !24
  %i.p = icmp ult i32 %i.o, %i.f
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.q, i64 noundef %i.g, i64 noundef 8) #17
  br label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i

bb.i:                                             ; preds = %bb.g
  %.not28.i.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i.i, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not33.i.i = icmp eq i32 %i.i, 1
  br i1 %.not33.i.i, label %bb.l, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %.idx32.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %.idx32.i.i, i1 false)
  br label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i

bb.l:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !23
  store ptr %i.t, ptr %i.s, align 8, !tbaa !23
  br label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.j, %bb.k ], [ 1, %bb.l ] ; 4 uses
  %i.u = load i32, ptr %i.e, align 8, !tbaa !18
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.022.i.i, %i.v
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !21
  %.idx35.i.i = shl nuw nsw i64 %.022.i.i, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx35.i.i
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.022.i.i
  %i.aa = sub nsw i64 %i.v, %.022.i.i
  %gepdiff.i.i = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.x, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i, %bb.f, %bb.e, %bb.c
  store i32 %i.f, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSERKS4_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSERKS4_.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.ab = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not10 = icmp eq i32 %i.ad, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSERKS4_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSERKS4_.exit
  ret ptr %0

bb.n:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit
  %.011 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ar, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.011, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aj = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 56, i1 false), !tbaa.struct !30
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !26
  store ptr %0, ptr %i.aj, align 16, !tbaa !15
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !27

bb.o:                                             ; preds = %bb.n
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.an = zext i32 %i.ak to i64
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !26
  %i.aq = add nuw i32 %i.ak, 1
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12emplace_backIJRKS3_EEERS3_DpOT_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.af
  br i1 %.not, label %._crit_edge, label %bb.n
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm4bolt14FunctionLayoutaSEOS1_(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !18
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.e) #17
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit.i: ; preds = %bb.e, %bb.d
  %i.h = phi i32 [ %i.c, %bb.d ], [ %.pre.i, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  store i32 %i.h, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !24
  store i32 0, ptr %i.b, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !18
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.t) #17
  %.pre.i11 = load i32, ptr %i.q, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit.i: ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %i.r, %bb.h ], [ %.pre.i11, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !21
  store ptr %i.y, ptr %i.p, align 8, !tbaa !21
  store i32 %i.w, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ac, ptr %i.o, align 8, !tbaa !21
  store i32 0, ptr %i.z, align 4, !tbaa !24
  store i32 0, ptr %i.q, align 8, !tbaa !18
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit: ; preds = %bb.a, %bb.g, %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not12 = icmp eq i32 %i.af, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit
  %i.ai = add nsw i64 %.idx, -8                   ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi ptr [ %i.am, %.lr.ph.prol ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.al = load ptr, ptr %.013.prol, align 8, !tbaa !26
  store ptr %0, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %.013.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %i.am, %.lr.ph.prol ]
  %i.an = icmp ult i64 %i.ai, 56
  br i1 %i.an, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEaSEOS4_.exit
  ret ptr %0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi ptr [ %i.bd, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ao = load ptr, ptr %.013, align 8, !tbaa !26
  store ptr %0, ptr %i.ao, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  store ptr %0, ptr %i.aq, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  store ptr %0, ptr %i.as, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  store ptr %0, ptr %i.au, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26
  store ptr %0, ptr %i.aw, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  store ptr %0, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.013, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  store ptr %0, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.013, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  store ptr %0, ptr %i.bc, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %.013, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.bd, %i.ah
  br i1 %.not.7, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayoutD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.g) #17
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #17
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.010 = phi ptr [ %i.n, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.010, align 8, !tbaa !26  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm4bolt14FunctionLayout11getFragmentENS0_11FragmentNumE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK4llvm4bolt14FunctionLayout11getFragmentENS0_11FragmentNumE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK4llvm4bolt14FunctionLayout12findFragmentEPKNS0_16BinaryBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !16
  %i.b = zext i32 %.sroa.0.0.copyload.i to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 164
  store i32 %i.d, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.d, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.d to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  store ptr %1, ptr %i.k, align 8, !tbaa !23
  %i.l = add nuw i32 %i.d, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12emplace_backIJRKS3_EEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12emplace_backIJRKS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayout17insertBasicBlocksEPKNS0_16BinaryBasicBlockENS_8ArrayRefIPS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1, ptr %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx3.i.i = shl nuw nsw i64 %i.e, 3            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx3.i.i
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.h = and i64 %.idx3.i.i, 34359738336
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.g ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !23
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit71, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.g
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.b, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i, label %bb.k [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !23
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.z, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !23
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !23
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit69: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  br label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit71: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  br label %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit: ; preds = %bb.c, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit69, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit71, %bb.h, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %i.f, %bb.k ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.h ], [ %i.ah, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit71 ], [ %i.ag, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit69 ], [ %i.af, %_ZN4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS0_16BinaryBasicBlockENS_12DenseMapInfoIS5_vEEEE:bb.a
  %.sroa.032.062 = phi ptr [ %i.a, %.lr.ph ], [ %i.mi, %"_ZN4llvm8count_ifIRNS_4bolt16FunctionFragmentEZNS1_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS1_16BinaryBasicBlockENS_12DenseMapInfoIS8_vEEEEE3$_0EEDaOT_T0_.exit" ] ; 2 uses
  %i.kq = load ptr, ptr %.sroa.032.062, align 8, !tbaa !26 ; 3 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !21
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 12 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !19 ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !20 ; 3 uses
  %i.la = zext i32 %i.kz to i64
  %.idx.i = shl nuw nsw i64 %i.la, 3
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx.i
  %.not7.i.i.i = icmp eq i32 %i.kz, 0
  %brmerge = select i1 %.not7.i.i.i, i1 true, i1 %i.k
  br i1 %brmerge, label %"_ZN4llvm8count_ifIRNS_4bolt16FunctionFragmentEZNS1_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS1_16BinaryBasicBlockENS_12DenseMapInfoIS8_vEEEEE3$_0EEDaOT_T0_.exit", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.w, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i"
  %.09.i.i.i = phi i32 [ %i.md, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i" ], [ 0, %bb.w ] ; 3 uses
  %.058.i.i.i = phi ptr [ %i.me, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i" ], [ %i.kx, %bb.w ] ; 2 uses
  %.05.val.i.i.i = load ptr, ptr %.058.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.lc = ptrtoint ptr %.05.val.i.i.i to i64
  %i.ld = mul i64 %i.lc, -4658895280553007687     ; 2 uses
  %i.le = lshr i64 %i.ld, 31
  %i.lf = xor i64 %i.le, %i.ld
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = and i32 %i.l, %i.lg                     ; 3 uses
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = lshr i64 %i.li, 5
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !16
  %i.lm = and i32 %i.lh, 31
  %i.ln = lshr i32 %i.ll, %i.lm
  %i.lo = trunc i32 %i.ln to i1
  br i1 %i.lo, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i", !prof !102

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i, %bb.x
  %i.lp = phi i64 [ %i.lv, %bb.x ], [ %i.li, %.lr.ph.split.i.i.i ]
  %.019.i.i.i.i.i.i.i.i = phi i32 [ %i.lu, %bb.x ], [ %i.lh, %.lr.ph.split.i.i.i ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !23
  %i.ls = icmp eq ptr %.05.val.i.i.i, %i.lr
  br i1 %i.ls, label %bb.y, label %bb.x, !prof !27

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.lt = add nuw i32 %.019.i.i.i.i.i.i.i.i, 1
  %i.lu = and i32 %i.lt, %i.l                     ; 3 uses
  %i.lv = zext i32 %i.lu to i64                   ; 2 uses
  %i.lw = lshr i64 %i.lv, 5
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !16
  %i.lz = and i32 %i.lu, 31
  %i.ma = lshr i32 %i.ly, %i.lz
  %i.mb = trunc i32 %i.ma to i1
  br i1 %i.mb, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i", !prof !103

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.mc = add i32 %.09.i.i.i, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i": ; preds = %bb.x, %bb.y, %.lr.ph.split.i.i.i
  %i.md = phi i32 [ %i.mc, %bb.y ], [ %.09.i.i.i, %.lr.ph.split.i.i.i ], [ %.09.i.i.i, %bb.x ] ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.058.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.me, %i.lb
  br i1 %.not.i.i.i, label %"_ZN4llvm8count_ifIRNS_4bolt16FunctionFragmentEZNS1_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS1_16BinaryBasicBlockENS_12DenseMapInfoIS8_vEEEEE3$_0EEDaOT_T0_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !93

"_ZN4llvm8count_ifIRNS_4bolt16FunctionFragmentEZNS1_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS1_16BinaryBasicBlockENS_12DenseMapInfoIS8_vEEEEE3$_0EEDaOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i", %bb.w
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.w ], [ %i.md, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm4bolt14FunctionLayout16eraseBasicBlocksENS2_8DenseSetIPKNS3_16BinaryBasicBlockENS2_12DenseMapInfoIS8_vEEEEE3$_0EclIPPS6_EEbT_.exit.thread.i.i.i" ] ; 2 uses
  %i.mf = sub i32 %i.kz, %.0.lcssa.i.i.i
  store i32 %i.mf, ptr %i.ky, align 8, !tbaa !20
  %i.mg = sub i32 %i.kv, %.02063
  store i32 %i.mg, ptr %i.ku, align 4, !tbaa !19
  %i.mh = add i32 %.0.lcssa.i.i.i, %.02063
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.032.062, i64 8 ; 2 uses
  %.not37 = icmp eq ptr %i.mi, %i.e
  br i1 %.not37, label %._crit_edge, label %bb.w

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit.loopexit: ; preds = %bb.aa
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit.loopexit, %"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_.exit"
  %i.mj = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit.loopexit ], [ %i.a, %"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_.exit" ] ; 3 uses
  %i.mk = ptrtoint ptr %.sink.i.i.i.i to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml                    ; 2 uses
  %i.mn = lshr exact i64 %i.mm, 3
  %i.mo = trunc i64 %i.mn to i32                  ; 2 uses
  store i32 %i.mo, ptr %i.b, align 8, !tbaa !18
  %.idx.i27 = and i64 %i.mm, 34359738360
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.idx.i27
  %.not2024.i = icmp eq i32 %i.mo, 0
  br i1 %.not2024.i, label %_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesEv.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit, %._crit_edge.i
  %.026.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit ] ; 3 uses
  %.sroa.016.025.i = phi ptr [ %i.nm, %._crit_edge.i ], [ %i.mj, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit ] ; 2 uses
  %i.mq = load ptr, ptr %.sroa.016.025.i, align 8, !tbaa !26 ; 4 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !15
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !21
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !19
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mw ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !20 ; 2 uses
  %i.na = zext i32 %i.mz to i64
  %.idx30.i = shl nuw nsw i64 %i.na, 3            ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx30.i
  %.not21.i = icmp eq i32 %i.mz, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph28.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 5 uses
  %i.nd = add nsw i64 %.idx30.i, -8               ; 2 uses
  %i.ne = lshr exact i64 %i.nd, 3
  %i.nf = add nuw nsw i64 %i.ne, 1
  %xtraiter = and i64 %i.nf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.123.i.prol = phi i32 [ %i.nh, %.prol.preheader ], [ %.026.i, %.lr.ph.i ] ; 2 uses
  %.01322.i.prol = phi ptr [ %i.nk, %.prol.preheader ], [ %i.mx, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ng = load ptr, ptr %.01322.i.prol, align 8, !tbaa !23 ; 2 uses
  %i.nh = add i32 %.123.i.prol, 1                 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 164
  store i32 %.123.i.prol, ptr %i.ni, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.i.prol = load i32, ptr %i.nc, align 8, !tbaa !16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 176
  store i32 %.sroa.0.0.copyload.i15.i.prol, ptr %i.nj, align 8, !tbaa !16
  %i.nk = getelementptr inbounds nuw i8, ptr %.01322.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !94

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.nh, %.prol.preheader ]
  %.123.i.unr = phi i32 [ %.026.i, %.lr.ph.i ], [ %i.nh, %.prol.preheader ]
  %.01322.i.unr = phi ptr [ %i.mx, %.lr.ph.i ], [ %i.nk, %.prol.preheader ]
  %i.nl = icmp ult i64 %i.nd, 24
  br i1 %i.nl, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph28.i
  %.1.lcssa.i = phi i32 [ %.026.i, %.lr.ph28.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.od, %.lr.ph.i.new ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8 ; 2 uses
  %.not20.i = icmp eq ptr %i.nm, %i.mp
  br i1 %.not20.i, label %_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesEv.exit, label %.lr.ph28.i

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.123.i = phi i32 [ %i.od, %.lr.ph.i.new ], [ %.123.i.unr, %.prol.loopexit ] ; 5 uses
  %.01322.i = phi ptr [ %i.og, %.lr.ph.i.new ], [ %.01322.i.unr, %.prol.loopexit ] ; 5 uses
  %i.nn = load ptr, ptr %.01322.i, align 8, !tbaa !23 ; 2 uses
  %i.no = add i32 %.123.i, 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 164
  store i32 %.123.i, ptr %i.np, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.i = load i32, ptr %i.nc, align 8, !tbaa !16
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 176
  store i32 %.sroa.0.0.copyload.i15.i, ptr %i.nq, align 8, !tbaa !16
  %i.nr = getelementptr inbounds nuw i8, ptr %.01322.i, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !23 ; 2 uses
  %i.nt = add i32 %.123.i, 2
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 164
  store i32 %i.no, ptr %i.nu, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.i.1 = load i32, ptr %i.nc, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 176
  store i32 %.sroa.0.0.copyload.i15.i.1, ptr %i.nv, align 8, !tbaa !16
  %i.nw = getelementptr inbounds nuw i8, ptr %.01322.i, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !23 ; 2 uses
  %i.ny = add i32 %.123.i, 3
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 164
  store i32 %i.nt, ptr %i.nz, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.i.2 = load i32, ptr %i.nc, align 8, !tbaa !16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 176
  store i32 %.sroa.0.0.copyload.i15.i.2, ptr %i.oa, align 8, !tbaa !16
  %i.ob = getelementptr inbounds nuw i8, ptr %.01322.i, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !23 ; 2 uses
  %i.od = add i32 %.123.i, 4                      ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 164
  store i32 %i.ny, ptr %i.oe, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.i.3 = load i32, ptr %i.nc, align 8, !tbaa !16
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 176
  store i32 %.sroa.0.0.copyload.i15.i.3, ptr %i.of, align 8, !tbaa !16
  %i.og = getelementptr inbounds nuw i8, ptr %.01322.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.og, %i.nb
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i.new

_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesEv.exit: ; preds = %._crit_edge.i, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit
  ret void

.lr.ph78:                                         ; preds = %"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_.exit", %bb.aa
  %.077 = phi ptr [ %i.oj, %bb.aa ], [ %.sink.i.i.i.i, %"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_.exit" ] ; 2 uses
  %i.oh = load ptr, ptr %.077, align 8, !tbaa !26 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph78
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef 56) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph78
  %i.oj = getelementptr inbounds nuw i8, ptr %.077, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.oj, %i.e
  br i1 %.not, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE5eraseEPKS3_S6_.exit.loopexit, label %.lr.ph78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not2024 = icmp eq i32 %i.c, 0
  br i1 %.not2024, label %._crit_edge29, label %.lr.ph28

._crit_edge29:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph28:                                         ; preds = %bb.a, %._crit_edge
  %.026 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.sroa.016.025 = phi ptr [ %i.ab, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.016.025, align 8, !tbaa !26 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx30 = shl nuw nsw i64 %i.p, 3               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx30
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.s = add nsw i64 %.idx30, -8                  ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.123.prol = phi i32 [ %i.w, %.prol.preheader ], [ %.026, %.lr.ph ] ; 2 uses
  %.01322.prol = phi ptr [ %i.z, %.prol.preheader ], [ %i.m, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.v = load ptr, ptr %.01322.prol, align 8, !tbaa !23 ; 2 uses
  %i.w = add i32 %.123.prol, 1                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  store i32 %.123.prol, ptr %i.x, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.prol = load i32, ptr %i.r, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store i32 %.sroa.0.0.copyload.i15.prol, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %.01322.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !108

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.w, %.prol.preheader ]
  %.123.unr = phi i32 [ %.026, %.lr.ph ], [ %i.w, %.prol.preheader ]
  %.01322.unr = phi ptr [ %i.m, %.lr.ph ], [ %i.z, %.prol.preheader ]
  %i.aa = icmp ult i64 %i.s, 24
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph28
  %.1.lcssa = phi i32 [ %.026, %.lr.ph28 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.as, %.lr.ph.new ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.ab, %i.e
  br i1 %.not20, label %._crit_edge29, label %.lr.ph28

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.123 = phi i32 [ %i.as, %.lr.ph.new ], [ %.123.unr, %.prol.loopexit ] ; 5 uses
  %.01322 = phi ptr [ %i.av, %.lr.ph.new ], [ %.01322.unr, %.prol.loopexit ] ; 5 uses
  %i.ac = load ptr, ptr %.01322, align 8, !tbaa !23 ; 2 uses
  %i.ad = add i32 %.123, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  store i32 %.123, ptr %i.ae, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.r, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  store i32 %.sroa.0.0.copyload.i15, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01322, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.ai = add i32 %.123, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 164
  store i32 %i.ad, ptr %i.aj, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.1 = load i32, ptr %i.r, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  store i32 %.sroa.0.0.copyload.i15.1, ptr %i.ak, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %.01322, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.an = add i32 %.123, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 164
  store i32 %i.ai, ptr %i.ao, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.2 = load i32, ptr %i.r, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  store i32 %.sroa.0.0.copyload.i15.2, ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %.01322, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 2 uses
  %i.as = add i32 %.123, 4                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 164
  store i32 %i.an, ptr %i.at, align 4, !tbaa !58
  %.sroa.0.0.copyload.i15.3 = load i32, ptr %i.r, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  store i32 %.sroa.0.0.copyload.i15.3, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %.01322, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.av, %i.q
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.new
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesENS_8ArrayRefIPNS0_16BinaryBasicBlockEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i64 %2, 2305843009213693951
  %i.b = and i64 %i.a, 2305843009213693951        ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %xtraiter = and i64 %i.c, 7                     ; 3 uses
  %i.d = icmp samesign ult i64 %i.b, 7
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 4611686018427387896
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.7.014.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.05.013.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.7.014.epil = phi i32 [ %i.g, %.lr.ph.epil ], [ %.sroa.7.014.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.05.013.epil = phi ptr [ %i.h, %.lr.ph.epil ], [ %.sroa.05.013.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.e = load ptr, ptr %.sroa.05.013.epil, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  store i32 %.sroa.7.014.epil, ptr %i.f, align 4, !tbaa !58
  %i.g = add i32 %.sroa.7.014.epil, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.013.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !109

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.7.014 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 9 uses
  %.sroa.05.013 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = load ptr, ptr %.sroa.05.013, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  store i32 %.sroa.7.014, ptr %i.j, align 4, !tbaa !58
  %i.k = or disjoint i32 %.sroa.7.014, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 164
  store i32 %i.k, ptr %i.n, align 4, !tbaa !58
  %i.o = or disjoint i32 %.sroa.7.014, 2
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  store i32 %i.o, ptr %i.r, align 4, !tbaa !58
  %i.s = or disjoint i32 %.sroa.7.014, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 164
  store i32 %i.s, ptr %i.v, align 4, !tbaa !58
  %i.w = or disjoint i32 %.sroa.7.014, 4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  store i32 %i.w, ptr %i.z, align 4, !tbaa !58
  %i.aa = or disjoint i32 %.sroa.7.014, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !58
  %i.ae = or disjoint i32 %.sroa.7.014, 6
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 164
end_hunk_1
begin_hunk_2_@_ZN4llvm4bolt14FunctionLayout6updateENS_8ArrayRefIPNS0_16BinaryBasicBlockEEE:bb.a
  %.2.val.val.i.i.i.i.i.i.i203.i.i.i.i.i = load i32, ptr %i.hn, align 8, !tbaa !16
  %.not41.i.i.i.i.i.i.i204.i.i.i.i.i = icmp eq i32 %.val.i.i173.i.i.i.i.i, %.2.val.val.i.i.i.i.i.i.i203.i.i.i.i.i
  br i1 %.not41.i.i.i.i.i.i.i204.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.at
  %i.ho = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i179.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit197": ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i179.i.i.i.i.i, i64 16
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit199": ; preds = %bb.av
  %i.hq = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i179.i.i.i.i.i, i64 24
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i": ; preds = %bb.as, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit197", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit199", %._crit_edge._crit_edge63.i.i.i.i.i.i.i200.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i205.i.i.i.i.i, %bb.ax
  %.028.i.i.i.i.i.i.i183.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i206.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i205.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i199.i.i.i.i.i, %bb.ax ], [ %.2.i.i.i.i.i.i.i201.i.i.i.i.i, %._crit_edge._crit_edge63.i.i.i.i.i.i.i200.i.i.i.i.i ], [ %i.hq, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit199" ], [ %i.ho, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit" ], [ %i.hp, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i.loopexit.split.loop.exit197" ], [ %.02956.i.i.i.i.i.i.i179.i.i.i.i.i, %bb.as ]
  %.not286.i.i.i.i.i = icmp eq ptr %i.gv, %.028.i.i.i.i.i.i.i183.i.i.i.i.i
  br i1 %.not286.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.thread.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i", %._crit_edge._crit_edge63.i.i.i.i.i.i.i200.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i197.i.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0264.1.i.i.i.i.i, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.0264.2.i.i.i.i.i = phi ptr [ %i.hr, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.thread.i.i.i.i.i" ], [ %.sroa.0264.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.hs = load ptr, ptr %.sroa.0264.2.i.i.i.i.i, align 8, !tbaa !26 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.val.i.i214.i.i.i.i.i = load i32, ptr %i.ht, align 4 ; 7 uses
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !21
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !19
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hz ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !20 ; 3 uses
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %.idx1.i.i.i215.i.i.i.i.i = shl nuw nsw i64 %i.id, 3 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx1.i.i.i215.i.i.i.i.i
  %i.if = lshr i64 %i.id, 2                       ; 2 uses
  %.not.i.i.i216.i.i.i.i.i = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i216.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i217.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i217.i.i.i.i.i:                ; preds = %bb.ba
  %i.ig = and i64 %.idx1.i.i.i215.i.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i218.i.i.i.i.i = getelementptr i8, ptr %i.ia, i64 %i.ig
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i217.i.i.i.i.i
  %.057.i.i.i.i.i.i.i219.i.i.i.i.i = phi i64 [ %i.if, %.lr.ph.i.i.i.i.i.i.i217.i.i.i.i.i ], [ %i.ip, %bb.bf ] ; 2 uses
  %.02956.i.i.i.i.i.i.i220.i.i.i.i.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i217.i.i.i.i.i ], [ %i.io, %bb.bf ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i221.i.i.i.i.i = load ptr, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, align 8, !tbaa !23
  %i.ih = getelementptr i8, ptr %.029.val39.i.i.i.i.i.i.i221.i.i.i.i.i, i64 176
  %.029.val39.val.i.i.i.i.i.i.i222.i.i.i.i.i = load i32, ptr %i.ih, align 8, !tbaa !16
  %.not42.i.i.i.i.i.i.i223.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.029.val39.val.i.i.i.i.i.i.i222.i.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i.i223.i.i.i.i.i, label %bb.bc, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.ii = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i.i.i225.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ij = getelementptr i8, ptr %.val37.i.i.i.i.i.i.i225.i.i.i.i.i, i64 176
  %.val37.val.i.i.i.i.i.i.i226.i.i.i.i.i = load i32, ptr %i.ij, align 8, !tbaa !16
  %.not43.i.i.i.i.i.i.i227.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.val37.val.i.i.i.i.i.i.i226.i.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i.i227.i.i.i.i.i, label %bb.bd, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit"

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i.i.i229.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !tbaa !23
  %i.il = getelementptr i8, ptr %.val35.i.i.i.i.i.i.i229.i.i.i.i.i, i64 176
  %.val35.val.i.i.i.i.i.i.i230.i.i.i.i.i = load i32, ptr %i.il, align 8, !tbaa !16
  %.not44.i.i.i.i.i.i.i231.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.val35.val.i.i.i.i.i.i.i230.i.i.i.i.i
  br i1 %.not44.i.i.i.i.i.i.i231.i.i.i.i.i, label %bb.be, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit205"

bb.be:                                            ; preds = %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i.i.i233.i.i.i.i.i = load ptr, ptr %i.im, align 8, !tbaa !23
  %i.in = getelementptr i8, ptr %.val33.i.i.i.i.i.i.i233.i.i.i.i.i, i64 176
  %.val33.val.i.i.i.i.i.i.i234.i.i.i.i.i = load i32, ptr %i.in, align 8, !tbaa !16
  %.not45.i.i.i.i.i.i.i235.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.val33.val.i.i.i.i.i.i.i234.i.i.i.i.i
  br i1 %.not45.i.i.i.i.i.i.i235.i.i.i.i.i, label %bb.bf, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit207"

bb.bf:                                            ; preds = %bb.be
  %i.io = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 32
  %i.ip = add nsw i64 %.057.i.i.i.i.i.i.i219.i.i.i.i.i, -1
  %i.iq = icmp sgt i64 %.057.i.i.i.i.i.i.i219.i.i.i.i.i, 1
  br i1 %i.iq, label %bb.bb, label %._crit_edge.loopexit.i.i.i.i.i.i.i237.i.i.i.i.i, !llvm.loop !110

._crit_edge.loopexit.i.i.i.i.i.i.i237.i.i.i.i.i:  ; preds = %bb.bf
  %i.ir = and i32 %i.ic, 3
  br label %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i:           ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i237.i.i.i.i.i, %bb.ba
  %.pre-phi67.i.i.i.i.i.i.i239.i.i.i.i.i = phi i32 [ %i.ir, %._crit_edge.loopexit.i.i.i.i.i.i.i237.i.i.i.i.i ], [ %i.ic, %bb.ba ]
  %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i218.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i237.i.i.i.i.i ], [ %i.ia, %bb.ba ] ; 5 uses
  switch i32 %.pre-phi67.i.i.i.i.i.i.i239.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.bg
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i251.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i, align 8, !tbaa !23
  %i.is = getelementptr i8, ptr %.029.val.i.i.i.i.i.i.i251.i.i.i.i.i, i64 176
  %.029.val.val.i.i.i.i.i.i.i252.i.i.i.i.i = load i32, ptr %i.is, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i253.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.029.val.val.i.i.i.i.i.i.i252.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i253.i.i.i.i.i, label %bb.bh, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

bb.bh:                                            ; preds = %bb.bg
  %i.it = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i: ; preds = %bb.bh, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i
  %.1.i.i.i.i.i.i.i247.i.i.i.i.i = phi ptr [ %i.it, %bb.bh ], [ %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i248.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i247.i.i.i.i.i, align 8, !tbaa !23
  %i.iu = getelementptr i8, ptr %.1.val.i.i.i.i.i.i.i248.i.i.i.i.i, i64 176
  %.1.val.val.i.i.i.i.i.i.i249.i.i.i.i.i = load i32, ptr %i.iu, align 8, !tbaa !16
  %.not40.i.i.i.i.i.i.i250.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.1.val.val.i.i.i.i.i.i.i249.i.i.i.i.i
  br i1 %.not40.i.i.i.i.i.i.i250.i.i.i.i.i, label %bb.bi, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

bb.bi:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i247.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i

._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i: ; preds = %bb.bi, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i
  %.2.i.i.i.i.i.i.i242.i.i.i.i.i = phi ptr [ %i.iv, %bb.bi ], [ %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i243.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i242.i.i.i.i.i, align 8, !tbaa !23
  %i.iw = getelementptr i8, ptr %.2.val.i.i.i.i.i.i.i243.i.i.i.i.i, i64 176
  %.2.val.val.i.i.i.i.i.i.i244.i.i.i.i.i = load i32, ptr %i.iw, align 8, !tbaa !16
  %.not41.i.i.i.i.i.i.i245.i.i.i.i.i = icmp eq i32 %.val.i.i214.i.i.i.i.i, %.2.val.val.i.i.i.i.i.i.i244.i.i.i.i.i
  br i1 %.not41.i.i.i.i.i.i.i245.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.bc
  %i.ix = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit205": ; preds = %bb.bd
  %i.iy = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 16
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit207": ; preds = %bb.be
  %i.iz = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, i64 24
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i": ; preds = %bb.bb, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit205", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit207", %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i, %bb.bg
  %.028.i.i.i.i.i.i.i224.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i247.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i246.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i240.i.i.i.i.i, %bb.bg ], [ %.2.i.i.i.i.i.i.i242.i.i.i.i.i, %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i ], [ %i.iz, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit207" ], [ %i.ix, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit" ], [ %i.iy, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i.loopexit.split.loop.exit205" ], [ %.02956.i.i.i.i.i.i.i220.i.i.i.i.i, %bb.bb ]
  %.not287.i.i.i.i.i = icmp eq ptr %i.ie, %.028.i.i.i.i.i.i.i224.i.i.i.i.i
  br i1 %.not287.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit49.i.i.i.i.i"
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0264.0334.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit181": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit90.i.i.i.i.i"
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0264.0334.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit183": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit131.i.i.i.i.i"
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0264.0334.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit.i.i.i.i.i", %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit181", %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit183", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit172.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i"
  %.sroa.0.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.0264.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit213.i.i.i.i.i" ], [ %.sroa.0264.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i" ], [ %.sroa.0264.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit172.i.i.i.i.i" ], [ %i.jc, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit183" ], [ %i.ja, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.jb, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit181" ], [ %.sroa.0264.0334.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit.i.i.i.i.i" ]
  %i.jd = icmp eq ptr %i.k, %.sroa.0.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.jd, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread", label %_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit.thread27

_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit.thread27: ; preds = %bb.a, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit", %_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit
  tail call void @_ZN4llvm4bolt14FunctionLayout5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %.idx100 = shl nuw nsw i64 %2, 3
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %.idx100
  %.not97 = icmp eq i64 %2, 0
  br i1 %.not97, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread", label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit.thread27
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  %.pre133 = load i32, ptr %i.jf, align 8, !tbaa !18
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph99, %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit
  %i.ji = phi i32 [ %.pre133, %.lr.ph99 ], [ %i.ks, %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit ] ; 2 uses
  %i.jj = phi ptr [ %.pre, %.lr.ph99 ], [ %i.kt, %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit ] ; 2 uses
  %.01398 = phi ptr [ %1, %.lr.ph99 ], [ %i.lb, %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit ] ; 2 uses
  %i.jk = load ptr, ptr %.01398, align 8, !tbaa !23 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 176
  %.sroa.0.0.copyload.i = load i32, ptr %i.jl, align 8, !tbaa !16 ; 2 uses
  %i.jm = zext i32 %i.ji to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !26
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.0.0.copyload.i1696 = load i32, ptr %i.jq, align 8, !tbaa !16
  %i.jr = icmp ult i32 %.sroa.0.0.copyload.i1696, %.sroa.0.0.copyload.i
  br i1 %i.jr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bj, %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit
  %i.js = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.jt = load i32, ptr %i.jf, align 8, !tbaa !18
  call void @_ZN4llvm4bolt16FunctionFragmentC1ERNS0_14FunctionLayoutENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(56) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %i.jt) #17
  %i.ju = load i32, ptr %i.jf, align 8, !tbaa !18 ; 3 uses
  %i.jv = load i32, ptr %i.jg, align 4, !tbaa !24
  %.not.i.i = icmp ult i32 %i.ju, %i.jv
  br i1 %.not.i.i, label %bb.bk, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_.exit, !prof !27

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_.exit: ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.js)
  %.pre134 = load ptr, ptr %0, align 8, !tbaa !21
  %.pre135 = load i32, ptr %i.jf, align 8, !tbaa !18
  br label %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit

bb.bk:                                            ; preds = %.lr.ph
  %i.jw = zext i32 %i.ju to i64
  %i.jx = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jw
  store ptr %i.js, ptr %i.jy, align 8, !tbaa !26
  %i.jz = add nuw i32 %i.ju, 1                    ; 2 uses
  store i32 %i.jz, ptr %i.jf, align 8, !tbaa !18
  br label %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit

_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_.exit, %bb.bk
  %i.ka = phi i32 [ %.pre135, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_.exit ], [ %i.jz, %bb.bk ] ; 2 uses
  %i.kb = phi ptr [ %.pre134, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_.exit ], [ %i.jx, %bb.bk ] ; 2 uses
  %i.kc = zext i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !26
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.kg, align 8, !tbaa !16
  %i.kh = icmp ult i32 %.sroa.0.0.copyload.i16, %.sroa.0.0.copyload.i
  br i1 %i.kh, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit, %bb.bj
  %i.ki = phi i32 [ %i.ji, %bb.bj ], [ %i.ka, %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit ]
  %i.kj = phi ptr [ %i.jj, %bb.bj ], [ %i.kb, %_ZN4llvm4bolt14FunctionLayout11addFragmentEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.jk, ptr %i.a, align 8, !tbaa !23
  %i.kk = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jk, i64 164
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !58
  %i.km = load i32, ptr %i.jh, align 4, !tbaa !24
  %.not.i.i17 = icmp ult i32 %i.kk, %i.km
  br i1 %.not.i.i17, label %bb.bm, label %bb.bl, !prof !27

bb.bl:                                            ; preds = %._crit_edge
  %i.kn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre136 = load ptr, ptr %0, align 8, !tbaa !21
  %.pre137 = load i32, ptr %i.jf, align 8, !tbaa !18
  br label %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit

bb.bm:                                            ; preds = %._crit_edge
  %i.ko = zext i32 %i.kk to i64
  %i.kp = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ko
  store ptr %i.jk, ptr %i.kq, align 8, !tbaa !23
  %i.kr = add nuw i32 %i.kk, 1
  store i32 %i.kr, ptr %i.d, align 8, !tbaa !18
  br label %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit: ; preds = %bb.bl, %bb.bm
  %i.ks = phi i32 [ %.pre137, %bb.bl ], [ %i.ki, %bb.bm ] ; 2 uses
  %i.kt = phi ptr [ %.pre136, %bb.bl ], [ %i.kj, %bb.bm ] ; 2 uses
  %i.ku = zext i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !20
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lb = getelementptr inbounds nuw i8, ptr %.01398, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.lb, %i.je
  br i1 %.not, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread", label %bb.bj

"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit.thread": ; preds = %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit, %_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit.thread27, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i, %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i", %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit"
  %.1 = phi i1 [ false, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentES4_EEEEZNS3_14FunctionLayout6updateENS_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EEbOT_T0_.exit" ], [ false, %._crit_edge.i.i.i.i.i.i.i238.i.i.i.i.i ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm4bolt14FunctionLayout6updateENS2_8ArrayRefIPNS3_16BinaryBasicBlockEEEE3$_0EclINS2_16pointee_iteratorIPKPNS3_16FunctionFragmentESD_EEEEbT_.exit254.i.i.i.i.i" ], [ false, %._crit_edge._crit_edge63.i.i.i.i.i.i.i241.i.i.i.i.i ], [ true, %_ZN4llvm5equalIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEERKNS_8ArrayRefIS4_EEEEbOT_OT0_.exit.thread27 ], [ true, %_ZN4llvm4bolt14FunctionLayout13addBasicBlockEPNS0_16BinaryBasicBlockE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14FunctionLayout5clearEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) initializes((24, 28)) %0) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit:
  %1 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not13 = icmp eq i32 %i.e, 1
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit
  %.012 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !24
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 8) #17
  %.pre8.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = load ptr, ptr %1, align 8, !tbaa !21
  %i.n = zext i32 %.pre8.pre.i.i.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  store ptr %i.i, ptr %i.o, align 1
  %.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !18
  %i.p = add i32 %.pre.i.i.i, 1                   ; 3 uses
  store i32 %i.p, ptr %i.k, align 8, !tbaa !18
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.q) #17
  %.pre.i10 = load i32, ptr %i.k, align 8, !tbaa !18
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit.thread

_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit.thread: ; preds = %bb.a, %bb.b
  %i.s = phi i32 [ %i.p, %bb.a ], [ %.pre.i10, %bb.b ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %i.t, ptr %0, align 8, !tbaa !21
  store i32 %i.s, ptr %i.d, align 8, !tbaa !18
  %i.u = load i32, ptr %i.l, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !24
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit: ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 8, !tbaa !18
  %.pre15 = load ptr, ptr %1, align 8, !tbaa !21  ; 2 uses
  %i.w = icmp eq ptr %.pre15, %i.j
  br i1 %i.w, label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit
  call void @free(ptr noundef %.pre15) #17
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit.thread, %_ZN4llvm11SmallVectorIPNS_4bolt16FunctionFragmentELj0EEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.x = load ptr, ptr %0, align 8, !tbaa !21
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !20
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.014 = phi ptr [ %.0, %bb.e ], [ %.012, %.lr.ph.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %.014, align 8, !tbaa !26 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 56) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0 = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %.0, %i.g
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = icmp eq ptr %i.a, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 8, !tbaa !16
  %i.k = zext i32 %.sroa.0.0.copyload.i to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !20
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  %i.z = icmp eq ptr %i.a, %i.y
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.aa, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKNS0_16BinaryBasicBlockEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx7 = shl nuw nsw i64 %i.e, 3                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx7 ; 2 uses
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = and i64 %.idx7, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.1.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit, label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit

_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit34: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit34, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %i.ai = phi ptr [ %i.aa, %._crit_edge._crit_edge.i.i.i.i ], [ %i.x, %bb.g ], [ %i.ad, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.r, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit34 ], [ %i.o, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31 ], [ %i.l, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.i, %bb.b ]
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.ah, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit34 ], [ %i.ag, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31 ], [ %i.af, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.b ] ; 2 uses
  %i.aj = icmp eq ptr %.028.i.i.i.i, %i.f
  br i1 %i.aj, label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 3 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.am, align 8, !tbaa !16
  %i.an = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = icmp eq ptr %i.ak, %i.bb
  br i1 %i.bc, label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !23
  br label %_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit

_ZNK4llvm4bolt14FunctionLayout18getBasicBlockAfterEPKPNS0_16BinaryBasicBlockEb.exit: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %bb.m, %bb.l, %bb.j, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit
  %.0 = phi ptr [ null, %bb.l ], [ null, %_ZN4llvm4findINS_14iterator_rangeIPKPNS_4bolt16BinaryBasicBlockEEEPKS3_EEDaOT_RKT0_.exit ], [ null, %bb.j ], [ %i.bd, %bb.m ], [ null, %._crit_edge.i.i.i.i ], [ null, %._crit_edge._crit_edge52.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_2
begin_hunk_3_@_ZNK4llvm4bolt14FunctionLayout7isSplitEv:bb.a
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.08.i.i.i.epil = phi i64 [ %spec.select.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.03.07.i.i.i.epil = phi ptr [ %i.ab, %.lr.ph.i.i.i.epil ], [ %.sroa.03.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.y = load ptr, ptr %.sroa.03.07.i.i.i.epil, align 8, !tbaa !26
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val.i.i.i.i.epil = load i32, ptr %i.z, align 8, !tbaa !20
  %.not5.i.i.i.epil = icmp ne i32 %.val.i.i.i.i.epil, 0
  %i.aa = zext i1 %.not5.i.i.i.epil to i64
  %spec.select.i.i.i.epil = add nuw nsw i64 %.08.i.i.i.epil, %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit", label %.lr.ph.i.i.i.epil, !llvm.loop !114

"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit": ; preds = %.lr.ph.i.i.i.epil, %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa"
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.3, %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ], [ %spec.select.i.i.i.epil, %.lr.ph.i.i.i.epil ]
  %i.ac = and i64 %spec.select.i.i.i.lcssa, 4294967294
  %i.ad = icmp ne i64 %i.ac, 0
  br label %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit"

"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit": ; preds = %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit", %bb.a
  %.0.lcssa.i.i.i = phi i1 [ false, %bb.a ], [ %i.ad, %"_ZN4llvm8count_ifINS_14iterator_rangeINS_16pointee_iteratorIPKPNS_4bolt16FunctionFragmentEKS4_EEEEZNKS3_14FunctionLayout7isSplitEvE3$_0EEDaOT_T0_.exit.loopexit" ]
  ret i1 %.0.lcssa.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_ZNK4llvm4bolt14FunctionLayout15getEditDistanceENS_8ArrayRefIPKNS0_16BinaryBasicBlockEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noundef i32 @_ZN4llvm25ComputeMappedEditDistanceIPKNS_4bolt16BinaryBasicBlockEZNS_19ComputeEditDistanceIS4_EEjNS_8ArrayRefIT_EES8_bjEUlRKS4_E_EEjS8_S8_T0_bj(ptr %1, i64 %2, ptr %i.b, i64 %i.e, i1 noundef zeroext true, i32 noundef 0)
  %i.g = zext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt14FunctionLayout17findBasicBlockPosEPKNS0_16BinaryBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx3.i = shl nuw nsw i64 %i.e, 3              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx3.i
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = and i64 %.idx3.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !23
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %bb.j [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !23
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.1.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !23
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !23
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit15: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit17: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit15, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit17, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.f, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %i.ah, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit17 ], [ %i.af, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ag, %_ZN4llvm4findIRKNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEPKS3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit15 ], [ %.02946.i.i.i.i, %bb.b ]
  ret ptr %.028.i.i.i.i
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !18
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !18
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !18
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !16
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !16
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !24
  store i32 0, ptr %i.j, align 8, !tbaa !18
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit
    i32 1, label %bb.h
  ], !prof !60

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !26
  store ptr %i.t, ptr %i.s, align 8, !tbaa !26
  br label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit

_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !18
  store i32 0, ptr %i.m, align 8, !tbaa !18
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #17
  br label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !26
  store ptr %i.z, ptr %i.y, align 8, !tbaa !26
  br label %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34

_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !18
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !18
  store i32 0, ptr %i.m, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN4llvm4bolt16FunctionFragmentES4_ET0_T_S6_S5_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPNS_4bolt16FunctionFragmentEE12assignRemoteEOS4_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !16
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !16
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !24
  store i32 0, ptr %i.j, align 8, !tbaa !18
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit
    i32 1, label %bb.h
  ], !prof !60

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !23
  store ptr %i.t, ptr %i.s, align 8, !tbaa !23
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit

_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !18
  store i32 0, ptr %i.m, align 8, !tbaa !18
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #17
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !23
  store ptr %i.z, ptr %i.y, align 8, !tbaa !23
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34

_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !18
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !18
  store i32 0, ptr %i.m, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !18
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !18
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !18
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !18
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKPN4llvm4bolt16BinaryBasicBlockESt15insert_iteratorINS3_11SmallVectorIS6_Lj0EEEEEET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i32, ptr %i.f, align 8, !tbaa !18
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit, %bb.a
  %.sroa.3.0.lcssa = phi ptr [ %3, %bb.a ], [ %i.aq, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.ap, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 4 uses
  %.08 = phi i64 [ %i.d, %.lr.ph ], [ %i.as, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %.057 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %.sroa.3.06 = phi ptr [ %3, %.lr.ph ], [ %i.aq, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %i.j = load ptr, ptr %.057, align 8, !tbaa !23  ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !21     ; 3 uses
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = icmp eq ptr %.sroa.3.06, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !24
  %.not.i.i.i.i = icmp ult i32 %i.i, %i.o
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.j)
  %.pre13.i.i.i = load i32, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.m, align 1
  %i.p = load i32, ptr %i.f, align 8, !tbaa !18
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %.pre13.i.i.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !21
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  br label %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.sroa.3.06 to i64
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !24
  %.not.i.i.not.i.i.i = icmp ult i32 %i.i, %i.z
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i64 %i.l, 1
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef %i.aa, i64 noundef 8) #17
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !21
  %.pre11.i.i.i = load i32, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %.pre14.i.i.i = zext i32 %.pre11.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.f ], [ %.pre14.i.i.i, %bb.g ]
  %i.ab = phi i32 [ %i.i, %bb.f ], [ %.pre11.i.i.i, %bb.g ] ; 2 uses
  %i.ac = phi ptr [ %i.k, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %.pre-phi.i.i.i, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !23
  %reass.sub.i.i.i = sub i64 %.idx.i.i.i, %i.y
  %gepdiff.i.i.i = add i64 %reass.sub.i.i.i, -8   ; 3 uses
  %i.ah = ashr exact i64 %gepdiff.i.i.i, 3        ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !27

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ad, i64 %gepdiff.i.i.i, i1 false)
  %.pre12.i.i.i = load i32, ptr %i.f, align 8, !tbaa !18
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i
  %i.al = icmp eq i64 %gepdiff.i.i.i, 8
  br i1 %i.al, label %bb.j, label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !23
  store ptr %i.am, ptr %i.af, align 8, !tbaa !23
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.an = phi i32 [ %.pre12.i.i.i, %bb.h ], [ %i.ab, %bb.i ], [ %i.ab, %bb.j ]
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !18
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !23
  br label %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit

_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i
  %i.ap = phi i32 [ %i.r, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i ], [ %i.ao, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i ]
  %.0.i.i.i = phi ptr [ %i.v, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i ], [ %i.ad, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.as = add nsw i64 %.08, -1
  %i.at = icmp sgt i64 %.08, 1
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !115
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4llvm25ComputeMappedEditDistanceIPKNS_4bolt16BinaryBasicBlockEZNS_19ComputeEditDistanceIS4_EEjNS_8ArrayRefIT_EES8_bjEUlRKS4_E_EEjS8_S8_T0_bj(ptr %0, i64 %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.51", align 8 ; 8 uses
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i64 %1, %3
  %7 = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true)
  %i.b = zext i32 %5 to i64
  %.not65 = icmp samesign ugt i64 %7, %i.b
  %i.c = add i32 %5, 1
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.d = add i64 %3, 1                            ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 64, ptr %i.g, align 4, !tbaa !24
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %.preheader.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %i.d, 64
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %6, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #17
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !18
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.d, %.pre13.i.i.i
  %.pre.pre.pre.pre = load ptr, ptr %6, align 8, !tbaa !21 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %bb.d
  %i.j = phi ptr [ %i.e, %bb.d ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.d ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %.pre-phi.i.i3.i
  %i.l = sub i64 %i.d, %.pre-phi.i.i3.i
  %i.m = shl i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.m, i1 false), !tbaa !16
  br label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit

_ZN4llvm11SmallVectorIjLj64EEC2Em.exit:           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.pre.pre.pre = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 7 uses
  %i.n = trunc i64 %i.d to i32                    ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !18
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit
  %.not6691 = icmp eq i64 %1, 0
  br i1 %.not6691, label %.thread, label %.lr.ph94

.preheader.thread:                                ; preds = %bb.c
  %.not6691154 = icmp eq i64 %1, 0
  br i1 %.not6691154, label %.thread, label %.lr.ph94.thread

.lr.ph94.thread:                                  ; preds = %.preheader.thread
  %i.p = add i32 %5, 1
  br label %.lr.ph94.split

.lr.ph94:                                         ; preds = %.preheader
  %.not6786 = icmp eq i64 %3, 0
  %i.q = add i32 %5, 1                            ; 2 uses
  br i1 %.not6786, label %.lr.ph94.split.us, label %.lr.ph94.split

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  br i1 %.not, label %.lr.ph94.split.us.split.us.preheader, label %.lr.ph94.split.us.split

.lr.ph94.split.us.split.us.preheader:             ; preds = %.lr.ph94.split.us
  %i.r = add i64 %1, 1
  %umax135 = call i64 @llvm.umax.i64(i64 %i.r, i64 2)
  %i.s = trunc i64 %umax135 to i32
  %i.t = add i32 %i.s, -1
  br label %..thread_crit_edge.split.us

.lr.ph94.split.us.split:                          ; preds = %.lr.ph94.split.us, %bb.e
  %.05392.us = phi i64 [ %i.v, %bb.e ], [ 1, %.lr.ph94.split.us ] ; 2 uses
  %i.u = trunc i64 %.05392.us to i32              ; 3 uses
  %.not116 = icmp ult i32 %5, %i.u
  br i1 %.not116, label %.loopexit.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph94.split.us.split
  %i.v = add i64 %.05392.us, 1                    ; 2 uses
  %.not66.us = icmp ugt i64 %i.v, %1
  br i1 %.not66.us, label %..thread_crit_edge.split.us, label %.lr.ph94.split.us.split, !llvm.loop !116

..thread_crit_edge.split.us:                      ; preds = %bb.e, %.lr.ph94.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.t, %.lr.ph94.split.us.split.us.preheader ], [ %i.u, %bb.e ]
  store i32 %.us-phi, ptr %.pre.pre.pre, align 4, !tbaa !16
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph94.split.us.split
  store i32 %i.u, ptr %.pre.pre.pre, align 4, !tbaa !16
  br label %.loopexit

.lr.ph94.split:                                   ; preds = %.lr.ph94.thread, %.lr.ph94
  %i.w = phi i32 [ %i.p, %.lr.ph94.thread ], [ %i.q, %.lr.ph94 ] ; 2 uses
  %.pre.pre152155160 = phi ptr [ %i.e, %.lr.ph94.thread ], [ %.pre.pre.pre, %.lr.ph94 ] ; 23 uses
  %umax131 = call i64 @llvm.umax.i64(i64 %i.d, i64 2) ; 4 uses
  br i1 %4, label %.lr.ph94.split.split.us, label %.lr.ph94.split.split

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us.us.preheader, label %.lr.ph90.us

.lr.ph90.us.us.preheader:                         ; preds = %.lr.ph94.split.split.us
  %i.x = add i64 %1, 1
  %umax133 = call i64 @llvm.umax.i64(i64 %i.x, i64 2)
  %i.y = add i64 %umax131, -1                     ; 3 uses
  %xtraiter185 = and i64 %i.y, 1
  %i.z = icmp ult i64 %i.d, 3
  %unroll_iter190 = and i64 %i.y, -2
  %lcmp.mod188.not = icmp eq i64 %xtraiter185, 0
  %lcmp.mod189 = trunc i64 %i.y to i1
  br label %.lr.ph90.us.us

.lr.ph90.us.us:                                   ; preds = %.lr.ph90.us.us.preheader, %._crit_edge.split.us.us.us
  %.05392.us97.us = phi i64 [ %i.bm, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph90.us.us.preheader ] ; 3 uses
  %i.aa = trunc i64 %.05392.us97.us to i32        ; 3 uses
  %i.ab = add i64 %.05392.us97.us, -1             ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 3 uses
  br i1 %i.z, label %.epil.preheader184, label %.lr.ph90.us.us.new

.lr.ph90.us.us.new:                               ; preds = %.lr.ph90.us.us, %.lr.ph90.us.us.new
  %i.af = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph90.us.us.new ], [ %i.aa, %.lr.ph90.us.us ]
  %.05189.us.us.us = phi i64 [ %i.bb, %.lr.ph90.us.us.new ], [ 1, %.lr.ph90.us.us ] ; 4 uses
  %.05288.us.us.us = phi i32 [ %i.as, %.lr.ph90.us.us.new ], [ %i.ac, %.lr.ph90.us.us ]
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph90.us.us.new ], [ 0, %.lr.ph90.us.us ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = icmp ne ptr %i.ae, %i.ak
  %i.am = zext i1 %i.al to i32
  %i.an = add i32 %.05288.us.us.us, %i.am
  %i.ao = call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.af)
  %i.ap = add i32 %i.ao, 1
  %.sroa.speculated.us.us.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.ag, align 4, !tbaa !16
  %i.aq = add nuw i64 %.05189.us.us.us, 1         ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %2, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.aw = icmp ne ptr %i.ae, %i.av
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add i32 %i.ah, %i.ax
  %i.az = call i32 @llvm.umin.i32(i32 %i.as, i32 %.sroa.speculated.us.us.us)
  %i.ba = add i32 %i.az, 1
  %.sroa.speculated.us.us.us.1 = call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.ay) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.ar, align 4, !tbaa !16
  %i.bb = add nuw i64 %.05189.us.us.us, 2         ; 2 uses
  %niter191.next.1 = add nuw i64 %niter191, 2     ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph90.us.us.new, !llvm.loop !117

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph90.us.us.new
  br i1 %lcmp.mod188.not, label %._crit_edge.split.us.us.us, label %.epil.preheader184

.epil.preheader184:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph90.us.us
  %.epil.init187 = phi i32 [ %i.aa, %.lr.ph90.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.05189.us.us.us.epil.init = phi i64 [ 1, %.lr.ph90.us.us ], [ %i.bb, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.05288.us.us.us.epil.init = phi i32 [ %i.ac, %.lr.ph90.us.us ], [ %i.as, %._crit_edge.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us.epil.init ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us.epil.init
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = icmp ne ptr %i.ae, %i.bg
  %i.bi = zext i1 %i.bh to i32
  %i.bj = add i32 %.05288.us.us.us.epil.init, %i.bi
  %i.bk = call i32 @llvm.umin.i32(i32 %i.bd, i32 %.epil.init187)
  %i.bl = add i32 %i.bk, 1
  %.sroa.speculated.us.us.us.epil = call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bj)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.bc, align 4, !tbaa !16
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader184
  %i.bm = add nuw i64 %.05392.us97.us, 1          ; 2 uses
  %exitcond134 = icmp eq i64 %i.bm, %umax133
  br i1 %exitcond134, label %.thread.loopexit, label %.lr.ph90.us.us, !llvm.loop !116

.lr.ph90.us:                                      ; preds = %.lr.ph94.split.split.us, %bb.g
  %.05392.us97 = phi i64 [ %i.ce, %bb.g ], [ 1, %.lr.ph94.split.split.us ] ; 3 uses
  %i.bn = trunc i64 %.05392.us97 to i32           ; 4 uses
  %i.bo = add i64 %.05392.us97, -1                ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph90.us
  %i.bs = phi i32 [ %i.bn, %.lr.ph90.us ], [ %.sroa.speculated.us.us, %bb.f ]
  %.05189.us.us = phi i64 [ 1, %.lr.ph90.us ], [ %i.cd, %bb.f ] ; 3 uses
  %.05288.us.us = phi i32 [ %i.bp, %.lr.ph90.us ], [ %i.bu, %bb.f ]
  %.08287.us.us = phi i32 [ %i.bn, %.lr.ph90.us ], [ %.sroa.speculated76.us.us, %bb.f ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !23
  %i.by = icmp ne ptr %i.br, %i.bx
  %i.bz = zext i1 %i.by to i32
  %i.ca = add i32 %.05288.us.us, %i.bz
  %i.cb = call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.bs)
  %i.cc = add i32 %i.cb, 1
  %.sroa.speculated.us.us = call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.ca) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.bt, align 4, !tbaa !16
  %.sroa.speculated76.us.us = call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08287.us.us) ; 2 uses
  %i.cd = add nuw i64 %.05189.us.us, 1            ; 2 uses
  %exitcond130 = icmp eq i64 %i.cd, %umax131
  br i1 %exitcond130, label %._crit_edge.split.us.us, label %bb.f, !llvm.loop !117

._crit_edge.split.us.us:                          ; preds = %bb.f
  %.not113 = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not113, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.split.us.us
  %i.ce = add i64 %.05392.us97, 1                 ; 2 uses
  %.not66.us100 = icmp ugt i64 %i.ce, %1
  br i1 %.not66.us100, label %.thread.loopexit161, label %.lr.ph90.us, !llvm.loop !116

.lr.ph94.split.split:                             ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us103.preheader, label %.lr.ph90

.lr.ph90.us103.preheader:                         ; preds = %.lr.ph94.split.split
  %i.cf = add i64 %1, 1
  %umax127 = call i64 @llvm.umax.i64(i64 %i.cf, i64 2)
  %i.cg = add i64 %umax131, -1                    ; 3 uses
  %xtraiter = and i64 %i.cg, 1
  %i.ch = icmp ult i64 %i.d, 3
  %unroll_iter = and i64 %i.cg, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod183 = trunc i64 %i.cg to i1
  br label %.lr.ph90.us103

.lr.ph90.us103:                                   ; preds = %.lr.ph90.us103.preheader, %._crit_edge.split.us
  %.05392.us105 = phi i64 [ %i.dt, %._crit_edge.split.us ], [ 1, %.lr.ph90.us103.preheader ] ; 3 uses
  %i.ci = trunc i64 %.05392.us105 to i32          ; 3 uses
  store i32 %i.ci, ptr %.pre.pre152155160, align 4, !tbaa !16
  %i.cj = add i64 %.05392.us105, -1               ; 2 uses
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph90.us103.new

.lr.ph90.us103.new:                               ; preds = %.lr.ph90.us103, %bb.k
  %i.cn = phi i32 [ %storemerge111.1, %bb.k ], [ %i.ci, %.lr.ph90.us103 ]
  %.05189.us = phi i64 [ %i.di, %bb.k ], [ 1, %.lr.ph90.us103 ] ; 6 uses
  %.05288.us = phi i32 [ %i.da, %bb.k ], [ %i.ck, %.lr.ph90.us103 ]
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.lr.ph90.us103 ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16 ; 2 uses
  %i.cq = add nsw i64 %.05189.us, -1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.ct = icmp eq ptr %i.cm, %i.cs
  br i1 %i.ct, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph90.us103.new
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.cq
  %i.cv = icmp ult i32 %i.cp, %i.cn
  %..i70.us = select i1 %i.cv, ptr %i.co, ptr %i.cu
  %i.cw = load i32, ptr %..i70.us, align 4, !tbaa !16
  %i.cx = add i32 %i.cw, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph90.us103.new, %bb.h
  %storemerge111 = phi i32 [ %i.cx, %bb.h ], [ %.05288.us, %.lr.ph90.us103.new ] ; 2 uses
  store i32 %storemerge111, ptr %i.co, align 4, !tbaa !16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !16 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05189.us
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23
  %i.dd = icmp eq ptr %i.cm, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us
  %i.df = icmp ult i32 %i.da, %storemerge111
  %..i70.us.1 = select i1 %i.df, ptr %i.cz, ptr %i.de
  %i.dg = load i32, ptr %..i70.us.1, align 4, !tbaa !16
  %i.dh = add i32 %i.dg, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge111.1 = phi i32 [ %i.dh, %bb.j ], [ %i.cp, %bb.i ] ; 3 uses
  store i32 %storemerge111.1, ptr %i.cz, align 4, !tbaa !16
  %i.di = add nuw i64 %.05189.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph90.us103.new, !llvm.loop !117

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.k
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph90.us103
  %.epil.init = phi i32 [ %i.ci, %.lr.ph90.us103 ], [ %storemerge111.1, %._crit_edge.split.us.unr-lcssa ]
  %.05189.us.epil.init = phi i64 [ 1, %.lr.ph90.us103 ], [ %i.di, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05288.us.epil.init = phi i32 [ %i.ck, %.lr.ph90.us103 ], [ %i.da, %._crit_edge.split.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.epil.init ; 3 uses
  %i.dk = add i64 %.05189.us.epil.init, -1        ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23
  %i.dn = icmp eq ptr %i.cm, %i.dm
  br i1 %i.dn, label %._crit_edge.split.us.epilog-lcssa, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %i.do = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.dk
  %i.dq = icmp ult i32 %i.do, %.epil.init
  %..i70.us.epil = select i1 %i.dq, ptr %i.dj, ptr %i.dp
  %i.dr = load i32, ptr %..i70.us.epil, align 4, !tbaa !16
  %i.ds = add i32 %i.dr, 1
  br label %._crit_edge.split.us.epilog-lcssa

._crit_edge.split.us.epilog-lcssa:                ; preds = %bb.l, %.epil.preheader
  %storemerge111.epil = phi i32 [ %i.ds, %bb.l ], [ %.05288.us.epil.init, %.epil.preheader ]
  store i32 %storemerge111.epil, ptr %i.dj, align 4, !tbaa !16
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %._crit_edge.split.us.epilog-lcssa
  %i.dt = add nuw i64 %.05392.us105, 1            ; 2 uses
  %exitcond128 = icmp eq i64 %i.dt, %umax127
  br i1 %exitcond128, label %.thread, label %.lr.ph90.us103, !llvm.loop !116

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, %.lr.ph
  %.05485 = phi i32 [ %i.dw, %.lr.ph ], [ 1, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit ] ; 3 uses
  %i.du = zext i32 %.05485 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %i.du
  store i32 %.05485, ptr %i.dv, align 4, !tbaa !16
  %i.dw = add nuw i32 %.05485, 1                  ; 2 uses
  %i.dx = load i32, ptr %i.f, align 8, !tbaa !18
  %i.dy = icmp ugt i32 %i.dx, %i.dw
  br i1 %i.dy, label %.lr.ph, label %.preheader, !llvm.loop !118

bb.m:                                             ; preds = %._crit_edge.split
  %i.dz = add i64 %.05392, 1                      ; 2 uses
  %.not66 = icmp ugt i64 %i.dz, %1
  br i1 %.not66, label %.thread, label %.lr.ph90, !llvm.loop !116

.lr.ph90:                                         ; preds = %.lr.ph94.split.split, %bb.m
  %.05392 = phi i64 [ %i.dz, %bb.m ], [ 1, %.lr.ph94.split.split ] ; 3 uses
  %i.ea = trunc i64 %.05392 to i32                ; 3 uses
  store i32 %i.ea, ptr %.pre.pre152155160, align 4, !tbaa !16
  %i.eb = add i64 %.05392, -1                     ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eb
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  br label %bb.n

._crit_edge.split:                                ; preds = %bb.p
  %.not110 = icmp ugt i32 %.sroa.speculated76, %5
  br i1 %.not110, label %.loopexit, label %bb.m

bb.n:                                             ; preds = %.lr.ph90, %bb.p
  %i.ef = phi i32 [ %i.ea, %.lr.ph90 ], [ %storemerge, %bb.p ]
  %.05189 = phi i64 [ 1, %.lr.ph90 ], [ %i.eq, %bb.p ] ; 3 uses
  %.05288 = phi i32 [ %i.ec, %.lr.ph90 ], [ %i.eh, %bb.p ]
  %.08287 = phi i32 [ %i.ea, %.lr.ph90 ], [ %.sroa.speculated76, %bb.p ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16 ; 2 uses
  %i.ei = add i64 %.05189, -1                     ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !23
  %i.el = icmp eq ptr %i.ee, %i.ek
  br i1 %i.el, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.ei
  %i.en = icmp ult i32 %i.eh, %i.ef
  %..i70 = select i1 %i.en, ptr %i.eg, ptr %i.em
  %i.eo = load i32, ptr %..i70, align 4, !tbaa !16
  %i.ep = add i32 %i.eo, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %storemerge = phi i32 [ %i.ep, %bb.o ], [ %.05288, %bb.n ] ; 3 uses
  store i32 %storemerge, ptr %i.eg, align 4, !tbaa !16
  %.sroa.speculated76 = call i32 @llvm.umin.i32(i32 %storemerge, i32 %.08287) ; 2 uses
  %i.eq = add nuw i64 %.05189, 1                  ; 2 uses
  %exitcond = icmp eq i64 %i.eq, %umax131
  br i1 %exitcond, label %._crit_edge.split, label %bb.n, !llvm.loop !117

.thread.loopexit:                                 ; preds = %._crit_edge.split.us.us.us
  store i32 %i.aa, ptr %.pre.pre152155160, align 4, !tbaa !16
  br label %.thread

.thread.loopexit161:                              ; preds = %bb.g
  store i32 %i.bn, ptr %.pre.pre152155160, align 4, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.m, %._crit_edge.split.us, %.thread.loopexit161, %.thread.loopexit, %.preheader.thread, %..thread_crit_edge.split.us, %.preheader
  %.pre.pre152156 = phi ptr [ %i.e, %.preheader.thread ], [ %.pre.pre152155160, %.thread.loopexit161 ], [ %.pre.pre152155160, %.thread.loopexit ], [ %.pre.pre152155160, %._crit_edge.split.us ], [ %.pre.pre.pre, %.preheader ], [ %.pre.pre.pre, %..thread_crit_edge.split.us ], [ %.pre.pre152155160, %bb.m ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152156, i64 %3
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge.split.us.us
  store i32 %i.bn, ptr %.pre.pre152155160, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split, %.loopexit.loopexit, %.loopexit.split.us, %.thread
  %.pre.pre152157 = phi ptr [ %.pre.pre152156, %.thread ], [ %.pre.pre.pre, %.loopexit.split.us ], [ %.pre.pre152155160, %.loopexit.loopexit ], [ %.pre.pre152155160, %._crit_edge.split ] ; 2 uses
  %.5 = phi i32 [ %i.es, %.thread ], [ %i.q, %.loopexit.split.us ], [ %i.w, %.loopexit.loopexit ], [ %i.w, %._crit_edge.split ]
  %i.et = icmp eq ptr %.pre.pre152157, %i.e
  br i1 %i.et, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  call void @free(ptr noundef %.pre.pre152157) #17
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit ], [ %i.c, %bb.b ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4llvm4bolt14FunctionLayoutE", !10, i64 0}
!12 = !{!"_ZTSN4llvm4bolt11FragmentNumE", !7, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSN4llvm4bolt16FunctionFragmentE", !11, i64 0, !12, i64 8, !7, i64 12, !7, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!15 = !{!14, !11, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !7, i64 8, !7, i64 12}
!18 = !{!17, !7, i64 8}
!19 = !{!14, !7, i64 12}
!20 = !{!14, !7, i64 16}
!21 = !{!17, !10, i64 0}
!22 = !{!"p1 _ZTSN4llvm4bolt16BinaryBasicBlockE", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!17, !7, i64 12}
!25 = !{!"p1 _ZTSN4llvm4bolt16FunctionFragmentE", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!11, !11, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{i64 0, i64 8, !28, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 24, i64 8, !29, i64 32, i64 8, !29, i64 40, i64 8, !29, i64 48, i64 8, !29}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"p1 _ZTSN4llvm6MCInstE", !10, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4llvm6MCInstESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN4llvm6MCInstESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_4bolt16BinaryBasicBlockEvEE", !17, i64 0}
!39 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEvEE", !17, i64 0}
!43 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELb1EEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EEE", !44, i64 0}
!46 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !10, i64 0}
!47 = !{!"p1 _ZTSN4llvm8MCSymbolE", !10, i64 0}
!48 = !{!"_ZTSSt4pairIjjE", !7, i64 0, !7, i64 4}
!49 = !{!"p1 _ZTSSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS5_EE", !10, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EELb0EE", !49, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !50, i64 0}
!52 = !{!"_ZTSSt5tupleIJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_ELb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !54, i64 0}
!56 = !{!"bool", !6, i64 0}
!57 = !{!"_ZTSN4llvm4bolt16BinaryBasicBlockE", !37, i64 0, !41, i64 24, !41, i64 40, !45, i64 56, !41, i64 72, !41, i64 88, !46, i64 104, !47, i64 112, !48, i64 120, !48, i64 128, !55, i64 136, !7, i64 144, !7, i64 148, !13, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !12, i64 176, !56, i64 180, !56, i64 181, !13, i64 184}
!58 = !{!57, !7, i64 164}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!67 = distinct !{!67, !66, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!69 = distinct !{!69, !68, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!70 = distinct !{!70, !59}
!71 = distinct !{!71, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!72 = distinct !{!72, !71, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!74 = distinct !{!74, !73, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!76 = distinct !{!76, !75, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!78 = distinct !{!78, !77, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!80 = distinct !{!80, !79, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!82 = distinct !{!82, !81, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!83 = distinct !{!83, !59}
!84 = distinct !{!84, i1 true, !"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_"}
!85 = distinct !{!85, !84, !"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZSt11find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISB_vEEEEE3$_1ET_SG_SG_T0_"}
!87 = distinct !{!87, !86, !"_ZSt11find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISB_vEEEEE3$_1ET_SG_SG_T0_: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZSt13__find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops10_Iter_predIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_"}
!89 = distinct !{!89, !88, !"_ZSt13__find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops10_Iter_predIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops12_Iter_negateIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_St26random_access_iterator_tag"}
!91 = distinct !{!91, !90, !"_ZSt9__find_ifISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops12_Iter_negateIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_St26random_access_iterator_tag: argument 0"}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = distinct !{!94, !31}
!95 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPKNS_4bolt16BinaryBasicBlockEEE", !10, i64 0}
!96 = !{!"p1 int", !10, i64 0}
!97 = !{!"_ZTSN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEE", !95, i64 0, !96, i64 8, !7, i64 16, !7, i64 20}
!98 = !{!97, !95, i64 0}
!99 = !{!69, !67}
!100 = !{!97, !96, i64 8}
!101 = !{!97, !7, i64 20}
!102 = !{!"branch_weights", i32 1, i32 1999}
!103 = !{!"branch_weights", i32 0, i32 1}
!104 = !{!74, !72}
!105 = !{!78, !76}
!106 = !{!82, !80}
!107 = !{!91, !89, !87, !85}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !59}
end_hunk_3
