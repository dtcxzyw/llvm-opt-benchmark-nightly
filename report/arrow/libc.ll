inline.NumInlined: 24
inline.NumDeleted: 7
begin_hunk_0_@_mi_strnicmp:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.01326, i64 1 ; 2 uses
  %i.l = add i64 %.027, -1                        ; 2 uses
  %i.m = load i8, ptr %lsr.iv, align 1, !tbaa !7  ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  %scevgep61 = getelementptr i8, ptr %lsr.iv, i64 1
  br i1 %.not, label %..critedge_crit_edge, label %.lr.ph, !llvm.loop !8

.critedgesplit:                                   ; preds = %.lr.ph
  %.027.lcssa = phi i64 [ %.027, %.lr.ph ]
  %.01326.lcssa = phi ptr [ %.01326, %.lr.ph ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.c
  %.lcssa66 = phi i64 [ %i.l, %bb.c ]
  %.lcssa = phi ptr [ %i.k, %bb.c ]
  br label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.013.lcssa.ph = phi ptr [ %.lcssa, %..critedge_crit_edge ], [ %.01326.lcssa, %.critedgesplit ]
  %.0.lcssa.ph = phi i64 [ %.lcssa66, %..critedge_crit_edge ], [ %.027.lcssa, %.critedgesplit ]
  %.lcssa.ph = phi i8 [ 0, %..critedge_crit_edge ], [ %i.c, %.critedgesplit ]
  %i.n = icmp eq i64 %.0.lcssa.ph, 0
  br i1 %i.n, label %bb.d, label %.critedge..critedge.thread_crit_edge

end_hunk_0
