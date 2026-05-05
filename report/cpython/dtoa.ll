inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_strtod:bb.a
  br label %.thread

.lr.ph866.preheader:                              ; preds = %.lr.ph1392
  %.04541391.lcssa1729 = phi i32 [ %.04541391, %.lr.ph1392 ]
  %.04541391.lcssa = phi i32 [ %.04541391, %.lr.ph1392 ] ; 8 uses
  %i.cj = sub nsw i32 %i.aw, %.04541391.lcssa
  %i.ck = add i32 %i.cj, %i.ca                    ; 4 uses
end_hunk_0
begin_hunk_1_@_Py_dg_strtod:bb.a
  %.1415 = phi i32 [ %.0414864, %bb.u ], [ %i.da, %bb.w ] ; 2 uses
  %i.db = add nuw i32 %.2456862, 1                ; 2 uses
  %scevgep = getelementptr i8, ptr %lsr.iv, i64 1
  %exitcond.not = icmp eq i32 %.04541391.lcssa1729, %i.db
  br i1 %exitcond.not, label %._crit_edge867, label %.lr.ph866, !llvm.loop !25

._crit_edge867:                                   ; preds = %bb.x, %bb.v
end_hunk_1
begin_hunk_2_@mult:bb.a

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.v
  %lsr.iv = phi ptr [ %scevgep, %.lr.ph97.preheader ], [ %scevgep119, %bb.v ] ; 2 uses
  %.07195 = phi i32 [ %i.du, %bb.v ], [ %i.an, %.lr.ph97.preheader ] ; 4 uses
  %i.dt = load i32, ptr %lsr.iv, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.dt, 0
  br i1 %.not78, label %bb.v, label %.lr.ph97..critedge.loopexit_crit_edge
end_hunk_2
begin_hunk_3_@mult:bb.a
  br i1 %i.dv, label %.lr.ph97, label %.critedge.loopexitsplit, !llvm.loop !142

.critedge.loopexitsplit:                          ; preds = %bb.v
  %.071.lcssa.ph.ph = phi i32 [ 0, %bb.v ]
  br label %.critedge.loopexit

.lr.ph97..critedge.loopexit_crit_edge:            ; preds = %.lr.ph97
  %.07195.lcssa = phi i32 [ %.07195, %.lr.ph97 ]
  %.07195.lcssa.a = phi i32 [ %.07195, %.lr.ph97 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph97..critedge.loopexit_crit_edge
  %.071.lcssa.ph = phi i32 [ %.07195.lcssa, %.lr.ph97..critedge.loopexit_crit_edge ], [ %.071.lcssa.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
end_hunk_3
begin_hunk_4_@quorem:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.ai = phi ptr [ %i.al, %bb.e ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.07194 = phi i32 [ %i.ak, %bb.e ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %.not79 = icmp eq i32 %i.aj, 0
  br i1 %.not79, label %bb.e, label %.lr.ph..critedge.loopexit_crit_edge
end_hunk_4
begin_hunk_5_@quorem:bb.a
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.07194.lcssa = phi i32 [ %.07194, %.lr.ph ]
  %.07194.lcssa.a = phi i32 [ %.07194, %.lr.ph ]  ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.071.lcssa.ph = phi i32 [ %.07194.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.lcssa133, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader89
end_hunk_5
begin_hunk_6_@quorem:bb.a

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.lr.ph98.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.172, %.lr.ph98.preheader ] ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.lr.ph98..critedge2.loopexit_crit_edge
end_hunk_6
begin_hunk_7_@quorem:bb.a
  br label %.critedge2.loopexit

.lr.ph98..critedge2.loopexit_crit_edge:           ; preds = %.lr.ph98
  %.297.lcssa = phi i32 [ %.297, %.lr.ph98 ]
  %.297.lcssa.a = phi i32 [ %.297, %.lr.ph98 ]    ; 0 uses
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %.lr.ph98..critedge2.loopexit_crit_edge
  %.2.lcssa.ph = phi i32 [ %.297.lcssa, %.lr.ph98..critedge2.loopexit_crit_edge ], [ %.lcssa136, %.critedge2.loopexitsplit ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader
end_hunk_7
