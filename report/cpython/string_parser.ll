inline.NumInlined: 11
inline.NumDeleted: 10
begin_hunk_0_@_PyPegen_decode_string:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.y, %bb.m ], [ %.1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.x = load i8, ptr %.010.i.i, align 1, !tbaa !11
  %.not.i72.i = icmp sgt i8 %i.x, -1
  br i1 %.not.i72.i, label %.lr.ph.i.i..critedge.loopexit.i.i_crit_edge, label %bb.m
end_hunk_0
begin_hunk_1_@_PyPegen_decode_string:bb.a
  br i1 %exitcond.not.i.i, label %.critedge.loopexit.i.isplit, label %.lr.ph.i.i, !llvm.loop !12

.critedge.loopexit.i.isplit:                      ; preds = %bb.m
  %.0.lcssa.ph.i.i.ph = phi ptr [ %scevgep.i.i, %bb.m ]
  br label %.critedge.loopexit.i.i

.lr.ph.i.i..critedge.loopexit.i.i_crit_edge:      ; preds = %.lr.ph.i.i
  %.010.i.i.lcssa = phi ptr [ %.010.i.i, %.lr.ph.i.i ]
  %.010.i.i.lcssa.a = phi ptr [ %.010.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %.critedge.loopexit.i.i

.critedge.loopexit.i.i:                           ; preds = %.critedge.loopexit.i.isplit, %.lr.ph.i.i..critedge.loopexit.i.i_crit_edge
  %.0.lcssa.ph.i.i = phi ptr [ %.010.i.i.lcssa, %.lr.ph.i.i..critedge.loopexit.i.i_crit_edge ], [ %.0.lcssa.ph.i.i.ph, %.critedge.loopexit.i.isplit ] ; 2 uses
  %.pre.i.i = ptrtoint ptr %.0.lcssa.ph.i.i to i64
  br label %decode_utf8.exit.i

end_hunk_1
begin_hunk_2_@_PyPegen_parse_string:bb.a
  %.067100 = phi i32 [ %.1, %bb.c ], [ 0, %.critedge.preheader ] ; 3 uses
  %.06899 = phi i32 [ %.169, %bb.c ], [ 0, %.critedge.preheader ] ; 3 uses
  %.07198 = phi i32 [ %.172, %bb.c ], [ %i.f, %.critedge.preheader ] ; 2 uses
  %.07597 = phi ptr [ %.176, %bb.c ], [ %i.c, %.critedge.preheader ] ; 3 uses
  %i.k = trunc nuw i32 %.07198 to i8
  %trunc = and i8 %i.k, -33
  switch i8 %trunc, label %.critedge..loopexit.loopexit_crit_edge [
end_hunk_2
begin_hunk_3_@_PyPegen_parse_string:bb.a

.loopexit.loopexitsplit:                          ; preds = %bb.c
  %.176.lcssa = phi ptr [ %.176, %bb.c ]
  %.273.ph.ph = phi i32 [ %.172, %bb.c ]
  %.270.ph.ph = phi i32 [ 1, %bb.c ]
  %.2.ph.ph = phi i32 [ 1, %bb.c ]
  br label %.loopexit.loopexit

.critedge..loopexit.loopexit_crit_edge:           ; preds = %.critedge
  %.07597.lcssa = phi ptr [ %.07597, %.critedge ]
  %.07597.lcssa.a = phi ptr [ %.07597, %.critedge ] ; 0 uses
  %split108 = phi i32 [ %.07198, %.critedge ]
  %split109 = phi i32 [ %.06899, %.critedge ]
  %split110 = phi i32 [ %.067100, %.critedge ]
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %.critedge..loopexit.loopexit_crit_edge
  %.277.ph = phi ptr [ %.07597.lcssa, %.critedge..loopexit.loopexit_crit_edge ], [ %.176.lcssa, %.loopexit.loopexitsplit ]
  %.273.ph = phi i32 [ %split108, %.critedge..loopexit.loopexit_crit_edge ], [ %.273.ph.ph, %.loopexit.loopexitsplit ]
  %.270.ph = phi i32 [ %split109, %.critedge..loopexit.loopexit_crit_edge ], [ %.270.ph.ph, %.loopexit.loopexitsplit ]
  %.2.ph = phi i32 [ %split110, %.critedge..loopexit.loopexit_crit_edge ], [ %.2.ph.ph, %.loopexit.loopexitsplit ]
  %i.l = icmp eq i32 %.2.ph, 0
  %i.m = icmp eq i32 %.270.ph, 0
  br label %.loopexit
end_hunk_3
