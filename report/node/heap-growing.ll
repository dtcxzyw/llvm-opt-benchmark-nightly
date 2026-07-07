inline.NumInlined: 83
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.v8::base::TimeDelta" = type { i64 }

$_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl28AllocatedObjectSizeDecreasedEm = comdat any

$_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeIncreasedEm = comdat any

$_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeDecreasedEm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE = comdat any

$_ZN5cppgc8internal11HeapGrowing14kGrowingFactorE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZTVN5cppgc8internal11HeapGrowing15HeapGrowingImplE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl28AllocatedObjectSizeIncreasedEm, ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl28AllocatedObjectSizeDecreasedEm, ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl24ResetAllocatedObjectSizeEm, ptr @_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeIncreasedEm, ptr @_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeDecreasedEm] }, align 8
@_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE = linkonce_odr hidden constant %"class.v8::base::TimeDelta" { i64 500000 }, comdat, align 8
@_ZN5cppgc8internal11HeapGrowing14kGrowingFactorE = weak_odr hidden local_unnamed_addr constant double 1.500000e+00, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

@_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplC1EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS7_11MarkingTypeENS7_12SweepingTypeE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64, i8, i8), ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplC2EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS7_11MarkingTypeENS7_12SweepingTypeE
@_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplD2Ev
@_ZN5cppgc8internal11HeapGrowingC1EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS6_11MarkingTypeENS6_12SweepingTypeE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64, i8, i8), ptr @_ZN5cppgc8internal11HeapGrowingC2EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS6_11MarkingTypeENS6_12SweepingTypeE
@_ZN5cppgc8internal11HeapGrowingD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5cppgc8internal11HeapGrowingD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplC2EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS7_11MarkingTypeENS7_12SweepingTypeE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 67)) %0, ptr noundef %1, ptr noundef %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5cppgc8internal11HeapGrowing15HeapGrowingImplE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 1048576, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11, !noalias !8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !noalias !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !noalias !5
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !noalias !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i8 0, ptr %i.j, align 8, !noalias !5
  store ptr %i.g, ptr %i.e, align 8, !alias.scope !5
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %4, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 %5, ptr %i.m, align 2
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %3, %bb.b ], [ 1048576, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = uitofp i64 %i.n to double                ; 2 uses
  %i.r = fmul nnan double %i.q, 1.500000e+00
  %i.s = fptoui double %i.r to i64
  %i.t = add i64 %i.n, 655360
  %.sroa.speculated18.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.s)
  store i64 %.sroa.speculated18.i, ptr %i.o, align 8
  %i.u = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE) #12
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = tail call noundef double @_ZNK5cppgc8internal14StatsCollector36GetRecentAllocationSpeedInBytesPerMsEv(ptr noundef nonnull align 8 dereferenceable(336) %i.v) #12
  %i.x = fmul double %i.u, %i.w
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %i.z = fptoui double %i.y to i64
  %i.aa = load i64, ptr %i.o, align 8             ; 2 uses
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = sub i64 %i.aa, %i.n
  %i.ad = uitofp i64 %i.ac to double
  %6 = insertelement <2 x double> poison, double %i.ad, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x double> poison, double %i.q, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> <double 9.000000e-01, double 5.000000e-01>, <2 x double> %9) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.ae = fptoui double %11 to i64
  %12 = extractelement <2 x double> %10, i64 1
  %i.af = fptoui double %12 to i64
  %.sroa.speculated11.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae)
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated11.i, i64 %i.af)
  store i64 %.sroa.speculated.i, ptr %i.p, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector16RegisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336) %2, ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl14ConfigureLimitEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((32, 48)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated23 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.b) ; 3 uses
  %i.c = uitofp i64 %.sroa.speculated23 to double ; 2 uses
  %i.d = fmul nnan double %i.c, 1.500000e+00
  %i.e = fptoui double %i.d to i64
  %i.f = add i64 %.sroa.speculated23, 655360
  %.sroa.speculated18 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %.sroa.speculated18, ptr %i.g, align 8
  %i.h = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double @_ZNK5cppgc8internal14StatsCollector36GetRecentAllocationSpeedInBytesPerMsEv(ptr noundef nonnull align 8 dereferenceable(336) %i.j) #12
  %i.l = fmul double %i.h, %i.k
  %i.m = tail call double @llvm.ceil.f64(double %i.l)
  %i.n = fptoui double %i.m to i64
  %i.o = load i64, ptr %i.g, align 8              ; 2 uses
  %i.p = sub i64 %i.o, %i.n
  %i.q = sub i64 %i.o, %.sroa.speculated23
  %i.r = uitofp i64 %i.q to double
  %2 = insertelement <2 x double> poison, double %i.r, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %i.c, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double 9.000000e-01, double 5.000000e-01>, <2 x double> %5) ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.s = fptoui double %7 to i64
  %8 = extractelement <2 x double> %6, i64 1
  %i.t = fptoui double %8 to i64
  %.sroa.speculated11 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s)
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated11, i64 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated, ptr %i.u, align 8
  ret void
}

declare void @_ZN5cppgc8internal14StatsCollector16RegisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector18UnregisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef nonnull %0) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5cppgc8internal20SingleThreadedHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #12, !inline_history !11
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #12, !inline_history !11
  br label %_ZN5cppgc8internal20SingleThreadedHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN5cppgc8internal20SingleThreadedHandleD2Ev.exit, !prof !12

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #12
  br label %_ZN5cppgc8internal20SingleThreadedHandleD2Ev.exit

_ZN5cppgc8internal20SingleThreadedHandleD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

declare void @_ZN5cppgc8internal14StatsCollector18UnregisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl28AllocatedObjectSizeIncreasedEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_object_sizeEv(ptr noundef nonnull align 8 dereferenceable(336) %i.e) #12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.m = load i8, ptr %i.l, align 2
  %.sroa.510.8.insert.ext = zext i8 %i.m to i32
  %.sroa.510.8.insert.shift = shl nuw nsw i32 %.sroa.510.8.insert.ext, 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 1, i32 %.sroa.510.8.insert.shift) #12
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ugt i64 %i.f, %i.q
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.y = load i8, ptr %i.x, align 2
  %.sroa.5.8.insert.ext = zext i8 %i.y to i32
  %.sroa.5.8.insert.shift = shl nuw nsw i32 %.sroa.5.8.insert.ext, 8
  %.sroa.3.8.insert.ext = zext i8 %i.t to i32
  %.sroa.3.8.insert.insert = or disjoint i32 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 1, i32 %.sroa.3.8.insert.insert) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c, %bb.a
  ret void
}

declare noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_object_sizeEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl24ResetAllocatedObjectSizeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((32, 48)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated23.i = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.b) ; 3 uses
  %i.c = uitofp i64 %.sroa.speculated23.i to double ; 2 uses
  %i.d = fmul nnan double %i.c, 1.500000e+00
  %i.e = fptoui double %i.d to i64
  %i.f = add i64 %.sroa.speculated23.i, 655360
  %.sroa.speculated18.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %.sroa.speculated18.i, ptr %i.g, align 8
  %i.h = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4heap4base26IncrementalMarkingSchedule21kEstimatedMarkingTimeE) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double @_ZNK5cppgc8internal14StatsCollector36GetRecentAllocationSpeedInBytesPerMsEv(ptr noundef nonnull align 8 dereferenceable(336) %i.j) #12
  %i.l = fmul double %i.h, %i.k
  %i.m = tail call double @llvm.ceil.f64(double %i.l)
  %i.n = fptoui double %i.m to i64
  %i.o = load i64, ptr %i.g, align 8              ; 2 uses
  %i.p = sub i64 %i.o, %i.n
  %i.q = sub i64 %i.o, %.sroa.speculated23.i
  %i.r = uitofp i64 %i.q to double
  %2 = insertelement <2 x double> poison, double %i.r, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %i.c, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double 9.000000e-01, double 5.000000e-01>, <2 x double> %5) ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.s = fptoui double %7 to i64
  %8 = extractelement <2 x double> %6, i64 1
  %i.t = fptoui double %8 to i64
  %.sroa.speculated11.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s)
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated11.i, i64 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i, ptr %i.u, align 8
  ret void
}

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef double @_ZNK5cppgc8internal14StatsCollector36GetRecentAllocationSpeedInBytesPerMsEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl17DisableForTestingEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((64, 65)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowingC2EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS6_11MarkingTypeENS6_12SweepingTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !15 ; 2 uses
  tail call void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplC2EPNS0_16GarbageCollectorEPNS0_14StatsCollectorENS_4Heap19ResourceConstraintsENS7_11MarkingTypeENS7_12SweepingTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5), !noalias !15
  store ptr %i.a, ptr %0, align 8, !alias.scope !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowingD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5cppgc8internal11HeapGrowing15HeapGrowingImplESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector18UnregisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #12, !inline_history !18
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #12, !inline_history !18
  br label %_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i, !prof !12

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #12
  br label %_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #13
  br label %_ZNSt10unique_ptrIN5cppgc8internal11HeapGrowing15HeapGrowingImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5cppgc8internal11HeapGrowing15HeapGrowingImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5cppgc8internal11HeapGrowing15HeapGrowingImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK5cppgc8internal11HeapGrowing19limit_for_atomic_gcEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK5cppgc8internal11HeapGrowing24limit_for_incremental_gcEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5cppgc8internal11HeapGrowing17DisableForTestingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImpl28AllocatedObjectSizeDecreasedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeIncreasedEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal14StatsCollector18AllocationObserver22AllocatedSizeDecreasedEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZSt11make_sharedIbJbEESt10shared_ptrIT_EDpOT0_: argument 0"}
!7 = distinct !{!7, !"_ZSt11make_sharedIbJbEESt10shared_ptrIT_EDpOT0_"}
!8 = !{!9, !6}
!9 = distinct !{!9, !10, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS7_: argument 0"}
!10 = distinct !{!10, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS7_"}
!11 = distinct !{null, null, null, null}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZSt11make_uniqueIN5cppgc8internal11HeapGrowing15HeapGrowingImplEJRPNS1_16GarbageCollectorERPNS1_14StatsCollectorERNS0_4Heap19ResourceConstraintsERNSA_11MarkingTypeERNSA_12SweepingTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!17 = distinct !{!17, !"_ZSt11make_uniqueIN5cppgc8internal11HeapGrowing15HeapGrowingImplEJRPNS1_16GarbageCollectorERPNS1_14StatsCollectorERNS0_4Heap19ResourceConstraintsERNSA_11MarkingTypeERNSA_12SweepingTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!18 = distinct !{null, null, ptr @_ZN5cppgc8internal11HeapGrowing15HeapGrowingImplD2Ev, null, null, null, null}
!19 = distinct !{null}
end_hunk_0
