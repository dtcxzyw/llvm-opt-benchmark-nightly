inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@DoAssignIteration:bb.a
.preheader156.i.i:                                ; preds = %.preheader156.i.i.backedge, %calc_minimum_costs.exit.i
  %indvars.iv203.i.i = phi i64 [ 0, %calc_minimum_costs.exit.i ], [ %indvars.iv203.i.i.be, %.preheader156.i.i.backedge ] ; 5 uses
  %.1172.i.i = phi i32 [ 0, %calc_minimum_costs.exit.i ], [ %.1172.i.i.be, %.preheader156.i.i.backedge ]
  %2 = phi <2 x i16> [ zeroinitializer, %calc_minimum_costs.exit.i ], [ %.be, %.preheader156.i.i.backedge ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.012, i64 %indvars.iv203.i.i ; 2 uses
  %i.jg = getelementptr inbounds nuw [202 x i8], ptr %i.c, i64 %indvars.iv203.i.i ; 3 uses
  br label %bb.g
end_hunk_0
begin_hunk_1_@DoAssignIteration:bb.a
  br label %bb.q

.loopexit155.loopexit.i.i:                        ; preds = %bb.t
  %3 = add <2 x i16> %2, splat (i16 1)
  br label %.loopexit155.i.i

.loopexit155.i.i:                                 ; preds = %.loopexit155.loopexit.i.i, %bb.o
  %4 = phi <2 x i16> [ %2, %bb.o ], [ %3, %.loopexit155.loopexit.i.i ] ; 2 uses
  %indvars.iv.next204.i.i = add nuw nsw i64 %indvars.iv203.i.i, 1 ; 2 uses
  %exitcond206.not.i.i = icmp eq i64 %indvars.iv.next204.i.i, 101
  br i1 %exitcond206.not.i.i, label %.preheader154.i.i, label %.preheader156.i.i.backedge
end_hunk_1
begin_hunk_2_@DoAssignIteration:bb.a
.preheader156.i.i.backedge:                       ; preds = %.loopexit155.i.i, %bb.aq
  %indvars.iv203.i.i.be = phi i64 [ %indvars.iv.next204.i.i, %.loopexit155.i.i ], [ 0, %bb.aq ]
  %.1172.i.i.be = phi i32 [ %.3.i.i, %.loopexit155.i.i ], [ %.6.i.i, %bb.aq ]
  %.be = phi <2 x i16> [ %4, %.loopexit155.i.i ], [ %9, %bb.aq ]
  br label %.preheader156.i.i, !llvm.loop !92

.preheader154.i.i:                                ; preds = %.loopexit155.i.i, %.loopexit153.i.i
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i, %.loopexit153.i.i ], [ 0, %.loopexit155.i.i ] ; 6 uses
  %.4184.i.i = phi i32 [ %.6.i.i, %.loopexit153.i.i ], [ %.3.i.i, %.loopexit155.i.i ]
  %5 = phi <2 x i16> [ %7, %.loopexit153.i.i ], [ %4, %.loopexit155.i.i ] ; 2 uses
  %invariant.gep173.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.012, i64 %indvars.iv215.i.i ; 2 uses
  %invariant.gep175.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv215.i.i ; 2 uses
  br label %bb.y
end_hunk_2
begin_hunk_3_@DoAssignIteration:bb.a
  br label %bb.ai

.loopexit153.loopexit.i.i:                        ; preds = %bb.al
  %6 = add <2 x i16> %5, splat (i16 1)
  br label %.loopexit153.i.i

.loopexit153.i.i:                                 ; preds = %.loopexit153.loopexit.i.i, %bb.ag
  %7 = phi <2 x i16> [ %5, %bb.ag ], [ %6, %.loopexit153.loopexit.i.i ] ; 4 uses
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond218.not.i.i = icmp eq i64 %indvars.iv.next216.i.i, 101
  br i1 %exitcond218.not.i.i, label %bb.aq, label %.preheader154.i.i, !llvm.loop !93

bb.aq:                                            ; preds = %.loopexit153.i.i
  %8 = extractelement <2 x i16> %7, i64 1
  %.not.i6.i = icmp eq i16 %8, 0
  %9 = insertelement <2 x i16> %7, i16 0, i64 1
  br i1 %.not.i6.i, label %bb.ar, label %.preheader156.i.i.backedge

bb.ar:                                            ; preds = %bb.aq
  %10 = extractelement <2 x i16> %7, i64 0        ; 2 uses
  %i.ld = icmp eq i16 %10, 101
  br i1 %i.ld, label %Assignment.exit, label %.preheader150.i.i

.preheader150.i.i:                                ; preds = %bb.ar, %.thread.i.i
  %indvars.iv231.i.i = phi i64 [ %indvars.iv.next232.i.i, %.thread.i.i ], [ 0, %bb.ar ] ; 5 uses
  %.5112193.i.i = phi i16 [ %.6113.i.i, %.thread.i.i ], [ %10, %bb.ar ] ; 2 uses
  %i.le = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.012, i64 %indvars.iv231.i.i ; 4 uses
  %i.lf = getelementptr inbounds nuw [202 x i8], ptr %i.c, i64 %indvars.iv231.i.i ; 5 uses
  br label %bb.as
end_hunk_3
