begin_hunk_0_@interpolation_linear:bb.a
  %i.ax = mul nsw i32 %i.aw, %i.q
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay ; 27 uses
  %i.ba = icmp sgt i32 %i.ah, 0
  br i1 %i.ba, label %.preheader277.lr.ph, label %._crit_edge

.preheader277.lr.ph:                              ; preds = %bb.b
  %5 = icmp sgt i32 %i.af, 0
  %6 = icmp sgt i32 %i.ad, 0
  br i1 %5, label %.preheader277.us.us.preheader, label %._crit_edge

.preheader277.us.us.preheader:                    ; preds = %.preheader277.lr.ph
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.preheader277.us.us

.preheader277.us.us:                              ; preds = %.preheader277.us.us.preheader, %._crit_edge280.us
  %.0274281.us.us = phi i32 [ %11, %._crit_edge280.us ], [ 0, %.preheader277.us.us.preheader ] ; 4 uses
  %i.bb = mul nsw i32 %.0274281.us.us, %i.ab
  %i.bc = lshr i32 %.0274281.us.us, 1
  %i.bd = mul nsw i32 %i.bc, %i.u
  %i.be = and i32 %.0274281.us.us, 1
  %.not276.us.us = icmp eq i32 %i.be, 0           ; 6 uses
  %.0264.us.us = select i1 %.not276.us.us, double 1.562500e-01, double -9.375000e-02 ; 2 uses
  %.0.us.us = select i1 %.not276.us.us, double -9.375000e-02, double 1.562500e-01 ; 2 uses
  %7 = select i1 %.not276.us.us, double f0x3FC2C00000000000, double f0xBFB6800000000000 ; 2 uses
  %8 = select i1 %.not276.us.us, double f0x3FC1940000000000, double f0xBFB5180000000000
  %9 = select i1 %.not276.us.us, double f0xBFB6800000000000, double f0x3FC2C00000000000 ; 2 uses
  %10 = select i1 %.not276.us.us, double f0xBFB5180000000000, double f0x3FC1940000000000
  br i1 %6, label %.preheader.us.us.us, label %._crit_edge280.us

._crit_edge280.us:                                ; preds = %._crit_edge280.split.us.us.us, %.preheader277.us.us
  %11 = add nuw nsw i32 %.0274281.us.us, 1        ; 2 uses
  %exitcond293.not = icmp eq i32 %11, %i.ah
  br i1 %exitcond293.not, label %._crit_edge, label %.preheader277.us.us, !llvm.loop !281

.preheader.us.us.us:                              ; preds = %.preheader277.us.us, %._crit_edge280.split.us.us.us
  %.0273279.us.us.us = phi i32 [ %i.hw, %._crit_edge280.split.us.us.us ], [ 0, %.preheader277.us.us ] ; 4 uses
  %i.bf = mul nsw i32 %.0273279.us.us.us, %i.z
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = lshr i32 %.0273279.us.us.us, 1
  %i.bi = mul nsw i32 %i.bh, %i.s
  %i.bj = add i32 %i.bi, %i.bd
  %i.bk = and i32 %.0273279.us.us.us, 1
  %.not275.us.us.us = icmp eq i32 %i.bk, 0        ; 6 uses
  %.0267.us.us.us = select i1 %.not275.us.us.us, double 1.562500e-01, double -9.375000e-02 ; 2 uses
  %.0265.us.us.us = select i1 %.not275.us.us.us, double -9.375000e-02, double 1.562500e-01 ; 2 uses
  %i.bl = fmul nnan double %.0264.us.us, %.0267.us.us.us ; 3 uses
  %i.bm = fmul nnan double %i.bl, 9.375000e-01
  %i.bn = fmul nnan double %.0264.us.us, %.0265.us.us.us ; 3 uses
  %i.bo = fmul nnan double %i.bn, 9.375000e-01
  %12 = select i1 %.not275.us.us.us, double f0x3FC2C00000000000, double f0xBFB6800000000000 ; 2 uses
  %13 = select i1 %.not275.us.us.us, double f0x3FC1940000000000, double f0xBFB5180000000000
  %14 = select i1 %.not275.us.us.us, double f0xBFB6800000000000, double f0x3FC2C00000000000 ; 2 uses
  %15 = select i1 %.not275.us.us.us, double f0xBFB5180000000000, double f0x3FC1940000000000
  %i.bp = fmul nnan double %.0.us.us, %.0267.us.us.us ; 3 uses
  %i.bq = fmul nnan double %i.bp, 9.375000e-01
  %i.br = fmul nnan double %.0.us.us, %.0265.us.us.us ; 3 uses
end_hunk_0
begin_hunk_1_@interpolation_linear:bb.a
  %i.bv = lshr i32 %i.bt, 1
  %i.bw = add i32 %i.bj, %i.bv                    ; 7 uses
  %i.bx = and i32 %i.bt, 1
  %.not.us.us.us = icmp eq i32 %i.bx, 0           ; 4 uses
  %.0270.us.us.us = select i1 %.not.us.us.us, double 1.562500e-01, double -9.375000e-02 ; 8 uses
  %.0268.us.us.us = select i1 %.not.us.us.us, double -9.375000e-02, double 1.562500e-01 ; 8 uses
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.by ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !44
end_hunk_1
begin_hunk_2_@interpolation_linear:bb.a
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !44
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.eh, double %i.eb)
  %i.ej = fmul nnan double %12, %.0270.us.us.us
  %i.ek = sext i32 %i.cd to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !44
end_hunk_2
begin_hunk_3_@interpolation_linear:bb.a
  %i.eo = sext i32 %i.ck to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !44
  %i.er = tail call double @llvm.fmuladd.f64(double %13, double %i.eq, double %i.en)
  %i.es = fmul nnan double %12, %.0268.us.us.us
  %i.et = sext i32 %i.cs to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !44
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.es, double %i.ev, double %i.er)
  %16 = select i1 %.not.us.us.us, double f0x3FC1940000000000, double f0xBFB5180000000000
  %i.ex = sext i32 %i.cc to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !44
  %i.fa = tail call double @llvm.fmuladd.f64(double %16, double %i.ez, double %i.ew)
  %i.fb = sext i32 %i.bw to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !44
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double f0x3FEA5E0000000000, double %i.fa)
  %17 = select i1 %.not.us.us.us, double f0xBFB5180000000000, double f0x3FC1940000000000
  %i.ff = sext i32 %i.cr to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !44
  %i.fi = tail call double @llvm.fmuladd.f64(double %17, double %i.fh, double %i.fe)
  %i.fj = fmul nnan double %14, %.0270.us.us.us
  %i.fk = sext i32 %i.dq to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !44
end_hunk_3
begin_hunk_4_@interpolation_linear:bb.a
  %i.fo = sext i32 %i.dw to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !44
  %i.fr = tail call double @llvm.fmuladd.f64(double %15, double %i.fq, double %i.fn)
  %i.fs = fmul nnan double %14, %.0268.us.us.us
  %i.ft = sext i32 %i.ed to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !44
end_hunk_4
begin_hunk_5_@interpolation_linear:bb.a
  store double %i.hv, ptr %i.bz, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge280.split.us.us.us, label %bb.c, !llvm.loop !282

._crit_edge280.split.us.us.us:                    ; preds = %bb.c
  %i.hw = add nuw nsw i32 %.0273279.us.us.us, 1   ; 2 uses
  %exitcond293.not.a = icmp eq i32 %i.hw, %i.af
  br i1 %exitcond293.not.a, label %._crit_edge280.us, label %.preheader.us.us.us, !llvm.loop !283

._crit_edge:                                      ; preds = %._crit_edge280.us, %.preheader277.lr.ph, %bb.b
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %._crit_edge288, label %bb.b, !llvm.loop !284
end_hunk_5
