Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/QRfact?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@QRiterate:bb.a

.preheader151.30:                                 ; preds = %.preheader151.29
  %i.ge = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 160
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !10
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.preheader151.31, label %.lr.ph.preheader

.preheader151.31:                                 ; preds = %.preheader151.30
  %i.gi = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 152
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !10
  %i.gl = fcmp oeq double %i.gk, 0.000000e+00
  br i1 %i.gl, label %.preheader151.32, label %.lr.ph.preheader

.preheader151.32:                                 ; preds = %.preheader151.31
  %i.gm = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 144
  %i.go = load double, ptr %i.gn, align 8, !tbaa !10
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  br i1 %i.gp, label %.preheader151.33, label %.lr.ph.preheader

.preheader151.33:                                 ; preds = %.preheader151.32
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 136
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !10
  %i.gt = fcmp oeq double %i.gs, 0.000000e+00
  br i1 %i.gt, label %.preheader151.34, label %.lr.ph.preheader

.preheader151.34:                                 ; preds = %.preheader151.33
  %i.gu = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !10
  %i.gx = fcmp oeq double %i.gw, 0.000000e+00
  br i1 %i.gx, label %.preheader151.35, label %.lr.ph.preheader

.preheader151.35:                                 ; preds = %.preheader151.34
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !10
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %.preheader151.36, label %.lr.ph.preheader

.preheader151.36:                                 ; preds = %.preheader151.35
  %i.hc = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
  %i.he = load double, ptr %i.hd, align 8, !tbaa !10
  %i.hf = fcmp oeq double %i.he, 0.000000e+00
  br i1 %i.hf, label %.preheader151.37, label %.lr.ph.preheader

.preheader151.37:                                 ; preds = %.preheader151.36
  %i.hg = load ptr, ptr %i.an, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !10
  %i.hj = fcmp oeq double %i.hi, 0.000000e+00
  br i1 %i.hj, label %.preheader151.38, label %.lr.ph.preheader

.preheader151.38:                                 ; preds = %.preheader151.37
  %i.hk = load ptr, ptr %i.ao, align 8, !tbaa !13
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !10
  %i.hn = fcmp oeq double %i.hm, 0.000000e+00
  br i1 %i.hn, label %.preheader151.39, label %.lr.ph.preheader

.preheader151.39:                                 ; preds = %.preheader151.38
  %i.ho = load ptr, ptr %i.ap, align 8, !tbaa !13
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !10
  %i.hr = fcmp oeq double %i.hq, 0.000000e+00
  br i1 %i.hr, label %.preheader151.40, label %.lr.ph.preheader

.preheader151.40:                                 ; preds = %.preheader151.39
  %i.hs = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !10
  %i.hv = fcmp oeq double %i.hu, 0.000000e+00
  br i1 %i.hv, label %.preheader151.41, label %.lr.ph.preheader

.preheader151.41:                                 ; preds = %.preheader151.40
  %i.hw = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !10
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  br i1 %i.hz, label %.preheader151.42, label %.lr.ph.preheader

.preheader151.42:                                 ; preds = %.preheader151.41
  %i.ia = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !10
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %.preheader151.43, label %.lr.ph.preheader

.preheader151.43:                                 ; preds = %.preheader151.42
  %i.ie = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ig = load double, ptr %i.if, align 8, !tbaa !10
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  br i1 %i.ih, label %.preheader151.44, label %.lr.ph.preheader

.preheader151.44:                                 ; preds = %.preheader151.43
  %i.ii = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !10
  %i.il = fcmp oeq double %i.ik, 0.000000e+00
  br i1 %i.il, label %.preheader151.45, label %.lr.ph.preheader

.preheader151.45:                                 ; preds = %.preheader151.44
  %i.im = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load double, ptr %i.in, align 8, !tbaa !10
  %i.ip = fcmp oeq double %i.io, 0.000000e+00
  br i1 %i.ip, label %.preheader151.46, label %.lr.ph.preheader

.preheader151.46:                                 ; preds = %.preheader151.45
  %i.iq = load ptr, ptr %i.aw, align 8, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load double, ptr %i.ir, align 8, !tbaa !10
  %i.it = fcmp oeq double %i.is, 0.000000e+00
  br i1 %i.it, label %.preheader151.47, label %.lr.ph.preheader

.preheader151.47:                                 ; preds = %.preheader151.46
  %i.iu = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !10
  %i.ix = fcmp oeq double %i.iw, 0.000000e+00
  br i1 %i.ix, label %.preheader151.48, label %.lr.ph.preheader

.preheader151.48:                                 ; preds = %.preheader151.47
  %i.iy = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !10
  %i.jb = fcmp oeq double %i.ja, 0.000000e+00
  br i1 %i.jb, label %.preheader151.49, label %.lr.ph.preheader

.preheader151.49:                                 ; preds = %.preheader151.48
  %i.jc = load double, ptr %i.az, align 8, !tbaa !10
  %i.jd = fcmp oeq double %i.jc, 0.000000e+00
  br i1 %i.jd, label %.critedge138, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader151.25, %.preheader151.31, %.preheader151.24, %.preheader151.38, %.preheader151.23, %.preheader151.33, %.preheader151.22, %.preheader151.39, %.preheader151.21, %.preheader151.30, %.preheader151.20, %.preheader151.40, %.preheader151.19, %.preheader151.35, %.preheader151.18, %.preheader151.41, %.preheader151.17, %.preheader151.29, %.preheader151.16, %.preheader151.42, %.preheader151.15, %.preheader151.32, %.preheader151.14, %.preheader151.43, %.preheader151.13, %.preheader151.28, %.preheader151.12, %.preheader151.44, %.preheader151.11, %.preheader151.36, %.preheader151.10, %.preheader151.45, %.preheader151.9, %.preheader151.27, %.preheader151.8, %.preheader151.46, %.preheader151.7, %.preheader151.34, %.preheader151.6, %.preheader151.47, %.preheader151.5, %.preheader151.26, %.preheader151.4, %.preheader151.48, %.preheader151.3, %.preheader151.37, %.preheader151.2, %.preheader151.49, %.preheader151.1, %.preheader151.preheader
  %.0.lcssa.ph = phi i32 [ 25, %.preheader151.25 ], [ 19, %.preheader151.31 ], [ 26, %.preheader151.24 ], [ 12, %.preheader151.38 ], [ 27, %.preheader151.23 ], [ 17, %.preheader151.33 ], [ 28, %.preheader151.22 ], [ 11, %.preheader151.39 ], [ 29, %.preheader151.21 ], [ 20, %.preheader151.30 ], [ 30, %.preheader151.20 ], [ 10, %.preheader151.40 ], [ 31, %.preheader151.19 ], [ 15, %.preheader151.35 ], [ 32, %.preheader151.18 ], [ 9, %.preheader151.41 ], [ 33, %.preheader151.17 ], [ 21, %.preheader151.29 ], [ 34, %.preheader151.16 ], [ 8, %.preheader151.42 ], [ 35, %.preheader151.15 ], [ 18, %.preheader151.32 ], [ 36, %.preheader151.14 ], [ 7, %.preheader151.43 ], [ 37, %.preheader151.13 ], [ 22, %.preheader151.28 ], [ 38, %.preheader151.12 ], [ 6, %.preheader151.44 ], [ 39, %.preheader151.11 ], [ 14, %.preheader151.36 ], [ 40, %.preheader151.10 ], [ 5, %.preheader151.45 ], [ 41, %.preheader151.9 ], [ 23, %.preheader151.27 ], [ 42, %.preheader151.8 ], [ 4, %.preheader151.46 ], [ 43, %.preheader151.7 ], [ 16, %.preheader151.34 ], [ 44, %.preheader151.6 ], [ 3, %.preheader151.47 ], [ 45, %.preheader151.5 ], [ 24, %.preheader151.26 ], [ 46, %.preheader151.4 ], [ 2, %.preheader151.48 ], [ 47, %.preheader151.3 ], [ 13, %.preheader151.37 ], [ 48, %.preheader151.2 ], [ 1, %.preheader151.49 ], [ 49, %.preheader151.1 ], [ 50, %.preheader151.preheader ] ; 5 uses
  %i.je = zext nneg i32 %.0.lcssa.ph to i64       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %i.je, %.lr.ph.preheader ], [ %indvars.iv.next172, %bb.e ] ; 6 uses
  %i.jf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv171
  %i.jg = getelementptr i8, ptr %i.jf, i64 -8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !13
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv171
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !10
  %i.jk = fcmp une double %i.jj, 0.000000e+00
  br i1 %i.jk, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -1
  %i.jl = icmp sgt i64 %indvars.iv171, 1
  br i1 %i.jl, label %.lr.ph, label %.lr.ph166.preheader, !llvm.loop !16

.critedge2:                                       ; preds = %.lr.ph
  %i.jm = trunc nuw nsw i64 %indvars.iv171 to i32 ; 2 uses
  %i.jn = icmp sgt i32 %.0.lcssa.ph, %i.jm
  br i1 %i.jn, label %.lr.ph166.preheader, label %.backedge

.lr.ph166.preheader:                              ; preds = %bb.e, %.critedge2
  %i.jo = phi i64 [ %indvars.iv171, %.critedge2 ], [ 0, %bb.e ] ; 11 uses
  %.1.lcssa.ph188 = phi i32 [ %i.jm, %.critedge2 ], [ 0, %bb.e ]
  %.in = add nsw i32 %.0.lcssa.ph, -1
  %i.jp = zext i32 %.in to i64                    ; 4 uses
  %i.jq = zext nneg i32 %.0.lcssa.ph to i64       ; 3 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jo ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !13
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jo
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !10
  %i.jw = load ptr, ptr %i.jr, align 8, !tbaa !13
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jo
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !10
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jq
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !13 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jq
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !10 ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jp
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !10 ; 2 uses
  %i.kf = fmul double %i.ke, %i.ke                ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jp
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.jp
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !10
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
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.k
  %indvar = phi i32 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %bb.k ] ; 2 uses
  %indvars.iv181 = phi i64 [ %i.jo, %.lr.ph166.preheader ], [ %indvars.iv.next182, %bb.k ] ; 11 uses
  %indvars.iv174 = phi i64 [ %i.kt, %.lr.ph166.preheader ], [ %indvars.iv.next175, %bb.k ] ; 6 uses
  %.0132164 = phi double [ %i.jv, %.lr.ph166.preheader ], [ %.1133, %bb.k ] ; 5 uses
  %.0134163 = phi double [ %i.ks, %.lr.ph166.preheader ], [ %.1135, %bb.k ] ; 4 uses
  %4 = add i32 %3, %indvar
  %5 = sext i32 %4 to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.je)
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin)
  %smax202 = tail call i64 @llvm.smax.i64(i64 %smax, i64 %indvars.iv174)
  %smax203 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %indvars.iv174)
  %smax178 = tail call i64 @llvm.smax.i64(i64 %indvars.iv174, i64 %i.jo) ; 9 uses
  %i.ku = fcmp oeq double %.0132164, 0.000000e+00
  br i1 %i.ku, label %Givens.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph166
  %i.kv = tail call double @llvm.fabs.f64(double %.0132164)
  %i.kw = tail call double @llvm.fabs.f64(double %.0134163)
  %i.kx = fcmp ogt double %i.kv, %i.kw
  br i1 %i.kx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ky = fneg double %.0134163
  %i.kz = fdiv double %i.ky, %.0132164            ; 3 uses
  %i.la = tail call double @llvm.fmuladd.f64(double %i.kz, double %i.kz, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.la)
  %i.lb = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.lc = fmul double %i.kz, %i.lb                ; 2 uses
  %i.ld = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.lc, i64 1
  br label %Givens.exit

bb.h:                                             ; preds = %bb.f
  %i.lf = fneg double %.0132164
  %i.lg = fdiv double %i.lf, %.0134163            ; 3 uses
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.lg, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.lh)
  %i.li = fdiv double 1.000000e+00, %sqrt21.i     ; 3 uses
  %i.lj = fmul double %i.lg, %i.li                ; 2 uses
  %i.lk = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.li, i64 1
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0149 = phi double [ %i.li, %bb.h ], [ %i.lc, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 3 uses
  %.0148 = phi double [ %i.lj, %bb.h ], [ %i.lb, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 3 uses
  %i.lm = phi <2 x double> [ %i.ll, %bb.h ], [ %i.le, %bb.g ], [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph166 ] ; 2 uses
  %i.ln = trunc i64 %indvars.iv181 to i32
  %i.lo = add i32 %i.ln, -1
  %i.lp = tail call i32 @llvm.smax.i32(i32 %i.lo, i32 %.1.lcssa.ph188)
  %i.lq = add nsw i64 %indvars.iv181, 2           ; 2 uses
  %i.lr = trunc nsw i64 %i.lq to i32
  %i.ls = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.ph, i32 %i.lr) ; 3 uses
  %.not157 = icmp sgt i32 %i.lp, %i.ls
  br i1 %.not157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %Givens.exit
  %i.lt = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv181 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !13 ; 4 uses
  %i.lv = getelementptr i8, ptr %i.lt, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !13 ; 4 uses
  %i.lx = sext i32 %i.ls to i64                   ; 3 uses
  %i.ly = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %i.lx)
  %i.lz = tail call i64 @llvm.smax.i64(i64 %i.ly, i64 %indvars.iv174)
  %i.ma = add i64 %i.lz, 1
  %i.mb = sub i64 %i.ma, %smax178                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.mb, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph159
  %i.mc = shl i64 %smax178, 3                     ; 2 uses
  %i.md = getelementptr i8, ptr %i.lu, i64 %i.mc
  %i.me = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %i.lx)
  %i.mf = tail call i64 @llvm.smax.i64(i64 %i.me, i64 %indvars.iv174)
  %i.mg = shl i64 %i.mf, 3
  %i.mh = add i64 %i.mg, 8                        ; 2 uses
  %i.mi = getelementptr i8, ptr %i.lu, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.lw, i64 %i.mc
  %i.mk = getelementptr i8, ptr %i.lw, i64 %i.mh
  %bound0 = icmp ult ptr %i.md, %i.mk
  %bound1 = icmp ult ptr %i.mj, %i.mi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mb, -2                      ; 3 uses
  %i.ml = add i64 %smax178, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0148, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %.0149, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mm = add i64 %smax178, %index                ; 2 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.mm ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mn, align 8, !tbaa !10, !alias.scope !24, !noalias !25 ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.mm ; 2 uses
  %wide.load200 = load <2 x double>, ptr %i.mo, align 8, !tbaa !10, !alias.scope !25 ; 2 uses
  %i.mp = fneg <2 x double> %wide.load200
  %i.mq = fmul <2 x double> %broadcast.splat, %i.mp
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat199, <2 x double> %wide.load, <2 x double> %i.mq)
  store <2 x double> %i.mr, ptr %i.mn, align 8, !tbaa !10, !alias.scope !24, !noalias !25
  %i.ms = fmul <2 x double> %broadcast.splat199, %wide.load200
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.ms)
  store <2 x double> %i.mt, ptr %i.mo, align 8, !tbaa !10, !alias.scope !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mb, %n.vec
  br i1 %cmp.n, label %.lr.ph162, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph159, %middle.block
  %indvars.iv176.ph = phi i64 [ %smax178, %vector.memcheck ], [ %smax178, %.lr.ph159 ], [ %i.ml, %middle.block ]
  %i.mv = insertelement <2 x double> poison, double %.0148, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %.0149, i64 1 ; 2 uses
  br label %scalar.ph

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.mx = sext i32 %i.ls to i64
  %i.my = insertelement <2 x double> poison, double %.0149, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %.0148, i64 1 ; 6 uses
  %xtraiter = and i64 %i.mb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph162
  %i.na = getelementptr inbounds [8 x i8], ptr %0, i64 %smax178
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !13
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv181 ; 3 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !10
  %i.ne = getelementptr i8, ptr %i.nc, i64 8
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !10 ; 2 uses
  %i.ng = fneg double %i.nf
  %i.nh = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.ng, i64 1
  %i.nj = fmul <2 x double> %i.mz, %i.ni
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nl = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.nm, <2 x double> %i.nk)
  store <2 x double> %i.nn, ptr %i.nc, align 8, !tbaa !10
  %indvars.iv.next180.prol = add nsw i64 %smax178, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph162
  %indvars.iv179.unr = phi i64 [ %smax178, %.lr.ph162 ], [ %indvars.iv.next180.prol, %.prol.loopexit.unr-lcssa ]
  %i.no = icmp eq i64 %smax202, %smax203
  br i1 %i.no, label %._crit_edge, label %.lr.ph162.new

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph ], [ %indvars.iv176.ph, %scalar.ph.preheader ] ; 4 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %indvars.iv176 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !10
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %indvars.iv176 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !10 ; 2 uses
  %i.nt = fneg double %i.ns
  %i.nu = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.ns, i64 1
  %i.nw = fmul <2 x double> %i.mw, %i.nv
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ny = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nz = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.nz, <2 x double> %i.nx) ; 2 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 1
  store double %i.ob, ptr %i.np, align 8, !tbaa !10
  %i.oc = extractelement <2 x double> %i.oa, i64 0
  store double %i.oc, ptr %i.nr, align 8, !tbaa !10
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1
  %.not.not = icmp slt i64 %indvars.iv176, %i.lx
  br i1 %.not.not, label %scalar.ph, label %.lr.ph162, !llvm.loop !21

.lr.ph162.new:                                    ; preds = %.prol.loopexit, %.lr.ph162.new
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.1, %.lr.ph162.new ], [ %indvars.iv179.unr, %.prol.loopexit ] ; 3 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !13
  %i.of = getelementptr [8 x i8], ptr %i.oe, i64 %indvars.iv181 ; 3 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !10
  %i.oh = getelementptr i8, ptr %i.of, i64 8
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !10 ; 2 uses
  %i.oj = fneg double %i.oi
  %i.ok = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.oj, i64 1
  %i.om = fmul <2 x double> %i.mz, %i.ol
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oo = insertelement <2 x double> poison, double %i.og, i64 0
  %i.op = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.op, <2 x double> %i.on)
  store <2 x double> %i.oq, ptr %i.of, align 8, !tbaa !10
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next180
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !13
  %i.ot = getelementptr [8 x i8], ptr %i.os, i64 %indvars.iv181 ; 3 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !10
  %i.ov = getelementptr i8, ptr %i.ot, i64 8
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !10 ; 2 uses
  %i.ox = fneg double %i.ow
  %i.oy = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ox, i64 1
  %i.pa = fmul <2 x double> %i.mz, %i.oz
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pc = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.pd = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.pd, <2 x double> %i.pb)
  store <2 x double> %i.pe, ptr %i.ot, align 8, !tbaa !10
  %indvars.iv.next180.1 = add nsw i64 %indvars.iv179, 2
  %.not137.not.1 = icmp slt i64 %indvars.iv.next180, %i.mx
  br i1 %.not137.not.1, label %.lr.ph162.new, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph162.new, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !13 ; 2 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %indvars.iv181 ; 2 uses
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !10
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %indvars.iv.next182
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !10 ; 2 uses
  %i.pl = fneg double %i.pk
  %i.pm = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.pk, i64 1
  %i.po = fmul <2 x double> %i.lm, %i.pn
  %i.pp = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pq = insertelement <2 x double> poison, double %i.pi, i64 0
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.pr, <2 x double> %i.pp)
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.pt, ptr %i.ph, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.i, !llvm.loop !0

ApplyRGivens.exit:                                ; preds = %bb.i
  %i.pu = icmp slt i64 %indvars.iv181, %i.jp
  br i1 %i.pu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ApplyRGivens.exit
  %i.pv = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next182
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !13
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %indvars.iv181
  %i.py = load double, ptr %i.px, align 8, !tbaa !10
  %i.pz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lq
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !13
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %indvars.iv181
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %ApplyRGivens.exit, %bb.j
  %.1135 = phi double [ %i.py, %bb.j ], [ %.0134163, %ApplyRGivens.exit ]
  %.1133 = phi double [ %i.qc, %bb.j ], [ %.0132164, %ApplyRGivens.exit ]
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, %i.jq
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond184.not, label %.backedge, label %.lr.ph166, !llvm.loop !23

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

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !14, !26, !27}
!21 = distinct !{!21, !14, !26}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!18}
!25 = !{!19}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
