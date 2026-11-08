Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgevc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dtgevc_:bb.a
  %i.ik = select i1 %i.ii, double %i.ih, double %i.ij
  %i.il = fadd double %i.if, %i.ik                ; 2 uses
  %gep2458.epil = getelementptr [8 x i8], ptr %invariant.gep2457, i64 %indvars.iv1997.epil
  %i.im = load double, ptr %gep2458.epil, align 8, !tbaa !107 ; 3 uses
  %i.in = fcmp oge double %i.im, 0.000000e+00
  %i.io = fneg double %i.im
  %i.ip = select i1 %i.in, double %i.im, double %i.io
  %i.iq = fadd double %i.ig, %i.ip                ; 2 uses
  %indvars.iv.next1998.epil = add nuw nsw i64 %indvars.iv1997.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3257
  br i1 %epil.iter.cmp.not, label %._crit_edge1707, label %bb.ar, !llvm.loop !11

._crit_edge1707:                                  ; preds = %._crit_edge1707.loopexit.unr-lcssa, %bb.ar, %.lr.ph1731
  %.lcssa17201724 = phi double [ 0.000000e+00, %.lr.ph1731 ], [ %i.ie, %._crit_edge1707.loopexit.unr-lcssa ], [ %i.iq, %bb.ar ] ; 4 uses
  %.lcssa17191722 = phi double [ 0.000000e+00, %.lr.ph1731 ], [ %i.hz, %._crit_edge1707.loopexit.unr-lcssa ], [ %i.il, %bb.ar ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv2009
  store double %.lcssa17191722, ptr %i.ir, align 8, !tbaa !107
  %gep2464.a = getelementptr [8 x i8], ptr %invariant.gep2463.a, i64 %indvars.iv2009
  store double %.lcssa17201724, ptr %gep2464.a, align 8, !tbaa !107
  %indvars.iv.next2010 = add nuw nsw i64 %indvars.iv2009, 1 ; 3 uses
  %.not1570.not = icmp slt i64 %indvars.iv2009, %i.fu
  %i.is = trunc nsw i64 %indvars.iv.next2010 to i32
  %.1579 = select i1 %.not1570.not, i32 %i.is, i32 %i.ev ; 2 uses
  %.not1571.not1713 = icmp slt i32 %.01451, %.1579
  br i1 %.not1571.not1713, label %.lr.ph1716, label %bb.as

.lr.ph1716:                                       ; preds = %._crit_edge1707
  %i.it = mul nsw i64 %indvars.iv2009, %i.fz
  %i.iu = mul nsw i64 %indvars.iv2009, %i.ga
  %i.iv = sext i32 %.01451 to i64                 ; 4 uses
  %wide.trip.count2007 = sext i32 %.1579 to i64   ; 3 uses
  %invariant.gep2459 = getelementptr [8 x i8], ptr %i.aa, i64 %i.it ; 5 uses
  %invariant.gep2461 = getelementptr [8 x i8], ptr %i.ad, i64 %i.iu ; 5 uses
  %i.iw = sub nsw i64 %wide.trip.count2007, %i.iv
  %xtraiter3266 = and i64 %i.iw, 3                ; 2 uses
  %lcmp.mod3267.not = icmp eq i64 %xtraiter3266, 0
  br i1 %lcmp.mod3267.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1716, %.prol.preheader
  %indvars.iv2003.prol = phi i64 [ %indvars.iv.next2004.prol, %.prol.preheader ], [ %i.iv, %.lr.ph1716 ]
  %i.ix = phi double [ %i.jd, %.prol.preheader ], [ %.lcssa17191722, %.lr.ph1716 ]
  %i.iy = phi double [ %i.ji, %.prol.preheader ], [ %.lcssa17201724, %.lr.ph1716 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1716 ]
  %indvars.iv.next2004.prol = add nsw i64 %indvars.iv2003.prol, 1 ; 4 uses
  %gep2460.prol = getelementptr [8 x i8], ptr %invariant.gep2459, i64 %indvars.iv.next2004.prol
  %i.iz = load double, ptr %gep2460.prol, align 8, !tbaa !107 ; 3 uses
  %i.ja = fcmp oge double %i.iz, 0.000000e+00
  %i.jb = fneg double %i.iz
  %i.jc = select i1 %i.ja, double %i.iz, double %i.jb
  %i.jd = fadd double %i.ix, %i.jc                ; 3 uses
  %gep2462.prol = getelementptr [8 x i8], ptr %invariant.gep2461, i64 %indvars.iv.next2004.prol
  %i.je = load double, ptr %gep2462.prol, align 8, !tbaa !107 ; 4 uses
  %i.jf = fcmp oge double %i.je, 0.000000e+00
  %i.jg = fneg double %i.je
  %i.jh = select i1 %i.jf, double %i.je, double %i.jg
  %i.ji = fadd double %i.iy, %i.jh                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3266
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1716
  %.lcssa3252.unr.a = phi double [ poison, %.lr.ph1716 ], [ %i.jd, %.prol.preheader ]
  %.lcssa3251.unr = phi double [ poison, %.lr.ph1716 ], [ %i.je, %.prol.preheader ]
  %.lcssa3250.unr = phi double [ poison, %.lr.ph1716 ], [ %i.ji, %.prol.preheader ]
  %indvars.iv2003.unr = phi i64 [ %i.iv, %.lr.ph1716 ], [ %indvars.iv.next2004.prol, %.prol.preheader ]
  %.unr3268 = phi double [ %.lcssa17191722, %.lr.ph1716 ], [ %i.jd, %.prol.preheader ]
  %.unr3269 = phi double [ %.lcssa17201724, %.lr.ph1716 ], [ %i.ji, %.prol.preheader ]
  %i.jj = sub nsw i64 %i.iv, %wide.trip.count2007
  %i.jk = icmp ugt i64 %i.jj, -4
  br i1 %i.jk, label %._crit_edge1717, label %.lr.ph1716.new

.lr.ph1716.new:                                   ; preds = %.prol.loopexit, %.lr.ph1716.new
  %indvars.iv2003 = phi i64 [ %indvars.iv.next2004.3, %.lr.ph1716.new ], [ %indvars.iv2003.unr, %.prol.loopexit ] ; 4 uses
  %i.jl = phi double [ %i.kv, %.lr.ph1716.new ], [ %.unr3268, %.prol.loopexit ]
  %i.jm = phi double [ %i.la, %.lr.ph1716.new ], [ %.unr3269, %.prol.loopexit ]
  %indvars.iv.next2004 = add nsw i64 %indvars.iv2003, 1 ; 2 uses
  %gep2460 = getelementptr [8 x i8], ptr %invariant.gep2459, i64 %indvars.iv.next2004
  %i.jn = load double, ptr %gep2460, align 8, !tbaa !107 ; 3 uses
  %i.jo = fcmp oge double %i.jn, 0.000000e+00
  %i.jp = fneg double %i.jn
  %i.jq = select i1 %i.jo, double %i.jn, double %i.jp
  %i.jr = fadd double %i.jl, %i.jq
  %gep2462 = getelementptr [8 x i8], ptr %invariant.gep2461, i64 %indvars.iv.next2004
  %i.js = load double, ptr %gep2462, align 8, !tbaa !107 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %i.jw = fadd double %i.jm, %i.jv
  %indvars.iv.next2004.1 = add nsw i64 %indvars.iv2003, 2 ; 2 uses
  %gep2460.1 = getelementptr [8 x i8], ptr %invariant.gep2459, i64 %indvars.iv.next2004.1
  %i.jx = load double, ptr %gep2460.1, align 8, !tbaa !107 ; 3 uses
  %i.jy = fcmp oge double %i.jx, 0.000000e+00
  %i.jz = fneg double %i.jx
  %i.ka = select i1 %i.jy, double %i.jx, double %i.jz
  %i.kb = fadd double %i.jr, %i.ka
  %gep2462.1 = getelementptr [8 x i8], ptr %invariant.gep2461, i64 %indvars.iv.next2004.1
  %i.kc = load double, ptr %gep2462.1, align 8, !tbaa !107 ; 3 uses
  %i.kd = fcmp oge double %i.kc, 0.000000e+00
  %i.ke = fneg double %i.kc
  %i.kf = select i1 %i.kd, double %i.kc, double %i.ke
  %i.kg = fadd double %i.jw, %i.kf
  %indvars.iv.next2004.2 = add nsw i64 %indvars.iv2003, 3 ; 2 uses
  %gep2460.2 = getelementptr [8 x i8], ptr %invariant.gep2459, i64 %indvars.iv.next2004.2
  %i.kh = load double, ptr %gep2460.2, align 8, !tbaa !107 ; 3 uses
  %i.ki = fcmp oge double %i.kh, 0.000000e+00
  %i.kj = fneg double %i.kh
  %i.kk = select i1 %i.ki, double %i.kh, double %i.kj
  %i.kl = fadd double %i.kb, %i.kk
  %gep2462.2 = getelementptr [8 x i8], ptr %invariant.gep2461, i64 %indvars.iv.next2004.2
  %i.km = load double, ptr %gep2462.2, align 8, !tbaa !107 ; 3 uses
  %i.kn = fcmp oge double %i.km, 0.000000e+00
  %i.ko = fneg double %i.km
  %i.kp = select i1 %i.kn, double %i.km, double %i.ko
  %i.kq = fadd double %i.kg, %i.kp
  %indvars.iv.next2004.3 = add nsw i64 %indvars.iv2003, 4 ; 4 uses
  %gep2460.3 = getelementptr [8 x i8], ptr %invariant.gep2459, i64 %indvars.iv.next2004.3
  %i.kr = load double, ptr %gep2460.3, align 8, !tbaa !107 ; 3 uses
  %i.ks = fcmp oge double %i.kr, 0.000000e+00
  %i.kt = fneg double %i.kr
  %i.ku = select i1 %i.ks, double %i.kr, double %i.kt
  %i.kv = fadd double %i.kl, %i.ku                ; 2 uses
  %gep2462.3 = getelementptr [8 x i8], ptr %invariant.gep2461, i64 %indvars.iv.next2004.3
  %i.kw = load double, ptr %gep2462.3, align 8, !tbaa !107 ; 4 uses
  %i.kx = fcmp oge double %i.kw, 0.000000e+00
  %i.ky = fneg double %i.kw
  %i.kz = select i1 %i.kx, double %i.kw, double %i.ky
  %i.la = fadd double %i.kq, %i.kz                ; 2 uses
  %exitcond2008.not.3 = icmp eq i64 %indvars.iv.next2004.3, %wide.trip.count2007
  br i1 %exitcond2008.not.3, label %._crit_edge1717, label %.lr.ph1716.new, !llvm.loop !13

._crit_edge1717:                                  ; preds = %.lr.ph1716.new, %.prol.loopexit
  %.lcssa3252.a = phi double [ %.lcssa3252.unr.a, %.prol.loopexit ], [ %i.kv, %.lr.ph1716.new ]
  %.lcssa3251 = phi double [ %.lcssa3251.unr, %.prol.loopexit ], [ %i.kw, %.lr.ph1716.new ]
  %.lcssa3250 = phi double [ %.lcssa3250.unr, %.prol.loopexit ], [ %i.la, %.lr.ph1716.new ]
  store double %.lcssa3251, ptr %i.g, align 8, !tbaa !107
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1717, %._crit_edge1707
  %.lcssa17201725 = phi double [ %.lcssa3250, %._crit_edge1717 ], [ %.lcssa17201724, %._crit_edge1707 ] ; 3 uses
  %.lcssa17191723 = phi double [ %.lcssa3252.a, %._crit_edge1717 ], [ %.lcssa17191722, %._crit_edge1707 ] ; 3 uses
  %i.lb = fcmp oge double %.114151728, %.lcssa17191723
  %i.lc = select i1 %i.lb, double %.114151728, double %.lcssa17191723 ; 3 uses
  %i.ld = fcmp oge double %.014131729, %.lcssa17201725
  %i.le = select i1 %i.ld, double %.014131729, double %.lcssa17201725 ; 3 uses
  %exitcond2014.not = icmp eq i64 %indvars.iv.next2010, %wide.trip.count2013
  br i1 %exitcond2014.not, label %._crit_edge1732, label %.lr.ph1731, !llvm.loop !14

._crit_edge1732:                                  ; preds = %bb.as
  store double %.lcssa17191723, ptr %i.i, align 8, !tbaa !107
  store double %.lcssa17201725, ptr %i.l, align 8, !tbaa !107
  store i32 %i.gb, ptr %i.f, align 4, !tbaa !105
  %i.lf = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.le, i64 1
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge1732, %bb.ap
  %.11415.lcssa = phi double [ %i.lc, %._crit_edge1732 ], [ %.01414, %bb.ap ] ; 6 uses
  %.01413.lcssa = phi double [ %i.le, %._crit_edge1732 ], [ %i.ft, %bb.ap ] ; 6 uses
  %i.lh = phi <2 x double> [ %i.lg, %._crit_edge1732 ], [ %i.fy, %bb.ap ] ; 2 uses
  %i.li = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lk = fcmp oge <2 x double> %i.lh, %i.lj
  %i.ll = select <2 x i1> %i.lk, <2 x double> %i.lh, <2 x double> %i.lj
  %i.lm = fdiv <2 x double> splat (double 1.000000e+00), %i.ll ; 10 uses
  br i1 %.not1487.not2565, label %bb.au, label %.loopexit1688

bb.au:                                            ; preds = %bb.at
  store i32 %i.ev, ptr %i.e, align 4, !tbaa !105
  %.not15081822 = icmp slt i32 %i.ev, 1
  br i1 %.not15081822, label %.loopexit1688, label %.lr.ph1831

.lr.ph1831:                                       ; preds = %bb.au
  %i.ln = add i32 %i.y, 1                         ; 3 uses
  %i.lo = add i32 %i.ab, 1                        ; 6 uses
  %i.lp = add i32 %i.ae, 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.lr = shl nsw i64 %i.af, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.lr
  %i.ls = sext i32 %i.y to i64                    ; 3 uses
  %i.lt = sext i32 %i.ae to i64                   ; 2 uses
  %i.lu = extractelement <2 x double> %i.lm, i64 0 ; 3 uses
  %i.lv = extractelement <2 x double> %i.lm, i64 1 ; 3 uses
  %i.lw = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lx = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ly = insertelement <2 x double> poison, double %.11415.lcssa, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %.01413.lcssa, i64 1
  %i.ma = insertelement <2 x double> poison, double %i.et, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = extractelement <2 x double> %i.fb, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph1831, %bb.cm
  %indvar = phi i64 [ 0, %.lr.ph1831 ], [ %indvar.next, %bb.cm ] ; 4 uses
  %i.mg = phi i32 [ %i.ev, %.lr.ph1831 ], [ %i.apl, %bb.cm ] ; 4 uses
  %i.mh = phi double [ %i.eu, %.lr.ph1831 ], [ %i.apm, %bb.cm ] ; 12 uses
  %i.mi = phi i32 [ %i.ev, %.lr.ph1831 ], [ %i.apn, %bb.cm ] ; 11 uses
  %indvars.iv2025.a = phi i64 [ 1, %.lr.ph1831 ], [ %indvars.iv.next2026, %bb.cm ] ; 38 uses
  %.31829 = phi i32 [ 0, %.lr.ph1831 ], [ %.5, %bb.cm ]
  %.014531823 = phi i32 [ 0, %.lr.ph1831 ], [ %.11454, %bb.cm ] ; 7 uses
  %i.mj = xor i64 %indvar, -1
  %16 = trunc i64 %indvars.iv2025.a to i32
  %i.mk = xor i64 %indvar, -1
  %indvars2119 = trunc i64 %indvars.iv2025.a to i32 ; 11 uses
  %.not1544 = icmp eq i32 %.31829, 0
  br i1 %.not1544, label %bb.aw, label %bb.cm

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.t, align 4, !tbaa !105
  %i.ml = sext i32 %i.mi to i64                   ; 2 uses
  %i.mm = icmp slt i64 %indvars.iv2025.a, %i.ml
  br i1 %i.mm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mn = mul nsw i64 %indvars.iv2025.a, %i.ls
  %i.mo = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2025.a
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %i.mn
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !107
  %i.ms = fcmp une double %i.mr, 0.000000e+00
  br i1 %i.ms, label %.thread1607, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br i1 %.not1491, label %bb.ba, label %.thread1620

.thread1607:                                      ; preds = %bb.ax
  store i32 2, ptr %i.t, align 4, !tbaa !105
  br i1 %.not1491, label %bb.az, label %.thread1620.thread

bb.az:                                            ; preds = %.thread1607
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2025.a ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !105
  %.not1546 = icmp eq i32 %i.mu, 0
  br i1 %.not1546, label %.thread2403, label %.thread1620.thread

bb.ba:                                            ; preds = %bb.ay
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2025.a
  %.01364.in = load i32, ptr %i.mv, align 4, !tbaa !105
  %.01364 = icmp eq i32 %.01364.in, 0
  br i1 %.01364, label %bb.cm, label %.thread1620

.thread2403:                                      ; preds = %bb.az
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %.01364.in2407 = load i32, ptr %i.mw, align 4, !tbaa !105
  %.013642408 = icmp eq i32 %.01364.in2407, 0
  br i1 %.013642408, label %bb.cm, label %.thread1620.thread

.thread1620:                                      ; preds = %bb.ba, %bb.ay
  %i.mx = mul i32 %i.ln, %indvars2119
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !107
  %i.nb = call double @llvm.fabs.f64(double %i.na)
  %i.nc = fcmp ugt double %i.nb, %i.mh
  br i1 %i.nc, label %.thread1620.thread, label %bb.bb

bb.bb:                                            ; preds = %.thread1620
  %i.nd = mul i32 %i.lo, %indvars2119
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !107
  %i.nh = call double @llvm.fabs.f64(double %i.ng)
  %i.ni = fcmp ugt double %i.nh, %i.mh
  br i1 %i.ni, label %.thread1620.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nj = add nsw i32 %.014531823, 1              ; 3 uses
  %.not15491736 = icmp slt i32 %i.mi, 1
  br i1 %.not15491736, label %._crit_edge1740, label %.lr.ph1739

.lr.ph1739:                                       ; preds = %bb.bc
  %i.nk = mul nsw i32 %i.nj, %i.ae
  %i.nl = add i32 %i.nk, 1
  %i.nm = sext i32 %i.nl to i64
  %i.nn = shl nsw i64 %i.nm, 3
  %scevgep2015 = getelementptr i8, ptr %scevgep, i64 %i.nn
  %i.no = zext nneg i32 %i.mi to i64
  %i.np = shl nuw nsw i64 %i.no, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2015, i8 0, i64 %i.np, i1 false), !tbaa !107
  br label %._crit_edge1740

._crit_edge1740:                                  ; preds = %.lr.ph1739, %bb.bc
  %i.nq = mul i32 %i.nj, %i.lp
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nr
  store double 1.000000e+00, ptr %i.ns, align 8, !tbaa !107
  br label %bb.cm

.thread1620.thread:                               ; preds = %.thread2403, %bb.az, %.thread1607, %.thread1620, %bb.bb
  %i.nt = phi i32 [ 2, %bb.az ], [ 1, %.thread1620 ], [ 1, %bb.bb ], [ 2, %.thread1607 ], [ 2, %.thread2403 ] ; 2 uses
  %.4161216251629 = phi i32 [ 1, %bb.az ], [ 0, %.thread1620 ], [ 0, %bb.bb ], [ 1, %.thread1607 ], [ 1, %.thread2403 ]
  %.not1545161116261627 = phi i1 [ false, %bb.az ], [ true, %.thread1620 ], [ true, %bb.bb ], [ false, %.thread1607 ], [ false, %.thread2403 ] ; 3 uses
  %i.nu = mul nsw i32 %i.nt, %i.mi                ; 2 uses
  %.not15501741 = icmp slt i32 %i.nu, 1
  br i1 %.not15501741, label %._crit_edge1744, label %.lr.ph1743

.lr.ph1743:                                       ; preds = %.thread1620.thread
  %i.nv = shl i32 %i.mi, 1
  %i.nw = sext i32 %i.nv to i64
  %i.nx = shl nsw i64 %i.nw, 3
  %scevgep2020 = getelementptr i8, ptr %14, i64 %i.nx
  %i.ny = zext nneg i32 %i.nu to i64
  %i.nz = shl nuw nsw i64 %i.ny, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2020, i8 0, i64 %i.nz, i1 false), !tbaa !107
  br label %._crit_edge1744

._crit_edge1744:                                  ; preds = %.lr.ph1743, %.thread1620.thread
  br i1 %.not1545161116261627, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %._crit_edge1744
  %i.oa = mul i32 %i.ln, %indvars2119
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !107 ; 4 uses
  %i.oe = fcmp oge double %i.od, 0.000000e+00
  %i.of = fneg double %i.od
  %i.og = select i1 %i.oe, double %i.od, double %i.of
  %i.oh = fmul double %i.lu, %i.og                ; 2 uses
  %i.oi = mul i32 %i.lo, %indvars2119
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.oj
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !107 ; 4 uses
  %i.om = fcmp oge double %i.ol, 0.000000e+00
  %i.on = fneg double %i.ol
  %i.oo = select i1 %i.om, double %i.ol, double %i.on
  %i.op = fmul double %i.lv, %i.oo                ; 2 uses
  %i.oq = fcmp oge double %i.oh, %i.op
  %i.or = select i1 %i.oq, double %i.oh, double %i.op ; 2 uses
  %i.os = fcmp oge double %i.or, %i.mh
  %i.ot = select i1 %i.os, double %i.or, double %i.mh
  %i.ou = fdiv double 1.000000e+00, %i.ot         ; 2 uses
  store double %i.ou, ptr %i.i, align 8, !tbaa !107
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !107
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !107
  %i.ov = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.od, i64 1
  %i.ox = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = fmul <2 x double> %i.ow, %i.oy
  %i.pa = fmul <2 x double> %i.lw, %i.oz          ; 5 uses
  %i.pb = fmul <2 x double> %i.lm, %i.pa          ; 5 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 1 ; 5 uses
  %i.pd = extractelement <2 x double> %i.pb, i64 0 ; 4 uses
  store double %i.pd, ptr %i.n, align 8, !tbaa !107
  store double %i.pc, ptr %i.s, align 8, !tbaa !107
  %i.pe = fcmp oge <2 x double> %i.pa, zeroinitializer
  %i.pf = fneg <2 x double> %i.pa
  %i.pg = select <2 x i1> %i.pe, <2 x double> %i.pa, <2 x double> %i.pf ; 3 uses
  %i.ph = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = fcmp oge <2 x double> %i.pg, %i.pi
  %i.pk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pb)
  %i.pl = fcmp olt <2 x double> %i.pk, %i.lx
  %i.pm = select <2 x i1> %i.pj, <2 x i1> %i.pl, <2 x i1> zeroinitializer ; 5 uses
  %i.pn = extractelement <2 x i1> %i.pm, i64 0
  br i1 %i.pn, label %bb.be, label %.thread2414

bb.be:                                            ; preds = %bb.bd
  %i.po = extractelement <2 x double> %i.pg, i64 0
  %i.pp = fdiv double %i.ey, %i.po
  %i.pq = load double, ptr %i.v, align 8, !tbaa !107 ; 2 uses
  %i.pr = fcmp ole double %.11415.lcssa, %i.pq
  %i.ps = select i1 %i.pr, double %.11415.lcssa, double %i.pq
  %i.pt = fmul double %i.pp, %i.ps                ; 2 uses
  %i.pu = extractelement <2 x i1> %i.pm, i64 1
  br i1 %i.pu, label %.thread1631, label %.thread2415.sink.split

.thread2414:                                      ; preds = %bb.bd
  %i.pv = extractelement <2 x i1> %i.pm, i64 1
  br i1 %i.pv, label %.thread1631, label %.thread2415

.thread1631:                                      ; preds = %.thread2414, %bb.be
  %i.pw = phi double [ 1.000000e+00, %.thread2414 ], [ %i.pt, %bb.be ] ; 3 uses
  store double %i.pw, ptr %i.g, align 8, !tbaa !107
  %i.px = extractelement <2 x double> %i.pg, i64 1
  %i.py = fdiv double %i.ey, %i.px
  %i.pz = load double, ptr %i.v, align 8, !tbaa !107 ; 2 uses
  %i.qa = fcmp ole double %.01413.lcssa, %i.pz
  %i.qb = select i1 %i.qa, double %.01413.lcssa, double %i.pz
  %i.qc = fmul double %i.py, %i.qb                ; 2 uses
  %i.qd = fcmp oge double %i.pw, %i.qc
  %i.qe = select i1 %i.qd, double %i.pw, double %i.qc
  br label %.thread2415.sink.split

.thread2415.sink.split:                           ; preds = %bb.be, %.thread1631
  %i.qf = phi double [ %i.qe, %.thread1631 ], [ %i.pt, %bb.be ] ; 2 uses
  %i.qg = fcmp oge double %i.pd, 0.000000e+00
  %i.qh = fneg double %i.pd
  %i.qi = select i1 %i.qg, double %i.pd, double %i.qh ; 2 uses
  %i.qj = fcmp ole double %i.qi, 1.000000e+00
  %i.qk = select i1 %i.qj, double 1.000000e+00, double %i.qi ; 2 uses
  %i.ql = fcmp oge double %i.pc, 0.000000e+00
  %i.qm = fneg double %i.pc
  %i.qn = select i1 %i.ql, double %i.pc, double %i.qm ; 2 uses
  %i.qo = fcmp oge double %i.qk, %i.qn
  %i.qp = select i1 %i.qo, double %i.qk, double %i.qn
  %i.qq = fmul double %i.mh, %i.qp
  %i.qr = fdiv double 1.000000e+00, %i.qq         ; 2 uses
  %i.qs = fcmp ole double %i.qf, %i.qr
  %i.qt = select i1 %i.qs, double %i.qf, double %i.qr ; 3 uses
  store double %i.qt, ptr %i.o, align 8, !tbaa !107
  %i.qu = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qw = fmul <2 x double> %i.pa, %i.qv
  %i.qx = fmul <2 x double> %i.lm, %i.qw          ; 2 uses
  %i.qy = fmul <2 x double> %i.pb, %i.qv
  %i.qz = fmul double %i.pc, %i.qt
  %i.ra = select <2 x i1> %i.pm, <2 x double> %i.qx, <2 x double> %i.qy ; 2 uses
  %i.rb = extractelement <2 x double> %i.ra, i64 0
  store double %i.rb, ptr %i.n, align 8, !tbaa !107
end_hunk_0
begin_hunk_1_@dtgevc_:bb.a
  br label %.loopexit1682

bb.bh:                                            ; preds = %bb.bf
  %i.ry = load double, ptr %i.n, align 8, !tbaa !107 ; 5 uses
  %i.rz = fcmp oge double %i.ry, 0.000000e+00
  %i.sa = fneg double %i.ry
  %i.sb = select i1 %i.rz, double %i.ry, double %i.sa ; 5 uses
  %i.sc = load double, ptr %i.s, align 8, !tbaa !107 ; 5 uses
  %i.sd = fcmp oge double %i.sc, 0.000000e+00
  %i.se = fneg double %i.sc
  %i.sf = select i1 %i.sd, double %i.sc, double %i.se
  %i.sg = fcmp ole double %i.rv, 0.000000e+00
  %i.sh = select i1 %i.sg, double %i.rw, double %i.rv
  %i.si = fadd double %i.sh, %i.sf                ; 5 uses
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !107
  %i.sj = fmul double %i.et, %i.sb
  %i.sk = load double, ptr %i.u, align 8, !tbaa !107 ; 9 uses
  %i.sl = fcmp uge double %i.sj, %i.sk
  %i.sm = fcmp ult double %i.sb, %i.sk
  %or.cond1580 = or i1 %i.sl, %i.sm
  br i1 %or.cond1580, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sn = fdiv double %i.sk, %i.et
  %i.so = fdiv double %i.sn, %i.sb                ; 2 uses
  store double %i.so, ptr %i.o, align 8, !tbaa !107
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.sp = phi double [ %i.so, %bb.bi ], [ 1.000000e+00, %bb.bh ] ; 3 uses
  %i.sq = fmul double %i.et, %i.si
  %i.sr = fcmp uge double %i.sq, %i.sk
  %i.ss = fcmp ult double %i.si, %i.sk
  %or.cond1581 = or i1 %i.ss, %i.sr
  br i1 %or.cond1581, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.st = fdiv double %i.sk, %i.et
  %i.su = fdiv double %i.st, %i.si                ; 2 uses
  %i.sv = fcmp oge double %i.sp, %i.su
  %i.sw = select i1 %i.sv, double %i.sp, double %i.su ; 2 uses
  store double %i.sw, ptr %i.o, align 8, !tbaa !107
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pr16342301 = phi double [ %i.sw, %bb.bk ], [ %i.sp, %bb.bj ]
  %i.sx = fmul double %i.sb, %i.sk                ; 2 uses
  %i.sy = fcmp ogt double %i.sx, %i.lu
  br i1 %i.sy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sz = fdiv double %i.lu, %i.sx                ; 2 uses
  store double %i.sz, ptr %i.o, align 8, !tbaa !107
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ta = phi double [ %i.sz, %bb.bm ], [ %.pr16342301, %bb.bl ] ; 4 uses
  %i.tb = fmul double %i.sk, %i.si                ; 2 uses
  %i.tc = fcmp ogt double %i.tb, %i.lv
  br i1 %i.tc, label %bb.bo, label %thread-pre-split1633

bb.bo:                                            ; preds = %bb.bn
  store double %i.ta, ptr %i.g, align 8, !tbaa !107
  %i.td = fdiv double %i.lv, %i.tb                ; 2 uses
  %i.te = fcmp ole double %i.ta, %i.td
  %i.tf = select i1 %i.te, double %i.ta, double %i.td ; 2 uses
  store double %i.tf, ptr %i.o, align 8, !tbaa !107
  br label %thread-pre-split1633

thread-pre-split1633:                             ; preds = %bb.bn, %bb.bo
  %i.tg = phi double [ %i.tf, %bb.bo ], [ %i.ta, %bb.bn ] ; 4 uses
  %i.th = fcmp une double %i.tg, 1.000000e+00
  %i.ti = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.si, i64 1
  br i1 %i.th, label %bb.bp, label %._crit_edge2325

bb.bp:                                            ; preds = %thread-pre-split1633
  %i.tk = fmul double %i.ry, %i.tg                ; 5 uses
  store double %i.tk, ptr %i.n, align 8, !tbaa !107
  %i.tl = fcmp oge double %i.tk, 0.000000e+00
  %i.tm = fneg double %i.tk
  %i.tn = select i1 %i.tl, double %i.tk, double %i.tm
  %i.to = fmul double %i.sc, %i.tg                ; 5 uses
  store double %i.to, ptr %i.s, align 8, !tbaa !107
  %i.tp = fmul double %i.tg, %i.rw                ; 5 uses
  store double %i.tp, ptr %i.r, align 8, !tbaa !107
  %i.tq = fcmp oge double %i.to, 0.000000e+00
  %i.tr = fneg double %i.to
  %i.ts = select i1 %i.tq, double %i.to, double %i.tr
  %i.tt = fcmp oge double %i.tp, 0.000000e+00
  %i.tu = fneg double %i.tp                       ; 2 uses
  %i.tv = select i1 %i.tt, double %i.tp, double %i.tu
  %i.tw = fadd double %i.ts, %i.tv
  %i.tx = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.ty = insertelement <2 x double> %i.tx, double %i.tw, i64 1
  br label %._crit_edge2325

._crit_edge2325:                                  ; preds = %thread-pre-split1633, %bb.bp
  %.pre-phi2329 = phi double [ %i.tu, %bb.bp ], [ %i.rv, %thread-pre-split1633 ]
  %i.tz = phi double [ %i.tp, %bb.bp ], [ %i.rw, %thread-pre-split1633 ]
  %i.ua = phi double [ %i.to, %bb.bp ], [ %i.sc, %thread-pre-split1633 ] ; 2 uses
  %i.ub = phi double [ %i.tk, %bb.bp ], [ %i.ry, %thread-pre-split1633 ] ; 4 uses
  %i.uc = phi <2 x double> [ %i.ty, %bb.bp ], [ %i.tj, %thread-pre-split1633 ]
  %i.ud = add nuw nsw i64 %indvars.iv2025.a, 1    ; 3 uses
  %i.ue = getelementptr [8 x i8], ptr %i.aa, i64 %i.ud
  %i.uf = getelementptr [8 x i8], ptr %i.ue, i64 %i.rn
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !107
  %i.uh = fmul double %i.ub, %i.ug                ; 3 uses
  store double %i.uh, ptr %i.i, align 8, !tbaa !107
  %i.ui = load double, ptr %i.rr, align 8, !tbaa !107
  %i.uj = load double, ptr %i.ru, align 8, !tbaa !107 ; 2 uses
  %i.uk = fneg double %i.uj
  %i.ul = fmul double %i.ua, %i.uk
  %i.um = call double @llvm.fmuladd.f64(double %i.ub, double %i.ui, double %i.ul) ; 3 uses
  %i.un = fmul double %i.uj, %.pre-phi2329        ; 3 uses
  %i.uo = call double @llvm.fabs.f64(double %i.uh)
  %i.up = fcmp oge double %i.um, 0.000000e+00
  %i.uq = fcmp oge double %i.un, 0.000000e+00
  %i.ur = insertelement <2 x double> poison, double %i.um, i64 0
  %i.us = insertelement <2 x double> %i.ur, double %i.un, i64 1
  %i.ut = fneg <2 x double> %i.us                 ; 3 uses
  %i.uu = extractelement <2 x double> %i.ut, i64 0
  %i.uv = select i1 %i.up, double %i.um, double %i.uu
  %i.uw = extractelement <2 x double> %i.ut, i64 1
  %i.ux = select i1 %i.uq, double %i.un, double %i.uw
  %i.uy = fadd double %i.uv, %i.ux
  %i.uz = fcmp ogt double %i.uo, %i.uy
  br i1 %i.uz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %._crit_edge2325
  %i.va = load i32, ptr %3, align 4, !tbaa !105   ; 3 uses
  %i.vb = shl i32 %i.va, 1
  %i.vc = sext i32 %i.vb to i64
  %i.vd = add nsw i64 %indvars.iv2025.a, %i.vc    ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.vd ; 2 uses
  store double 1.000000e+00, ptr %i.ve, align 8, !tbaa !107
  %i.vf = mul nsw i32 %i.va, 3
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2025.a
  %i.vi = getelementptr [8 x i8], ptr %i.vh, i64 %i.vg ; 3 uses
  store double 0.000000e+00, ptr %i.vi, align 8, !tbaa !107
  %i.vj = insertelement <2 x double> poison, double %i.uh, i64 0
  %i.vk = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vl = fdiv <2 x double> %i.ut, %i.vk          ; 3 uses
  %i.vm = getelementptr i8, ptr %i.ve, i64 8
  %i.vn = extractelement <2 x double> %i.vl, i64 0
  store double %i.vn, ptr %i.vm, align 8, !tbaa !107
  %i.vo = getelementptr i8, ptr %i.vi, i64 8
  %i.vp = extractelement <2 x double> %i.vl, i64 1
  store double %i.vp, ptr %i.vo, align 8, !tbaa !107
  %.pre2314 = load double, ptr %i.vi, align 8, !tbaa !107
  %i.vq = insertelement <2 x double> %i.vl, double %.pre2314, i64 0
  br label %bb.bs

bb.br:                                            ; preds = %._crit_edge2325
  %i.vr = add nuw nsw i32 %indvars2119, 1
  %i.vs = load i32, ptr %3, align 4, !tbaa !105   ; 3 uses
  %i.vt = shl i32 %i.vs, 1
  %i.vu = sext i32 %i.vt to i64
  %i.vv = add nsw i64 %indvars.iv2025.a, %i.vu    ; 2 uses
  %i.vw = getelementptr [8 x i8], ptr %i.ak, i64 %i.vv ; 2 uses
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  store double 1.000000e+00, ptr %i.vx, align 8, !tbaa !107
  %i.vy = mul nsw i32 %i.vs, 3
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2025.a
  %i.wb = getelementptr [8 x i8], ptr %i.wa, i64 %i.vz ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 8      ; 2 uses
  store double 0.000000e+00, ptr %i.wc, align 8, !tbaa !107
  %i.wd = mul nsw i32 %i.vr, %i.y
  %i.we = sext i32 %i.wd to i64                   ; 2 uses
  %i.wf = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2025.a
  %i.wg = getelementptr [8 x i8], ptr %i.wf, i64 %i.we
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !107
  %i.wi = fmul double %i.ub, %i.wh                ; 3 uses
  store double %i.wi, ptr %i.i, align 8, !tbaa !107
  %i.wj = trunc nsw i64 %i.ud to i32
  %i.wk = mul i32 %i.lo, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wl ; 2 uses
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !107
  %i.wo = getelementptr [8 x i8], ptr %i.aa, i64 %i.ud
  %i.wp = getelementptr [8 x i8], ptr %i.wo, i64 %i.we
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !107
  %i.wr = fneg double %i.wq
  %i.ws = fmul double %i.ub, %i.wr
  %i.wt = call double @llvm.fmuladd.f64(double %i.ua, double %i.wn, double %i.ws)
  %i.wu = fdiv double %i.wt, %i.wi
  store double %i.wu, ptr %i.vw, align 8, !tbaa !107
  %i.wv = load double, ptr %i.wm, align 8, !tbaa !107
  %i.ww = fmul double %i.tz, %i.wv
  %i.wx = fdiv double %i.ww, %i.wi                ; 2 uses
  store double %i.wx, ptr %i.wb, align 8, !tbaa !107
  %.pre = load double, ptr %i.wc, align 8, !tbaa !107
  %i.wy = insertelement <2 x double> poison, double %i.wx, i64 0
  %i.wz = insertelement <2 x double> %i.wy, double %.pre, i64 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pre-phi = phi i64 [ %i.vv, %bb.br ], [ %i.vd, %bb.bq ]
  %i.xa = phi i32 [ %i.vs, %bb.br ], [ %i.va, %bb.bq ] ; 2 uses
  %i.xb = phi <2 x double> [ %i.wz, %bb.br ], [ %i.vq, %bb.bq ] ; 3 uses
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.xd = fcmp oge <2 x double> %i.xb, zeroinitializer
  %i.xe = fneg <2 x double> %i.xb
  %i.xf = load <2 x double>, ptr %i.xc, align 8, !tbaa !107 ; 3 uses
  %i.xg = fcmp oge <2 x double> %i.xf, zeroinitializer
  %i.xh = fneg <2 x double> %i.xf
  %i.xi = select <2 x i1> %i.xg, <2 x double> %i.xf, <2 x double> %i.xh
  %i.xj = select <2 x i1> %i.xd, <2 x double> %i.xb, <2 x double> %i.xe
  %i.xk = fadd <2 x double> %i.xi, %i.xj          ; 2 uses
  %i.xl = extractelement <2 x double> %i.xk, i64 0 ; 2 uses
  %i.xm = extractelement <2 x double> %i.xk, i64 1 ; 2 uses
  %i.xn = fcmp oge double %i.xl, %i.xm
  %i.xo = select i1 %i.xn, double %i.xl, double %i.xm
  %.pre2303 = load i32, ptr %i.t, align 4, !tbaa !105
  %.pre2321 = sext i32 %i.xa to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.thread2415
  %.pre-phi2322 = phi i64 [ %.pre2321, %bb.bs ], [ %i.ml, %.thread2415 ]
  %i.xp = phi i32 [ %.pre2303, %bb.bs ], [ %i.nt, %.thread2415 ] ; 3 uses
  %i.xq = phi i32 [ %i.xa, %bb.bs ], [ %i.mi, %.thread2415 ]
  %i.xr = phi double [ %i.sk, %bb.bs ], [ %i.mh, %.thread2415 ] ; 2 uses
  %.01435 = phi double [ %i.xo, %bb.bs ], [ 1.000000e+00, %.thread2415 ]
  %i.xs = phi <2 x double> [ %i.uc, %bb.bs ], [ %i.rh, %.thread2415 ] ; 3 uses
  %i.xt = fmul <2 x double> %i.mb, %i.xs
  %i.xu = fmul <2 x double> %i.lz, %i.xt          ; 2 uses
  %i.xv = extractelement <2 x double> %i.xu, i64 0 ; 2 uses
  %i.xw = extractelement <2 x double> %i.xu, i64 1 ; 2 uses
  %i.xx = fcmp oge double %i.xv, %i.xw
  %i.xy = select i1 %i.xx, double %i.xv, double %i.xw ; 3 uses
  store double %i.xy, ptr %i.g, align 8, !tbaa !107
  %i.xz = fcmp oge double %i.xy, %i.xr
  %i.ya = select i1 %i.xz, double %i.xy, double %i.xr
  store double %i.ya, ptr %i.h, align 8, !tbaa !107
  %17 = sext i32 %i.xp to i64
  %18 = add nsw i64 %indvars.iv2025.a, %17        ; 2 uses
  %.not15521784 = icmp sgt i64 %18, %.pre-phi2322
  br i1 %.not15521784, label %._crit_edge1793, label %.lr.ph1792.preheader

.lr.ph1792.preheader:                             ; preds = %bb.bt
  %19 = add i32 %i.xq, 1
  %i.yb = add i32 %i.xp, %indvars2119
  %i.yc = extractelement <2 x double> %i.xs, i64 0 ; 2 uses
  %i.yd = extractelement <2 x double> %i.xs, i64 1 ; 2 uses
  %20 = add i32 %i.xp, %16
  %invariant.op3386 = sub i64 -2, %indvar
  br label %.lr.ph1792

.lr.ph1792:                                       ; preds = %.lr.ph1792.preheader, %bb.ce
  %indvar2605 = phi i32 [ 0, %.lr.ph1792.preheader ], [ %indvar.next2606, %bb.ce ] ; 3 uses
  %indvars.iv2088 = phi i64 [ %18, %.lr.ph1792.preheader ], [ %indvars.iv.next2089, %bb.ce ] ; 15 uses
  %.014171790 = phi i32 [ 0, %.lr.ph1792.preheader ], [ %.21419, %bb.ce ]
  %.114361785 = phi double [ %.01435, %.lr.ph1792.preheader ], [ %.41439, %bb.ce ] ; 5 uses
  %i.ye = add i32 %20, %indvar2605
  %i.yf = zext i32 %i.ye to i64                   ; 2 uses
  %i.yg = add i64 %i.mj, %i.yf                    ; 2 uses
  %.reass3387 = add i64 %i.yf, %invariant.op3386  ; 2 uses
  %i.yh = add i32 %i.yb, %indvar2605
  %i.yi = zext i32 %i.yh to i64
  %i.yj = add i64 %i.mk, %i.yi                    ; 14 uses
  %.not1559 = icmp eq i32 %.014171790, 0
  br i1 %.not1559, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %.lr.ph1792
  store i32 1, ptr %i.q, align 4, !tbaa !105
  %i.yk = trunc nsw i64 %indvars.iv2088 to i32    ; 2 uses
  %i.yl = mul i32 %i.lo, %i.yk
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !107
  store double %i.yo, ptr %i.m, align 16, !tbaa !107
  %i.yp = load i32, ptr %3, align 4, !tbaa !105   ; 2 uses
  %i.yq = sext i32 %i.yp to i64                   ; 4 uses
  %i.yr = icmp slt i64 %indvars.iv2088, %i.yq
  br i1 %i.yr, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ys = add nsw i64 %indvars.iv2088, 1          ; 2 uses
  %i.yt = mul nsw i64 %indvars.iv2088, %i.ls
  %i.yu = getelementptr [8 x i8], ptr %i.aa, i64 %i.ys
  %i.yv = getelementptr [8 x i8], ptr %i.yu, i64 %i.yt
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !107
  %i.yx = fcmp une double %i.yw, 0.000000e+00
  br i1 %i.yx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yy = trunc nsw i64 %i.ys to i32
  %i.yz = mul i32 %i.lo, %i.yy
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.za
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !107
  store double %i.zc, ptr %i.lq, align 8, !tbaa !107
  store i32 2, ptr %i.q, align 4, !tbaa !105
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bu
  %i.zd = phi i32 [ 2, %bb.bw ], [ 1, %bb.bv ], [ 1, %bb.bu ] ; 8 uses
  %.not1560 = phi i1 [ false, %bb.bw ], [ true, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %.11418 = phi i32 [ 1, %bb.bw ], [ 0, %bb.bv ], [ 0, %bb.bu ]
  %i.ze = fcmp ole double %.114361785, 1.000000e+00
  %i.zf = select i1 %i.ze, double 1.000000e+00, double %.114361785
  %i.zg = fdiv double 1.000000e+00, %i.zf         ; 5 uses
  %i.zh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv2088 ; 2 uses
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !107 ; 3 uses
  %i.zj = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2088
  %i.zk = getelementptr [8 x i8], ptr %i.zj, i64 %i.yq ; 2 uses
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !107 ; 3 uses
  %i.zm = fcmp oge double %i.zi, %i.zl
  %i.zn = select i1 %i.zm, double %i.zi, double %i.zl ; 3 uses
  store double %i.zn, ptr %i.g, align 8, !tbaa !107
  %i.zo = fmul double %i.yd, %i.zl
  %i.zp = call double @llvm.fmuladd.f64(double %i.yc, double %i.zi, double %i.zo) ; 2 uses
  %i.zq = fcmp oge double %i.zn, %i.zp
  %i.zr = select i1 %i.zq, double %i.zn, double %i.zp ; 4 uses
  store double %i.zr, ptr %i.i, align 8, !tbaa !107
  br i1 %.not1560, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.zs = getelementptr i8, ptr %i.zh, i64 8
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !107 ; 3 uses
  %i.zu = fcmp oge double %i.zr, %i.zt
  %i.zv = select i1 %i.zu, double %i.zr, double %i.zt ; 2 uses
  %i.zw = getelementptr i8, ptr %i.zk, i64 8
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !107 ; 3 uses
  %i.zy = fcmp oge double %i.zv, %i.zx
  %i.zz = select i1 %i.zy, double %i.zv, double %i.zx ; 3 uses
  store double %i.zz, ptr %i.g, align 8, !tbaa !107
  %i.aaa = fmul double %i.yd, %i.zx
  %i.aab = call double @llvm.fmuladd.f64(double %i.yc, double %i.zt, double %i.aaa) ; 2 uses
  %i.aac = fcmp oge double %i.zz, %i.aab
  %i.aad = select i1 %i.aac, double %i.zz, double %i.aab ; 2 uses
  store double %i.aad, ptr %i.i, align 8, !tbaa !107
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.aae = phi double [ %i.aad, %bb.by ], [ %i.zr, %bb.bx ]
  %i.aaf = fmul double %i.mc, %i.zg
  %i.aag = fcmp ogt double %i.aae, %i.aaf
  %.pre2304 = load i32, ptr %i.t, align 4, !tbaa !105 ; 8 uses
  br i1 %i.aag, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aah = add nsw i32 %.pre2304, -1
  store i32 %i.aah, ptr %i.f, align 4, !tbaa !105
  %.not1561.not1749 = icmp sgt i32 %.pre2304, 0
  %.not1568.not1745 = icmp slt i64 %indvars.iv2025.a, %indvars.iv2088
  %or.cond = and i1 %.not1561.not1749, %.not1568.not1745
  br i1 %or.cond, label %.preheader1684.preheader, label %._crit_edge1751.split

.preheader1684.preheader:                         ; preds = %bb.ca
  %wide.trip.count2037 = zext nneg i32 %.pre2304 to i64
  %wide.trip.count2031 = and i64 %indvars.iv2088, 4294967295
  %min.iters.check2673 = icmp ult i64 %i.yj, 4
  %min.iters.check2675 = icmp ult i64 %i.yj, 16
  %i.aai = and i64 %i.yj, 12
  %n.vec2677 = and i64 %i.yj, -16                 ; 4 uses
  %i.aaj = add i64 %indvars.iv2025.a, %n.vec2677
  %broadcast.splatinsert2678 = insertelement <4 x double> poison, double %i.zg, i64 0
  %broadcast.splat2679 = shufflevector <4 x double> %broadcast.splatinsert2678, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n2688 = icmp eq i64 %i.yj, %n.vec2677
  %min.epilog.iters.check2692 = icmp eq i64 %i.aai, 0
  %n.vec2695 = and i64 %i.yj, -4                  ; 3 uses
  %i.aak = add i64 %indvars.iv2025.a, %n.vec2695
  %broadcast.splatinsert2696 = insertelement <4 x double> poison, double %i.zg, i64 0
  %broadcast.splat2697 = shufflevector <4 x double> %broadcast.splatinsert2696, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2703 = icmp eq i64 %i.yj, %n.vec2695
  br label %iter.check2689

iter.check2689:                                   ; preds = %.preheader1684.preheader, %._crit_edge1748
  %indvars.iv2033 = phi i64 [ 0, %.preheader1684.preheader ], [ %indvars.iv.next2034, %._crit_edge1748 ] ; 2 uses
  %i.aal = add nuw nsw i64 %indvars.iv2033, 2
  %i.aam = mul nsw i64 %i.aal, %i.yq
  %invariant.gep2465 = getelementptr [8 x i8], ptr %i.ak, i64 %i.aam ; 3 uses
  br i1 %min.iters.check2673, label %vec.epilog.scalar.ph2691.preheader, label %vector.main.loop.iter.check2674

vector.main.loop.iter.check2674:                  ; preds = %iter.check2689
  br i1 %min.iters.check2675, label %vec.epilog.ph2693, label %vector.ph2676

vector.ph2676:                                    ; preds = %vector.main.loop.iter.check2674
  %i.aan = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2025.a
  br label %vector.body2680

vector.body2680:                                  ; preds = %vector.ph2676, %vector.body2680
  %index2681 = phi i64 [ 0, %vector.ph2676 ], [ %index.next2686, %vector.body2680 ] ; 2 uses
  %i.aao = getelementptr [8 x i8], ptr %i.aan, i64 %index2681 ; 5 uses
  %i.aap = getelementptr i8, ptr %i.aao, i64 32   ; 2 uses
  %i.aaq = getelementptr i8, ptr %i.aao, i64 64   ; 2 uses
  %i.aar = getelementptr i8, ptr %i.aao, i64 96   ; 2 uses
  %wide.load2682 = load <4 x double>, ptr %i.aao, align 8, !tbaa !107
  %wide.load2683 = load <4 x double>, ptr %i.aap, align 8, !tbaa !107
  %wide.load2684 = load <4 x double>, ptr %i.aaq, align 8, !tbaa !107
  %wide.load2685 = load <4 x double>, ptr %i.aar, align 8, !tbaa !107
  %i.aas = fmul <4 x double> %broadcast.splat2679, %wide.load2682
  %i.aat = fmul <4 x double> %broadcast.splat2679, %wide.load2683
  %i.aau = fmul <4 x double> %broadcast.splat2679, %wide.load2684
  %i.aav = fmul <4 x double> %broadcast.splat2679, %wide.load2685
  store <4 x double> %i.aas, ptr %i.aao, align 8, !tbaa !107
  store <4 x double> %i.aat, ptr %i.aap, align 8, !tbaa !107
  store <4 x double> %i.aau, ptr %i.aaq, align 8, !tbaa !107
  store <4 x double> %i.aav, ptr %i.aar, align 8, !tbaa !107
  %index.next2686 = add nuw i64 %index2681, 16    ; 2 uses
  %i.aaw = icmp eq i64 %index.next2686, %n.vec2677
  br i1 %i.aaw, label %middle.block2687, label %vector.body2680, !llvm.loop !15

middle.block2687:                                 ; preds = %vector.body2680
  br i1 %cmp.n2688, label %._crit_edge1748, label %vec.epilog.iter.check2690

vec.epilog.iter.check2690:                        ; preds = %middle.block2687
  br i1 %min.epilog.iters.check2692, label %vec.epilog.scalar.ph2691.preheader, label %vec.epilog.ph2693, !prof !112

vec.epilog.ph2693:                                ; preds = %vector.main.loop.iter.check2674, %vec.epilog.iter.check2690
  %vec.epilog.resume.val2694 = phi i64 [ %n.vec2677, %vec.epilog.iter.check2690 ], [ 0, %vector.main.loop.iter.check2674 ]
  %i.aax = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2025.a
  br label %vec.epilog.vector.body2698

vec.epilog.vector.body2698:                       ; preds = %vec.epilog.vector.body2698, %vec.epilog.ph2693
  %index2699 = phi i64 [ %vec.epilog.resume.val2694, %vec.epilog.ph2693 ], [ %index.next2701, %vec.epilog.vector.body2698 ] ; 2 uses
  %i.aay = getelementptr [8 x i8], ptr %i.aax, i64 %index2699 ; 2 uses
  %wide.load2700 = load <4 x double>, ptr %i.aay, align 8, !tbaa !107
  %i.aaz = fmul <4 x double> %broadcast.splat2697, %wide.load2700
  store <4 x double> %i.aaz, ptr %i.aay, align 8, !tbaa !107
  %index.next2701 = add nuw i64 %index2699, 4     ; 2 uses
  %i.aba = icmp eq i64 %index.next2701, %n.vec2695
  br i1 %i.aba, label %vec.epilog.middle.block2702, label %vec.epilog.vector.body2698, !llvm.loop !16

vec.epilog.middle.block2702:                      ; preds = %vec.epilog.vector.body2698
  br i1 %cmp.n2703, label %._crit_edge1748, label %vec.epilog.scalar.ph2691.preheader

vec.epilog.scalar.ph2691.preheader:               ; preds = %iter.check2689, %vec.epilog.iter.check2690, %vec.epilog.middle.block2702
  %indvars.iv2027.ph = phi i64 [ %indvars.iv2025.a, %iter.check2689 ], [ %i.aaj, %vec.epilog.iter.check2690 ], [ %i.aak, %vec.epilog.middle.block2702 ]
  br label %vec.epilog.scalar.ph2691

vec.epilog.scalar.ph2691:                         ; preds = %vec.epilog.scalar.ph2691.preheader, %vec.epilog.scalar.ph2691
  %indvars.iv2027 = phi i64 [ %indvars.iv.next2028, %vec.epilog.scalar.ph2691 ], [ %indvars.iv2027.ph, %vec.epilog.scalar.ph2691.preheader ] ; 2 uses
  %gep2466 = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2027 ; 2 uses
  %i.abb = load double, ptr %gep2466, align 8, !tbaa !107
  %i.abc = fmul double %i.zg, %i.abb
  store double %i.abc, ptr %gep2466, align 8, !tbaa !107
  %indvars.iv.next2028 = add nuw nsw i64 %indvars.iv2027, 1 ; 2 uses
  %exitcond2032.not = icmp eq i64 %indvars.iv.next2028, %wide.trip.count2031
  br i1 %exitcond2032.not, label %._crit_edge1748, label %vec.epilog.scalar.ph2691, !llvm.loop !17

._crit_edge1748:                                  ; preds = %vec.epilog.scalar.ph2691, %vec.epilog.middle.block2702, %middle.block2687
  %indvars.iv.next2034 = add nuw nsw i64 %indvars.iv2033, 1 ; 2 uses
  %exitcond2038.not = icmp eq i64 %indvars.iv.next2034, %wide.trip.count2037
  br i1 %exitcond2038.not, label %._crit_edge1751.split, label %iter.check2689, !llvm.loop !18

._crit_edge1751.split:                            ; preds = %._crit_edge1748, %bb.ca
  %i.abd = fmul double %.114361785, %i.zg
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1751.split, %bb.bz
  %.21437 = phi double [ %i.abd, %._crit_edge1751.split ], [ %.114361785, %bb.bz ] ; 2 uses
  %.not15621765 = icmp slt i32 %.pre2304, 1
  br i1 %.not15621765, label %.lr.ph1775, label %.lr.ph1768.split

.lr.ph1768.split:                                 ; preds = %bb.cb
  %.not1567.not1752 = icmp slt i64 %indvars.iv2025.a, %indvars.iv2088
end_hunk_1
begin_hunk_2_@dtgevc_:bb.a
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.ahd, <2 x i1> %i.agz), !tbaa !107
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ahc
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.ahe, <2 x i1> %i.agz), !tbaa !107
  %i.ahf = add nuw i32 %.113671766.epil, 1
  %epil.iter3271.next = add i32 %epil.iter3271, 1 ; 2 uses
  %epil.iter3271.cmp.not = icmp eq i32 %epil.iter3271.next, %xtraiter3270
  br i1 %epil.iter3271.cmp.not, label %.lr.ph1775, label %.lr.ph1763.epil, !llvm.loop !22

.lr.ph1775:                                       ; preds = %.lr.ph1775.loopexit3237.unr-lcssa, %.lr.ph1763.epil, %._crit_edge1764.split.us.us, %bb.cb
  store i32 %i.zd, ptr %i.f, align 4, !tbaa !105
  %i.ahg = load double, ptr %i.n, align 8
  %i.ahh = fneg double %i.ahg                     ; 2 uses
  %i.ahi = load double, ptr %i.s, align 8         ; 2 uses
  br i1 %.not1545161116261627, label %vector.body2646, label %vector.body2661

vector.body2661:                                  ; preds = %.lr.ph1775
  %i.ahj = load double, ptr %i.r, align 8         ; 2 uses
  %i.ahk = fneg double %i.ahj
  %broadcast.splatinsert2659.a = insertelement <2 x double> poison, double %i.ahj, i64 0
  %broadcast.splat2660.a = shufflevector <2 x double> %broadcast.splatinsert2659.a, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2657.a = insertelement <2 x double> poison, double %i.ahk, i64 0
  %broadcast.splat2658.a = shufflevector <2 x double> %broadcast.splatinsert2657.a, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2655.a = insertelement <2 x double> poison, double %i.ahh, i64 0
  %broadcast.splat2656.a = shufflevector <2 x double> %broadcast.splatinsert2655.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2653.a = insertelement <2 x double> poison, double %i.ahi, i64 0
  %broadcast.splat2654.a = shufflevector <2 x double> %broadcast.splatinsert2653.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahl = zext nneg i32 %i.zd to i64
  %trip.count.minus.12650 = add nsw i64 %i.ahl, -1
  %broadcast.splatinsert2651 = insertelement <2 x i64> poison, i64 %trip.count.minus.12650, i64 0
  %broadcast.splat2652 = shufflevector <2 x i64> %broadcast.splatinsert2651, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ahm = icmp uge <2 x i64> %broadcast.splat2652, <i64 0, i64 1> ; 2 uses
  %unmaskedload = load <2 x double>, ptr %i.k, align 16, !tbaa !107
  %unmaskedload3224 = load <2 x double>, ptr %i.j, align 16, !tbaa !107 ; 2 uses
  %i.ahn = fmul <2 x double> %broadcast.splat2654.a, %unmaskedload3224
  %i.aho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2656.a, <2 x double> %unmaskedload, <2 x double> %i.ahn)
  %unmaskedload3225 = load <2 x double>, ptr %i.md, align 16, !tbaa !107 ; 2 uses
  %i.ahp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2658.a, <2 x double> %unmaskedload3225, <2 x double> %i.aho)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahp, ptr align 16 %i.w, <2 x i1> %i.ahm), !tbaa !107
  %unmaskedload3226 = load <2 x double>, ptr %i.me, align 16, !tbaa !107
  %i.ahq = fmul <2 x double> %broadcast.splat2654.a, %unmaskedload3225
  %i.ahr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2656.a, <2 x double> %unmaskedload3226, <2 x double> %i.ahq)
  %i.ahs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2660.a, <2 x double> %unmaskedload3224, <2 x double> %i.ahr)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahs, ptr align 16 %i.mf, <2 x i1> %i.ahm), !tbaa !107
  br label %._crit_edge1776

vector.body2646:                                  ; preds = %.lr.ph1775
  %broadcast.splatinsert2644.a = insertelement <2 x double> poison, double %i.ahh, i64 0
  %broadcast.splat2645.a = shufflevector <2 x double> %broadcast.splatinsert2644.a, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2642.a = insertelement <2 x double> poison, double %i.ahi, i64 0
  %broadcast.splat2643.a = shufflevector <2 x double> %broadcast.splatinsert2642.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aht = zext nneg i32 %i.zd to i64
  %trip.count.minus.1 = add nsw i64 %i.aht, -1
  %broadcast.splatinsert2640 = insertelement <2 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat2641 = shufflevector <2 x i64> %broadcast.splatinsert2640, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ahu = icmp uge <2 x i64> %broadcast.splat2641, <i64 0, i64 1>
  %unmaskedload3227 = load <2 x double>, ptr %i.k, align 16, !tbaa !107
  %unmaskedload3228 = load <2 x double>, ptr %i.j, align 16, !tbaa !107
  %i.ahv = fmul <2 x double> %broadcast.splat2643.a, %unmaskedload3228
  %i.ahw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2645.a, <2 x double> %unmaskedload3227, <2 x double> %i.ahv)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahw, ptr align 16 %i.w, <2 x i1> %i.ahu), !tbaa !107
  br label %._crit_edge1776

._crit_edge1776:                                  ; preds = %vector.body2661, %vector.body2646
  %i.ahx = mul i32 %i.ln, %i.yk
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ahy
  %i.aia = shl i32 %i.yp, 1
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2088
  %i.aid = getelementptr [8 x i8], ptr %i.aic, i64 %i.aib
  call void @dlaln2_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t, ptr noundef nonnull %i.h, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ahz, ptr noundef nonnull %5, ptr noundef nonnull %i.m, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.w, ptr noundef nonnull @c__2, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.aid, ptr noundef nonnull %3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull %i.p) #6
  %i.aie = load double, ptr %i.o, align 8, !tbaa !107 ; 5 uses
  %i.aif = fcmp olt double %i.aie, 1.000000e+00
  br i1 %i.aif, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge1776
  %i.aig = load i32, ptr %i.t, align 4, !tbaa !105 ; 3 uses
  %i.aih = add nsw i32 %i.aig, -1
  store i32 %i.aih, ptr %i.f, align 4, !tbaa !105
  %.not1564.not1781 = icmp sgt i32 %i.aig, 0
  %.not1565.not1777 = icmp slt i64 %indvars.iv2025.a, %indvars.iv2088
  %or.cond1964 = and i1 %.not1564.not1781, %.not1565.not1777
  br i1 %or.cond1964, label %.preheader1683.lr.ph.split, label %._crit_edge1783.split

.preheader1683.lr.ph.split:                       ; preds = %bb.cc
  %i.aii = load i32, ptr %3, align 4, !tbaa !105
  %i.aij = sext i32 %i.aii to i64
  %wide.trip.count2086 = zext nneg i32 %i.aig to i64
  %wide.trip.count2080 = and i64 %indvars.iv2088, 4294967295
  %min.iters.check2607 = icmp ult i64 %i.yj, 4
  %min.iters.check2609 = icmp ult i64 %i.yj, 16
  %i.aik = and i64 %i.yj, 12
  %n.vec2611 = and i64 %i.yj, -16                 ; 4 uses
  %i.ail = add i64 %indvars.iv2025.a, %n.vec2611
  %broadcast.splatinsert2612 = insertelement <4 x double> poison, double %i.aie, i64 0
  %broadcast.splat2613 = shufflevector <4 x double> %broadcast.splatinsert2612, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n2622 = icmp eq i64 %i.yj, %n.vec2611
  %min.epilog.iters.check2626 = icmp eq i64 %i.aik, 0
  %n.vec2629 = and i64 %i.yj, -4                  ; 3 uses
  %i.aim = add i64 %indvars.iv2025.a, %n.vec2629
  %broadcast.splatinsert2630 = insertelement <4 x double> poison, double %i.aie, i64 0
  %broadcast.splat2631 = shufflevector <4 x double> %broadcast.splatinsert2630, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2637 = icmp eq i64 %i.yj, %n.vec2629
  br label %iter.check2623

iter.check2623:                                   ; preds = %.preheader1683.lr.ph.split, %._crit_edge1780
  %indvars.iv2082 = phi i64 [ 0, %.preheader1683.lr.ph.split ], [ %indvars.iv.next2083, %._crit_edge1780 ] ; 2 uses
  %i.ain = add nuw nsw i64 %indvars.iv2082, 2
  %i.aio = mul nsw i64 %i.ain, %i.aij
  %i.aip = getelementptr [8 x i8], ptr %i.ak, i64 %i.aio ; 3 uses
  br i1 %min.iters.check2607, label %vec.epilog.scalar.ph2625.preheader, label %vector.main.loop.iter.check2608

vector.main.loop.iter.check2608:                  ; preds = %iter.check2623
  br i1 %min.iters.check2609, label %vec.epilog.ph2627, label %vector.ph2610

vector.ph2610:                                    ; preds = %vector.main.loop.iter.check2608
  %i.aiq = getelementptr [8 x i8], ptr %i.aip, i64 %indvars.iv2025.a
  br label %vector.body2614

vector.body2614:                                  ; preds = %vector.ph2610, %vector.body2614
  %index2615 = phi i64 [ 0, %vector.ph2610 ], [ %index.next2620, %vector.body2614 ] ; 2 uses
  %i.air = getelementptr [8 x i8], ptr %i.aiq, i64 %index2615 ; 5 uses
  %i.ais = getelementptr i8, ptr %i.air, i64 32   ; 2 uses
  %i.ait = getelementptr i8, ptr %i.air, i64 64   ; 2 uses
  %i.aiu = getelementptr i8, ptr %i.air, i64 96   ; 2 uses
  %wide.load2616 = load <4 x double>, ptr %i.air, align 8, !tbaa !107
  %wide.load2617 = load <4 x double>, ptr %i.ais, align 8, !tbaa !107
  %wide.load2618 = load <4 x double>, ptr %i.ait, align 8, !tbaa !107
  %wide.load2619 = load <4 x double>, ptr %i.aiu, align 8, !tbaa !107
  %i.aiv = fmul <4 x double> %broadcast.splat2613, %wide.load2616
  %i.aiw = fmul <4 x double> %broadcast.splat2613, %wide.load2617
  %i.aix = fmul <4 x double> %broadcast.splat2613, %wide.load2618
  %i.aiy = fmul <4 x double> %broadcast.splat2613, %wide.load2619
  store <4 x double> %i.aiv, ptr %i.air, align 8, !tbaa !107
  store <4 x double> %i.aiw, ptr %i.ais, align 8, !tbaa !107
  store <4 x double> %i.aix, ptr %i.ait, align 8, !tbaa !107
  store <4 x double> %i.aiy, ptr %i.aiu, align 8, !tbaa !107
  %index.next2620 = add nuw i64 %index2615, 16    ; 2 uses
  %i.aiz = icmp eq i64 %index.next2620, %n.vec2611
  br i1 %i.aiz, label %middle.block2621, label %vector.body2614, !llvm.loop !23

middle.block2621:                                 ; preds = %vector.body2614
  br i1 %cmp.n2622, label %._crit_edge1780, label %vec.epilog.iter.check2624

vec.epilog.iter.check2624:                        ; preds = %middle.block2621
  br i1 %min.epilog.iters.check2626, label %vec.epilog.scalar.ph2625.preheader, label %vec.epilog.ph2627, !prof !112

vec.epilog.ph2627:                                ; preds = %vector.main.loop.iter.check2608, %vec.epilog.iter.check2624
  %vec.epilog.resume.val2628 = phi i64 [ %n.vec2611, %vec.epilog.iter.check2624 ], [ 0, %vector.main.loop.iter.check2608 ]
  %i.aja = getelementptr [8 x i8], ptr %i.aip, i64 %indvars.iv2025.a
  br label %vec.epilog.vector.body2632

vec.epilog.vector.body2632:                       ; preds = %vec.epilog.vector.body2632, %vec.epilog.ph2627
  %index2633 = phi i64 [ %vec.epilog.resume.val2628, %vec.epilog.ph2627 ], [ %index.next2635, %vec.epilog.vector.body2632 ] ; 2 uses
  %i.ajb = getelementptr [8 x i8], ptr %i.aja, i64 %index2633 ; 2 uses
  %wide.load2634 = load <4 x double>, ptr %i.ajb, align 8, !tbaa !107
  %i.ajc = fmul <4 x double> %broadcast.splat2631, %wide.load2634
  store <4 x double> %i.ajc, ptr %i.ajb, align 8, !tbaa !107
  %index.next2635 = add nuw i64 %index2633, 4     ; 2 uses
  %i.ajd = icmp eq i64 %index.next2635, %n.vec2629
  br i1 %i.ajd, label %vec.epilog.middle.block2636, label %vec.epilog.vector.body2632, !llvm.loop !24

vec.epilog.middle.block2636:                      ; preds = %vec.epilog.vector.body2632
  br i1 %cmp.n2637, label %._crit_edge1780, label %vec.epilog.scalar.ph2625.preheader

vec.epilog.scalar.ph2625.preheader:               ; preds = %iter.check2623, %vec.epilog.iter.check2624, %vec.epilog.middle.block2636
  %indvars.iv2076.ph = phi i64 [ %indvars.iv2025.a, %iter.check2623 ], [ %i.ail, %vec.epilog.iter.check2624 ], [ %i.aim, %vec.epilog.middle.block2636 ]
  br label %vec.epilog.scalar.ph2625

vec.epilog.scalar.ph2625:                         ; preds = %vec.epilog.scalar.ph2625.preheader, %vec.epilog.scalar.ph2625
  %indvars.iv2076 = phi i64 [ %indvars.iv.next2077, %vec.epilog.scalar.ph2625 ], [ %indvars.iv2076.ph, %vec.epilog.scalar.ph2625.preheader ] ; 2 uses
  %i.aje = getelementptr [8 x i8], ptr %i.aip, i64 %indvars.iv2076 ; 2 uses
  %i.ajf = load double, ptr %i.aje, align 8, !tbaa !107
  %i.ajg = fmul double %i.aie, %i.ajf
  store double %i.ajg, ptr %i.aje, align 8, !tbaa !107
  %indvars.iv.next2077 = add nuw nsw i64 %indvars.iv2076, 1 ; 2 uses
  %exitcond2081.not = icmp eq i64 %indvars.iv.next2077, %wide.trip.count2080
  br i1 %exitcond2081.not, label %._crit_edge1780, label %vec.epilog.scalar.ph2625, !llvm.loop !25

._crit_edge1780:                                  ; preds = %vec.epilog.scalar.ph2625, %vec.epilog.middle.block2636, %middle.block2621
  %indvars.iv.next2083 = add nuw nsw i64 %indvars.iv2082, 1 ; 2 uses
  %exitcond2087.not = icmp eq i64 %indvars.iv.next2083, %wide.trip.count2086
  br i1 %exitcond2087.not, label %._crit_edge1783.split, label %iter.check2623, !llvm.loop !26

._crit_edge1783.split:                            ; preds = %._crit_edge1780, %bb.cc
  %i.ajh = fmul double %.21437, %i.aie
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge1783.split, %._crit_edge1776
  %.31438 = phi double [ %i.ajh, %._crit_edge1783.split ], [ %.21437, %._crit_edge1776 ] ; 2 uses
  %i.aji = load double, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.ajj = fcmp oge double %.31438, %i.aji
  %i.ajk = select i1 %i.ajj, double %.31438, double %i.aji
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1792, %bb.cd
  %.41439 = phi double [ %i.ajk, %bb.cd ], [ %.114361785, %.lr.ph1792 ]
  %.21419 = phi i32 [ %.11418, %bb.cd ], [ 0, %.lr.ph1792 ]
  %indvars.iv.next2089 = add nsw i64 %indvars.iv2088, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2089 to i32
  %exitcond2092.not = icmp eq i32 %19, %lftr.wideiv
  %indvar.next2606 = add i32 %indvar2605, 1
  br i1 %exitcond2092.not, label %._crit_edge1793, label %.lr.ph1792, !llvm.loop !27

._crit_edge1793:                                  ; preds = %bb.ce, %bb.bt
  %i.ajl = add nsw i32 %.014531823, 1             ; 4 uses
  br i1 %.not1520, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge1793
  %i.ajm = load i32, ptr %i.t, align 4, !tbaa !105 ; 2 uses
  %.not1554.not1794 = icmp sgt i32 %i.ajm, 0
  %i.ajn = mul nsw i64 %indvars.iv2025.a, %i.lt   ; 2 uses
  br i1 %.not1554.not1794, label %.lr.ph1797, label %._crit_edge1798

.lr.ph1797:                                       ; preds = %bb.cf
  %i.ajo = getelementptr [8 x i8], ptr %i.ag, i64 %i.ajn
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 8
  %i.ajq = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2025.a
  %invariant.op3388 = sub i32 1, %indvars2119
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1797, %bb.cg
  %.313691795 = phi i32 [ 0, %.lr.ph1797 ], [ %i.akb, %bb.cg ] ; 3 uses
  %i.ajr = load i32, ptr %3, align 4, !tbaa !105  ; 3 uses
  %.reass2474.reass = add i32 %i.ajr, %invariant.op3388
  store i32 %.reass2474.reass, ptr %i.f, align 4, !tbaa !105
  %i.ajs = add nuw nsw i32 %.313691795, 2
  %i.ajt = mul nsw i32 %i.ajr, %i.ajs
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = getelementptr [8 x i8], ptr %i.ajq, i64 %i.aju
  %i.ajw = add nuw nsw i32 %.313691795, 4
  %i.ajx = mul nsw i32 %i.ajr, %i.ajw
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr [8 x i8], ptr %i.ak, i64 %i.ajy
  %i.aka = getelementptr i8, ptr %i.ajz, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.9, ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b34, ptr noundef %i.ajp, ptr noundef nonnull %9, ptr noundef nonnull %i.ajv, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b36, ptr noundef %i.aka, ptr noundef nonnull @c__1) #6
  %i.akb = add nuw nsw i32 %.313691795, 1         ; 2 uses
  %exitcond2093.not = icmp eq i32 %i.akb, %i.ajm
  br i1 %exitcond2093.not, label %._crit_edge1798, label %bb.cg, !llvm.loop !28

._crit_edge1798:                                  ; preds = %bb.cg, %bb.cf
  %i.akc = load i32, ptr %3, align 4, !tbaa !105
  %i.akd = shl i32 %i.akc, 2
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge1793
  %i.ake = load i32, ptr %3, align 4, !tbaa !105
  %i.akf = shl i32 %i.ake, 1
  %i.akg = mul nsw i32 %i.ajl, %i.ae
  %i.akh = sext i32 %i.akg to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge1798
  %.sink2551 = phi i64 [ %i.akh, %bb.ch ], [ %i.ajn, %._crit_edge1798 ]
  %.pn2566.in = phi i32 [ %i.akf, %bb.ch ], [ %i.akd, %._crit_edge1798 ]
  %.01457 = phi i32 [ %indvars2119, %bb.ch ], [ 1, %._crit_edge1798 ] ; 5 uses
  %.pn2566 = sext i32 %.pn2566.in to i64
  %.pn = getelementptr [8 x i8], ptr %i.ak, i64 %.pn2566
  %.sink2548 = getelementptr i8, ptr %.pn, i64 8
  %i.aki = getelementptr [8 x i8], ptr %i.ag, i64 %.sink2551
  %i.akj = getelementptr i8, ptr %i.aki, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %i.t, ptr noundef %.sink2548, ptr noundef nonnull %3, ptr noundef %i.akj, ptr noundef nonnull %9) #6
  %i.akk = load i32, ptr %3, align 4, !tbaa !105  ; 7 uses
  %.not15551806 = icmp sgt i32 %.01457, %i.akk    ; 2 uses
  br i1 %.not1545161116261627, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not15551806, label %.loopexit1686, label %.lr.ph1803

.lr.ph1803:                                       ; preds = %bb.cj
  %i.akl = mul nsw i32 %i.ajl, %i.ae
  %i.akm = add nsw i32 %.014531823, 2
  %i.akn = mul nsw i32 %i.akm, %i.ae
  %i.ako = zext i32 %.01457 to i64                ; 4 uses
  %i.akp = sext i32 %i.akl to i64
  %i.akq = sext i32 %i.akn to i64
  %i.akr = add i32 %i.akk, 1
  %wide.trip.count2098 = zext i32 %i.akr to i64   ; 3 uses
  %invariant.gep2475 = getelementptr [8 x i8], ptr %i.ag, i64 %i.akp ; 5 uses
  %invariant.gep2477 = getelementptr [8 x i8], ptr %i.ag, i64 %i.akq ; 5 uses
  %i.aks = sub nsw i64 %wide.trip.count2098, %i.ako
  %xtraiter3289 = and i64 %i.aks, 3               ; 2 uses
  %lcmp.mod3290.not = icmp eq i64 %xtraiter3289, 0
  br i1 %lcmp.mod3290.not, label %.prol.loopexit3288, label %.prol.preheader3287

.prol.preheader3287:                              ; preds = %.lr.ph1803, %.prol.preheader3287
  %indvars.iv2094.prol = phi i64 [ %indvars.iv.next2095.prol, %.prol.preheader3287 ], [ %i.ako, %.lr.ph1803 ] ; 3 uses
  %.514401800.prol = phi double [ %i.ald, %.prol.preheader3287 ], [ 0.000000e+00, %.lr.ph1803 ] ; 2 uses
  %prol.iter3291 = phi i64 [ %prol.iter3291.next, %.prol.preheader3287 ], [ 0, %.lr.ph1803 ]
  %gep2476.prol = getelementptr [8 x i8], ptr %invariant.gep2475, i64 %indvars.iv2094.prol
  %i.akt = load double, ptr %gep2476.prol, align 8, !tbaa !107 ; 4 uses
  %i.aku = fcmp oge double %i.akt, 0.000000e+00
  %i.akv = fneg double %i.akt
  %i.akw = select i1 %i.aku, double %i.akt, double %i.akv
  %gep2478.prol = getelementptr [8 x i8], ptr %invariant.gep2477, i64 %indvars.iv2094.prol
  %i.akx = load double, ptr %gep2478.prol, align 8, !tbaa !107 ; 3 uses
  %i.aky = fcmp oge double %i.akx, 0.000000e+00
  %i.akz = fneg double %i.akx
  %i.ala = select i1 %i.aky, double %i.akx, double %i.akz
  %i.alb = fadd double %i.akw, %i.ala             ; 2 uses
  %i.alc = fcmp oge double %.514401800.prol, %i.alb
  %i.ald = select i1 %i.alc, double %.514401800.prol, double %i.alb ; 3 uses
  %indvars.iv.next2095.prol = add nuw nsw i64 %indvars.iv2094.prol, 1 ; 2 uses
  %prol.iter3291.next = add i64 %prol.iter3291, 1 ; 2 uses
  %prol.iter3291.cmp.not = icmp eq i64 %prol.iter3291.next, %xtraiter3289
  br i1 %prol.iter3291.cmp.not, label %.prol.loopexit3288, label %.prol.preheader3287, !llvm.loop !29

.prol.loopexit3288:                               ; preds = %.prol.preheader3287, %.lr.ph1803
  %.lcssa3242.unr = phi double [ poison, %.lr.ph1803 ], [ %i.akt, %.prol.preheader3287 ]
  %.lcssa3241.unr = phi double [ poison, %.lr.ph1803 ], [ %i.ald, %.prol.preheader3287 ]
  %indvars.iv2094.unr = phi i64 [ %i.ako, %.lr.ph1803 ], [ %indvars.iv.next2095.prol, %.prol.preheader3287 ]
  %.514401800.unr = phi double [ 0.000000e+00, %.lr.ph1803 ], [ %i.ald, %.prol.preheader3287 ]
  %i.ale = sub nsw i64 %i.ako, %wide.trip.count2098
  %i.alf = icmp ugt i64 %i.ale, -4
  br i1 %i.alf, label %.loopexit1686.sink.split, label %.lr.ph1803.new

.lr.ph1803.new:                                   ; preds = %.prol.loopexit3288, %.lr.ph1803.new
  %indvars.iv2094 = phi i64 [ %indvars.iv.next2095.3, %.lr.ph1803.new ], [ %indvars.iv2094.unr, %.prol.loopexit3288 ] ; 6 uses
  %.514401800 = phi double [ %i.amx, %.lr.ph1803.new ], [ %.514401800.unr, %.prol.loopexit3288 ] ; 2 uses
  %gep2476 = getelementptr [8 x i8], ptr %invariant.gep2475, i64 %indvars.iv2094
  %i.alg = load double, ptr %gep2476, align 8, !tbaa !107 ; 3 uses
  %i.alh = fcmp oge double %i.alg, 0.000000e+00
  %i.ali = fneg double %i.alg
  %i.alj = select i1 %i.alh, double %i.alg, double %i.ali
  %gep2478 = getelementptr [8 x i8], ptr %invariant.gep2477, i64 %indvars.iv2094
  %i.alk = load double, ptr %gep2478, align 8, !tbaa !107 ; 3 uses
  %i.all = fcmp oge double %i.alk, 0.000000e+00
  %i.alm = fneg double %i.alk
  %i.aln = select i1 %i.all, double %i.alk, double %i.alm
  %i.alo = fadd double %i.alj, %i.aln             ; 2 uses
  %i.alp = fcmp oge double %.514401800, %i.alo
  %i.alq = select i1 %i.alp, double %.514401800, double %i.alo ; 2 uses
  %indvars.iv.next2095 = add nuw nsw i64 %indvars.iv2094, 1 ; 2 uses
  %gep2476.1 = getelementptr [8 x i8], ptr %invariant.gep2475, i64 %indvars.iv.next2095
  %i.alr = load double, ptr %gep2476.1, align 8, !tbaa !107 ; 3 uses
  %i.als = fcmp oge double %i.alr, 0.000000e+00
  %i.alt = fneg double %i.alr
  %i.alu = select i1 %i.als, double %i.alr, double %i.alt
  %gep2478.1 = getelementptr [8 x i8], ptr %invariant.gep2477, i64 %indvars.iv.next2095
  %i.alv = load double, ptr %gep2478.1, align 8, !tbaa !107 ; 3 uses
  %i.alw = fcmp oge double %i.alv, 0.000000e+00
  %i.alx = fneg double %i.alv
  %i.aly = select i1 %i.alw, double %i.alv, double %i.alx
  %i.alz = fadd double %i.alu, %i.aly             ; 2 uses
  %i.ama = fcmp oge double %i.alq, %i.alz
  %i.amb = select i1 %i.ama, double %i.alq, double %i.alz ; 2 uses
  %indvars.iv.next2095.1 = add nuw nsw i64 %indvars.iv2094, 2 ; 2 uses
  %gep2476.2 = getelementptr [8 x i8], ptr %invariant.gep2475, i64 %indvars.iv.next2095.1
  %i.amc = load double, ptr %gep2476.2, align 8, !tbaa !107 ; 3 uses
  %i.amd = fcmp oge double %i.amc, 0.000000e+00
  %i.ame = fneg double %i.amc
  %i.amf = select i1 %i.amd, double %i.amc, double %i.ame
  %gep2478.2 = getelementptr [8 x i8], ptr %invariant.gep2477, i64 %indvars.iv.next2095.1
  %i.amg = load double, ptr %gep2478.2, align 8, !tbaa !107 ; 3 uses
  %i.amh = fcmp oge double %i.amg, 0.000000e+00
  %i.ami = fneg double %i.amg
  %i.amj = select i1 %i.amh, double %i.amg, double %i.ami
  %i.amk = fadd double %i.amf, %i.amj             ; 2 uses
  %i.aml = fcmp oge double %i.amb, %i.amk
  %i.amm = select i1 %i.aml, double %i.amb, double %i.amk ; 2 uses
  %indvars.iv.next2095.2 = add nuw nsw i64 %indvars.iv2094, 3 ; 2 uses
  %gep2476.3 = getelementptr [8 x i8], ptr %invariant.gep2475, i64 %indvars.iv.next2095.2
  %i.amn = load double, ptr %gep2476.3, align 8, !tbaa !107 ; 4 uses
  %i.amo = fcmp oge double %i.amn, 0.000000e+00
  %i.amp = fneg double %i.amn
  %i.amq = select i1 %i.amo, double %i.amn, double %i.amp
  %gep2478.3 = getelementptr [8 x i8], ptr %invariant.gep2477, i64 %indvars.iv.next2095.2
  %i.amr = load double, ptr %gep2478.3, align 8, !tbaa !107 ; 3 uses
  %i.ams = fcmp oge double %i.amr, 0.000000e+00
  %i.amt = fneg double %i.amr
  %i.amu = select i1 %i.ams, double %i.amr, double %i.amt
  %i.amv = fadd double %i.amq, %i.amu             ; 2 uses
  %i.amw = fcmp oge double %i.amm, %i.amv
  %i.amx = select i1 %i.amw, double %i.amm, double %i.amv ; 2 uses
  %indvars.iv.next2095.3 = add nuw nsw i64 %indvars.iv2094, 4 ; 2 uses
  %exitcond2099.not.3 = icmp eq i64 %indvars.iv.next2095.3, %wide.trip.count2098
  br i1 %exitcond2099.not.3, label %.loopexit1686.sink.split, label %.lr.ph1803.new, !llvm.loop !30

bb.ck:                                            ; preds = %bb.ci
  br i1 %.not15551806, label %.loopexit1686, label %.lr.ph1810

.lr.ph1810:                                       ; preds = %bb.ck
  %i.amy = mul nsw i32 %i.ajl, %i.ae
  %i.amz = zext i32 %.01457 to i64                ; 4 uses
  %i.ana = sext i32 %i.amy to i64
  %i.anb = add i32 %i.akk, 1
  %wide.trip.count2104 = zext i32 %i.anb to i64   ; 3 uses
  %invariant.gep2479 = getelementptr [8 x i8], ptr %i.ag, i64 %i.ana ; 5 uses
  %i.anc = sub nsw i64 %wide.trip.count2104, %i.amz
  %xtraiter3294 = and i64 %i.anc, 3               ; 2 uses
  %lcmp.mod3295.not = icmp eq i64 %xtraiter3294, 0
  br i1 %lcmp.mod3295.not, label %.prol.loopexit3293, label %.prol.preheader3292

.prol.preheader3292:                              ; preds = %.lr.ph1810, %.prol.preheader3292
  %indvars.iv2100.prol = phi i64 [ %indvars.iv.next2101.prol, %.prol.preheader3292 ], [ %i.amz, %.lr.ph1810 ] ; 2 uses
  %.614411807.prol = phi double [ %i.ani, %.prol.preheader3292 ], [ 0.000000e+00, %.lr.ph1810 ] ; 2 uses
  %prol.iter3296 = phi i64 [ %prol.iter3296.next, %.prol.preheader3292 ], [ 0, %.lr.ph1810 ]
  %gep2480.prol = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100.prol
  %i.and = load double, ptr %gep2480.prol, align 8, !tbaa !107 ; 4 uses
  %i.ane = fcmp oge double %i.and, 0.000000e+00
  %i.anf = fneg double %i.and
end_hunk_2
