inline.NumInlined: 7
begin_hunk_0_@create_domain:bb.a

.preheader627.us.us.us:                           ; preds = %.preheader627.us.us.us.preheader, %.split810.us.split.us.us.split.us.us.us
  %indvars.iv1011 = phi i64 [ 0, %.preheader627.us.us.us.preheader ], [ %indvars.iv.next1012, %.split810.us.split.us.us.split.us.us.us ] ; 19 uses
  %.0861.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0474860.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0482859.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0490858.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0498857.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0506856.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0514855.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0522854.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.0530853.us.us.us = phi i32 [ undef, %.preheader627.us.us.us.preheader ], [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %.3563851.us.us.us = phi i64 [ %.0560.lcssa, %.preheader627.us.us.us.preheader ], [ %.4564798.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv1011 ; 4 uses
  br label %.split777.us.us.us.us.us.us.us

.split777.us.us.us.us.us.us.us:                   ; preds = %bb.ck, %.preheader627.us.us.us
  %.1808.us.us.us.us.us.us = phi i32 [ %.0861.us.us.us, %.preheader627.us.us.us ], [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1475807.us.us.us.us.us.us = phi i32 [ %.0474860.us.us.us, %.preheader627.us.us.us ], [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1483806.us.us.us.us.us.us = phi i32 [ %.0482859.us.us.us, %.preheader627.us.us.us ], [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1491805.us.us.us.us.us.us = phi i32 [ %.0490858.us.us.us, %.preheader627.us.us.us ], [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1499804.us.us.us.us.us.us = phi i32 [ %.0498857.us.us.us, %.preheader627.us.us.us ], [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1507803.us.us.us.us.us.us = phi i32 [ %.0506856.us.us.us, %.preheader627.us.us.us ], [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1515802.us.us.us.us.us.us = phi i32 [ %.0514855.us.us.us, %.preheader627.us.us.us ], [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1523801.us.us.us.us.us.us = phi i32 [ %.0522854.us.us.us, %.preheader627.us.us.us ], [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %.1531800.us.us.us.us.us.us = phi i32 [ %.0530853.us.us.us, %.preheader627.us.us.us ], [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %bb.ck ]
  %i.abn = phi i1 [ false, %.preheader627.us.us.us ], [ true, %bb.ck ]
  %i.abo = phi i1 [ true, %.preheader627.us.us.us ], [ false, %bb.ck ]
  %.4564798.us.us.us.us.us.us = phi i64 [ %.3563851.us.us.us, %.preheader627.us.us.us ], [ %i.abu, %bb.ck ] ; 3 uses
end_hunk_0
begin_hunk_1_@create_domain:bb.a

.preheader626.lr.ph.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ 0, %.split777.us.us.us.us.us.us.us ] ; 2 uses
  %.2776.us.us.us.us.us.us.us.us.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1808.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2476775.us.us.us.us.us.us.us.us.us = phi i32 [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1475807.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2484774.us.us.us.us.us.us.us.us.us = phi i32 [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1483806.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2492773.us.us.us.us.us.us.us.us.us = phi i32 [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1491805.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2500772.us.us.us.us.us.us.us.us.us = phi i32 [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1499804.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2508771.us.us.us.us.us.us.us.us.us = phi i32 [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1507803.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2516770.us.us.us.us.us.us.us.us.us = phi i32 [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1515802.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2524769.us.us.us.us.us.us.us.us.us = phi i32 [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1523801.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.2532768.us.us.us.us.us.us.us.us.us = phi i32 [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ %.1531800.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us ]
  %.0552766.us.us.us.us.us.us.us.us.us = phi i32 [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ 0, %.split777.us.us.us.us.us.us.us ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr @__const.create_domain.FacesEdgesCorners, i64 %indvars.iv1007
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !4 ; 4 uses
end_hunk_1
begin_hunk_2_@create_domain:bb.a
  br label %.preheader626.us.us.us.us.us.us.us.us.us.us.us

.preheader626.us.us.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us
  %.3730.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2776.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3477729.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2476775.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3485728.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2484774.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3493727.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2492773.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3501726.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2500772.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3509725.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2508771.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3517724.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2516770.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3525723.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2524769.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3533722.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.2532768.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.1546721.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %i.ali, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1553720.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.0552766.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.ack = mul i32 %.1546721.us.us.us.us.us.us.us.us.us.us.us, %5
  %i.acl = add i32 %.1546721.us.us.us.us.us.us.us.us.us.us.us, %i.ace ; 4 uses
  %.lobit84.i613.us.us.us.us.us.us.us.us.us.us.us.us = ashr i32 %i.acl, 31
  %.067.i614.us.us.us.us.us.us.us.us.us.us.us.us = add nsw i32 %.lobit84.i613.us.us.us.us.us.us.us.us.us.us.us.us, %i.p
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us
  %.4698.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3730.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4478697.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3477729.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4486696.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3485728.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4494695.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3493727.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4502694.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3501726.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4510693.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3509725.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4518692.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3517724.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4526691.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3525723.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4534690.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.3533722.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.1544689.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %i.alh, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.2554688.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1553720.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %reass.add.us.us.us.us.us.us.us.us.us.us.us.us = add i32 %.1544689.us.us.us.us.us.us.us.us.us.us.us.us, %i.ack
  %reass.mul.us.us.us.us.us.us.us.us.us.us.us.us = mul i32 %reass.add.us.us.us.us.us.us.us.us.us.us.us.us, %4
  %i.acm = add i32 %.1544689.us.us.us.us.us.us.us.us.us.us.us.us, %i.acb ; 4 uses
  %.lobit83.i609.us.us.us.us.us.us.us.us.us.us.us.us = ashr i32 %i.acm, 31
  %.068.i610.us.us.us.us.us.us.us.us.us.us.us.us = add nsw i32 %.lobit83.i609.us.us.us.us.us.us.us.us.us.us.us.us, %i.r
  br label %bb.cl

bb.cl:                                            ; preds = %bb.dj, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %bb.dj ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.5675.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4698.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5479674.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7481.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4478697.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5487673.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7489.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4486696.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5495672.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7497.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4494695.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5503671.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7505.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4502694.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5511670.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7513.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4510693.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5519669.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7521.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4518692.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5527668.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7529.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4526691.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.5535667.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.7537.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.4534690.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.3555665.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.2554688.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.acn = trunc nuw nsw i64 %indvars.iv1000 to i32 ; 3 uses
  %i.aco = add i32 %reass.mul.us.us.us.us.us.us.us.us.us.us.us.us, %i.acn ; 11 uses
  br i1 %.not.i595.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.co, label %bb.cm
end_hunk_2
begin_hunk_3_@create_domain:bb.a
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %.6536.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5535667.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cu ], [ %i.aft, %bb.cx ], [ %i.afc, %bb.cw ], [ %i.aes, %bb.cv ] ; 2 uses
  %.6512.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5511670.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cu ], [ %i.agd, %bb.cx ], [ %i.afl, %bb.cw ], [ 0, %bb.cv ] ; 2 uses
  %.6488.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5487673.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cu ], [ %i.aft, %bb.cx ], [ %i.afe, %bb.cw ], [ %i.aeu, %bb.cv ] ; 2 uses
  switch i32 %i.acb, label %bb.dc [
    i32 -1, label %bb.db
    i32 0, label %bb.da
end_hunk_3
begin_hunk_4_@create_domain:bb.a
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %.6528.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5527668.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cy ], [ %i.ahm, %bb.db ], [ %i.agv, %bb.da ], [ %i.agl, %bb.cz ] ; 2 uses
  %.6504.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5503671.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cy ], [ %i.ahw, %bb.db ], [ %i.ahe, %bb.da ], [ 0, %bb.cz ] ; 2 uses
  %.6480.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5479674.us.us.us.us.us.us.us.us.us.us.us.us, %bb.cy ], [ %i.ahm, %bb.db ], [ %i.agx, %bb.da ], [ %i.agn, %bb.cz ] ; 2 uses
  switch i32 %i.ace, label %bb.dg [
    i32 -1, label %bb.df
    i32 0, label %bb.de
end_hunk_4
begin_hunk_5_@create_domain:bb.a
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %.6520.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5519669.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dc ], [ %i.ajf, %bb.df ], [ %i.aio, %bb.de ], [ %i.aie, %bb.dd ] ; 2 uses
  %.6496.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5495672.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dc ], [ %i.ajp, %bb.df ], [ %i.aix, %bb.de ], [ 0, %bb.dd ] ; 2 uses
  %.6.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.5675.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dc ], [ %i.ajf, %bb.df ], [ %i.aiq, %bb.de ], [ %i.aig, %bb.dd ] ; 2 uses
  br i1 %i.abn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
end_hunk_5
begin_hunk_6_@create_domain:bb.a

bb.dj:                                            ; preds = %bb.di, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us
  %.4556.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.alg, %bb.di ], [ %.3555665.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 8 uses
  %.7537.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6536.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5535667.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7529.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6528.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5527668.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7521.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6520.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5519669.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7513.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6512.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5511670.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7505.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6504.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5503671.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7497.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6496.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5495672.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7489.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6488.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5487673.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7481.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6480.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5479674.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.7.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.6.us.us.us.us.us.us.us.us.us.us.us.us, %bb.di ], [ %.5675.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1 ; 2 uses
  %exitcond1004.not = icmp eq i64 %indvars.iv.next1001, %wide.trip.count1003
  br i1 %exitcond1004.not, label %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.cl, !llvm.loop !97

._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.dj
  %i.alh = add nuw nsw i32 %.1544689.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1005.not = icmp eq i32 %i.alh, %5
  br i1 %exitcond1005.not, label %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !98

._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ali = add nuw nsw i32 %.1546721.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1006.not = icmp eq i32 %i.ali, %6
  br i1 %exitcond1006.not, label %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us, label %.preheader626.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !99

end_hunk_6
