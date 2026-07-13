inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@QRiterate:bb.a
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !8
  %i.ex = fcmp oeq double %i.ew, 0.000000e+00
  br i1 %i.ex, label %.preheader151.22, label %.lr.ph.preheader

.preheader151.22:                                 ; preds = %.preheader151.21
  %i.ey = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 224
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !8
  %i.fb = fcmp oeq double %i.fa, 0.000000e+00
  br i1 %i.fb, label %.preheader151.23, label %.lr.ph.preheader

.preheader151.23:                                 ; preds = %.preheader151.22
  %i.fc = load ptr, ptr %i.z, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 216
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = fcmp oeq double %i.fe, 0.000000e+00
  br i1 %i.ff, label %.preheader151.24, label %.lr.ph.preheader

.preheader151.24:                                 ; preds = %.preheader151.23
  %i.fg = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !8
  %i.fj = fcmp oeq double %i.fi, 0.000000e+00
  br i1 %i.fj, label %.preheader151.25, label %.lr.ph.preheader

.preheader151.25:                                 ; preds = %.preheader151.24
  %i.fk = load ptr, ptr %i.ab, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 200
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !8
  %i.fn = fcmp oeq double %i.fm, 0.000000e+00
  br i1 %i.fn, label %.preheader151.26, label %.lr.ph.preheader

.preheader151.26:                                 ; preds = %.preheader151.25
  %i.fo = load ptr, ptr %i.ac, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 192
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %i.fr = fcmp oeq double %i.fq, 0.000000e+00
  br i1 %i.fr, label %.preheader151.27, label %.lr.ph.preheader

.preheader151.27:                                 ; preds = %.preheader151.26
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 184
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !8
  %i.fv = fcmp oeq double %i.fu, 0.000000e+00
  br i1 %i.fv, label %.preheader151.28, label %.lr.ph.preheader

.preheader151.28:                                 ; preds = %.preheader151.27
  %i.fw = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 176
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !8
  %i.fz = fcmp oeq double %i.fy, 0.000000e+00
  br i1 %i.fz, label %.preheader151.29, label %.lr.ph.preheader

.preheader151.29:                                 ; preds = %.preheader151.28
  %i.ga = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !8
  %i.gd = fcmp oeq double %i.gc, 0.000000e+00
  br i1 %i.gd, label %.preheader151.30, label %.lr.ph.preheader

.preheader151.30:                                 ; preds = %.preheader151.29
  %i.ge = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 160
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !8
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.preheader151.31, label %.lr.ph.preheader

.preheader151.31:                                 ; preds = %.preheader151.30
  %i.gi = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 152
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !8
  %i.gl = fcmp oeq double %i.gk, 0.000000e+00
  br i1 %i.gl, label %.preheader151.32, label %.lr.ph.preheader

.preheader151.32:                                 ; preds = %.preheader151.31
  %i.gm = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 144
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  br i1 %i.gp, label %.preheader151.33, label %.lr.ph.preheader

.preheader151.33:                                 ; preds = %.preheader151.32
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 136
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !8
  %i.gt = fcmp oeq double %i.gs, 0.000000e+00
  br i1 %i.gt, label %.preheader151.34, label %.lr.ph.preheader

.preheader151.34:                                 ; preds = %.preheader151.33
  %i.gu = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8
  %i.gx = fcmp oeq double %i.gw, 0.000000e+00
  br i1 %i.gx, label %.preheader151.35, label %.lr.ph.preheader

.preheader151.35:                                 ; preds = %.preheader151.34
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !8
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %.preheader151.36, label %.lr.ph.preheader

.preheader151.36:                                 ; preds = %.preheader151.35
  %i.hc = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
  %i.he = load double, ptr %i.hd, align 8, !tbaa !8
  %i.hf = fcmp oeq double %i.he, 0.000000e+00
  br i1 %i.hf, label %.preheader151.37, label %.lr.ph.preheader

.preheader151.37:                                 ; preds = %.preheader151.36
  %i.hg = load ptr, ptr %i.an, align 8, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8
  %i.hj = fcmp oeq double %i.hi, 0.000000e+00
  br i1 %i.hj, label %.preheader151.38, label %.lr.ph.preheader

.preheader151.38:                                 ; preds = %.preheader151.37
  %i.hk = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !8
  %i.hn = fcmp oeq double %i.hm, 0.000000e+00
  br i1 %i.hn, label %.preheader151.39, label %.lr.ph.preheader

.preheader151.39:                                 ; preds = %.preheader151.38
  %i.ho = load ptr, ptr %i.ap, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !8
  %i.hr = fcmp oeq double %i.hq, 0.000000e+00
  br i1 %i.hr, label %.preheader151.40, label %.lr.ph.preheader

.preheader151.40:                                 ; preds = %.preheader151.39
  %i.hs = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !8
  %i.hv = fcmp oeq double %i.hu, 0.000000e+00
  br i1 %i.hv, label %.preheader151.41, label %.lr.ph.preheader

.preheader151.41:                                 ; preds = %.preheader151.40
  %i.hw = load ptr, ptr %i.ar, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !8
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  br i1 %i.hz, label %.preheader151.42, label %.lr.ph.preheader

.preheader151.42:                                 ; preds = %.preheader151.41
  %i.ia = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !8
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %.preheader151.43, label %.lr.ph.preheader

.preheader151.43:                                 ; preds = %.preheader151.42
  %i.ie = load ptr, ptr %i.at, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ig = load double, ptr %i.if, align 8, !tbaa !8
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  br i1 %i.ih, label %.preheader151.44, label %.lr.ph.preheader

.preheader151.44:                                 ; preds = %.preheader151.43
  %i.ii = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !8
  %i.il = fcmp oeq double %i.ik, 0.000000e+00
  br i1 %i.il, label %.preheader151.45, label %.lr.ph.preheader

.preheader151.45:                                 ; preds = %.preheader151.44
  %i.im = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load double, ptr %i.in, align 8, !tbaa !8
  %i.ip = fcmp oeq double %i.io, 0.000000e+00
  br i1 %i.ip, label %.preheader151.46, label %.lr.ph.preheader

.preheader151.46:                                 ; preds = %.preheader151.45
  %i.iq = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load double, ptr %i.ir, align 8, !tbaa !8
  %i.it = fcmp oeq double %i.is, 0.000000e+00
  br i1 %i.it, label %.preheader151.47, label %.lr.ph.preheader

.preheader151.47:                                 ; preds = %.preheader151.46
  %i.iu = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !8
  %i.ix = fcmp oeq double %i.iw, 0.000000e+00
  br i1 %i.ix, label %.preheader151.48, label %.lr.ph.preheader

.preheader151.48:                                 ; preds = %.preheader151.47
  %i.iy = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !8
  %i.jb = fcmp oeq double %i.ja, 0.000000e+00
  br i1 %i.jb, label %.preheader151.49, label %.lr.ph.preheader

.preheader151.49:                                 ; preds = %.preheader151.48
  %i.jc = load double, ptr %i.az, align 8, !tbaa !8
  %i.jd = fcmp oeq double %i.jc, 0.000000e+00
  br i1 %i.jd, label %.critedge138, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader151.25, %.preheader151.31, %.preheader151.24, %.preheader151.38, %.preheader151.23, %.preheader151.33, %.preheader151.22, %.preheader151.39, %.preheader151.21, %.preheader151.30, %.preheader151.20, %.preheader151.40, %.preheader151.19, %.preheader151.35, %.preheader151.18, %.preheader151.41, %.preheader151.17, %.preheader151.29, %.preheader151.16, %.preheader151.42, %.preheader151.15, %.preheader151.32, %.preheader151.14, %.preheader151.43, %.preheader151.13, %.preheader151.28, %.preheader151.12, %.preheader151.44, %.preheader151.11, %.preheader151.36, %.preheader151.10, %.preheader151.45, %.preheader151.9, %.preheader151.27, %.preheader151.8, %.preheader151.46, %.preheader151.7, %.preheader151.34, %.preheader151.6, %.preheader151.47, %.preheader151.5, %.preheader151.26, %.preheader151.4, %.preheader151.48, %.preheader151.3, %.preheader151.37, %.preheader151.2, %.preheader151.49, %.preheader151.1, %.preheader151.preheader
  %.0127.lcssa.ph = phi i32 [ 25, %.preheader151.25 ], [ 19, %.preheader151.31 ], [ 26, %.preheader151.24 ], [ 12, %.preheader151.38 ], [ 27, %.preheader151.23 ], [ 17, %.preheader151.33 ], [ 28, %.preheader151.22 ], [ 11, %.preheader151.39 ], [ 29, %.preheader151.21 ], [ 20, %.preheader151.30 ], [ 30, %.preheader151.20 ], [ 10, %.preheader151.40 ], [ 31, %.preheader151.19 ], [ 15, %.preheader151.35 ], [ 32, %.preheader151.18 ], [ 9, %.preheader151.41 ], [ 33, %.preheader151.17 ], [ 21, %.preheader151.29 ], [ 34, %.preheader151.16 ], [ 8, %.preheader151.42 ], [ 35, %.preheader151.15 ], [ 18, %.preheader151.32 ], [ 36, %.preheader151.14 ], [ 7, %.preheader151.43 ], [ 37, %.preheader151.13 ], [ 22, %.preheader151.28 ], [ 38, %.preheader151.12 ], [ 6, %.preheader151.44 ], [ 39, %.preheader151.11 ], [ 14, %.preheader151.36 ], [ 40, %.preheader151.10 ], [ 5, %.preheader151.45 ], [ 41, %.preheader151.9 ], [ 23, %.preheader151.27 ], [ 42, %.preheader151.8 ], [ 4, %.preheader151.46 ], [ 43, %.preheader151.7 ], [ 16, %.preheader151.34 ], [ 44, %.preheader151.6 ], [ 3, %.preheader151.47 ], [ 45, %.preheader151.5 ], [ 24, %.preheader151.26 ], [ 46, %.preheader151.4 ], [ 2, %.preheader151.48 ], [ 47, %.preheader151.3 ], [ 13, %.preheader151.37 ], [ 48, %.preheader151.2 ], [ 1, %.preheader151.49 ], [ 49, %.preheader151.1 ], [ 50, %.preheader151.preheader ] ; 5 uses
  %i.je = zext nneg i32 %.0127.lcssa.ph to i64    ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %i.je, %.lr.ph.preheader ], [ %indvars.iv.next172, %bb.e ] ; 6 uses
  %i.jf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv171
  %i.jg = getelementptr i8, ptr %i.jf, i64 -8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !10
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv171
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !8
  %i.jk = fcmp une double %i.jj, 0.000000e+00
  br i1 %i.jk, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -1
  %i.jl = icmp sgt i64 %indvars.iv171, 1
  br i1 %i.jl, label %.lr.ph, label %.lr.ph166.preheader, !llvm.loop !16

.critedge2:                                       ; preds = %.lr.ph
  %i.jm = trunc nuw nsw i64 %indvars.iv171 to i32 ; 2 uses
  %i.jn = icmp sgt i32 %.0127.lcssa.ph, %i.jm
  br i1 %i.jn, label %.lr.ph166.preheader, label %.backedge

.lr.ph166.preheader:                              ; preds = %bb.e, %.critedge2
  %i.jo = phi i64 [ %indvars.iv171, %.critedge2 ], [ 0, %bb.e ] ; 12 uses
  %.1129.lcssa.ph189 = phi i32 [ %i.jm, %.critedge2 ], [ 0, %bb.e ]
  %.in = add nsw i32 %.0127.lcssa.ph, -1
  %i.jp = zext i32 %.in to i64                    ; 4 uses
  %i.jq = zext nneg i32 %.0127.lcssa.ph to i64    ; 3 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jo ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jo
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !8
  %i.jw = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jo
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jq
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !10 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jq
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !8 ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jp
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !8 ; 2 uses
  %i.kf = fmul double %i.ke, %i.ke                ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jp
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !10
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.jp
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !8
  %i.kk = fsub double %i.kj, %i.kc
  %i.kl = fmul double %i.kk, 5.000000e-01         ; 4 uses
  %i.km = fcmp olt double %i.kl, 0.000000e+00
  %i.kn = select i1 %i.km, double -1.000000e+00, double 1.000000e+00
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.kl, double %i.kf)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ko)
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.kn, double %sqrt, double %i.kl)
  %i.kq = fdiv double %i.kf, %i.kp
  %i.kr = fsub double %i.kc, %i.kq
  %i.ks = fsub double %i.jy, %i.kr
  %i.kt = add nsw i64 %i.jo, -1
  %2 = trunc i64 %i.jo to i32
  %3 = add nsw i32 %2, 2
  %i.ku = trunc i64 %i.jo to i32
  %i.kv = add nsw i32 %i.ku, 2
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.l
  %indvar = phi i32 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %bb.l ] ; 3 uses
  %indvars.iv181 = phi i64 [ %i.jo, %.lr.ph166.preheader ], [ %indvars.iv.next182, %bb.l ] ; 9 uses
  %indvars.iv174 = phi i64 [ %i.kt, %.lr.ph166.preheader ], [ %indvars.iv.next175, %bb.l ] ; 6 uses
  %.0165 = phi double [ %i.ks, %.lr.ph166.preheader ], [ %.1, %bb.l ] ; 4 uses
  %.0125164 = phi double [ %i.jv, %.lr.ph166.preheader ], [ %.1126, %bb.l ] ; 5 uses
  %4 = add i32 %i.kv, %indvar
  %5 = sext i32 %4 to i64
  %smin199 = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.je)
  %smax200 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin199)
  %smax201 = tail call i64 @llvm.smax.i64(i64 %smax200, i64 %indvars.iv174)
  %6 = add i64 %smax201, 1
  %smax202 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %indvars.iv174)
  %7 = sub i64 %6, %smax202                       ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %indvars.iv174)
  %i.kw = shl i64 %smax, 3                        ; 2 uses
  %i.kx = add i32 %3, %indvar
  %i.ky = sext i32 %i.kx to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ky, i64 %i.je)
  %smax193 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin)
  %smax194 = tail call i64 @llvm.smax.i64(i64 %smax193, i64 %indvars.iv174)
  %i.kz = shl i64 %smax194, 3                     ; 2 uses
  %smax178 = tail call i64 @llvm.smax.i64(i64 %indvars.iv174, i64 %i.jo) ; 5 uses
  %i.la = fcmp oeq double %.0125164, 0.000000e+00
  br i1 %i.la, label %Givens.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph166
  %i.lb = tail call double @llvm.fabs.f64(double %.0125164)
  %i.lc = tail call double @llvm.fabs.f64(double %.0165)
  %i.ld = fcmp ogt double %i.lb, %i.lc
  br i1 %i.ld, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.le = fneg double %.0165
  %i.lf = fdiv double %i.le, %.0125164            ; 3 uses
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.lg)
  %i.lh = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.li = fmul double %i.lf, %i.lh
  br label %Givens.exit

bb.h:                                             ; preds = %bb.f
  %i.lj = fneg double %.0125164
  %i.lk = fdiv double %i.lj, %.0165               ; 3 uses
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.lk, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.ll)
  %i.lm = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.ln = fmul double %i.lk, %i.lm
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0149 = phi double [ %i.lm, %bb.h ], [ %i.li, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 4 uses
  %.0148 = phi double [ %i.ln, %bb.h ], [ %i.lh, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 4 uses
  %i.lo = trunc i64 %indvars.iv181 to i32
  %i.lp = add i32 %i.lo, -1
  %i.lq = tail call i32 @llvm.smax.i32(i32 %i.lp, i32 %.1129.lcssa.ph189)
  %i.lr = add nsw i64 %indvars.iv181, 2           ; 2 uses
  %i.ls = trunc nsw i64 %i.lr to i32
  %i.lt = tail call i32 @llvm.smin.i32(i32 %.0127.lcssa.ph, i32 %i.ls) ; 3 uses
  %.not157 = icmp sgt i32 %i.lq, %i.lt
  br i1 %.not157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %Givens.exit
  %i.lu = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv181 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !10 ; 4 uses
  %i.lw = getelementptr i8, ptr %i.lu, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !10 ; 4 uses
  %i.ly = sext i32 %i.lt to i64
  %min.iters.check = icmp ult i64 %7, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph159
  %scevgep = getelementptr i8, ptr %i.lv, i64 %i.kw
  %scevgep192 = getelementptr i8, ptr %i.lv, i64 8
  %scevgep195 = getelementptr i8, ptr %scevgep192, i64 %i.kz
  %scevgep196 = getelementptr i8, ptr %i.lx, i64 %i.kw
  %scevgep197 = getelementptr i8, ptr %i.lx, i64 8
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.kz
  %bound0 = icmp ult ptr %scevgep, %scevgep198
  %bound1 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -2                         ; 3 uses
  %i.lz = add i64 %smax178, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0148, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %.0149, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ma = add i64 %smax178, %index                ; 2 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.ma ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mb, align 8, !tbaa !8, !alias.scope !17, !noalias !20 ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %i.ma ; 2 uses
  %wide.load205 = load <2 x double>, ptr %i.mc, align 8, !tbaa !8, !alias.scope !20 ; 2 uses
  %i.md = fneg <2 x double> %wide.load205
  %i.me = fmul <2 x double> %broadcast.splat, %i.md
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat204, <2 x double> %wide.load, <2 x double> %i.me)
  store <2 x double> %i.mf, ptr %i.mb, align 8, !tbaa !8, !alias.scope !17, !noalias !20
  %i.mg = fmul <2 x double> %broadcast.splat204, %wide.load205
  %i.mh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.mg)
  store <2 x double> %i.mh, ptr %i.mc, align 8, !tbaa !8, !alias.scope !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mi = icmp eq i64 %index.next, %n.vec
  br i1 %i.mi, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.lr.ph162, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph159, %middle.block
  %indvars.iv176.ph = phi i64 [ %smax178, %vector.memcheck ], [ %smax178, %.lr.ph159 ], [ %i.lz, %middle.block ]
  %i.mj = insertelement <2 x double> poison, double %.0148, i64 0
  %i.mk = insertelement <2 x double> %i.mj, double %.0149, i64 1 ; 2 uses
  br label %scalar.ph

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.ml = sext i32 %i.lt to i64
  %i.mm = insertelement <2 x double> poison, double %.0148, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %.0149, i64 1 ; 2 uses
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph ], [ %indvars.iv176.ph, %scalar.ph.preheader ] ; 4 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %indvars.iv176 ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !8
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %indvars.iv176 ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !8 ; 2 uses
  %i.ms = fneg double %i.mr
  %i.mt = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.mr, i64 1
  %i.mv = fmul <2 x double> %i.mk, %i.mu
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mx = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.my, <2 x double> %i.mw) ; 2 uses
  %i.na = extractelement <2 x double> %i.mz, i64 1
  store double %i.na, ptr %i.mo, align 8, !tbaa !8
  %i.nb = extractelement <2 x double> %i.mz, i64 0
  store double %i.nb, ptr %i.mq, align 8, !tbaa !8
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1
  %.not.not = icmp slt i64 %indvars.iv176, %i.ly
  br i1 %.not.not, label %scalar.ph, label %.lr.ph162, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph162, %bb.i
  %indvars.iv179 = phi i64 [ %smax178, %.lr.ph162 ], [ %indvars.iv.next180, %bb.i ] ; 3 uses
  %i.nc = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !10
  %i.ne = getelementptr [8 x i8], ptr %i.nd, i64 %indvars.iv181 ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !8
  %i.ng = getelementptr i8, ptr %i.ne, i64 8
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !8 ; 2 uses
  %i.ni = fneg double %i.nh
  %i.nj = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.nh, i64 1
  %i.nl = fmul <2 x double> %i.mn, %i.nk
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nn = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.no, <2 x double> %i.nm)
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.nq, ptr %i.ne, align 8, !tbaa !8
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1
  %.not137.not = icmp slt i64 %indvars.iv179, %i.ml
  br i1 %.not137.not, label %bb.i, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.i, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  %i.nr = insertelement <2 x double> poison, double %.0148, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %.0149, i64 1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !10 ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %indvars.iv181 ; 2 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !8
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %indvars.iv.next182
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !8 ; 2 uses
  %i.nz = fneg double %i.ny
  %i.oa = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.ob = insertelement <2 x double> %i.oa, double %i.ny, i64 1
  %i.oc = fmul <2 x double> %i.ns, %i.ob
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oe = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.of, <2 x double> %i.od)
  %i.oh = shufflevector <2 x double> %i.og, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.oh, ptr %i.nv, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13

ApplyRGivens.exit:                                ; preds = %bb.j
  %i.oi = icmp slt i64 %indvars.iv181, %i.jp
  br i1 %i.oi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ApplyRGivens.exit
  %i.oj = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next182
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !10
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ok, i64 %indvars.iv181
  %i.om = load double, ptr %i.ol, align 8, !tbaa !8
  %i.on = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lr
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !10
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %indvars.iv181
  %i.oq = load double, ptr %i.op, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %ApplyRGivens.exit, %bb.k
  %.1126 = phi double [ %i.oq, %bb.k ], [ %.0125164, %ApplyRGivens.exit ]
  %.1 = phi double [ %i.om, %bb.k ], [ %.0165, %ApplyRGivens.exit ]
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, %i.jq
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond184.not, label %.backedge, label %.lr.ph166, !llvm.loop !27

.critedge138:                                     ; preds = %.preheader151.49
  ret ptr undef
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 double", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !14, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !14, !23}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
end_hunk_0
