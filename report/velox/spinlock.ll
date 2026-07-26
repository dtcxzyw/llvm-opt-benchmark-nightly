inline.NumInlined: 45
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::base_internal::AtomicHook" = type { %"struct.std::atomic", ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { ptr }
%"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" = type { i32, i32, i8 }

$_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvPKvlEE13DummyFunctionES4_l = comdat any

@_ZN4absl12lts_2024011613base_internalL19submit_profile_dataE = internal global %"class.absl::lts_20240116::base_internal::AtomicHook" { %"struct.std::atomic" { %"struct.std::__atomic_base" { ptr @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvPKvlEE13DummyFunctionES4_l } }, ptr @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvPKvlEE13DummyFunctionES4_l }, align 8
@_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE24init_adaptive_spin_count = internal global { { i32 } } zeroinitializer, align 4
@_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE19adaptive_spin_count = internal unnamed_addr global i32 0, align 4
@_ZN4absl12lts_2024011613base_internal10CycleClock19cycle_clock_source_E = external local_unnamed_addr global %"struct.std::atomic.2", align 8
@"_ZZN4absl12lts_2024011613base_internal12CallOnceImplIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans" = internal constant [3 x %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition"] [%"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 0, i32 1707250555, i8 1 }, %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 1707250555, i32 94570706, i8 0 }, %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 221, i32 221, i8 1 }], align 16

@_ZN4absl12lts_2024011613base_internal8SpinLockC1ENS1_14SchedulingModeE = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2024011613base_internal8SpinLockC2ENS1_14SchedulingModeE

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011613base_internal24RegisterSpinLockProfilerEPFvPKvlE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2024011613base_internalL19submit_profile_dataE, i64 8), align 8, !tbaa !7
  %i.b = cmpxchg ptr @_ZN4absl12lts_2024011613base_internalL19submit_profile_dataE, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2024011613base_internal8SpinLockC2ENS1_14SchedulingModeE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = select i1 %i.a, i32 2, i32 0
  store i32 %i.b, ptr %0, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE24init_adaptive_spin_count acquire, align 4
  %.not.i = icmp eq i32 %i.a, 221
  br i1 %.not.i, label %"_ZN4absl12lts_2024011613base_internal16LowLevelCallOnceIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPNS0_9once_flagEOT_DpOT0_.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull @_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE24init_adaptive_spin_count)
  br label %"_ZN4absl12lts_2024011613base_internal16LowLevelCallOnceIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPNS0_9once_flagEOT_DpOT0_.exit"

"_ZN4absl12lts_2024011613base_internal16LowLevelCallOnceIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPNS0_9once_flagEOT_DpOT0_.exit": ; preds = %bb.a, %bb.b
  %i.b = load i32, ptr @_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE19adaptive_spin_count, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %"_ZN4absl12lts_2024011613base_internal16LowLevelCallOnceIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPNS0_9once_flagEOT_DpOT0_.exit"
  %.0 = phi i32 [ %i.b, %"_ZN4absl12lts_2024011613base_internal16LowLevelCallOnceIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPNS0_9once_flagEOT_DpOT0_.exit" ], [ %i.d, %bb.c ] ; 2 uses
  %i.c = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not = trunc i32 %i.c to i1
  %i.d = add nsw i32 %.0, -1
  %i.e = icmp sgt i32 %.0, 1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.c
  ret i32 %i.c
}

; Function Attrs: cold mustprogress optsize uwtable
define void @_ZN4absl12lts_2024011613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEv(ptr noundef nonnull align 4 dereferenceable(4) %0) ; 4 uses
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit, label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit.thread

_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr %0, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0         ; 2 uses
  %.pre = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre, 0
  br i1 %i.f, label %.loopexit, label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit.thread

_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit
  %.04.i43 = phi i32 [ %i.e, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = lshr i32 %.04.i43, 1
  %.lobit = and i32 %i.g, 1
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2024011613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit.thread
  %i.j = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  %i.m = shl i64 %i.l, 32
  %i.n = or i64 %i.m, %i.k
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit.thread
  %i.o = tail call noundef i64 %i.h(), !inline_history !18
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.b
  %.0.in.i = phi i64 [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.0.i = ashr i64 %.0.in.i, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16
  %.0.ph33 = phi i32 [ %i.aa, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16 ], [ 0, %.lr.ph.preheader ]
  %.05.ph32 = phi i32 [ %.1.i, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16 ], [ 0, %.lr.ph.preheader ]
  %.022.ph31 = phi i32 [ %.04.i15, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16 ], [ %.04.i43, %.lr.ph.preheader ]
  %invariant.op = or i32 %.05.ph32, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.02229 = phi i32 [ %.022.ph31, %.lr.ph ], [ %.022.be, %.backedge ] ; 4 uses
  %i.p = icmp ult i32 %.02229, 8
  br i1 %i.p, label %bb.e, label %.loopexit25

bb.e:                                             ; preds = %bb.d
  %i.q = or disjoint i32 %.02229, 8               ; 2 uses
  %i.r = cmpxchg ptr %0, i32 %.02229, i32 %i.q monotonic monotonic, align 4 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = extractvalue { i32, i1 } %i.r, 0         ; 6 uses
  %i.u = and i32 %i.t, 1
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit10, label %bb.g

_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit10: ; preds = %bb.f
  %.reass = or i32 %i.t, %invariant.op
  %i.w = cmpxchg ptr %0, i32 %i.t, i32 %.reass acquire monotonic, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0
  br label %.backedge

.backedge:                                        ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit10, %bb.g
  %.022.be = phi i32 [ %i.x, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit10 ], [ %i.t, %bb.g ] ; 2 uses
  %i.y = and i32 %.022.be, 1
  %.not7 = icmp eq i32 %i.y, 0
  br i1 %.not7, label %.loopexit, label %bb.d, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i32 %i.t, 8
  br i1 %i.z, label %.backedge, label %.loopexit25

.loopexit25:                                      ; preds = %bb.g, %bb.d, %bb.e
  %.1 = phi i32 [ %i.q, %bb.e ], [ %i.t, %bb.g ], [ %.02229, %bb.d ]
  %i.aa = add nuw nsw i32 %.0.ph33, 1             ; 2 uses
  tail call void @AbslInternalSpinLockDelay_lts_20240116(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %i.aa, i32 noundef %.lobit)
  %i.ab = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEv(ptr noundef nonnull align 4 dereferenceable(4) %0) ; 4 uses
  %i.ac = load atomic ptr, ptr @_ZN4absl12lts_2024011613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit25
  %i.ae = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = shl i64 %i.ag, 32
  %i.ai = or i64 %i.ah, %i.af
  br label %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13

bb.i:                                             ; preds = %.loopexit25
  %i.aj = tail call noundef i64 %i.ac(), !inline_history !18
  br label %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13

_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13: ; preds = %bb.h, %bb.i
  %.0.in.i11 = phi i64 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  %.0.i12 = ashr i64 %.0.in.i11, 1
  %i.ak = sub nsw i64 %.0.i12, %.0.i
  %i.al = ashr i64 %i.ak, 7
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.al, i64 536870911)
  %.tr.i = trunc i64 %.sroa.speculated.i to i32
  %i.am = shl i32 %.tr.i, 3                       ; 2 uses
  switch i32 %i.am, label %bb.j [
    i32 0, label %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit
    i32 8, label %bb.k
  ]

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13
  br label %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13
  br label %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit

_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit: ; preds = %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13, %bb.j, %bb.k
  %.1.i = phi i32 [ 8, %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit13 ], [ %i.am, %bb.j ], [ 16, %bb.k ] ; 2 uses
  %i.an = and i32 %i.ab, 1
  %.not.i14 = icmp eq i32 %i.an, 0
  br i1 %.not.i14, label %bb.l, label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16

bb.l:                                             ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit
  %i.ao = or i32 %i.ab, %.1.i
  %i.ap = or disjoint i32 %i.ao, 1
  %i.aq = cmpxchg ptr %0, i32 %i.ab, i32 %i.ap acquire monotonic, align 4
  %i.ar = extractvalue { i32, i1 } %i.aq, 0
  br label %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16

_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16: ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit, %bb.l
  %.04.i15 = phi i32 [ %i.ab, %_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll.exit ], [ %i.ar, %bb.l ] ; 2 uses
  %i.as = and i32 %.04.i15, 1
  %.not728 = icmp eq i32 %i.as, 0
  br i1 %.not728, label %.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit:                                        ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit16, %.backedge, %_ZN4absl12lts_2024011613base_internal8SpinLock15TryLockInternalEjj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, -7) i32 @_ZN4absl12lts_2024011613base_internal8SpinLock16EncodeWaitCyclesEll(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sub nsw i64 %1, %0
  %i.b = ashr i64 %i.a, 7
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.b, i64 536870911)
  %.tr = trunc i64 %.sroa.speculated to i32
  %i.c = shl i32 %.tr, 3                          ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %bb.d
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ 8, %bb.a ], [ %i.c, %bb.b ], [ 16, %bb.c ]
  ret i32 %.1
}

; Function Attrs: cold mustprogress optsize uwtable
define void @_ZN4absl12lts_2024011613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.a = and i32 %1, -8                           ; 2 uses
  %.not = icmp eq i32 %i.a, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2024011613base_internalL19submit_profile_dataE acquire, align 8
  tail call void %i.d(ptr noundef nonnull %0, i64 noundef %i.c), !inline_history !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, 68719476609) i64 @_ZN4absl12lts_2024011613base_internal8SpinLock16DecodeWaitCyclesEj(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i32 %0, -8
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvPKvlEE13DummyFunctionES4_l(ptr noundef %0, i64 noundef %1) #5 comdat align 2 {
bb.a:
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @AbslInternalSpinLockDelay_lts_20240116(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @AbslInternalSpinLockWake_lts_20240116(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @"_ZZN4absl12lts_2024011613base_internal12CallOnceImplIZNS1_8SpinLock8SpinLoopEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans", i32 noundef 0)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit
  %i.e = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal7NumCPUsEv()
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = select i1 %i.f, i32 1000, i32 1
  store i32 %i.g, ptr @_ZZN4absl12lts_2024011613base_internal8SpinLock8SpinLoopEvE19adaptive_spin_count, align 4, !tbaa !3
  %i.h = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.i = icmp eq i32 %i.h, 94570706
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.b, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit
  ret void
}

declare noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN4absl12lts_2024011613base_internal7NumCPUsEv() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"_ZTSN4absl12lts_2024011613base_internal10AtomicHookIPFvPKvlEEE", !9, i64 0, !11, i64 8}
!9 = !{!"_ZTSSt6atomicIPFvPKvlEE", !10, i64 0}
!10 = !{!"_ZTSSt13__atomic_baseIPFvPKvlEE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 3752815}
!18 = distinct !{null}
!19 = distinct !{!19, !16}
!20 = distinct !{null}
end_hunk_0
