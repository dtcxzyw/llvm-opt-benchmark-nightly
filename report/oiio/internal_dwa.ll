inline.NumInlined: 251
inline.NumDeleted: 56
begin_hunk_0_@LossyDctEncoder_execute:bb.a
  %i.fr = icmp eq i32 %i.d, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 336
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 464
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 720
  br i1 %i.fq, label %.preheader162.us.preheader, label %._crit_edge220

.preheader162.us.preheader:                       ; preds = %.preheader162.lr.ph
end_hunk_0
begin_hunk_1_@LossyDctEncoder_execute:bb.a

.lr.ph211.us:                                     ; preds = %.lr.ph211.us.preheader, %LossyDctEncoder_rleAc.exit.us
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %LossyDctEncoder_rleAc.exit.us ], [ 0, %.lr.ph211.us.preheader ] ; 2 uses
  %.0119209.us = phi ptr [ %6, %LossyDctEncoder_rleAc.exit.us ], [ %4, %.lr.ph211.us.preheader ] ; 4 uses
  %.0120208.us = phi ptr [ %5, %LossyDctEncoder_rleAc.exit.us ], [ %3, %.lr.ph211.us.preheader ] ; 4 uses
  %.2159207.us = phi ptr [ %.2.i.us, %LossyDctEncoder_rleAc.exit.us ], [ %.1158214.us, %.lr.ph211.us.preheader ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv297
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !124 ; 22 uses
end_hunk_1
begin_hunk_2_@LossyDctEncoder_execute:bb.a
  %i.qm = shufflevector <4 x float> %i.qf, <4 x float> %i.qg, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qn = shufflevector <4 x float> %i.qd, <4 x float> %i.qe, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.qo = shufflevector <4 x float> %i.qf, <4 x float> %i.qg, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %i.qh, ptr %i.hf, align 16, !tbaa !88
  store <4 x float> %i.qi, ptr %i.hh, align 16, !tbaa !88
  store <4 x float> %i.qj, ptr %i.hg, align 16, !tbaa !88
end_hunk_2
begin_hunk_3_@LossyDctEncoder_execute:bb.a

float_to_half.exit64.i.us:                        ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.ay
  %.0.i.i63.i.us = phi i16 [ %i.wb, %bb.ay ], [ %i.xl, %bb.bh ], [ %i.xc, %bb.bf ], [ %i.xb, %bb.be ], [ %i.xd, %bb.bg ], [ %i.wr, %bb.bb ], [ %i.wn, %bb.ba ] ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.0120208.us, i64 %indvars.iv.i154.us
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !186, !alias.scope !243, !noalias !248
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.0120208.us, i64 %i.sh
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !186, !alias.scope !243, !noalias !248
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.0120208.us, i64 %i.ua
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !186, !alias.scope !243, !noalias !248
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.0120208.us, i64 %i.vt
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !186, !alias.scope !243, !noalias !248
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %.0119209.us, i64 %indvars.iv.i154.us
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !92, !alias.scope !245, !noalias !249
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %.0119209.us, i64 %i.sh
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !92, !alias.scope !245, !noalias !249
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %.0119209.us, i64 %i.ua
  %i.xz = load i16, ptr %i.xy, align 2, !tbaa !92, !alias.scope !245, !noalias !249
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %.0119209.us, i64 %i.vt
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !92, !alias.scope !245, !noalias !249
  %i.yc = zext i16 %.0.i.i.i.us to i32            ; 2 uses
  %i.yd = zext i16 %i.xv to i32
end_hunk_3
