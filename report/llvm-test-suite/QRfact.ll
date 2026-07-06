inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@QRiterate:bb.a
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
  %sext = shl i64 %indvars.iv171, 32
  %2 = ashr exact i64 %sext, 32
  %i.jn = icmp sgt i32 %.0127.lcssa.ph, %i.jm
  br i1 %i.jn, label %.lr.ph166.preheader, label %.backedge

.lr.ph166.preheader:                              ; preds = %bb.e, %.critedge2
  %i.jo = phi i64 [ %2, %.critedge2 ], [ 0, %bb.e ] ; 12 uses
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
  %i.ku = trunc nsw i64 %i.jo to i32
  %i.kv = add nsw i32 %i.ku, 2
  %i.kw = trunc nsw i64 %i.jo to i32
  %i.kx = add nsw i32 %i.kw, 2
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.l
  %indvar = phi i32 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %bb.l ] ; 3 uses
  %indvars.iv181 = phi i64 [ %i.jo, %.lr.ph166.preheader ], [ %indvars.iv.next182, %bb.l ] ; 9 uses
  %indvars.iv174 = phi i64 [ %i.kt, %.lr.ph166.preheader ], [ %indvars.iv.next175, %bb.l ] ; 6 uses
  %.0165 = phi double [ %i.ks, %.lr.ph166.preheader ], [ %.1, %bb.l ] ; 4 uses
  %.0125164 = phi double [ %i.jv, %.lr.ph166.preheader ], [ %.1126, %bb.l ] ; 5 uses
  %i.ky = add i32 %i.kx, %indvar
  %i.kz = sext i32 %i.ky to i64
  %smin199 = tail call i64 @llvm.smin.i64(i64 %i.kz, i64 %i.je)
  %smax200 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin199)
  %smax201 = tail call i64 @llvm.smax.i64(i64 %smax200, i64 %indvars.iv174)
  %i.la = add i64 %smax201, 1
  %smax202 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %indvars.iv174)
  %i.lb = sub i64 %i.la, %smax202                 ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %indvars.iv174)
  %i.lc = shl i64 %smax, 3                        ; 2 uses
  %i.ld = add i32 %i.kv, %indvar
  %i.le = sext i32 %i.ld to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.le, i64 %i.je)
  %smax193 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin)
  %smax194 = tail call i64 @llvm.smax.i64(i64 %smax193, i64 %indvars.iv174)
  %i.lf = shl i64 %smax194, 3                     ; 2 uses
  %smax178 = tail call i64 @llvm.smax.i64(i64 %indvars.iv174, i64 %i.jo) ; 5 uses
  %i.lg = fcmp oeq double %.0125164, 0.000000e+00
  br i1 %i.lg, label %Givens.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph166
  %i.lh = tail call double @llvm.fabs.f64(double %.0125164)
  %i.li = tail call double @llvm.fabs.f64(double %.0165)
  %i.lj = fcmp ogt double %i.lh, %i.li
  br i1 %i.lj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.lk = fneg double %.0165
  %i.ll = fdiv double %i.lk, %.0125164            ; 3 uses
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.ll, double %i.ll, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.lm)
  %i.ln = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.lo = fmul double %i.ll, %i.ln
  br label %Givens.exit

bb.h:                                             ; preds = %bb.f
  %i.lp = fneg double %.0125164
  %i.lq = fdiv double %i.lp, %.0165               ; 3 uses
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lq, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.lr)
  %i.ls = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.lt = fmul double %i.lq, %i.ls
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0149 = phi double [ %i.ls, %bb.h ], [ %i.lo, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 7 uses
  %.0148 = phi double [ %i.lt, %bb.h ], [ %i.ln, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 7 uses
  %i.lu = trunc i64 %indvars.iv181 to i32
  %i.lv = add i32 %i.lu, -1
  %i.lw = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %.1129.lcssa.ph189)
  %i.lx = add nsw i64 %indvars.iv181, 2           ; 2 uses
  %i.ly = trunc nsw i64 %i.lx to i32
  %i.lz = tail call i32 @llvm.smin.i32(i32 %.0127.lcssa.ph, i32 %i.ly) ; 3 uses
  %.not157 = icmp sgt i32 %i.lw, %i.lz
  br i1 %.not157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %Givens.exit
  %i.ma = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv181 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !10 ; 4 uses
  %i.mc = getelementptr i8, ptr %i.ma, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !10 ; 4 uses
  %i.me = sext i32 %i.lz to i64
  %min.iters.check = icmp ult i64 %i.lb, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph159
  %scevgep = getelementptr i8, ptr %i.mb, i64 %i.lc
  %scevgep192 = getelementptr i8, ptr %i.mb, i64 8
  %scevgep195 = getelementptr i8, ptr %scevgep192, i64 %i.lf
  %scevgep196 = getelementptr i8, ptr %i.md, i64 %i.lc
  %scevgep197 = getelementptr i8, ptr %i.md, i64 8
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.lf
  %bound0 = icmp ult ptr %scevgep, %scevgep198
  %bound1 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lb, -2                      ; 3 uses
  %i.mf = add i64 %smax178, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0148, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %.0149, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mg = add i64 %smax178, %index                ; 2 uses
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mg ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mh, align 8, !tbaa !8, !alias.scope !17, !noalias !20 ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mg ; 2 uses
  %wide.load205 = load <2 x double>, ptr %i.mi, align 8, !tbaa !8, !alias.scope !20 ; 2 uses
  %i.mj = fneg <2 x double> %wide.load205
  %i.mk = fmul <2 x double> %broadcast.splat, %i.mj
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat204, <2 x double> %wide.load, <2 x double> %i.mk)
  store <2 x double> %i.ml, ptr %i.mh, align 8, !tbaa !8, !alias.scope !17, !noalias !20
  %i.mm = fmul <2 x double> %broadcast.splat204, %wide.load205
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.mm)
  store <2 x double> %i.mn, ptr %i.mi, align 8, !tbaa !8, !alias.scope !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mo = icmp eq i64 %index.next, %n.vec
  br i1 %i.mo, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lb, %n.vec
  br i1 %cmp.n, label %.lr.ph162, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph159, %middle.block
  %indvars.iv176.ph = phi i64 [ %smax178, %vector.memcheck ], [ %smax178, %.lr.ph159 ], [ %i.mf, %middle.block ]
  br label %scalar.ph

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.mp = sext i32 %i.lz to i64
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph ], [ %indvars.iv176.ph, %scalar.ph.preheader ] ; 4 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %indvars.iv176 ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !8 ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.md, i64 %indvars.iv176 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !8 ; 2 uses
  %i.mu = fneg double %i.mt
  %i.mv = fmul double %.0148, %i.mu
  %i.mw = tail call double @llvm.fmuladd.f64(double %.0149, double %i.mr, double %i.mv)
  store double %i.mw, ptr %i.mq, align 8, !tbaa !8
  %i.mx = fmul double %.0149, %i.mt
  %i.my = tail call double @llvm.fmuladd.f64(double %.0148, double %i.mr, double %i.mx)
  store double %i.my, ptr %i.ms, align 8, !tbaa !8
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1
  %.not.not = icmp slt i64 %indvars.iv176, %i.me
  br i1 %.not.not, label %scalar.ph, label %.lr.ph162, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph162, %bb.i
  %indvars.iv179 = phi i64 [ %smax178, %.lr.ph162 ], [ %indvars.iv.next180, %bb.i ] ; 3 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !10
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %indvars.iv181 ; 3 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !8 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 8      ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !8 ; 2 uses
  %i.nf = fneg double %i.ne
  %i.ng = fmul double %.0148, %i.nf
  %i.nh = tail call double @llvm.fmuladd.f64(double %.0149, double %i.nc, double %i.ng)
  store double %i.nh, ptr %i.nb, align 8, !tbaa !8
  %i.ni = fmul double %.0149, %i.ne
  %i.nj = tail call double @llvm.fmuladd.f64(double %.0148, double %i.nc, double %i.ni)
  store double %i.nj, ptr %i.nd, align 8, !tbaa !8
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1
  %.not137.not = icmp slt i64 %indvars.iv179, %i.mp
  br i1 %.not137.not, label %bb.i, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.i, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !10 ; 2 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %indvars.iv181 ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !8 ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %indvars.iv.next182 ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !8 ; 2 uses
  %i.nq = fneg double %i.np
  %i.nr = fmul double %.0148, %i.nq
  %i.ns = tail call double @llvm.fmuladd.f64(double %.0149, double %i.nn, double %i.nr)
  store double %i.ns, ptr %i.nm, align 8, !tbaa !8
  %i.nt = fmul double %.0149, %i.np
  %i.nu = tail call double @llvm.fmuladd.f64(double %.0148, double %i.nn, double %i.nt)
  store double %i.nu, ptr %i.no, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13

ApplyRGivens.exit:                                ; preds = %bb.j
  %i.nv = icmp slt i64 %indvars.iv181, %i.jp
  br i1 %i.nv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ApplyRGivens.exit
  %i.nw = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next182
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !10
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %indvars.iv181
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !8
  %i.oa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lx
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !10
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %indvars.iv181
  %i.od = load double, ptr %i.oc, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %ApplyRGivens.exit, %bb.k
end_hunk_0
