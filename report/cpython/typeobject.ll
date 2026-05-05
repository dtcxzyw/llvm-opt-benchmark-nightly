inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@do_super_lookup:bb.a
  br i1 %i.n, label %.preheader.i, label %bb.f, !llvm.loop !390

.preheader.i:                                     ; preds = %.lr.ph
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.i

end_hunk_0
begin_hunk_1_@do_super_lookup:bb.a
  br label %_super_lookup_descr.exit.thread

bb.i:                                             ; preds = %bb.o, %.preheader.i
  %lsr.iv81 = phi i64 [ %lsr.iv.next82, %bb.o ], [ %lsr.iv, %.preheader.i ] ; 2 uses
  %i.r = shl i64 %lsr.iv81, 3
  %scevgep83 = getelementptr i8, ptr %.val53, i64 %i.r
  %i.s = load ptr, ptr %scevgep83, align 8, !tbaa !115 ; 4 uses
end_hunk_1
begin_hunk_2_@update_slot_after_setattr:bb.a
  br label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %.lr.ph6.i.preheader, %bb.d
  %.1224.i = phi ptr [ %i.q, %bb.d ], [ %i.j, %.lr.ph6.i.preheader ] ; 3 uses
  %i.n = getelementptr i8, ptr %.1224.i, i64 -48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !303
  %i.p = icmp eq i32 %i.o, %i.l
end_hunk_2
begin_hunk_3_@update_slot_after_setattr:bb.a
  br label %.critedge.i.loopexit

.lr.ph6.i..critedge.i.loopexit_crit_edge:         ; preds = %.lr.ph6.i
  %.1224.i.lcssa.a = phi ptr [ %.1224.i, %.lr.ph6.i ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %.lr.ph6.i..critedge.i.loopexit_crit_edge
  %.122.lcssa.i.ph = phi ptr [ %.1224.i.lcssa.a, %.lr.ph6.i..critedge.i.loopexit_crit_edge ], [ %.lcssa, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.lr.ph13.i
end_hunk_3
begin_hunk_4_@type_set_bases:bb.a
  br label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %.lr.ph6.i.i.i.preheader, %bb.aa
  %.1224.i.i.i = phi ptr [ %i.dg, %bb.aa ], [ %i.cz, %.lr.ph6.i.i.i.preheader ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.1224.i.i.i, i64 -48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !303
  %i.df = icmp eq i32 %i.de, %i.db
end_hunk_4
begin_hunk_5_@type_set_bases:bb.a
  br label %.critedge.i.i.i.loopexit

.lr.ph6.i.i.i..critedge.i.i.i.loopexit_crit_edge: ; preds = %.lr.ph6.i.i.i
  %.1224.i.i.i.lcssa.a = phi ptr [ %.1224.i.i.i, %.lr.ph6.i.i.i ]
  br label %.critedge.i.i.i.loopexit

.critedge.i.i.i.loopexit:                         ; preds = %.critedge.i.i.i.loopexitsplit, %.lr.ph6.i.i.i..critedge.i.i.i.loopexit_crit_edge
  %.122.lcssa.i.i.i.ph = phi ptr [ %.1224.i.i.i.lcssa.a, %.lr.ph6.i.i.i..critedge.i.i.i.loopexit_crit_edge ], [ %.lcssa, %.critedge.i.i.i.loopexitsplit ]
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.loopexit, %.lr.ph13.i.i.i
end_hunk_5
begin_hunk_6_@slot_bf_releasebuffer:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.c
  %.0275.i.i = phi i64 [ %i.k, %bb.c ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.h = shl i64 %.0275.i.i, 3
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.h
  %i.i = load ptr, ptr %scevgep, align 8, !tbaa !115
end_hunk_6
begin_hunk_7_@slot_bf_releasebuffer:bb.a
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.isplit, label %.lr.ph.i.i, !llvm.loop !474

._crit_edge.loopexit.i.isplit:                    ; preds = %bb.c
  br label %._crit_edge.loopexit.i.i

.lr.ph.i.i.._crit_edge.loopexit.i.i_crit_edge:    ; preds = %.lr.ph.i.i
  %.0275.i.i.lcssa.a = phi i64 [ %.0275.i.i, %.lr.ph.i.i ]
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.isplit, %.lr.ph.i.i.._crit_edge.loopexit.i.i_crit_edge
  %.027.lcssa.ph.i.i = phi i64 [ %.0275.i.i.lcssa.a, %.lr.ph.i.i.._crit_edge.loopexit.i.i_crit_edge ], [ %i.f, %._crit_edge.loopexit.i.isplit ]
  %i.l = add nuw i64 %.027.lcssa.ph.i.i, 1
  br label %._crit_edge.i.i

end_hunk_7
