inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@cli_ac_addsig:bb.a

bb.ar:                                            ; preds = %.lr.ph461, %bb.at
  %indvars.iv523 = phi i64 [ 0, %.lr.ph461 ], [ %indvars.iv.next524, %bb.at ] ; 3 uses
  %.0251457 = phi i1 [ true, %.lr.ph461 ], [ %.1252, %bb.at ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv523, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.as

end_hunk_0
begin_hunk_1_@cli_ac_addsig:bb.a

bb.at:                                            ; preds = %bb.as
  %.not306 = icmp eq i16 %i.ef, 0
  %.1252 = select i1 %.not306, i1 %.0251457, i1 false ; 2 uses
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count525
  br i1 %exitcond526.not, label %.critedge, label %bb.ar, !llvm.loop !125

.critedge:                                        ; preds = %bb.ar, %bb.at
  %.0251.lcssa = phi i1 [ %.1252, %bb.at ], [ %.0251457, %bb.ar ]
  br i1 %.0251.lcssa, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %bb.as, %bb.aq, %.critedge
  %i.eg = load i8, ptr %i.c, align 4, !tbaa !28   ; 3 uses
end_hunk_1
