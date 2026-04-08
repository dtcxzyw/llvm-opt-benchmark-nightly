inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@ENGINE_init:bb.a
  br i1 %.not.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #2 ; 2 uses
  %.not14.i = icmp eq i32 %i.m, 0
  br i1 %.not14.i, label %engine_unlocked_init.exit, label %..thread_crit_edge.i

end_hunk_0
begin_hunk_1_@ENGINE_finish:bb.a
!24 = !{!10, !12, i64 96}
!25 = !{!10, !12, i64 104}
!26 = !{!12, !12, i64 0}
end_hunk_1
