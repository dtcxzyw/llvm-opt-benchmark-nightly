inline.NumInlined: 74
begin_hunk_0_@cftf1st:bb.a
  %.0688690 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ]
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next704
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8 ; 6 uses
  %i.ax = fadd double %.0688690, %i.aw
  %i.ay = fmul double %i.ap, %i.ax                ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv703 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8 ; 5 uses
end_hunk_0
begin_hunk_1_@cftf1st:bb.a
  %i.ez = fsub <4 x double> %i.es, %i.ev
  %i.fa = shufflevector <4 x double> %i.ez, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.fa, ptr %i.eo, align 8, !tbaa !8
  %3 = fsub <4 x double> %i.eq, %i.er             ; 2 uses
  %i.fb = fsub <4 x double> %i.et, %i.eu
  %i.fc = shufflevector <4 x double> %i.fb, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.fd = fsub <4 x double> %3, %i.fc             ; 5 uses
  %4 = fadd <4 x double> %3, %i.fc                ; 5 uses
  %5 = shufflevector <4 x double> %i.fd, <4 x double> %4, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %6 = extractelement <4 x double> %4, i64 3
  %7 = fneg double %6
  %8 = extractelement <4 x double> %4, i64 1
  %9 = fneg double %8
  %10 = extractelement <4 x double> %i.fd, i64 2
  %11 = fmul double %i.ay, %10
  %12 = fmul double %i.ay, %7
  %13 = extractelement <4 x double> %i.fd, i64 0
  %14 = fmul double %i.aw, %13
  %15 = fmul double %i.aw, %9
  %16 = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.fe = insertelement <4 x double> %16, double %i.bd, i64 2
  %17 = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ff = insertelement <4 x double> poison, double %15, i64 0
  %18 = insertelement <4 x double> %i.ff, double %14, i64 1
  %19 = insertelement <4 x double> %18, double %12, i64 2
  %20 = insertelement <4 x double> %19, double %11, i64 3
  %21 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %17, <4 x double> %5, <4 x double> %20)
  store <4 x double> %21, ptr %i.em, align 8, !tbaa !8
  %22 = shufflevector <4 x double> %4, <4 x double> %i.fd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fg = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.fh = insertelement <4 x double> %i.fg, double %i.bh, i64 2
  %23 = shufflevector <4 x double> %i.fh, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %24 = fneg <4 x double> %4
  %25 = shufflevector <4 x double> %i.fd, <4 x double> %24, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.fi = fmul <4 x double> %23, %25
  %i.fj = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.fk = insertelement <4 x double> %i.fj, double %i.bl, i64 2
  %26 = shufflevector <4 x double> %i.fk, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.fl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %26, <4 x double> %22, <4 x double> %i.fi)
  store <4 x double> %i.fl, ptr %i.ep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.fm, label %.lr.ph, label %._crit_edge, !llvm.loop !97
end_hunk_1
begin_hunk_2_@cftb1st:bb.a
  %i.ch = load <4 x double>, ptr %i.br, align 8, !tbaa !8 ; 4 uses
  %i.ci = load double, ptr %i.bw, align 8, !tbaa !8
  %i.cj = load double, ptr %i.bt, align 8, !tbaa !8
  %i.ck = extractelement <4 x double> %i.ch, i64 0
  %i.cl = extractelement <4 x double> %i.ce, i64 0
  %i.cm = fadd double %i.cl, %i.ck                ; 2 uses
  %i.cn = fneg double %i.cg
  %i.co = fsub double %i.cn, %i.cj                ; 2 uses
  %i.cp = extractelement <4 x double> %i.ch, i64 2
  %i.cq = extractelement <4 x double> %i.ce, i64 2
  %i.cr = fadd double %i.cq, %i.cp                ; 2 uses
  %i.cs = fneg double %i.cf
  %i.ct = fsub double %i.cs, %i.ci                ; 2 uses
  %3 = shufflevector <4 x double> %i.ch, <4 x double> %i.ce, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %4 = shufflevector <4 x double> %i.ce, <4 x double> %i.ch, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.cu = fsub <4 x double> %3, %4                ; 5 uses
  %i.cv = load <4 x double>, ptr %i.bx, align 8, !tbaa !8 ; 5 uses
  %i.cw = load <4 x double>, ptr %gep, align 8, !tbaa !8 ; 5 uses
end_hunk_2
begin_hunk_3_@cftb1st:bb.a
  %i.dh = extractelement <4 x double> %i.cw, i64 3
  %i.di = fadd double %i.dg, %i.dh                ; 2 uses
  %i.dj = fsub <4 x double> %i.cv, %i.cw          ; 5 uses
  %i.dk = fadd double %i.cm, %i.cz
  store double %i.dk, ptr %i.bq, align 8, !tbaa !8
  %i.dl = fsub double %i.co, %i.dc
end_hunk_3
begin_hunk_4_@cftb1st:bb.a
  store double %i.dq, ptr %i.ca, align 8, !tbaa !8
  %i.dr = fadd double %i.ct, %i.di
  store double %i.dr, ptr %i.cc, align 8, !tbaa !8
  %i.ds = fadd <4 x double> %i.cu, %i.dj          ; 3 uses
  %i.dt = insertelement <4 x double> poison, double %i.be, i64 0
  %i.du = insertelement <4 x double> %i.dt, double %i.bc, i64 2
  %5 = shufflevector <4 x double> %i.du, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %6 = fneg <4 x double> %i.ds
  %7 = shufflevector <4 x double> %i.ds, <4 x double> %6, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.dv = fmul <4 x double> %5, %7
  %i.dw = insertelement <4 x double> poison, double %i.az, i64 0
  %i.dx = insertelement <4 x double> %i.dw, double %i.ax, i64 2
  %8 = shufflevector <4 x double> %i.dx, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.dy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %i.ds, <4 x double> %i.dv)
  %9 = shufflevector <4 x double> %i.dy, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %9, ptr %i.br, align 8, !tbaa !8
  %i.dz = extractelement <4 x double> %i.cu, i64 1
  %i.ea = extractelement <4 x double> %i.dj, i64 1
  %i.eb = fsub double %i.dz, %i.ea                ; 2 uses
  %i.ec = extractelement <4 x double> %i.cu, i64 0
  %i.ed = extractelement <4 x double> %i.dj, i64 0
  %i.ee = fsub double %i.ec, %i.ed                ; 2 uses
  %i.ef = fmul double %i.bm, %i.ee
end_hunk_4
begin_hunk_5_@cftb1st:bb.a
  %i.ei = fmul double %i.bm, %i.eh
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.ee, double %i.ei)
  store double %i.ej, ptr %i.bz, align 8, !tbaa !8
  %i.ek = extractelement <4 x double> %i.cu, i64 3
  %i.el = extractelement <4 x double> %i.dj, i64 3
  %i.em = fsub double %i.ek, %i.el                ; 2 uses
  %i.en = extractelement <4 x double> %i.cu, i64 2
  %i.eo = extractelement <4 x double> %i.dj, i64 2
  %i.ep = fsub double %i.en, %i.eo                ; 2 uses
  %i.eq = fmul double %i.ep, %i.bn
end_hunk_5
begin_hunk_6_@cftb1st:bb.a
  %i.fn = load <4 x double>, ptr %i.fc, align 8, !tbaa !8 ; 4 uses
  %i.fo = load double, ptr %i.fa, align 8, !tbaa !8
  %i.fp = load double, ptr %i.fe, align 8, !tbaa !8
  %i.fq = extractelement <4 x double> %i.fn, i64 2
  %i.fr = extractelement <4 x double> %i.fk, i64 2
  %i.fs = fadd double %i.fr, %i.fq                ; 2 uses
  %i.ft = fneg double %i.fl
  %i.fu = fsub double %i.ft, %i.fo                ; 2 uses
  %i.fv = extractelement <4 x double> %i.fn, i64 0
  %i.fw = extractelement <4 x double> %i.fk, i64 0
  %i.fx = fadd double %i.fw, %i.fv                ; 2 uses
  %i.fy = fneg double %i.fm
  %i.fz = fsub double %i.fy, %i.fp                ; 2 uses
  %10 = shufflevector <4 x double> %i.fn, <4 x double> %i.fk, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %11 = shufflevector <4 x double> %i.fk, <4 x double> %i.fn, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ga = fsub <4 x double> %10, %11              ; 2 uses
  %i.gb = load <4 x double>, ptr %i.fh, align 8, !tbaa !8 ; 5 uses
  %i.gc = load <4 x double>, ptr %i.fi, align 8, !tbaa !8 ; 5 uses
  %i.gd = extractelement <4 x double> %i.gb, i64 2
end_hunk_6
begin_hunk_7_@cftb1st:bb.a
  %i.gm = extractelement <4 x double> %i.gb, i64 1
  %i.gn = extractelement <4 x double> %i.gc, i64 1
  %i.go = fadd double %i.gm, %i.gn                ; 2 uses
  %i.gp = fsub <4 x double> %i.gb, %i.gc          ; 2 uses
  %i.gq = fadd double %i.fs, %i.gf
  store double %i.gq, ptr %i.ex, align 8, !tbaa !8
  %i.gr = fsub double %i.fu, %i.gi
end_hunk_7
begin_hunk_8_@cftb1st:bb.a
  store double %i.gw, ptr %i.fh, align 8, !tbaa !8
  %i.gx = fadd double %i.fz, %i.go
  store double %i.gx, ptr %i.fj, align 8, !tbaa !8
  %i.gy = fadd <4 x double> %i.ga, %i.gp          ; 3 uses
  %i.gz = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.ha = insertelement <4 x double> %i.gz, double %i.az, i64 2
  %12 = shufflevector <4 x double> %i.ha, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %13 = fneg <4 x double> %i.gy
  %14 = shufflevector <4 x double> %i.gy, <4 x double> %13, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.hb = fmul <4 x double> %12, %14
  %i.hc = insertelement <4 x double> poison, double %i.bc, i64 0
  %i.hd = insertelement <4 x double> %i.hc, double %i.be, i64 2
  %15 = shufflevector <4 x double> %i.hd, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.he = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %15, <4 x double> %i.gy, <4 x double> %i.hb)
  %16 = shufflevector <4 x double> %i.he, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %16, ptr %i.fc, align 8, !tbaa !8
  %i.hf = fsub <4 x double> %i.ga, %i.gp          ; 3 uses
  %17 = fneg <4 x double> %i.hf
  %18 = shufflevector <4 x double> %17, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hg = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.hh = insertelement <4 x double> %i.hg, double %i.bi, i64 2
  %19 = shufflevector <4 x double> %i.hh, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %20 = shufflevector <4 x double> %i.hf, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %21 = shufflevector <2 x double> %18, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %22 = shufflevector <4 x double> %21, <4 x double> %20, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.hi = fmul <4 x double> %19, %22
  %i.hj = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.hk = insertelement <4 x double> %i.hj, double %i.bm, i64 2
  %23 = shufflevector <4 x double> %i.hk, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %23, <4 x double> %i.hf, <4 x double> %i.hi)
  %24 = shufflevector <4 x double> %i.hl, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %24, ptr %i.fi, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.hm = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.hm, label %.lr.ph, label %._crit_edge, !llvm.loop !110
end_hunk_8
