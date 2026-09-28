Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@geod_geninverse_int:bb.a
  %i.pk = fneg double %i.de
  %i.pl = fcmp une double %.0476, %i.dg           ; 2 uses
  %i.pm = call double @llvm.fabs.f64(double %.0477)
  %i.pn = fcmp une double %i.pm, %i.ef
  %or.cond568 = select i1 %i.pl, i1 true, i1 %i.pn
  %i.po = fneg double %.1475
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !10
  %.19.i.i.i296 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.pr = load double, ptr %.19.i.i.i296, align 8, !tbaa !10
  %.19.i.119.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ps = load double, ptr %.19.i.119.i.i, align 8, !tbaa !10
  %.19.i.221.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pt = load double, ptr %.19.i.221.i.i, align 8, !tbaa !10
  %.19.i.323.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pu = load double, ptr %.19.i.323.i.i, align 8, !tbaa !10
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.19.i.1.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.pw = load double, ptr %.19.i.1.1.i.i, align 8, !tbaa !10
  %.19.i.1.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.px = load double, ptr %.19.i.1.2.i.i, align 8, !tbaa !10
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pz = load <2 x double>, ptr %i.pv, align 8, !tbaa !10 ; 2 uses
  %i.qa = load <2 x double>, ptr %i.py, align 8, !tbaa !10 ; 2 uses
  %.19.i.2.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qb = load <2 x double>, ptr %.19.i.2.1.i.i, align 8, !tbaa !10 ; 2 uses
  %.19.i.3.i.i299 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.qc = load double, ptr %.19.i.3.i.i299, align 8, !tbaa !10
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !10
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !13
  %i.qh = fneg double %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !10
  %.19.i.i114.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qk = load double, ptr %.19.i.i114.i, align 8, !tbaa !10
  %.19.i.1.i115.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ql = load double, ptr %.19.i.1.i115.i, align 8, !tbaa !10
  %.19.i.2.i116.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qm = load double, ptr %.19.i.2.i116.i, align 8, !tbaa !10
  %.19.i.3.i117.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qn = load double, ptr %.19.i.3.i117.i, align 8, !tbaa !10
  %.19.i.4.i.i300 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qo = load double, ptr %.19.i.4.i.i300, align 8, !tbaa !10
  %i.qp = fsub double %i.dd, %.0477
  %i.qq = fadd double %i.dd, %.0477
  %i.qr = fmul double %i.qp, %i.qq
  %i.qs = fsub double %.0476, %i.dg
  %i.qt = fadd double %i.dg, %.0476
  %i.qu = fmul double %i.qs, %i.qt
  %i.qv = load double, ptr @tol0, align 8         ; 2 uses
  %.b = load i1, ptr @maxit2, align 4
  %i.qw = select i1 %.b, i32 83, i32 0
  %i.qx = select i1 %.b272, i32 20, i32 0         ; 2 uses
  %i.qy = load double, ptr @pi, align 8
  %i.qz = fmul double %i.qv, 1.600000e+01
  %i.ra = load double, ptr @tolb, align 8         ; 2 uses
  %.587 = select i1 %i.eg, double %i.qu, double %i.qr
  %i.rb = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.rc = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.de, i64 0
  %i.rd = insertelement <2 x double> %i.pz, double 0.000000e+00, i64 1
  %i.re = shufflevector <2 x double> %i.pz, <2 x double> %i.qa, <2 x i32> <i32 1, i32 2>
  %i.rf = insertelement <2 x double> %i.qa, double %i.pw, i64 0
  %i.rg = insertelement <2 x double> %i.qb, double %i.qc, i64 1
  %i.rh = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.px, i64 1
  %i.rj = insertelement <2 x double> poison, double %.1475, i64 1
  %i.rk = insertelement <2 x double> poison, double %i.ax, i64 1
  br label %bb.bk

InverseStart.exit:                                ; preds = %bb.bh
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !16 ; 2 uses
  %i.rn = fmul double %.0152.i, %i.rm
  %i.ro = fmul double %.0446, %i.rn
  %i.rp = fmul double %.0446, %.0446
  %i.rq = fmul double %i.rp, %i.rm
  %i.rr = fdiv double %.0152.i, %.0446            ; 2 uses
  %i.rs = call double @sin(double noundef %i.rr) #17
  %i.rt = fmul double %i.rq, %i.rs
  br i1 %i.u, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %InverseStart.exit
  %i.ru = call double @cos(double noundef %i.rr) #17 ; 2 uses
  store double %i.ru, ptr %i.n, align 8, !tbaa !10
  store double %i.ru, ptr %i.m, align 8, !tbaa !10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %InverseStart.exit
  %i.rv = fmul double %i.cu, %.0446
  %i.rw = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.rx = insertelement <2 x double> %i.rw, double %.0152.i, i64 1
  %i.ry = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.ad, i64 1
  %i.sa = fdiv <2 x double> %i.rx, %i.rz
  br label %bb.ce

bb.bk:                                            ; preds = %.preheader, %bb.cc
  %.0235 = phi i32 [ %i.aag, %bb.cc ], [ 0, %.preheader ] ; 5 uses
  %.0232 = phi double [ %.1233, %bb.cc ], [ %i.de, %.preheader ] ; 5 uses
  %.0229 = phi double [ %i.yn, %bb.cc ], [ 1.000000e+00, %.preheader ]
  %.0226 = phi double [ %.1227, %bb.cc ], [ %i.de, %.preheader ] ; 4 uses
  %.0223 = phi double [ %i.ym, %bb.cc ], [ -1.000000e+00, %.preheader ]
  %.0220 = phi i32 [ %.4.ph, %bb.cc ], [ 0, %.preheader ]
  %.0218 = phi i32 [ %.1219.ph, %bb.cc ], [ 0, %.preheader ]
  %i.sb = phi <2 x double> [ %i.aaf, %bb.cc ], [ %i.pi, %.preheader ] ; 8 uses
  %i.sc = phi <2 x double> [ %i.yk, %bb.cc ], [ %i.rb, %.preheader ] ; 4 uses
  %i.sd = phi <2 x double> [ %i.yl, %bb.cc ], [ %i.rc, %.preheader ] ; 3 uses
  %i.se = extractelement <2 x double> %i.sb, i64 0 ; 11 uses
  %i.sf = icmp ult i32 %.0235, 20
  %i.sg = select i1 %.b272, i1 %i.sf, i1 false    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.sh = extractelement <2 x double> %i.sb, i64 1 ; 6 uses
  %i.si = fcmp oeq double %i.sh, 0.000000e+00
  %or.cond.i294 = and i1 %i.gf, %i.si
  %.0.i295 = select i1 %or.cond.i294, double %i.pk, double %i.sh ; 3 uses
  %i.sj = fmul double %i.dg, %i.se                ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.dc, %i.sb
  %i.sk = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.sl = call double @hypot(double noundef %.0.i295, double noundef %i.sk) #17 ; 2 uses
  %i.sm = fmul double %i.dd, %i.sj                ; 2 uses
  %i.sn = fmul double %i.dg, %.0.i295             ; 6 uses
  %i.so = call double @hypot(double noundef %i.dd, double noundef %i.sn) #17 ; 2 uses
  %i.sp = fdiv double %i.dd, %i.so                ; 6 uses
  %i.sq = fdiv double %i.sn, %i.so                ; 5 uses
  br i1 %or.cond568, label %._crit_edge.i, label %bb.bl

._crit_edge.i:                                    ; preds = %bb.bk
  %i.sr = fmul double %i.sn, %i.sn
  %i.ss = fadd double %i.sr, %.587
  %i.st = call double @sqrt(double noundef %i.ss) #17
  %i.su = fdiv double %i.st, %.0476
  br label %SinCosSeries.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.sv = call double @llvm.fabs.f64(double %.0.i295)
  br label %SinCosSeries.exit.i

SinCosSeries.exit.i:                              ; preds = %bb.bl, %._crit_edge.i
  %i.sw = phi double [ %i.su, %._crit_edge.i ], [ %i.sv, %bb.bl ] ; 4 uses
  %i.sx = fmul double %.0476, %i.sw               ; 5 uses
  %i.sy = call double @hypot(double noundef %.0477, double noundef %i.sx) #17 ; 2 uses
  %i.sz = fdiv double %i.sx, %i.sy                ; 6 uses
  %i.ta = fmul double %.0477, %i.sj               ; 2 uses
  %i.tb = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.tc = insertelement <2 x double> %i.tb, double %i.sz, i64 1
  %i.td = fneg nsz <2 x double> %i.tc
  %i.te = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.tf = insertelement <2 x double> %i.te, double %i.sp, i64 1
  %i.tg = fmul nsz <2 x double> %i.tf, %i.td
  %i.th = fdiv double %.0477, %i.sy               ; 6 uses
  %i.ti = insertelement <2 x double> poison, double %i.sn, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.sq, i64 1
  %i.tk = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tl = insertelement <2 x double> %i.tk, double %i.th, i64 1
  %i.tm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.tl, <2 x double> %i.tg)
  %i.tn = fmul double %i.sm, %i.ta
  %i.to = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.tm, <2 x double> zeroinitializer) ; 2 uses
  %i.tp = extractelement <2 x double> %i.to, i64 1
  %i.tq = fadd double %i.tp, 0.000000e+00
  %i.tr = extractelement <2 x double> %i.to, i64 0
  %i.ts = fadd double %i.tr, 0.000000e+00         ; 2 uses
  %i.tt = call double @llvm.fmuladd.f64(double %i.sn, double %i.sx, double %i.tn) ; 2 uses
  %i.tu = insertelement <2 x double> %i.rj, double %i.sp, i64 0
  %i.tv = insertelement <2 x double> poison, double %i.th, i64 0
  %i.tw = insertelement <2 x double> %i.tv, double %i.ts, i64 1
  %i.tx = fmul <2 x double> %i.tu, %i.tw
  %i.ty = insertelement <2 x double> poison, double %i.sq, i64 0 ; 2 uses
  %i.tz = insertelement <2 x double> %i.ty, double %i.tt, i64 1
  %i.ua = insertelement <2 x double> %i.rk, double %i.sz, i64 0
  %i.ub = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tz, <2 x double> %i.ua, <2 x double> %i.tx) ; 2 uses
  %i.uc = extractelement <2 x double> %i.ub, i64 0
  %i.ud = call double @atan2(double noundef %i.tq, double noundef %i.uc) #17 ; 4 uses
  %i.ue = fmul double %i.tt, %i.po
  %i.uf = call double @llvm.fmuladd.f64(double %i.ts, double %i.ax, double %i.ue)
  %i.ug = extractelement <2 x double> %i.ub, i64 1
  %i.uh = call double @atan2(double noundef %i.uf, double noundef %i.ug) #17
  %i.ui = fmul double %i.sl, %i.sl
  %i.uj = fmul double %i.ui, %i.em                ; 3 uses
  %i.uk = fadd double %i.uj, 1.000000e+00
  %i.ul = call double @sqrt(double noundef %i.uk) #17
  %i.um = fadd double %i.ul, 1.000000e+00
  %i.un = call double @llvm.fmuladd.f64(double %i.um, double 2.000000e+00, double %i.uj)
  %i.uo = fdiv double %i.uj, %i.un                ; 17 uses
  %i.up = call double @llvm.fmuladd.f64(double %i.pq, double %i.uo, double %i.pr)
  %i.uq = call double @llvm.fmuladd.f64(double %i.up, double %i.uo, double %i.ps)
  %i.ur = call double @llvm.fmuladd.f64(double %i.uq, double %i.uo, double %i.pt)
  %i.us = fmul double %i.uo, %i.uo                ; 2 uses
  %i.ut = fmul double %i.uo, %i.us                ; 2 uses
  %i.uu = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.uo, i64 0 ; 2 uses
  %i.uv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rd, <2 x double> %i.uu, <2 x double> %i.re)
  %i.uw = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ux = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> %i.uw, <2 x double> %i.rf) ; 2 uses
  %i.uy = fmul double %i.uo, %i.ut                ; 2 uses
  %i.uz = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.va = shufflevector <2 x double> %i.ux, <2 x double> %i.qb, <2 x i32> <i32 1, i32 3>
  %i.vb = insertelement <2 x double> poison, double %i.uo, i64 0 ; 2 uses
  %i.vc = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.vc, <2 x double> %i.rg)
  %14 = fmul double %i.uo, %i.uy
  %i.ve = fmul double %14, %i.qe                  ; 4 uses
  %i.vf = insertelement <2 x double> %i.uz, double %i.ur, i64 0
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.vc, <2 x double> %i.ri)
  %i.vh = insertelement <2 x double> %i.vb, double %i.us, i64 1
  %i.vi = fmul <2 x double> %i.vh, %i.vg          ; 3 uses
  %i.vj = insertelement <2 x double> poison, double %i.ut, i64 0
  %i.vk = insertelement <2 x double> %i.vj, double %i.uy, i64 1
  %i.vl = fmul <2 x double> %i.vk, %i.vd          ; 3 uses
  %i.vm = insertelement <2 x double> %i.ty, double %i.sz, i64 1 ; 2 uses
  %i.vn = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.vo = insertelement <2 x double> %i.vn, double %i.th, i64 1 ; 2 uses
  %i.vp = fsub <2 x double> %i.vm, %i.vo
  %i.vq = fmul <2 x double> %i.vp, splat (double 2.000000e+00)
  %i.vr = fadd <2 x double> %i.vo, %i.vm
  %i.vs = fmul <2 x double> %i.vr, %i.vq          ; 4 uses
  %i.vt = extractelement <2 x double> %i.vs, i64 0 ; 2 uses
  %i.vu = fmul double %i.vt, %i.ve
  %i.vv = extractelement <2 x double> %i.vl, i64 1
  %i.vw = fadd double %i.vv, %i.vu                ; 2 uses
  %i.vx = fneg double %i.ve
  %i.vy = insertelement <2 x double> poison, double %i.vw, i64 0
  %i.vz = insertelement <2 x double> %i.vy, double %i.ve, i64 1
  %i.wa = fneg <2 x double> %i.vz
  %i.wb = call double @llvm.fmuladd.f64(double %i.vt, double %i.vw, double %i.vx)
  %i.wc = extractelement <2 x double> %i.vs, i64 1 ; 2 uses
  %i.wd = fmul double %i.wc, %i.ve
  %i.we = insertelement <2 x double> poison, double %i.wb, i64 0
  %i.wf = insertelement <2 x double> %i.we, double %i.wd, i64 1
  %i.wg = fadd <2 x double> %i.vl, %i.wf          ; 2 uses
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.wg, <2 x double> %i.wa)
  %i.wi = shufflevector <2 x double> %i.vi, <2 x double> %i.vl, <2 x i32> <i32 1, i32 2>
  %i.wj = fadd <2 x double> %i.wi, %i.wh          ; 2 uses
  %i.wk = fneg <2 x double> %i.wg
  %i.wl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.wj, <2 x double> %i.wk)
  %i.wm = fadd <2 x double> %i.vi, %i.wl          ; 2 uses
  %i.wn = extractelement <2 x double> %i.wj, i64 1
  %i.wo = fneg double %i.wn
  %i.wp = extractelement <2 x double> %i.wm, i64 1
  %i.wq = call double @llvm.fmuladd.f64(double %i.wc, double %i.wp, double %i.wo)
  %i.wr = extractelement <2 x double> %i.vi, i64 0
  %i.ws = fadd double %i.wr, %i.wq
  %i.wt = fmul double %i.th, 2.000000e+00
  %i.wu = fmul double %i.sz, %i.wt
  %i.wv = fmul double %i.wu, %i.ws
  %i.ww = fmul double %i.sp, 2.000000e+00
  %i.wx = fmul double %i.sq, %i.ww
  %i.wy = extractelement <2 x double> %i.wm, i64 0
  %i.wz = fmul double %i.wx, %i.wy
  %i.xa = fsub double %i.wv, %i.wz
  %i.xb = call double @llvm.fmuladd.f64(double %i.qj, double %i.uo, double %i.qk)
  %i.xc = call double @llvm.fmuladd.f64(double %i.xb, double %i.uo, double %i.ql)
  %i.xd = call double @llvm.fmuladd.f64(double %i.xc, double %i.uo, double %i.qm)
  %i.xe = call double @llvm.fmuladd.f64(double %i.xd, double %i.uo, double %i.qn)
  %i.xf = call double @llvm.fmuladd.f64(double %i.xe, double %i.uo, double %i.qo)
  %i.xg = fmul double %i.xf, %i.qh
  %i.xh = fmul double %i.sj, %i.xg
  %i.xi = fadd double %i.ud, %i.xa
  %i.xj = fmul double %i.xh, %i.xi                ; 3 uses
  br i1 %i.sg, label %bb.bm, label %Lambda12.exit

bb.bm:                                            ; preds = %SinCosSeries.exit.i
  %i.xk = fcmp oeq double %i.sw, 0.000000e+00
  br i1 %i.xk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.xl = load double, ptr %i.ct, align 8, !tbaa !14
  %i.xm = fmul double %i.xl, -2.000000e+00
  %i.xn = fmul double %i.et, %i.xm
  %i.xo = fdiv double %i.xn, %i.dd
  br label %Lambda12.exit

bb.bo:                                            ; preds = %bb.bm
  call fastcc void @Lengths(ptr noundef nonnull readonly %0, double noundef %i.uo, double noundef %i.ud, double noundef %i.sp, double noundef %i.sq, double noundef %i.et, double noundef %i.th, double noundef %i.sz, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef null, ptr noundef %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.r)
  %i.xp = load double, ptr %i.ct, align 8, !tbaa !14
  %i.xq = fdiv double %i.xp, %i.sx
  %i.xr = load double, ptr %i.a, align 8, !tbaa !10
  %i.xs = fmul double %i.xr, %i.xq
  br label %Lambda12.exit

Lambda12.exit:                                    ; preds = %SinCosSeries.exit.i, %bb.bn, %bb.bo
  %.0439 = phi double [ %i.xo, %bb.bn ], [ %i.xs, %bb.bo ], [ 0.000000e+00, %SinCosSeries.exit.i ] ; 2 uses
  %i.xt = fadd double %i.uh, %i.xj                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not276 = icmp eq i32 %.0218, 0
  br i1 %.not276, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %Lambda12.exit
  %i.xu = call double @llvm.fabs.f64(double %i.xt) ; 2 uses
  %.not277 = icmp eq i32 %.0220, 0
  %i.xv = select i1 %.not277, i32 1, i32 8
  %i.xw = uitofp nneg i32 %i.xv to double
  %i.xx = fmul double %i.qv, %i.xw
  %i.xy = fcmp ult double %i.xu, %i.xx
  %i.xz = icmp eq i32 %.0235, %i.qw
  %or.cond285 = select i1 %i.xy, i1 true, i1 %i.xz
  br i1 %or.cond285, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ya = fcmp ogt double %i.xt, 0.000000e+00
  br i1 %i.ya, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.yb = icmp ugt i32 %.0235, %i.qx
  br i1 %i.yb, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yc = fdiv double %i.sh, %i.se
  %i.yd = fdiv double %.0223, %.0226
  %i.ye = fcmp ogt double %i.yc, %i.yd
  br i1 %i.ye, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %i.yf = fcmp olt double %i.xt, 0.000000e+00
  br i1 %i.yf, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.yg = icmp ugt i32 %.0235, %i.qx
  br i1 %i.yg, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yh = fdiv double %i.sh, %i.se
  %i.yi = fdiv double %.0229, %.0232
  %i.yj = fcmp olt double %i.yh, %i.yi
  br i1 %i.yj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.1233 = phi double [ %.0232, %bb.bt ], [ %i.se, %bb.bw ], [ %.0232, %bb.bv ], [ %.0232, %bb.bs ], [ %.0232, %bb.br ] ; 2 uses
  %.1227 = phi double [ %.0226, %bb.bt ], [ %.0226, %bb.bw ], [ %.0226, %bb.bv ], [ %i.se, %bb.bs ], [ %i.se, %bb.br ] ; 2 uses
  %i.yk = phi <2 x double> [ %i.sc, %bb.bt ], [ %i.sb, %bb.bw ], [ %i.sc, %bb.bv ], [ %i.sc, %bb.bs ], [ %i.sc, %bb.br ] ; 4 uses
  %i.yl = phi <2 x double> [ %i.sd, %bb.bt ], [ %i.sd, %bb.bw ], [ %i.sd, %bb.bv ], [ %i.sb, %bb.bs ], [ %i.sb, %bb.br ] ; 4 uses
  %i.ym = extractelement <2 x double> %i.yl, i64 1
  %i.yn = extractelement <2 x double> %i.yk, i64 1
  %i.yo = fcmp ogt double %.0439, 0.000000e+00
  %or.cond8 = select i1 %i.sg, i1 %i.yo, i1 false
  br i1 %or.cond8, label %bb.by, label %.thread498

bb.by:                                            ; preds = %bb.bx
  %i.yp = fneg double %i.xt
  %i.yq = fdiv double %i.yp, %.0439               ; 3 uses
  %i.yr = call double @llvm.fabs.f64(double %i.yq)
  %i.ys = fcmp olt double %i.yr, %i.qy
  br i1 %i.ys, label %bb.bz, label %.thread498

bb.bz:                                            ; preds = %bb.by
  %i.yt = call double @sin(double noundef %i.yq) #17 ; 2 uses
  %i.yu = call double @cos(double noundef %i.yq) #17 ; 2 uses
  %i.yv = fmul double %i.sh, %i.yt
  %i.yw = call double @llvm.fmuladd.f64(double %i.se, double %i.yu, double %i.yv) ; 3 uses
  %i.yx = fcmp ule double %i.yw, 0.000000e+00
  br i1 %i.yx, label %.thread498, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yy = fneg double %i.yt
  %i.yz = fmul double %i.se, %i.yy
  %i.za = call double @llvm.fmuladd.f64(double %i.sh, double %i.yu, double %i.yz) ; 2 uses
  %i.zb = call double @hypot(double noundef %i.yw, double noundef %i.za) #17
  %i.zc = insertelement <2 x double> poison, double %i.zb, i64 0
  %i.zd = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ze = insertelement <2 x double> poison, double %i.yw, i64 0
  %i.zf = insertelement <2 x double> %i.ze, double %i.za, i64 1
  %i.zg = fdiv <2 x double> %i.zf, %i.zd
  %i.zh = fcmp ole double %i.xu, %i.qz
  %i.zi = zext i1 %i.zh to i32
  br label %bb.cc

.thread498:                                       ; preds = %bb.bz, %bb.by, %bb.bx
  %i.zj = fadd <2 x double> %i.yk, %i.yl
  %i.zk = fmul <2 x double> %i.zj, splat (double 5.000000e-01) ; 3 uses
  %i.zl = extractelement <2 x double> %i.zk, i64 0
  %i.zm = extractelement <2 x double> %i.zk, i64 1
  %i.zn = call double @hypot(double noundef %i.zl, double noundef %i.zm) #17
  %i.zo = insertelement <2 x double> poison, double %i.zn, i64 0
  %i.zp = shufflevector <2 x double> %i.zo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zq = fdiv <2 x double> %i.zk, %i.zp          ; 5 uses
  %i.zr = extractelement <2 x double> %i.zq, i64 0
  %i.zs = fsub double %.1233, %i.zr
  %i.zt = call double @llvm.fabs.f64(double %i.zs)
  %foldExtExtBinop651 = fsub <2 x double> %i.yk, %i.zq
  %i.zu = extractelement <2 x double> %foldExtExtBinop651, i64 1
  %i.zv = fadd double %i.zu, %i.zt
  %i.zw = fcmp olt double %i.zv, %i.ra
  br i1 %i.zw, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.thread498
  %i.zx = insertelement <2 x double> %i.yl, double %.1227, i64 0
  %i.zy = fsub <2 x double> %i.zq, %i.zx          ; 2 uses
  %i.zz = extractelement <2 x double> %i.zy, i64 0
  %i.aaa = call double @llvm.fabs.f64(double %i.zz)
  %i.aab = extractelement <2 x double> %i.zy, i64 1
  %i.aac = fadd double %i.aab, %i.aaa
  %i.aad = fcmp olt double %i.aac, %i.ra
  %i.aae = zext i1 %i.aad to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %.thread498
  %.4.ph = phi i32 [ %i.zi, %bb.ca ], [ 0, %bb.cb ], [ 0, %.thread498 ]
  %.1219.ph = phi i32 [ 0, %bb.ca ], [ %i.aae, %bb.cb ], [ 1, %.thread498 ]
  %i.aaf = phi <2 x double> [ %i.zg, %bb.ca ], [ %i.zq, %bb.cb ], [ %i.zq, %.thread498 ]
  %i.aag = add i32 %.0235, 1
  br label %bb.bk

bb.cd:                                            ; preds = %bb.bp, %Lambda12.exit
  %i.aah = fdiv double %i.sj, %.0476
  %i.aai = select i1 %i.pl, double %i.aah, double %i.se ; 2 uses
  %.9 = select i1 %i.u, ptr %i.m, ptr null
  %i.aaj = select i1 %i.u, ptr %i.n, ptr null
  call fastcc void @Lengths(ptr noundef nonnull %0, double noundef %i.uo, double noundef %i.ud, double noundef %i.sp, double noundef %i.sq, double noundef %i.et, double noundef %i.th, double noundef %i.sz, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef nonnull %i.p, ptr noundef %i.q, ptr noundef null, ptr noundef %.9, ptr noundef %i.aaj, ptr noundef %i.r)
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !16 ; 2 uses
  %i.aam = load double, ptr %i.q, align 8, !tbaa !10
  %i.aan = fmul double %i.aal, %i.aam             ; 2 uses
  %i.aao = load double, ptr %i.p, align 8, !tbaa !10
  %i.aap = fmul double %i.aal, %i.aao             ; 2 uses
  %i.aaq = load double, ptr @degree, align 8, !tbaa !10
  %i.aar = fdiv double %i.ud, %i.aaq              ; 2 uses
  br i1 %.not274, label %.thread523, label %.thread541

.thread523:                                       ; preds = %bb.cd
  %i.aas = fadd double %i.aap, 0.000000e+00
  %.0211532 = select i1 %.not, double 0.000000e+00, double %i.aas
  %i.aat = fadd double %i.aan, 0.000000e+00
  %.0212533 = select i1 %.not273, double 0.000000e+00, double %i.aat
  %i.aau = insertelement <2 x double> poison, double %i.aai, i64 0
end_hunk_0
