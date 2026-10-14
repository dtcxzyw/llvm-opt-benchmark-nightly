Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasy2?download=true
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dlasy2_:bb.a
  %i.om = select i1 %i.ok, double %i.oj, double %i.ol ; 2 uses
  %i.on = fcmp ult double %i.om, %.2579.us.2658.2 ; 3 uses
  %.2579.us.3.2 = select i1 %i.on, double %.2579.us.2658.2, double %i.om ; 2 uses
  %i.oo = and i1 %i.on, %i.oh
  %i.op = select i1 %i.oo, i1 %i.ob, i1 false
  %.3576.us.3.2 = select i1 %i.op, i32 %.3576.us.3.1, i32 3
  %.3.us.3.2 = select i1 %i.on, i32 %.3.us.2660.2, i32 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !10 ; 3 uses
  %i.os = fcmp oge double %i.or, 0.000000e+00
  %i.ot = fneg double %i.or
  %i.ou = select i1 %i.os, double %i.or, double %i.ot ; 2 uses
  %i.ov = fcmp ult double %i.ou, %.2579.us.3.2    ; 3 uses
  %.2579.us.3671 = select i1 %i.ov, double %.2579.us.3.2, double %i.ou ; 2 uses
  %.3.us.3673 = select i1 %i.ov, i32 %.3.us.3.2, i32 1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !10 ; 3 uses
  %i.oy = fcmp oge double %i.ox, 0.000000e+00
  %i.oz = fneg double %i.ox
  %i.pa = select i1 %i.oy, double %i.ox, double %i.oz ; 2 uses
  %i.pb = fcmp ult double %i.pa, %.2579.us.3671   ; 3 uses
  %.2579.us.1655.3 = select i1 %i.pb, double %.2579.us.3671, double %i.pa ; 2 uses
  %i.pc = and i1 %i.pb, %i.ov
  %.3.us.1657.3 = select i1 %i.pb, i32 %.3.us.3673, i32 2
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !10 ; 3 uses
  %i.pf = fcmp oge double %i.pe, 0.000000e+00
  %i.pg = fneg double %i.pe
  %i.ph = select i1 %i.pf, double %i.pe, double %i.pg ; 2 uses
  %i.pi = fcmp ult double %i.ph, %.2579.us.1655.3 ; 3 uses
  %.2579.us.2658.3 = select i1 %i.pi, double %.2579.us.1655.3, double %i.ph
  %i.pj = and i1 %i.pi, %i.pc
  %.3.us.2660.3 = select i1 %i.pi, i32 %.3.us.1657.3, i32 3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !10
  %i.pm = call double @llvm.fabs.f64(double %i.pl)
  %i.pn = fcmp ult double %i.pm, %.2579.us.2658.3 ; 2 uses
  %i.po = and i1 %i.pn, %i.pj
  %.3576.us.3.3 = select i1 %i.po, i32 %.3576.us.3.2, i32 4 ; 3 uses
  %.3.us.3.3 = select i1 %i.pn, i32 %.3.us.2660.3, i32 4 ; 4 uses
  %.not593 = icmp eq i32 %.3576.us.3.3, 1
  br i1 %.not593, label %bb.ai, label %bb.ah

.loopexit:                                        ; preds = %bb.ak, %bb.al
  %i.pp = phi double [ %i.ks, %bb.al ], [ %i.wd, %bb.ak ] ; 2 uses
  %i.pq = load double, ptr %i.a, align 16, !tbaa !10 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ps = load double, ptr %i.mg, align 16, !tbaa !10 ; 2 uses
  %i.pt = load double, ptr %i.ml, align 16, !tbaa !10 ; 3 uses
  %i.pu = load double, ptr %i.nh, align 8, !tbaa !10
  %i.pv = load double, ptr %i.mq, align 16, !tbaa !10 ; 3 uses
  %i.pw = load double, ptr %i.nn, align 8, !tbaa !10
  %i.px = load <2 x double>, ptr %i.mw, align 8, !tbaa !10
  %i.py = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.pz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = fdiv <2 x double> %i.px, %i.pz          ; 2 uses
  store <2 x double> %i.qa, ptr %i.mw, align 8, !tbaa !10
  %i.qb = fneg <2 x double> %i.qa                 ; 4 uses
  %i.qc = extractelement <2 x double> %i.qb, i64 0 ; 2 uses
  %i.qd = call double @llvm.fmuladd.f64(double %i.qc, double %i.pt, double %i.pu) ; 4 uses
  store double %i.qd, ptr %i.nh, align 8, !tbaa !10
  %i.qe = call double @llvm.fmuladd.f64(double %i.qc, double %i.pv, double %i.pw) ; 4 uses
  store double %i.qe, ptr %i.nn, align 8, !tbaa !10
  %i.qf = extractelement <2 x double> %i.qb, i64 1 ; 2 uses
  %i.qg = load <2 x double>, ptr %i.pr, align 8, !tbaa !10
  %i.qh = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qi, <2 x double> %i.qg)
  store <2 x double> %i.qj, ptr %i.pr, align 8, !tbaa !10
  %i.qk = load <2 x double>, ptr %i.nb, align 8, !tbaa !10
  %i.ql = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.qm = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qm, <2 x double> %i.qk) ; 3 uses
  store <2 x double> %i.qn, ptr %i.nb, align 8, !tbaa !10
  %i.qo = load double, ptr %i.oc, align 16, !tbaa !10
  %i.qp = call double @llvm.fmuladd.f64(double %i.qf, double %i.pt, double %i.qo) ; 4 uses
  store double %i.qp, ptr %i.oc, align 16, !tbaa !10
  %i.qq = load double, ptr %i.oi, align 16, !tbaa !10
  %i.qr = call double @llvm.fmuladd.f64(double %i.qf, double %i.pv, double %i.qq) ; 4 uses
  store double %i.qr, ptr %i.oi, align 16, !tbaa !10
  %i.qs = load double, ptr %i.oq, align 8, !tbaa !10
  %i.qt = fdiv double %i.qs, %i.pp                ; 2 uses
  store double %i.qt, ptr %i.oq, align 8, !tbaa !10
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !10
  %i.qw = fneg double %i.qt                       ; 4 uses
  %i.qx = call double @llvm.fmuladd.f64(double %i.qw, double %i.pq, double %i.qv)
  store double %i.qx, ptr %i.qu, align 8, !tbaa !10
  %i.qy = load double, ptr %i.ow, align 8, !tbaa !10
  %i.qz = call double @llvm.fmuladd.f64(double %i.qw, double %i.ps, double %i.qy) ; 4 uses
  store double %i.qz, ptr %i.ow, align 8, !tbaa !10
  %i.ra = load double, ptr %i.pd, align 8, !tbaa !10
  %i.rb = call double @llvm.fmuladd.f64(double %i.qw, double %i.pt, double %i.ra) ; 4 uses
  store double %i.rb, ptr %i.pd, align 8, !tbaa !10
  %i.rc = load double, ptr %i.pk, align 8, !tbaa !10
  %i.rd = call double @llvm.fmuladd.f64(double %i.qw, double %i.pv, double %i.rc) ; 2 uses
  store double %i.rd, ptr %i.pk, align 8, !tbaa !10
  %i.re = extractelement <2 x double> %i.qn, i64 0 ; 3 uses
  %i.rf = fcmp oge double %i.re, 0.000000e+00
  %i.rg = fneg double %i.re
  %i.rh = select i1 %i.rf, double %i.re, double %i.rg ; 2 uses
  %i.ri = fcmp ult double %i.rh, 0.000000e+00     ; 3 uses
  %.2579.us.1 = select i1 %i.ri, double 0.000000e+00, double %i.rh ; 2 uses
  %.3.us.1 = select i1 %i.ri, i32 %.3.us.3.3, i32 2
  %i.rj = fcmp oge double %i.qd, 0.000000e+00
  %i.rk = fneg double %i.qd
  %i.rl = select i1 %i.rj, double %i.qd, double %i.rk ; 2 uses
  %i.rm = fcmp ult double %i.rl, %.2579.us.1      ; 3 uses
  %.2579.us.1.1 = select i1 %i.rm, double %.2579.us.1, double %i.rl ; 2 uses
  %i.rn = and i1 %i.rm, %i.ri
  %.3.us.1.1 = select i1 %i.rm, i32 %.3.us.1, i32 3
  %i.ro = fcmp oge double %i.qe, 0.000000e+00
  %i.rp = fneg double %i.qe
  %i.rq = select i1 %i.ro, double %i.qe, double %i.rp ; 2 uses
  %i.rr = fcmp ult double %i.rq, %.2579.us.1.1    ; 3 uses
  %.2579.us.1.2 = select i1 %i.rr, double %.2579.us.1.1, double %i.rq ; 2 uses
  %i.rs = select i1 %i.rr, i1 %i.rn, i1 false
  %.3576.us.1.2 = select i1 %i.rs, i32 %.3576.us.3.3, i32 2
  %.3.us.1.2 = select i1 %i.rr, i32 %.3.us.1.1, i32 4
  %i.rt = extractelement <2 x double> %i.qn, i64 1 ; 3 uses
  %i.ru = fcmp oge double %i.rt, 0.000000e+00
  %i.rv = fneg double %i.rt
  %i.rw = select i1 %i.ru, double %i.rt, double %i.rv ; 2 uses
  %i.rx = fcmp ult double %i.rw, %.2579.us.1.2    ; 3 uses
  %.2579.us.1.1645 = select i1 %i.rx, double %.2579.us.1.2, double %i.rw ; 2 uses
  %.3.us.1.1647 = select i1 %i.rx, i32 %.3.us.1.2, i32 2
  %i.ry = fcmp oge double %i.qp, 0.000000e+00
  %i.rz = fneg double %i.qp
  %i.sa = select i1 %i.ry, double %i.qp, double %i.rz ; 2 uses
  %i.sb = fcmp ult double %i.sa, %.2579.us.1.1645 ; 3 uses
  %.2579.us.1.1.1 = select i1 %i.sb, double %.2579.us.1.1645, double %i.sa ; 2 uses
  %i.sc = and i1 %i.sb, %i.rx
  %.3.us.1.1.1 = select i1 %i.sb, i32 %.3.us.1.1647, i32 3
  %i.sd = fcmp oge double %i.qr, 0.000000e+00
  %i.se = fneg double %i.qr
  %i.sf = select i1 %i.sd, double %i.qr, double %i.se ; 2 uses
  %i.sg = fcmp ult double %i.sf, %.2579.us.1.1.1  ; 3 uses
  %.2579.us.1.2.1 = select i1 %i.sg, double %.2579.us.1.1.1, double %i.sf ; 2 uses
  %i.sh = select i1 %i.sg, i1 %i.sc, i1 false
  %.3576.us.1.2.1 = select i1 %i.sh, i32 %.3576.us.1.2, i32 3
  %.3.us.1.2.1 = select i1 %i.sg, i32 %.3.us.1.1.1, i32 4
  %i.si = fcmp oge double %i.qz, 0.000000e+00
  %i.sj = fneg double %i.qz
  %i.sk = select i1 %i.si, double %i.qz, double %i.sj ; 2 uses
  %i.sl = fcmp ult double %i.sk, %.2579.us.1.2.1  ; 3 uses
  %.2579.us.1.2648 = select i1 %i.sl, double %.2579.us.1.2.1, double %i.sk ; 2 uses
  %.3.us.1.2650 = select i1 %i.sl, i32 %.3.us.1.2.1, i32 2
  %i.sm = fcmp oge double %i.rb, 0.000000e+00
  %i.sn = fneg double %i.rb
  %i.so = select i1 %i.sm, double %i.rb, double %i.sn ; 2 uses
  %i.sp = fcmp ult double %i.so, %.2579.us.1.2648 ; 3 uses
  %.2579.us.1.1.2 = select i1 %i.sp, double %.2579.us.1.2648, double %i.so
  %i.sq = and i1 %i.sp, %i.sl
  %.3.us.1.1.2 = select i1 %i.sp, i32 %.3.us.1.2650, i32 3
  %i.sr = call double @llvm.fabs.f64(double %i.rd)
  %i.ss = fcmp ult double %i.sr, %.2579.us.1.1.2  ; 2 uses
  %i.st = and i1 %i.ss, %i.sq
  %.3576.us.1.2.2 = select i1 %i.st, i32 %.3576.us.1.2.1, i32 4 ; 3 uses
  %.3.us.1.2.2 = select i1 %i.ss, i32 %.3.us.1.1.2, i32 4 ; 4 uses
  %.not593.1 = icmp eq i32 %.3576.us.1.2.2, 2
  br i1 %.not593.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.su = add nsw i32 %.3576.us.1.2.2, -1
  %i.sv = zext nneg i32 %i.su to i64              ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sv
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef nonnull %i.sw, ptr noundef nonnull @c__4, ptr noundef nonnull %i.li, ptr noundef nonnull @c__4) #4
  %i.sx = load double, ptr %i.lv, align 8, !tbaa !10
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sv ; 2 uses
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !10
  store double %i.sz, ptr %i.lv, align 8, !tbaa !10
  store double %i.sx, ptr %i.sy, align 8, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %.not594.1 = icmp eq i32 %.3.us.1.2.2, 2        ; 2 uses
  br i1 %.not594.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ta = shl nuw nsw i32 %.3.us.1.2.2, 2
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = getelementptr [8 x i8], ptr %i.b, i64 %i.tb
  %i.td = getelementptr i8, ptr %i.tc, i64 -32
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef %i.td, ptr noundef nonnull @c__1, ptr noundef nonnull %i.te, ptr noundef nonnull @c__1) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.tf = load double, ptr %i.nb, align 8, !tbaa !10 ; 2 uses
  %i.tg = call double @llvm.fabs.f64(double %i.tf)
  %i.th = fcmp olt double %i.tg, %i.ks
  br i1 %i.th, label %bb.ab, label %.loopexit.1

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %15, align 4, !tbaa !8
  store double %i.ks, ptr %i.nb, align 8, !tbaa !10
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.ab, %bb.aa
  %i.ti = phi double [ %i.ks, %bb.ab ], [ %i.tf, %bb.aa ]
  %16 = load <2 x double>, ptr %i.lv, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %17 = load <2 x double>, ptr %i.nh, align 8
  %18 = load <2 x double>, ptr %i.nn, align 8
  %i.tk = load <2 x double>, ptr %i.nv, align 16, !tbaa !10
  %i.tl = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tm = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tn = fdiv <2 x double> %i.tk, %i.tm          ; 2 uses
  store <2 x double> %i.tn, ptr %i.nv, align 16, !tbaa !10
  %i.to = fneg <2 x double> %i.tn                 ; 3 uses
  %i.tp = load <2 x double>, ptr %i.tj, align 16, !tbaa !10
  %i.tq = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %i.tq, <2 x double> %i.tp)
  store <2 x double> %i.tr, ptr %i.tj, align 16, !tbaa !10
  %i.ts = load <2 x double>, ptr %i.oc, align 16, !tbaa !10
  %i.tt = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %i.tt, <2 x double> %i.ts) ; 3 uses
  store <2 x double> %i.tu, ptr %i.oc, align 16, !tbaa !10
  %i.tv = load <2 x double>, ptr %i.oi, align 16, !tbaa !10
  %i.tw = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %i.tw, <2 x double> %i.tv) ; 2 uses
  %i.ty = extractelement <2 x double> %i.tx, i64 0 ; 4 uses
  store double %i.ty, ptr %i.oi, align 16, !tbaa !10
  %i.tz = extractelement <2 x double> %i.tx, i64 1 ; 2 uses
  store double %i.tz, ptr %i.pk, align 8, !tbaa !10
  %i.ua = extractelement <2 x double> %i.tu, i64 0 ; 3 uses
  %i.ub = fcmp oge double %i.ua, 0.000000e+00
  %i.uc = fneg double %i.ua
  %i.ud = select i1 %i.ub, double %i.ua, double %i.uc ; 2 uses
  %i.ue = fcmp ult double %i.ud, 0.000000e+00     ; 3 uses
  %.2579.us.2 = select i1 %i.ue, double 0.000000e+00, double %i.ud ; 2 uses
  %.3.us.2 = select i1 %i.ue, i32 %.3.us.1.2.2, i32 3
  %i.uf = fcmp oge double %i.ty, 0.000000e+00
  %i.ug = fneg double %i.ty
  %i.uh = select i1 %i.uf, double %i.ty, double %i.ug ; 2 uses
  %i.ui = fcmp ult double %i.uh, %.2579.us.2      ; 3 uses
  %.2579.us.2.1 = select i1 %i.ui, double %.2579.us.2, double %i.uh ; 2 uses
  %i.uj = and i1 %i.ui, %i.ue
  %.3576.us.2.1 = select i1 %i.uj, i32 %.3576.us.1.2.2, i32 3
  %.3.us.2.1 = select i1 %i.ui, i32 %.3.us.2, i32 4
  %i.uk = extractelement <2 x double> %i.tu, i64 1 ; 3 uses
  %i.ul = fcmp oge double %i.uk, 0.000000e+00
  %i.um = fneg double %i.uk
  %i.un = select i1 %i.ul, double %i.uk, double %i.um ; 2 uses
  %i.uo = fcmp ult double %i.un, %.2579.us.2.1    ; 3 uses
  %.2579.us.2.1642 = select i1 %i.uo, double %.2579.us.2.1, double %i.un
  %.3.us.2.1644 = select i1 %i.uo, i32 %.3.us.2.1, i32 3
  %i.up = call double @llvm.fabs.f64(double %i.tz)
  %i.uq = fcmp ult double %i.up, %.2579.us.2.1642 ; 2 uses
  %i.ur = and i1 %i.uq, %i.uo
  %.3576.us.2.1.1 = select i1 %i.ur, i32 %.3576.us.2.1, i32 4 ; 2 uses
  %.3.us.2.1.1 = select i1 %i.uq, i32 %.3.us.2.1644, i32 4 ; 3 uses
  %.not593.2 = icmp eq i32 %.3576.us.2.1.1, 3
  br i1 %.not593.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.1
  %i.us = add nsw i32 %.3576.us.2.1.1, -1
  %i.ut = zext nneg i32 %i.us to i64              ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ut
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef nonnull %i.uu, ptr noundef nonnull @c__4, ptr noundef nonnull %i.lo, ptr noundef nonnull @c__4) #4
  %i.uv = load double, ptr %i.ma, align 16, !tbaa !10
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ut ; 2 uses
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !10
  store double %i.ux, ptr %i.ma, align 16, !tbaa !10
  store double %i.uv, ptr %i.uw, align 8, !tbaa !10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit.1
  %.not594.2 = icmp eq i32 %.3.us.2.1.1, 3        ; 2 uses
  br i1 %.not594.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.uy = shl nuw nsw i32 %.3.us.2.1.1, 2
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr [8 x i8], ptr %i.b, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 -32
  %i.vc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef %i.vb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.vc, ptr noundef nonnull @c__1) #4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.vd = load double, ptr %i.oc, align 16, !tbaa !10 ; 2 uses
  %i.ve = call double @llvm.fabs.f64(double %i.vd)
  %i.vf = fcmp olt double %i.ve, %i.ks
  br i1 %i.vf, label %bb.ag, label %.loopexit.2

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %15, align 4, !tbaa !8
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %bb.ag, %bb.af
  %i.vg = phi double [ %i.ks, %bb.ag ], [ %i.vd, %bb.af ] ; 3 uses
  %i.vh = load double, ptr %i.pd, align 8, !tbaa !10
  %i.vi = load double, ptr %i.ma, align 16, !tbaa !10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !10
  %i.vl = fneg double %i.vh
  %i.vm = fdiv double %i.vl, %i.vg                ; 2 uses
  %i.vn = call double @llvm.fmuladd.f64(double %i.vm, double %i.vi, double %i.vk)
  store double %i.vn, ptr %i.vj, align 8, !tbaa !10
  %i.vo = load double, ptr %i.oi, align 16, !tbaa !10
  %i.vp = load double, ptr %i.pk, align 8, !tbaa !10
  %i.vq = call double @llvm.fmuladd.f64(double %i.vm, double %i.vo, double %i.vp) ; 2 uses
  %i.vr = call double @llvm.fabs.f64(double %i.vq)
  %i.vs = fcmp olt double %i.vr, %i.ks
  br i1 %i.vs, label %bb.am, label %bb.an

bb.ah:                                            ; preds = %.preheader600
  %i.vt = add nsw i32 %.3576.us.3.3, -1
  %i.vu = zext nneg i32 %i.vt to i64              ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.vu
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef nonnull %i.vv, ptr noundef nonnull @c__4, ptr noundef nonnull %i.b, ptr noundef nonnull @c__4) #4
  %i.vw = load double, ptr %i.a, align 16, !tbaa !10
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.vu ; 2 uses
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !10
  store double %i.vy, ptr %i.a, align 16, !tbaa !10
  store double %i.vw, ptr %i.vx, align 8, !tbaa !10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader600
  %.not594 = icmp eq i32 %.3.us.3.3, 1            ; 2 uses
  br i1 %.not594, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.vz = shl nuw nsw i32 %.3.us.3.3, 2
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = getelementptr [8 x i8], ptr %i.b, i64 %i.wa
  %i.wc = getelementptr i8, ptr %i.wb, i64 -32
  call void @dswap_(ptr noundef nonnull @c__4, ptr noundef %i.wc, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1) #4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.wd = load double, ptr %i.b, align 16, !tbaa !10 ; 2 uses
  %i.we = call double @llvm.fabs.f64(double %i.wd)
  %i.wf = fcmp olt double %i.we, %i.ks
  br i1 %i.wf, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %15, align 4, !tbaa !8
  store double %i.ks, ptr %i.b, align 16, !tbaa !10
  br label %.loopexit

bb.am:                                            ; preds = %.loopexit.2
  store i32 1, ptr %15, align 4, !tbaa !8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.2
  %i.wg = phi double [ %i.ks, %bb.am ], [ %i.vq, %.loopexit.2 ] ; 2 uses
  store double 1.000000e+00, ptr %11, align 8, !tbaa !10
  %i.wh = fmul double %i.v, 8.000000e+00          ; 4 uses
  %i.wi = load double, ptr %i.a, align 16, !tbaa !10 ; 5 uses
  %i.wj = fcmp oge double %i.wi, 0.000000e+00
  %i.wk = fneg double %i.wi
  %i.wl = select i1 %i.wj, double %i.wi, double %i.wk ; 3 uses
  %i.wm = fmul double %i.wh, %i.wl
  %i.wn = load double, ptr %i.b, align 16, !tbaa !10 ; 2 uses
  %i.wo = call double @llvm.fabs.f64(double %i.wn)
  %i.wp = fcmp ogt double %i.wm, %i.wo
  %.pre705 = load double, ptr %i.lv, align 8, !tbaa !10 ; 7 uses
  %.pre710 = fneg double %.pre705                 ; 2 uses
  br i1 %i.wp, label %._crit_edge706, label %bb.ao

._crit_edge706:                                   ; preds = %bb.an
  %.pre707 = load double, ptr %i.ma, align 16, !tbaa !10
  br label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.wq = fcmp oge double %.pre705, 0.000000e+00
  %i.wr = select i1 %i.wq, double %.pre705, double %.pre710
  %i.ws = fmul double %i.wh, %i.wr
  %i.wt = load double, ptr %i.ky, align 8, !tbaa !10
  %i.wu = call double @llvm.fabs.f64(double %i.wt)
  %i.wv = fcmp ogt double %i.ws, %i.wu
  %.pre708 = load double, ptr %i.ma, align 16, !tbaa !10 ; 7 uses
  br i1 %i.wv, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ww = fcmp oge double %.pre708, 0.000000e+00
  %i.wx = fneg double %.pre708
  %i.wy = select i1 %i.ww, double %.pre708, double %i.wx
  %i.wz = fmul double %i.wh, %i.wy
  %i.xa = call double @llvm.fabs.f64(double %i.vg)
  %i.xb = fcmp ogt double %i.wz, %i.xa
  br i1 %i.xb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.xc = load double, ptr %i.mb, align 8, !tbaa !10 ; 4 uses
  %i.xd = fcmp oge double %i.xc, 0.000000e+00
  %i.xe = fneg double %i.xc
  %i.xf = select i1 %i.xd, double %i.xc, double %i.xe
  %i.xg = fmul double %i.wh, %i.xf
  %i.xh = call double @llvm.fabs.f64(double %i.wg)
  %i.xi = fcmp ogt double %i.xg, %i.xh
  br i1 %i.xi, label %bb.ar, label %._crit_edge.3

bb.ar:                                            ; preds = %._crit_edge706, %bb.aq, %bb.ap, %bb.ao
  %i.xj = phi double [ %.pre707, %._crit_edge706 ], [ %.pre708, %bb.aq ], [ %.pre708, %bb.ap ], [ %.pre708, %bb.ao ] ; 4 uses
  %i.xk = fcmp oge double %.pre705, 0.000000e+00
  %i.xl = select i1 %i.xk, double %.pre705, double %.pre710 ; 2 uses
  %i.xm = fcmp oge double %i.wl, %i.xl
  %i.xn = select i1 %i.xm, double %i.wl, double %i.xl ; 2 uses
  %i.xo = fcmp oge double %i.xj, 0.000000e+00
  %i.xp = fneg double %i.xj
  %i.xq = select i1 %i.xo, double %i.xj, double %i.xp ; 2 uses
  %i.xr = fcmp oge double %i.xn, %i.xq
  %i.xs = select i1 %i.xr, double %i.xn, double %i.xq ; 2 uses
  %i.xt = load double, ptr %i.mb, align 8, !tbaa !10 ; 4 uses
  %i.xu = fcmp oge double %i.xt, 0.000000e+00
  %i.xv = fneg double %i.xt
  %i.xw = select i1 %i.xu, double %i.xt, double %i.xv ; 2 uses
  %i.xx = fcmp oge double %i.xs, %i.xw
  %i.xy = select i1 %i.xx, double %i.xs, double %i.xw
  %i.xz = fdiv double 1.250000e-01, %i.xy         ; 5 uses
  store double %i.xz, ptr %11, align 8, !tbaa !10
  %i.ya = fmul double %i.wi, %i.xz
  %i.yb = fmul double %.pre705, %i.xz
  %i.yc = fmul double %i.xj, %i.xz
  %i.yd = fmul double %i.xt, %i.xz
  br label %._crit_edge.3

end_hunk_0
