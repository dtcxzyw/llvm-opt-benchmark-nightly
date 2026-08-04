inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@StressMajorizationSmoother2_new:bb.a
  %i.el = add nsw i64 %wide.trip.count501, -1
  %i.em = icmp eq i64 %i.el, %i.ec
  br i1 %i.em, label %._crit_edge409, label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.prol.loopexit, %bb.r
  %indvars.iv498 = phi i64 [ %indvars.iv.next499.1, %bb.r ], [ %indvars.iv498.unr, %.lr.ph408.prol.loopexit ] ; 3 uses
  %.4406 = phi i64 [ %.5.1, %bb.r ], [ %.4406.unr, %.lr.ph408.prol.loopexit ] ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv498
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29
  %i.es = zext i32 %i.er to i64
  %.not343 = icmp eq i64 %indvars.iv508, %i.es
  br i1 %.not343, label %.lr.ph408.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph408
  store i32 %i.cp, ptr %i.eq, align 4, !tbaa !29
  %i.et = add i64 %.4406, 1
  br label %.lr.ph408.1

.lr.ph408.1:                                      ; preds = %.lr.ph408, %bb.p
  %.5 = phi i64 [ %i.et, %bb.p ], [ %.4406, %.lr.ph408 ] ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv498
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !29
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !29
  %i.fa = zext i32 %i.ez to i64
  %.not343.1 = icmp eq i64 %indvars.iv508, %i.fa
  br i1 %.not343.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph408.1
  store i32 %i.cp, ptr %i.ey, align 4, !tbaa !29
  %i.fb = add i64 %.5, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph408.1
  %.5.1 = phi i64 [ %i.fb, %bb.q ], [ %.5, %.lr.ph408.1 ] ; 2 uses
  %indvars.iv.next499.1 = add nsw i64 %indvars.iv498, 2 ; 2 uses
  %exitcond502.not.1 = icmp eq i64 %indvars.iv.next499.1, %wide.trip.count501
  br i1 %exitcond502.not.1, label %._crit_edge409, label %.lr.ph408, !llvm.loop !38

._crit_edge409:                                   ; preds = %.lr.ph408.prol.loopexit, %bb.r, %.lr.ph413
  %.4.lcssa = phi i64 [ %.3412, %.lr.ph413 ], [ %.5.lcssa.unr, %.lr.ph408.prol.loopexit ], [ %.5.1, %bb.r ] ; 2 uses
  %indvars.iv.next504 = add nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %wide.trip.count506
  br i1 %exitcond507.not, label %.loopexit, label %.lr.ph413, !llvm.loop !39

._crit_edge472:                                   ; preds = %._crit_edge460
  %i.fc = extractelement <2 x double> %i.kf, i64 0
  %i.fd = extractelement <2 x double> %i.kf, i64 1
  %i.fe = fdiv double %i.fc, %i.fd                ; 5 uses
  %.not480 = icmp eq i64 %i.ko, 0
  br i1 %.not480, label %._crit_edge479, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %._crit_edge472
  %min.iters.check576 = icmp ult i64 %i.ko, 4
  br i1 %min.iters.check576, label %.lr.ph478.preheader589, label %vector.ph577

vector.ph577:                                     ; preds = %.lr.ph478.preheader
  %n.vec579 = and i64 %i.ko, -4                   ; 3 uses
  %broadcast.splatinsert580 = insertelement <2 x double> poison, double %i.fe, i64 0
  %broadcast.splat581 = shufflevector <2 x double> %broadcast.splatinsert580, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body582

vector.body582:                                   ; preds = %vector.body582, %vector.ph577
  %index583 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body582 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index583 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ff, align 8, !tbaa !18
  %wide.load584 = load <2 x double>, ptr %i.fg, align 8, !tbaa !18
  %i.fh = fmul <2 x double> %broadcast.splat581, %wide.load
  %i.fi = fmul <2 x double> %broadcast.splat581, %wide.load584
  store <2 x double> %i.fh, ptr %i.ff, align 8, !tbaa !18
  store <2 x double> %i.fi, ptr %i.fg, align 8, !tbaa !18
  %index.next585 = add nuw i64 %index583, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next585, %n.vec579
  br i1 %i.fj, label %middle.block586, label %vector.body582, !llvm.loop !40

middle.block586:                                  ; preds = %vector.body582
  %cmp.n587 = icmp eq i64 %i.ko, %n.vec579
  br i1 %cmp.n587, label %._crit_edge479, label %.lr.ph478.preheader589

.lr.ph478.preheader589:                           ; preds = %.lr.ph478.preheader, %middle.block586
  %.0476.ph = phi i64 [ 0, %.lr.ph478.preheader ], [ %n.vec579, %middle.block586 ]
  br label %.lr.ph478

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %._crit_edge460
  %indvars.iv522 = phi i64 [ 0, %.lr.ph471.preheader ], [ %indvars.iv.next523, %._crit_edge460 ] ; 11 uses
  %.6468 = phi i64 [ 0, %.lr.ph471.preheader ], [ %i.ko, %._crit_edge460 ] ; 2 uses
  %i.fk = phi <2 x double> [ zeroinitializer, %.lr.ph471.preheader ], [ %i.kf, %._crit_edge460 ] ; 2 uses
  %i.fl = add nuw nsw i64 %indvars.iv522, %i.cm   ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv522
  %i.fn = trunc nuw i64 %i.fl to i32              ; 3 uses
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv522 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !29 ; 3 uses
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 5 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next523 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !29 ; 3 uses
  %i.fs = icmp slt i32 %i.fp, %i.fr
  br i1 %i.fs, label %.lr.ph428, label %._crit_edge429

.lr.ph428:                                        ; preds = %.lr.ph471
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv522
  %i.fu = sext i32 %i.fp to i64
  %i.fv = trunc nuw nsw i64 %indvars.iv522 to i32
  %i.fw = trunc nuw nsw i64 %indvars.iv522 to i32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph428, %bb.y
  %i.fx = phi i32 [ %i.fr, %.lr.ph428 ], [ %i.hh, %bb.y ]
  %indvars.iv513 = phi i64 [ %i.fu, %.lr.ph428 ], [ %indvars.iv.next514, %bb.y ] ; 2 uses
  %.7426 = phi i64 [ %.6468, %.lr.ph428 ], [ %.8, %bb.y ] ; 6 uses
  %i.fy = phi <2 x double> [ %i.fk, %.lr.ph428 ], [ %i.hi, %bb.y ] ; 2 uses
  %i.fz = phi <2 x double> [ zeroinitializer, %.lr.ph428 ], [ %i.hj, %bb.y ] ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv513
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !29 ; 5 uses
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !29
  %i.gf = zext i32 %i.ge to i64
  %.not342 = icmp eq i64 %i.fl, %i.gf
  br i1 %.not342, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.fn, ptr %i.gd, align 4, !tbaa !29
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.7426
  store i32 %i.gb, ptr %i.gg, align 4, !tbaa !29
  switch i32 %4, label %bb.w [
    i32 0, label %bb.x
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.gh = load double, ptr %i.ft, align 8, !tbaa !18
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.gc
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !18
  %i.gk = fadd double %i.gh, %i.gj
  %i.gl = fmul double %i.gk, 5.000000e-01
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gm = tail call double @distance_cropped(ptr noundef %3, i32 noundef %1, i32 noundef %i.fv, i32 noundef %i.gb) #16
  %i.gn = tail call double @pow(double noundef %i.gm, double noundef 4.000000e-01) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.gp = tail call i64 @fwrite(ptr nonnull @.str, i64 29, i64 1, ptr %i.go) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.0329 = phi double [ %i.gn, %bb.v ], [ %i.gl, %bb.u ], [ 1.000000e+00, %bb.t ] ; 4 uses
  %i.gq = fmul double %.0329, %.0329
  %i.gr = fdiv double -1.000000e+00, %i.gq        ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.7426
  store double %i.gr, ptr %i.gs, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.7426
  store i32 %i.gb, ptr %i.gt, align 4, !tbaa !29
  %i.gu = fmul double %.0329, %i.gr               ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.7426 ; 2 uses
  store double %i.gu, ptr %i.gv, align 8, !tbaa !18
  %i.gw = tail call double @distance(ptr noundef %3, i32 noundef %1, i32 noundef %i.fw, i32 noundef %i.gb) #16
  %i.gx = load double, ptr %i.gv, align 8, !tbaa !18 ; 2 uses
  %i.gy = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %.0329, i64 1
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.hb, <2 x double> %i.fy)
  %i.hd = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gx, i64 1
  %i.hf = fadd <2 x double> %i.fz, %i.he
  %i.hg = add i64 %.7426, 1
  %.pre530 = load i32, ptr %i.fq, align 4, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %i.hh = phi i32 [ %.pre530, %bb.x ], [ %i.fx, %bb.s ] ; 3 uses
  %.8 = phi i64 [ %i.hg, %bb.x ], [ %.7426, %bb.s ] ; 2 uses
  %i.hi = phi <2 x double> [ %i.hc, %bb.x ], [ %i.fy, %bb.s ] ; 2 uses
  %i.hj = phi <2 x double> [ %i.hf, %bb.x ], [ %i.fz, %bb.s ] ; 2 uses
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.hk = sext i32 %i.hh to i64
  %i.hl = icmp slt i64 %indvars.iv.next514, %i.hk
  br i1 %i.hl, label %bb.s, label %._crit_edge429.loopexit, !llvm.loop !41

._crit_edge429.loopexit:                          ; preds = %bb.y
  %.pre531 = load i32, ptr %i.fo, align 4, !tbaa !29
  br label %._crit_edge429

._crit_edge429:                                   ; preds = %._crit_edge429.loopexit, %.lr.ph471
  %i.hm = phi i32 [ %i.fr, %.lr.ph471 ], [ %i.hh, %._crit_edge429.loopexit ] ; 2 uses
  %i.hn = phi i32 [ %i.fp, %.lr.ph471 ], [ %.pre531, %._crit_edge429.loopexit ] ; 2 uses
  %.7.lcssa = phi i64 [ %.6468, %.lr.ph471 ], [ %.8, %._crit_edge429.loopexit ] ; 2 uses
  %i.ho = phi <2 x double> [ %i.fk, %.lr.ph471 ], [ %i.hi, %._crit_edge429.loopexit ] ; 2 uses
  %i.hp = phi <2 x double> [ zeroinitializer, %.lr.ph471 ], [ %i.hj, %._crit_edge429.loopexit ] ; 2 uses
  %i.hq = icmp slt i32 %i.hn, %i.hm
  br i1 %i.hq, label %.lr.ph459, label %._crit_edge460

.lr.ph459:                                        ; preds = %._crit_edge429
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv522
  %i.hs = sext i32 %i.hn to i64
  %i.ht = trunc nuw nsw i64 %indvars.iv522 to i32
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph459, %._crit_edge446
  %i.hu = phi i32 [ %i.hm, %.lr.ph459 ], [ %i.ka, %._crit_edge446 ]
  %indvars.iv519 = phi i64 [ %i.hs, %.lr.ph459 ], [ %indvars.iv.next520, %._crit_edge446 ] ; 2 uses
  %.9457 = phi i64 [ %.7.lcssa, %.lr.ph459 ], [ %.10.lcssa, %._crit_edge446 ] ; 2 uses
  %i.hv = phi <2 x double> [ %i.ho, %.lr.ph459 ], [ %i.kb, %._crit_edge446 ] ; 2 uses
  %i.hw = phi <2 x double> [ %i.hp, %.lr.ph459 ], [ %i.kc, %._crit_edge446 ] ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv519
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !29 ; 2 uses
  %i.hz = sext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !29 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ia, i64 4      ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !29 ; 2 uses
  %i.ie = icmp slt i32 %i.ib, %i.id
  br i1 %i.ie, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %bb.z
  %i.if = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.hz
  %i.ig = sext i32 %i.ib to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph445, %bb.ag
  %i.ih = phi i32 [ %i.id, %.lr.ph445 ], [ %i.jv, %bb.ag ]
  %indvars.iv516 = phi i64 [ %i.ig, %.lr.ph445 ], [ %indvars.iv.next517, %bb.ag ] ; 2 uses
  %.10443 = phi i64 [ %.9457, %.lr.ph445 ], [ %.11, %bb.ag ] ; 6 uses
  %i.ii = phi <2 x double> [ %i.hv, %.lr.ph445 ], [ %i.jw, %bb.ag ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.hw, %.lr.ph445 ], [ %i.jx, %bb.ag ] ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv516 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !29 ; 4 uses
  %i.im = sext i32 %i.il to i64                   ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !29
  %i.ip = zext i32 %i.io to i64
  %.not = icmp eq i64 %i.fl, %i.ip
  br i1 %.not, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fn, ptr %i.in, align 4, !tbaa !29
  switch i32 %4, label %bb.ae [
    i32 0, label %bb.af
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.iq = load double, ptr %i.hr, align 8, !tbaa !18
  %i.ir = load double, ptr %i.if, align 8, !tbaa !18
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double 2.000000e+00, double %i.iq)
  %i.it = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.im
  %i.iu = load double, ptr %i.it, align 8, !tbaa !18
  %i.iv = fadd double %i.is, %i.iu
  %i.iw = fmul double %i.iv, 5.000000e-01
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.ix = tail call double @distance_cropped(ptr noundef %3, i32 noundef %1, i32 noundef %i.ht, i32 noundef %i.il) #16
  %i.iy = tail call double @pow(double noundef %i.ix, double noundef 4.000000e-01) #16
  %.pre532 = load i32, ptr %i.ik, align 4, !tbaa !29
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ja = tail call i64 @fwrite(ptr nonnull @.str, i64 29, i64 1, ptr %i.iz) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.af:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.jb = phi i32 [ %.pre532, %bb.ad ], [ %i.il, %bb.ac ], [ %i.il, %bb.ab ]
  %.1330 = phi double [ %i.iy, %bb.ad ], [ %i.iw, %bb.ac ], [ 2.000000e+00, %bb.ab ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.10443
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !29
  %i.jd = fmul double %.1330, %.1330
  %i.je = fdiv double -1.000000e+00, %i.jd        ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.10443
  store double %i.je, ptr %i.jf, align 8, !tbaa !18
  %i.jg = load i32, ptr %i.ik, align 4, !tbaa !29 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.10443
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !29
  %i.ji = fmul double %.1330, %i.je               ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.10443 ; 2 uses
  store double %i.ji, ptr %i.jj, align 8, !tbaa !18
  %i.jk = tail call double @distance(ptr noundef %3, i32 noundef %1, i32 noundef %i.jg, i32 noundef %i.hy) #16
  %i.jl = load double, ptr %i.jj, align 8, !tbaa !18 ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.jl, i64 1
  %i.jo = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %.1330, i64 1
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jp, <2 x double> %i.ii)
  %i.jr = insertelement <2 x double> poison, double %i.je, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.jl, i64 1
  %i.jt = fadd <2 x double> %i.ij, %i.js
  %i.ju = add i64 %.10443, 1
  %.pre533 = load i32, ptr %i.ic, align 4, !tbaa !29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %bb.af
  %i.jv = phi i32 [ %.pre533, %bb.af ], [ %i.ih, %bb.aa ] ; 2 uses
  %.11 = phi i64 [ %i.ju, %bb.af ], [ %.10443, %bb.aa ] ; 2 uses
  %i.jw = phi <2 x double> [ %i.jq, %bb.af ], [ %i.ii, %bb.aa ] ; 2 uses
  %i.jx = phi <2 x double> [ %i.jt, %bb.af ], [ %i.ij, %bb.aa ] ; 2 uses
  %indvars.iv.next517 = add nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.jy = sext i32 %i.jv to i64
  %i.jz = icmp slt i64 %indvars.iv.next517, %i.jy
  br i1 %i.jz, label %bb.aa, label %._crit_edge446.loopexit, !llvm.loop !42

._crit_edge446.loopexit:                          ; preds = %bb.ag
  %.pre534 = load i32, ptr %i.fq, align 4, !tbaa !29
  br label %._crit_edge446

._crit_edge446:                                   ; preds = %._crit_edge446.loopexit, %bb.z
  %i.ka = phi i32 [ %i.hu, %bb.z ], [ %.pre534, %._crit_edge446.loopexit ] ; 2 uses
  %.10.lcssa = phi i64 [ %.9457, %bb.z ], [ %.11, %._crit_edge446.loopexit ] ; 2 uses
  %i.kb = phi <2 x double> [ %i.hv, %bb.z ], [ %i.jw, %._crit_edge446.loopexit ] ; 2 uses
  %i.kc = phi <2 x double> [ %i.hw, %bb.z ], [ %i.jx, %._crit_edge446.loopexit ] ; 2 uses
  %indvars.iv.next520 = add nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.kd = sext i32 %i.ka to i64
  %i.ke = icmp slt i64 %indvars.iv.next520, %i.kd
  br i1 %i.ke, label %bb.z, label %._crit_edge460, !llvm.loop !43

._crit_edge460:                                   ; preds = %._crit_edge446, %._crit_edge429
  %.9.lcssa = phi i64 [ %.7.lcssa, %._crit_edge429 ], [ %.10.lcssa, %._crit_edge446 ] ; 6 uses
  %i.kf = phi <2 x double> [ %i.ho, %._crit_edge429 ], [ %i.kb, %._crit_edge446 ] ; 3 uses
  %5 = phi <2 x double> [ %i.hp, %._crit_edge429 ], [ %i.kc, %._crit_edge446 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.9.lcssa
  %i.kh = trunc nuw nsw i64 %indvars.iv522 to i32 ; 2 uses
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !29
  %6 = fneg <2 x double> %5                       ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv522 ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !18
  %7 = extractelement <2 x double> %6, i64 0
  %i.kk = fmul double %i.kj, %7                   ; 2 uses
  store double %i.kk, ptr %i.ki, align 8, !tbaa !18
  %8 = extractelement <2 x double> %5, i64 0
  %i.kl = fsub double %i.kk, %8
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.9.lcssa
  store double %i.kl, ptr %i.km, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.9.lcssa
  store i32 %i.kh, ptr %i.kn, align 4, !tbaa !29
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.9.lcssa
  %10 = extractelement <2 x double> %6, i64 1
  store double %10, ptr %9, align 8, !tbaa !18
  %i.ko = add i64 %.9.lcssa, 1                    ; 8 uses
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next523
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !29
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next523
  store i32 %i.kp, ptr %i.kr, align 4, !tbaa !29
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %i.cm
  br i1 %exitcond526.not, label %._crit_edge472, label %.lr.ph471, !llvm.loop !44

._crit_edge479:                                   ; preds = %.lr.ph478, %middle.block586, %._crit_edge418, %._crit_edge472
  %i.ks = phi double [ +qnan, %._crit_edge418 ], [ %i.fe, %._crit_edge472 ], [ %i.fe, %middle.block586 ], [ %i.fe, %.lr.ph478 ]
  %.6.lcssa568 = phi i64 [ 0, %._crit_edge418 ], [ 0, %._crit_edge472 ], [ %i.ko, %middle.block586 ], [ %i.ko, %.lr.ph478 ] ; 2 uses
  store double %i.ks, ptr %i.k, align 8, !tbaa !45
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.6.lcssa568, ptr %i.kt, align 8, !tbaa !46
  %i.ku = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.6.lcssa568, ptr %i.ku, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.bt) #16
  tail call void @free(ptr noundef %i.bs) #16
  tail call void @SparseMatrix_delete(ptr noundef %i.f) #16
  ret ptr %i.g

.lr.ph478:                                        ; preds = %.lr.ph478.preheader589, %.lr.ph478
  %.0476 = phi i64 [ %i.ky, %.lr.ph478 ], [ %.0476.ph, %.lr.ph478.preheader589 ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.0476 ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !18
  %i.kx = fmul double %i.fe, %i.kw
  store double %i.kx, ptr %i.kv, align 8, !tbaa !18
  %i.ky = add nuw i64 %.0476, 1
  %exitcond527.not = icmp eq i64 %.0476, %.9.lcssa
  br i1 %exitcond527.not, label %._crit_edge479, label %.lr.ph478, !llvm.loop !47
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ideal_distance_matrix(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SparseMatrix_copy(ptr noundef %0) #16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48
  %.not = icmp eq i32 %i.g, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36 ; 2 uses
  br i1 %.not, label %._crit_edge215, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.pre) #16
  store i32 1, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46   ; 5 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.j = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %mul.ov.i = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.1, i64 noundef %i.i, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 8) #13 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.p = shl nuw i64 %i.i, 3
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, i64 noundef %i.p) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.e
  %i.r = phi ptr [ %i.j, %.thread.i ], [ %i.m, %bb.e ] ; 2 uses
  store ptr %i.r, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %bb.a, %gv_calloc.exit
  %i.s = phi ptr [ %i.r, %gv_calloc.exit ], [ %.pre, %bb.a ] ; 5 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %.not.i133 = icmp eq i32 %i.t, 0
  br i1 %.not.i133, label %._crit_edge169.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge215
  %mul.ov.i135 = icmp slt i32 %i.t, 0
  br i1 %mul.ov.i135, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %i.u, i64 noundef 4) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 4) #13 ; 11 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.lr.ph153.preheader

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.aa = shl nuw nsw i64 %i.u, 2
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.2, i64 noundef %i.aa) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

.lr.ph153.preheader:                              ; preds = %bb.i
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 -1, i64 %i.ad, i1 false), !tbaa !29
  %wide.trip.count197 = zext nneg i32 %i.t to i64
  %.pre216 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %.lr.ph153

.loopexit140:                                     ; preds = %bb.p, %.lr.ph153
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.lr.ph168.preheader, label %.lr.ph153, !llvm.loop !49

._crit_edge169.thread:                            ; preds = %._crit_edge215
  %i.ae = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #13
  br label %._crit_edge181

.lr.ph168.preheader:                              ; preds = %.loopexit140
  %.pre217 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %.lr.ph168

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %.loopexit140
  %i.af = phi i32 [ %.pre216, %.lr.ph153.preheader ], [ %i.ah, %.loopexit140 ] ; 4 uses
  %indvars.iv194 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next195, %.loopexit140 ] ; 10 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next195
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29 ; 5 uses
  %i.ai = sub nsw i32 %i.ah, %i.af
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv194
  %i.al = trunc nuw nsw i64 %indvars.iv194 to i32 ; 4 uses
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !29
  %i.am = icmp slt i32 %i.af, %i.ah
  br i1 %i.am, label %.lr.ph146.preheader, label %.loopexit140

.lr.ph146.preheader:                              ; preds = %.lr.ph153
  %i.an = sext i32 %i.af to i64                   ; 5 uses
  %wide.trip.count = sext i32 %i.ah to i64        ; 3 uses
  %i.ao = sub nsw i64 %wide.trip.count, %i.an
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph146.prol.loopexit, label %.lr.ph146.prol

.lr.ph146.prol:                                   ; preds = %.lr.ph146.preheader
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp eq i64 %indvars.iv194, %i.ar
  br i1 %i.as, label %.lr.ph146.prol.loopexit.unr-lcssa, label %bb.k

bb.k:                                             ; preds = %.lr.ph146.prol
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.at
  store i32 %i.al, ptr %i.au, align 4, !tbaa !29
  br label %.lr.ph146.prol.loopexit.unr-lcssa

.lr.ph146.prol.loopexit.unr-lcssa:                ; preds = %bb.k, %.lr.ph146.prol
  %indvars.iv.next.prol = add nsw i64 %i.an, 1
  br label %.lr.ph146.prol.loopexit

.lr.ph146.prol.loopexit:                          ; preds = %.lr.ph146.prol.loopexit.unr-lcssa, %.lr.ph146.preheader
  %indvars.iv.unr = phi i64 [ %i.an, %.lr.ph146.preheader ], [ %indvars.iv.next.prol, %.lr.ph146.prol.loopexit.unr-lcssa ]
  %i.av = add nsw i64 %wide.trip.count, -1
  %i.aw = icmp eq i64 %i.av, %i.an
  br i1 %i.aw, label %.lr.ph151.preheader, label %.lr.ph146

.lr.ph151.preheader:                              ; preds = %bb.n, %.lr.ph146.prol.loopexit
  %i.ax = sext i32 %i.af to i64
  %wide.trip.count192 = sext i32 %i.ah to i64
  br label %.lr.ph151

.lr.ph146:                                        ; preds = %.lr.ph146.prol.loopexit, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.n ], [ %indvars.iv.unr, %.lr.ph146.prol.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp eq i64 %indvars.iv194, %i.ba
  br i1 %i.bb, label %.lr.ph146.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph146
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bc
  store i32 %i.al, ptr %i.bd, align 4, !tbaa !29
  br label %.lr.ph146.1

end_hunk_0
