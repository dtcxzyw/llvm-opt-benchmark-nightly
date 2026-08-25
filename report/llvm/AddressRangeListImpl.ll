Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AddressRangeListImpl?download=true
inline.NumInlined: 92
inline.NumDeleted: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.lldb_private::AddressRange" = type { %"class.lldb_private::Address", i64 }
%"class.lldb_private::Address" = type { %"class.std::weak_ptr", i64 }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }

$_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE7reserveEm = comdat any

$_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN12lldb_private20AddressRangeListImplC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private20AddressRangeListImplC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImplC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 -288230376151711744, 288230376151711744) i64 @_ZNK12lldb_private20AddressRangeListImpl7GetSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImpl7ReserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i, label %bb.h

_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #13 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.r = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !17
  store <2 x ptr> %i.r, ptr %.011.i.i.i.i.i, align 8, !tbaa !17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !19
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !19
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !20
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE11_M_allocateEm.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !8  ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.pre, %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 2 uses
  tail call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ac, %.pre8
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.ag) #15
  br label %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN12lldb_private12AddressRangeESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !17
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !19
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !19
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i

_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i:   ; preds = %bb.e, %bb.d, %bb.b
  %i.m = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !20
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.q, ptr %i.a, align 8, !tbaa !8
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImpl6AppendERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %1, align 8, !tbaa !12
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 5
  %i.o = add nsw i64 %i.n, %i.g
  tail call void @_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o)
  %i.p = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not9 = icmp eq ptr %i.p, %i.q
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit
  %.sroa.06.010 = phi ptr [ %i.p, %.lr.ph ], [ %i.ah, %_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit ] ; 5 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.w = load <2 x ptr>, ptr %.sroa.06.010, align 8, !tbaa !17
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !17
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.x, align 4, !tbaa !19
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !19
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 16
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !20
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !8
  br label %_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.010)
  br label %_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit

_ZN12lldb_private20AddressRangeListImpl6AppendERKNS_12AddressRangeE.exit: ; preds = %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImpl5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i.i.i) #14
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !8
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20AddressRangeListImpl22GetAddressRangeAtIndexEm(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::AddressRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12lldb_private12AddressRangeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %bb.g

end_hunk_0
