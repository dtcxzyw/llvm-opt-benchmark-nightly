begin_hunk_0_@interpolation_linear:bb.a
  %i.ax = mul nsw i32 %i.aw, %i.q
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay ; 27 uses
  %5 = icmp sgt i32 %i.ah, 0
  %6 = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %5, i1 %6, i1 false
  %i.ba = icmp sgt i32 %i.ad, 0
  %or.cond304 = select i1 %or.cond, i1 %i.ba, i1 false
  br i1 %or.cond304, label %.preheader277.us.us.preheader, label %._crit_edge

.preheader277.us.us.preheader:                    ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.preheader277.us.us

.preheader277.us.us:                              ; preds = %.preheader277.us.us.preheader, %._crit_edge280.split.us.us.us
  %.0274281.us.us = phi i32 [ %i.hw, %._crit_edge280.split.us.us.us ], [ 0, %.preheader277.us.us.preheader ] ; 4 uses
  %i.bb = mul nsw i32 %.0274281.us.us, %i.ab
  %i.bc = lshr i32 %.0274281.us.us, 1
  %i.bd = mul nsw i32 %i.bc, %i.u
  %i.be = and i32 %.0274281.us.us, 1
  %.not276.us.us = icmp eq i32 %i.be, 0           ; 2 uses
  %.0264.us.us = select i1 %.not276.us.us, double 1.562500e-01, double -9.375000e-02 ; 3 uses
  %.0.us.us = select i1 %.not276.us.us, double -9.375000e-02, double 1.562500e-01 ; 3 uses
  %7 = fmul nnan double %.0264.us.us, 9.375000e-01 ; 3 uses
  %8 = fmul nnan double %7, 9.375000e-01
  %9 = fmul nnan double %.0.us.us, 9.375000e-01   ; 3 uses
  %10 = fmul nnan double %9, 9.375000e-01
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader277.us.us
  %.0273279.us.us.us = phi i32 [ 0, %.preheader277.us.us ], [ %17, %._crit_edge.us.us.us ] ; 4 uses
  %i.bf = mul nsw i32 %.0273279.us.us.us, %i.z
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = lshr i32 %.0273279.us.us.us, 1
  %i.bi = mul nsw i32 %i.bh, %i.s
  %i.bj = add i32 %i.bi, %i.bd
  %i.bk = and i32 %.0273279.us.us.us, 1
  %.not275.us.us.us = icmp eq i32 %i.bk, 0        ; 2 uses
  %.0267.us.us.us = select i1 %.not275.us.us.us, double 1.562500e-01, double -9.375000e-02 ; 3 uses
  %.0265.us.us.us = select i1 %.not275.us.us.us, double -9.375000e-02, double 1.562500e-01 ; 3 uses
  %i.bl = fmul nnan double %.0264.us.us, %.0267.us.us.us ; 3 uses
  %i.bm = fmul nnan double %i.bl, 9.375000e-01
  %i.bn = fmul nnan double %.0264.us.us, %.0265.us.us.us ; 3 uses
  %i.bo = fmul nnan double %i.bn, 9.375000e-01
  %11 = fmul nnan double %.0267.us.us.us, 9.375000e-01 ; 3 uses
  %12 = fmul nnan double %11, 9.375000e-01
  %13 = fmul nnan double %.0265.us.us.us, 9.375000e-01 ; 3 uses
  %14 = fmul nnan double %13, 9.375000e-01
  %i.bp = fmul nnan double %.0.us.us, %.0267.us.us.us ; 3 uses
  %i.bq = fmul nnan double %i.bp, 9.375000e-01
  %i.br = fmul nnan double %.0.us.us, %.0265.us.us.us ; 3 uses
end_hunk_0
begin_hunk_1_@interpolation_linear:bb.a
  %i.bv = lshr i32 %i.bt, 1
  %i.bw = add i32 %i.bj, %i.bv                    ; 7 uses
  %i.bx = and i32 %i.bt, 1
  %.not.us.us.us = icmp eq i32 %i.bx, 0           ; 2 uses
  %.0270.us.us.us = select i1 %.not.us.us.us, double 1.562500e-01, double -9.375000e-02 ; 9 uses
  %.0268.us.us.us = select i1 %.not.us.us.us, double -9.375000e-02, double 1.562500e-01 ; 9 uses
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.by ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !44
end_hunk_1
begin_hunk_2_@interpolation_linear:bb.a
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !44
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.eh, double %i.eb)
  %i.ej = fmul nnan double %11, %.0270.us.us.us
  %i.ek = sext i32 %i.cd to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !44
end_hunk_2
begin_hunk_3_@interpolation_linear:bb.a
  %i.eo = sext i32 %i.ck to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !44
  %i.er = tail call double @llvm.fmuladd.f64(double %12, double %i.eq, double %i.en)
  %i.es = fmul nnan double %11, %.0268.us.us.us
  %i.et = sext i32 %i.cs to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !44
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.es, double %i.ev, double %i.er)
  %15 = fmul nnan double %.0270.us.us.us, f0x3FEC200000000000
  %i.ex = sext i32 %i.cc to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !44
  %i.fa = tail call double @llvm.fmuladd.f64(double %15, double %i.ez, double %i.ew)
  %i.fb = sext i32 %i.bw to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !44
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double f0x3FEA5E0000000000, double %i.fa)
  %16 = fmul nnan double %.0268.us.us.us, f0x3FEC200000000000
  %i.ff = sext i32 %i.cr to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !44
  %i.fi = tail call double @llvm.fmuladd.f64(double %16, double %i.fh, double %i.fe)
  %i.fj = fmul nnan double %13, %.0270.us.us.us
  %i.fk = sext i32 %i.dq to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !44
end_hunk_3
begin_hunk_4_@interpolation_linear:bb.a
  %i.fo = sext i32 %i.dw to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !44
  %i.fr = tail call double @llvm.fmuladd.f64(double %14, double %i.fq, double %i.fn)
  %i.fs = fmul nnan double %13, %.0268.us.us.us
  %i.ft = sext i32 %i.ed to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !44
end_hunk_4
begin_hunk_5_@interpolation_linear:bb.a
  store double %i.hv, ptr %i.bz, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !281

._crit_edge.us.us.us:                             ; preds = %bb.c
  %17 = add nuw nsw i32 %.0273279.us.us.us, 1     ; 2 uses
  %exitcond292.not = icmp eq i32 %17, %i.af
  br i1 %exitcond292.not, label %._crit_edge280.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !282

._crit_edge280.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.hw = add nuw nsw i32 %.0274281.us.us, 1      ; 2 uses
  %exitcond293.not.a = icmp eq i32 %i.hw, %i.ah
  br i1 %exitcond293.not.a, label %._crit_edge, label %.preheader277.us.us, !llvm.loop !283

._crit_edge:                                      ; preds = %._crit_edge280.split.us.us.us, %bb.b
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %._crit_edge288, label %bb.b, !llvm.loop !284
end_hunk_5
