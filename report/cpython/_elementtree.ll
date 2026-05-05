inline.NumInlined: 446
inline.NumDeleted: 84
begin_hunk_0_@_elementtree_Element_remove:bb.a
  br i1 %i.u, label %.lr.ph, label %.critedge.i.loopexitsplit, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.03356.i17 = phi i64 [ %i.aj, %.lr.ph.i ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.v = phi ptr [ %i.al, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@_elementtree_Element_remove:bb.a
  br label %.critedge.i, !llvm.loop !140

.critedge.i.loopexitsplit:                        ; preds = %.lr.ph.i
  %.lcssa97.ph = phi i32 [ %i.ae, %.lr.ph.i ]
  %.lcssa100 = phi i64 [ %i.aj, %.lr.ph.i ]
  br label %.critedge.i.loopexit

Py_DECREF.exit46.i..critedge.i.loopexit_crit_edge: ; preds = %Py_DECREF.exit46.i
  %.03356.i17.lcssa102 = phi i64 [ %.03356.i17, %Py_DECREF.exit46.i ]
  %split = phi i32 [ %i.ae, %Py_DECREF.exit46.i ]
  %.03356.i17.lcssa103 = phi i64 [ %.03356.i17, %Py_DECREF.exit46.i ] ; 0 uses
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %Py_DECREF.exit46.i..critedge.i.loopexit_crit_edge
  %.lcssa97 = phi i32 [ %split, %Py_DECREF.exit46.i..critedge.i.loopexit_crit_edge ], [ %.lcssa97.ph, %.critedge.i.loopexitsplit ]
  %.033.lcssa.ph.i.ph = phi i64 [ %.03356.i17.lcssa102, %Py_DECREF.exit46.i..critedge.i.loopexit_crit_edge ], [ %.lcssa100, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %..critedge.i_crit_edge
end_hunk_1
begin_hunk_2_@_elementtree_Element___deepcopy___impl:bb.a
bb.u:                                             ; preds = %.lr.ph, %bb.ad
  %i.bs = phi ptr [ %i.bq, %.lr.ph ], [ %i.cy, %bb.ad ] ; 2 uses
  %.078154 = phi i64 [ %i.bn, %.lr.ph ], [ %.1, %bb.ad ] ; 2 uses
  %.081153 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.ad ] ; 10 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !47
  %i.bv = icmp slt i64 %.081153, %i.bu
end_hunk_2
begin_hunk_3_@_elementtree_Element___deepcopy___impl:bb.a
  br label %._crit_edge.loopexit

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.u
  %.081153.lcssa = phi i64 [ %.081153, %bb.u ]
  %.081153.lcssa.a = phi i64 [ %.081153, %bb.u ]  ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.._crit_edge.loopexit_crit_edge
  %.081.lcssa.ph = phi i64 [ %.081153.lcssa, %.._crit_edge.loopexit_crit_edge ], [ %.lcssa, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread, %.preheader
end_hunk_3
