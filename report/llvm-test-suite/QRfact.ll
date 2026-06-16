inline.NumInlined: 3
begin_hunk_0_@QRiterate:bb.a
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
  %i.jn = ashr exact i64 %sext, 32
  %i.jo = icmp sgt i32 %.0127.lcssa.ph, %i.jm
  br i1 %i.jo, label %.lr.ph166.preheader, label %.backedge

.lr.ph166.preheader:                              ; preds = %bb.e, %.critedge2
  %i.jp = phi i64 [ %i.jn, %.critedge2 ], [ 0, %bb.e ] ; 10 uses
  %.1129.lcssa.ph189 = phi i32 [ %i.jm, %.critedge2 ], [ 0, %bb.e ]
  %.in = add nsw i32 %.0127.lcssa.ph, -1
  %i.jq = zext i32 %.in to i64                    ; 4 uses
  %i.jr = zext nneg i32 %.0127.lcssa.ph to i64    ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jp ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !10
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jp
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !8
  %i.jx = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jp
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jr
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !10 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jr
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !8 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jq
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !8 ; 2 uses
  %i.kg = fmul double %i.kf, %i.kf                ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jq
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !10
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.jq
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !8
  %i.kl = fsub double %i.kk, %i.kd
  %i.km = fmul double %i.kl, 5.000000e-01         ; 4 uses
  %i.kn = fcmp olt double %i.km, 0.000000e+00
  %i.ko = select i1 %i.kn, double -1.000000e+00, double 1.000000e+00
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %i.kg)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.kp)
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.ko, double %sqrt, double %i.km)
  %i.kr = fdiv double %i.kg, %i.kq
  %i.ks = fsub double %i.kd, %i.kr
  %i.kt = fsub double %i.jz, %i.ks
  %i.ku = add nsw i64 %i.jp, -1
  %i.kv = trunc nsw i64 %i.jp to i32
  %i.kw = add nsw i32 %i.kv, 2
  %i.kx = trunc nsw i64 %i.jp to i32
  %i.ky = add nsw i32 %i.kx, 2
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.l
  %indvar = phi i32 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %bb.l ] ; 3 uses
  %indvars.iv181 = phi i64 [ %i.jp, %.lr.ph166.preheader ], [ %indvars.iv.next182, %bb.l ] ; 9 uses
  %indvars.iv174 = phi i64 [ %i.ku, %.lr.ph166.preheader ], [ %indvars.iv.next175, %bb.l ] ; 4 uses
  %.0165 = phi double [ %i.kt, %.lr.ph166.preheader ], [ %.1, %bb.l ] ; 4 uses
  %.0125164 = phi double [ %i.jw, %.lr.ph166.preheader ], [ %.1126, %bb.l ] ; 5 uses
  %i.kz = add i32 %i.ky, %indvar
  %i.la = sext i32 %i.kz to i64
  %smin199 = tail call i64 @llvm.smin.i64(i64 %i.la, i64 %i.je)
  %2 = add nsw i64 %smin199, 1
  %smax201 = tail call i64 @llvm.smax.i64(i64 %i.jp, i64 %indvars.iv174) ; 2 uses
  %i.lb = add i64 %smax201, 1
  %smax202 = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.lb)
  %i.lc = sub i64 %smax202, %smax201              ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jp, i64 %indvars.iv174) ; 2 uses
  %i.ld = shl i64 %smax, 3                        ; 2 uses
  %i.le = add i32 %i.kw, %indvar
  %i.lf = sext i32 %i.le to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.lf, i64 %i.je)
  %3 = add nsw i64 %smin, 1
  %4 = add i64 %smax, 1
  %smax194 = tail call i64 @llvm.smax.i64(i64 %3, i64 %4)
  %i.lg = shl i64 %smax194, 3                     ; 2 uses
  %smax178 = tail call i64 @llvm.smax.i64(i64 %indvars.iv174, i64 %i.jp) ; 5 uses
  %i.lh = fcmp oeq double %.0125164, 0.000000e+00
  br i1 %i.lh, label %Givens.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph166
  %i.li = tail call double @llvm.fabs.f64(double %.0125164)
  %i.lj = tail call double @llvm.fabs.f64(double %.0165)
  %i.lk = fcmp ogt double %i.li, %i.lj
  br i1 %i.lk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ll = fneg double %.0165
  %i.lm = fdiv double %i.ll, %.0125164            ; 3 uses
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lm, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ln)
  %i.lo = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.lp = fmul double %i.lm, %i.lo
  br label %Givens.exit

bb.h:                                             ; preds = %bb.f
  %i.lq = fneg double %.0125164
  %i.lr = fdiv double %i.lq, %.0165               ; 3 uses
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lr, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.ls)
  %i.lt = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.lu = fmul double %i.lr, %i.lt
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0149 = phi double [ %i.lt, %bb.h ], [ %i.lp, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 7 uses
  %.0148 = phi double [ %i.lu, %bb.h ], [ %i.lo, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 7 uses
  %i.lv = trunc i64 %indvars.iv181 to i32
  %i.lw = add i32 %i.lv, -1
  %i.lx = tail call i32 @llvm.smax.i32(i32 %i.lw, i32 %.1129.lcssa.ph189)
  %i.ly = add nsw i64 %indvars.iv181, 2           ; 2 uses
  %i.lz = trunc nsw i64 %i.ly to i32
  %i.ma = tail call i32 @llvm.smin.i32(i32 %.0127.lcssa.ph, i32 %i.lz) ; 3 uses
  %.not157 = icmp sgt i32 %i.lx, %i.ma
  br i1 %.not157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %Givens.exit
  %i.mb = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv181 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !10 ; 4 uses
  %i.md = getelementptr i8, ptr %i.mb, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !10 ; 4 uses
  %i.mf = sext i32 %i.ma to i64
  %min.iters.check = icmp ult i64 %i.lc, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph159
  %scevgep = getelementptr i8, ptr %i.mc, i64 %i.ld
  %scevgep195.a = getelementptr i8, ptr %i.mc, i64 %i.lg
  %scevgep196 = getelementptr i8, ptr %i.me, i64 %i.ld
  %scevgep198 = getelementptr i8, ptr %i.me, i64 %i.lg
  %bound0 = icmp ult ptr %scevgep, %scevgep198
  %bound1 = icmp ult ptr %scevgep196, %scevgep195.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lc, -2                      ; 3 uses
  %i.mg = add i64 %smax178, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0148, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %.0149, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mh = add i64 %smax178, %index                ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mh ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mi, align 8, !tbaa !8, !alias.scope !17, !noalias !20 ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mh ; 2 uses
  %wide.load205 = load <2 x double>, ptr %i.mj, align 8, !tbaa !8, !alias.scope !20 ; 2 uses
  %i.mk = fneg <2 x double> %wide.load205
  %i.ml = fmul <2 x double> %broadcast.splat, %i.mk
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat204, <2 x double> %wide.load, <2 x double> %i.ml)
  store <2 x double> %i.mm, ptr %i.mi, align 8, !tbaa !8, !alias.scope !17, !noalias !20
  %i.mn = fmul <2 x double> %broadcast.splat204, %wide.load205
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.mn)
  store <2 x double> %i.mo, ptr %i.mj, align 8, !tbaa !8, !alias.scope !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mp = icmp eq i64 %index.next, %n.vec
  br i1 %i.mp, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lc, %n.vec
  br i1 %cmp.n, label %.lr.ph162, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph159, %middle.block
  %indvars.iv176.ph = phi i64 [ %smax178, %vector.memcheck ], [ %smax178, %.lr.ph159 ], [ %i.mg, %middle.block ]
  br label %scalar.ph

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.mq = sext i32 %i.ma to i64
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph ], [ %indvars.iv176.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %indvars.iv176 ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !8 ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.me, i64 %indvars.iv176 ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !8 ; 2 uses
  %i.mv = fneg double %i.mu
  %i.mw = fmul double %.0148, %i.mv
  %i.mx = tail call double @llvm.fmuladd.f64(double %.0149, double %i.ms, double %i.mw)
  store double %i.mx, ptr %i.mr, align 8, !tbaa !8
  %i.my = fmul double %.0149, %i.mu
  %i.mz = tail call double @llvm.fmuladd.f64(double %.0148, double %i.ms, double %i.my)
  store double %i.mz, ptr %i.mt, align 8, !tbaa !8
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next177, %i.mf
  br i1 %.not, label %.lr.ph162, label %scalar.ph, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph162, %bb.i
  %indvars.iv179 = phi i64 [ %smax178, %.lr.ph162 ], [ %indvars.iv.next180, %bb.i ] ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !10
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv181 ; 3 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !8 ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nc, i64 8      ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !8 ; 2 uses
  %i.ng = fneg double %i.nf
  %i.nh = fmul double %.0148, %i.ng
  %i.ni = tail call double @llvm.fmuladd.f64(double %.0149, double %i.nd, double %i.nh)
  store double %i.ni, ptr %i.nc, align 8, !tbaa !8
  %i.nj = fmul double %.0149, %i.nf
  %i.nk = tail call double @llvm.fmuladd.f64(double %.0148, double %i.nd, double %i.nj)
  store double %i.nk, ptr %i.ne, align 8, !tbaa !8
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %.not137 = icmp sgt i64 %indvars.iv.next180, %i.mq
  br i1 %.not137, label %._crit_edge, label %bb.i, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.i, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !10 ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %indvars.iv181 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !8 ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %indvars.iv.next182 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !8 ; 2 uses
  %i.nr = fneg double %i.nq
  %i.ns = fmul double %.0148, %i.nr
  %i.nt = tail call double @llvm.fmuladd.f64(double %.0149, double %i.no, double %i.ns)
  store double %i.nt, ptr %i.nn, align 8, !tbaa !8
  %i.nu = fmul double %.0149, %i.nq
  %i.nv = tail call double @llvm.fmuladd.f64(double %.0148, double %i.no, double %i.nu)
  store double %i.nv, ptr %i.np, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13

ApplyRGivens.exit:                                ; preds = %bb.j
  %i.nw = icmp slt i64 %indvars.iv181, %i.jq
  br i1 %i.nw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ApplyRGivens.exit
  %i.nx = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next182
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !10
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %indvars.iv181
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !8
  %i.ob = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ly
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !10
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %indvars.iv181
  %i.oe = load double, ptr %i.od, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %ApplyRGivens.exit, %bb.k
  %.1126 = phi double [ %i.oe, %bb.k ], [ %.0125164, %ApplyRGivens.exit ]
  %.1 = phi double [ %i.oa, %bb.k ], [ %.0165, %ApplyRGivens.exit ]
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, %i.jr
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
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

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
