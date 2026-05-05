inline.NumInlined: 575
inline.NumDeleted: 105
begin_hunk_0_@bug_report_file:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %i.k = phi i8 [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = phi ptr [ %i.q, %bb.e ], [ %.promoted.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = sext i8 %i.k to i32
  %i.n = icmp ne i8 %i.k, 32
  %i.o = add nsw i32 %i.m, -14
end_hunk_0
begin_hunk_1_@bug_report_file:bb.a
  br label %.critedge.i.loopexit

.lr.ph.i..critedge.i.loopexit_crit_edge:          ; preds = %.lr.ph.i
  %.lcssa39 = phi ptr [ %i.l, %.lr.ph.i ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %.lr.ph.i..critedge.i.loopexit_crit_edge
  %.lcssa.i.ph = phi ptr [ %.lcssa39, %.lr.ph.i..critedge.i.loopexit_crit_edge ], [ %.lcssa.a, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.preheader.i
end_hunk_1
begin_hunk_2_@append_pathname:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.252 = phi ptr [ %i.ad, %bb.h ], [ %.062, %.lr.ph.preheader ] ; 3 uses
  %.24251 = phi ptr [ %i.ae, %bb.h ], [ %.04061, %.lr.ph.preheader ] ; 4 uses
  %i.ac = load i8, ptr %.24251, align 1, !tbaa !14
  switch i8 %i.ac, label %bb.h [
end_hunk_2
begin_hunk_3_@append_pathname:bb.a
  br i1 %or.cond48, label %.lr.ph, label %.critedge4split, !llvm.loop !148

.critedge4split:                                  ; preds = %bb.h
  %.lcssa86 = phi ptr [ %i.ad, %bb.h ]
  %.lcssa84 = phi ptr [ %i.ae, %bb.h ]
  br label %.critedge4

.lr.ph..critedge4_crit_edge:                      ; preds = %.lr.ph, %.lr.ph
  %.252.lcssa = phi ptr [ %.252, %.lr.ph ], [ %.252, %.lr.ph ]
  %.24251.lcssa = phi ptr [ %.24251, %.lr.ph ], [ %.24251, %.lr.ph ]
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4split, %.lr.ph..critedge4_crit_edge
  %.242.lcssa = phi ptr [ %.24251.lcssa, %.lr.ph..critedge4_crit_edge ], [ %.lcssa84, %.critedge4split ] ; 4 uses
  %.2.lcssa = phi ptr [ %.252.lcssa, %.lr.ph..critedge4_crit_edge ], [ %.lcssa86, %.critedge4split ] ; 3 uses
  %i.ah = icmp ugt ptr %.242.lcssa, %.04061
  br i1 %i.ah, label %bb.i, label %.backedge

end_hunk_3
