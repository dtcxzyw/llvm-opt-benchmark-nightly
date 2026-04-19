inline.NumInlined: 7
begin_hunk_0_@create_domain:bb.a

.preheader627.us.us.us:                           ; preds = %.preheader627.us.us.us.preheader, %.split810.us.split.us.us.split.us.us.us
  %indvars.iv1011 = phi i64 [ 0, %.preheader627.us.us.us.preheader ], [ %indvars.iv.next1012, %.split810.us.split.us.us.split.us.us.us ] ; 19 uses
  %.3563851.us.us.us = phi i64 [ %.0560.lcssa, %.preheader627.us.us.us.preheader ], [ %.4564798.us.us.us.us.us.us, %.split810.us.split.us.us.split.us.us.us ]
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv1011 ; 4 uses
  br label %.split777.us.us.us.us.us.us.us

.split777.us.us.us.us.us.us.us:                   ; preds = %bb.ck, %.preheader627.us.us.us
  %i.abn = phi i1 [ false, %.preheader627.us.us.us ], [ true, %bb.ck ]
  %i.abo = phi i1 [ true, %.preheader627.us.us.us ], [ false, %bb.ck ]
  %.4564798.us.us.us.us.us.us = phi i64 [ %.3563851.us.us.us, %.preheader627.us.us.us ], [ %i.abu, %bb.ck ] ; 3 uses
end_hunk_0
begin_hunk_1_@create_domain:bb.a

.preheader626.lr.ph.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split777.us.us.us.us.us.us.us
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ 0, %.split777.us.us.us.us.us.us.us ] ; 2 uses
  %.0552766.us.us.us.us.us.us.us.us.us = phi i32 [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us ], [ 0, %.split777.us.us.us.us.us.us.us ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr @__const.create_domain.FacesEdgesCorners, i64 %indvars.iv1007
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !4 ; 4 uses
end_hunk_1
begin_hunk_2_@create_domain:bb.a
  br label %.preheader626.us.us.us.us.us.us.us.us.us.us.us

.preheader626.us.us.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us
  %.1546721.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.0552766.us.us.us.us.us.us.us.us.us, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.1553720.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader626.lr.ph.us.us.us.us.us.us.us.us.us ], [ %i.ali, %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ack = mul i32 %.1553720.us.us.us.us.us.us.us.us.us.us.us, %5
  %i.acl = add i32 %.1553720.us.us.us.us.us.us.us.us.us.us.us, %i.ace ; 4 uses
  %.lobit84.i613.us.us.us.us.us.us.us.us.us.us.us.us = ashr i32 %i.acl, 31
  %.067.i614.us.us.us.us.us.us.us.us.us.us.us.us = add nsw i32 %.lobit84.i613.us.us.us.us.us.us.us.us.us.us.us.us, %i.p
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us
  %.1544689.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1546721.us.us.us.us.us.us.us.us.us.us.us, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.2554688.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader626.us.us.us.us.us.us.us.us.us.us.us ], [ %i.alh, %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %reass.add.us.us.us.us.us.us.us.us.us.us.us.us = add i32 %.2554688.us.us.us.us.us.us.us.us.us.us.us.us, %i.ack
  %reass.mul.us.us.us.us.us.us.us.us.us.us.us.us = mul i32 %reass.add.us.us.us.us.us.us.us.us.us.us.us.us, %4
  %i.acm = add i32 %.2554688.us.us.us.us.us.us.us.us.us.us.us.us, %i.acb ; 4 uses
  %.lobit83.i609.us.us.us.us.us.us.us.us.us.us.us.us = ashr i32 %i.acm, 31
  %.068.i610.us.us.us.us.us.us.us.us.us.us.us.us = add nsw i32 %.lobit83.i609.us.us.us.us.us.us.us.us.us.us.us.us, %i.r
  br label %bb.cl

bb.cl:                                            ; preds = %bb.dj, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %bb.dj ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.3555665.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.4556.us.us.us.us.us.us.us.us.us.us.us.us, %bb.dj ], [ %.1544689.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.acn = trunc nuw nsw i64 %indvars.iv1000 to i32 ; 3 uses
  %i.aco = add i32 %reass.mul.us.us.us.us.us.us.us.us.us.us.us.us, %i.acn ; 11 uses
  br i1 %.not.i595.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.co, label %bb.cm
end_hunk_2
begin_hunk_3_@create_domain:bb.a
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %.6536.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cu ], [ %i.aft, %bb.cx ], [ %i.afc, %bb.cw ], [ %i.aes, %bb.cv ]
  %.6512.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cu ], [ %i.agd, %bb.cx ], [ %i.afl, %bb.cw ], [ 0, %bb.cv ]
  %.6488.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cu ], [ %i.aft, %bb.cx ], [ %i.afe, %bb.cw ], [ %i.aeu, %bb.cv ]
  switch i32 %i.acb, label %bb.dc [
    i32 -1, label %bb.db
    i32 0, label %bb.da
end_hunk_3
begin_hunk_4_@create_domain:bb.a
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %.6528.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cy ], [ %i.ahm, %bb.db ], [ %i.agv, %bb.da ], [ %i.agl, %bb.cz ]
  %.6504.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cy ], [ %i.ahw, %bb.db ], [ %i.ahe, %bb.da ], [ 0, %bb.cz ]
  %.6480.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.cy ], [ %i.ahm, %bb.db ], [ %i.agx, %bb.da ], [ %i.agn, %bb.cz ]
  switch i32 %i.ace, label %bb.dg [
    i32 -1, label %bb.df
    i32 0, label %bb.de
end_hunk_4
begin_hunk_5_@create_domain:bb.a
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %.6520.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.dc ], [ %i.ajf, %bb.df ], [ %i.aio, %bb.de ], [ %i.aie, %bb.dd ]
  %.6496.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.dc ], [ %i.ajp, %bb.df ], [ %i.aix, %bb.de ], [ 0, %bb.dd ]
  %.6.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ undef, %bb.dc ], [ %i.ajf, %bb.df ], [ %i.aiq, %bb.de ], [ %i.aig, %bb.dd ]
  br i1 %i.abn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
end_hunk_5
begin_hunk_6_@create_domain:bb.a

bb.dj:                                            ; preds = %bb.di, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us
  %.4556.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.alg, %bb.di ], [ %.3555665.us.us.us.us.us.us.us.us.us.us.us.us, %calculate_neighboring_subdomain_rank.exit621.us.us.us.us.us.us.us.us.us.us.us.us ] ; 8 uses
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1 ; 2 uses
  %exitcond1004.not = icmp eq i64 %indvars.iv.next1001, %wide.trip.count1003
  br i1 %exitcond1004.not, label %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.cl, !llvm.loop !97

._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.dj
  %i.alh = add nuw nsw i32 %.2554688.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1005.not = icmp eq i32 %i.alh, %5
  br i1 %exitcond1005.not, label %._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !98

._crit_edge699.split.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge677.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ali = add nuw nsw i32 %.1553720.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1006.not = icmp eq i32 %i.ali, %6
  br i1 %exitcond1006.not, label %._crit_edge731.split.us.split.us.us.us.us.us.us.us.us.us.us, label %.preheader626.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !99

end_hunk_6
