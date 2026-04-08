inline.NumInlined: 45
inline.NumDeleted: 31
begin_hunk_0_@_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv:bb.a
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock15TryLockInternalEjj.exit.thread
  %i.o = tail call noundef i64 %i.h(), !inline_history !18
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv:bb.a
  %.022.be = phi i32 [ %i.x, %_ZN4absl12lts_2025051213base_internal8SpinLock15TryLockInternalEjj.exit10 ], [ %i.t, %bb.g ] ; 2 uses
  %i.y = and i32 %.022.be, 1
  %.not7 = icmp eq i32 %i.y, 0
  br i1 %.not7, label %.loopexit, label %bb.d, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i32 %i.t, 8
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv:bb.a
  br label %_ZN4absl12lts_2025051213base_internal10CycleClock3NowEv.exit13

bb.i:                                             ; preds = %.loopexit25
  %i.aj = tail call noundef i64 %i.ac(), !inline_history !18
  br label %_ZN4absl12lts_2025051213base_internal10CycleClock3NowEv.exit13

_ZN4absl12lts_2025051213base_internal10CycleClock3NowEv.exit13: ; preds = %bb.h, %bb.i
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv:bb.a
  %.04.i15 = phi i32 [ %i.ab, %_ZN4absl12lts_2025051213base_internal8SpinLock16EncodeWaitCyclesEll.exit ], [ %i.ar, %bb.l ] ; 2 uses
  %i.as = and i32 %.04.i15, 1
  %.not728 = icmp eq i32 %i.as, 0
  br i1 %.not728, label %.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock15TryLockInternalEjj.exit16, %.backedge, %_ZN4absl12lts_2025051213base_internal8SpinLock15TryLockInternalEjj.exit
  ret void
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj:bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2025051213base_internalL19submit_profile_dataE acquire, align 8
  tail call void %i.d(ptr noundef nonnull %0, i64 noundef %i.c), !inline_history !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_4
begin_hunk_5_@llvm.smin.i64
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 3227475}
!18 = distinct !{null}
!19 = distinct !{!19, !16}
!20 = distinct !{null}
end_hunk_5
