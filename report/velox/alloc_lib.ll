begin_hunk_0

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.backedge.i, %.preheader.lr.ph.i
  %.010648.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.512.i, %.backedge.i ] ; 9 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.preheader.i
end_hunk_0
begin_hunk_1
  br i1 %.not133.i, label %.thread5.i, label %bb.l, !llvm.loop !93

.thread5.i:                                       ; preds = %bb.n, %.thread13.i
  %.512.i = phi i64 [ %spec.select141.i, %.thread13.i ], [ %0, %bb.n ] ; 8 uses
  %.412010.i = phi i64 [ %spec.select.i, %.thread13.i ], [ %i.ad, %bb.n ]
  %i.af = add i64 %.412010.i, -8
  %i.ag = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.af) ; 8 uses
end_hunk_1
begin_hunk_2
  br i1 %.not13852.i, label %._crit_edge56.i, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.thread18.i
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %5, align 8, !tbaa !94
  br label %.lr.ph55.i

end_hunk_2
begin_hunk_3
  br i1 %.not138.i, label %._crit_edge56.i, label %.lr.ph55.i, !llvm.loop !99

._crit_edge56.i:                                  ; preds = %.lr.ph55.i, %.thread18.i
  %.not139.i = icmp eq i32 %i.p, 0
  br i1 %.not139.i, label %internal_multialloc_arrays.exit, label %.critedge.sink.split.i, !llvm.loop !100

bb.o:                                             ; preds = %.thread5.i
end_hunk_3
begin_hunk_4
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.r, %._crit_edge.i
  %.not131.i = icmp eq i64 %.512.i, %0
  br i1 %.not131.i, label %._crit_edge50.i, label %.preheader.i, !llvm.loop !100

._crit_edge50.i:                                  ; preds = %.backedge.i, %bb.k
end_hunk_4
begin_hunk_5
  br label %internal_multialloc_arrays.exit

internal_multialloc_arrays.exit:                  ; preds = %spin_acquire_lock.exit, %bb.i, %._crit_edge56.i, %._crit_edge50.i, %.critedge.sink.split.i
  %.3.i = phi i32 [ 0, %spin_acquire_lock.exit ], [ 0, %bb.i ], [ 0, %._crit_edge56.i ], [ 1, %._crit_edge50.i ], [ %.3.ph.i, %.critedge.sink.split.i ]
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.cw = and i32 %i.cv, 2
  %.not13 = icmp eq i32 %i.cw, 0
end_hunk_5
begin_hunk_6
  tail call void @abort() #19
  unreachable

bb.av:                                            ; preds = %.thread502, %._crit_edge, %bb.z, %bb.an, %bb.ap, %bb.ah, %.critedge439, %bb.k, %bb.as
  %i.cw = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %bb.as ], [ %i.u, %bb.k ], [ %i.u, %.critedge439 ], [ %i.u, %bb.ah ], [ %i.u, %bb.ap ], [ %i.u, %bb.an ], [ %i.u, %bb.z ], [ %i.u, %.thread502 ] ; 13 uses
  %.1330 = phi i64 [ %2, %._crit_edge ], [ %i.s, %bb.as ], [ %i.s, %bb.k ], [ %i.s, %.critedge439 ], [ %i.s, %bb.ah ], [ %i.s, %bb.ap ], [ %i.s, %bb.an ], [ %i.s, %bb.z ], [ %i.s, %.thread502 ] ; 7 uses
  %.1 = phi ptr [ %1, %._crit_edge ], [ %i.r, %bb.as ], [ %i.r, %bb.k ], [ %i.r, %.critedge439 ], [ %i.r, %bb.ah ], [ %i.r, %bb.ap ], [ %i.r, %bb.an ], [ %i.r, %bb.z ], [ %i.r, %.thread502 ] ; 34 uses
  %.not405 = icmp ult ptr %i.a, %i.cw
  br i1 %.not405, label %bb.dj, label %bb.aw, !prof !23

end_hunk_6
begin_hunk_7
  tail call void @abort() #19
  unreachable

.critedge445:                                     ; preds = %.thread, %bb.cp, %bb.at, %bb.c, %bb.d, %bb.cv, %bb.dh, %bb.da, %bb.ay, %bb.az, %bb.bb
  ret void
}

end_hunk_7
