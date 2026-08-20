inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dh = phi i32 [ %i.dg, %bb.i ], [ %1, %bb.h ] ; 2 uses
  %i.di = icmp slt i32 %i.cm, %i.dh
  br i1 %i.di, label %.lr.ph619.preheader, label %._crit_edge620

.lr.ph619.preheader:                              ; preds = %bb.j
  %wide.trip.count760 = sext i32 %i.dh to i64     ; 3 uses
  %i.dj = sub nsw i64 %wide.trip.count760, %i.cn
  %xtraiter1123 = and i64 %i.dj, 3                ; 2 uses
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %.lr.ph619.prol.loopexit, label %.lr.ph619.prol

.lr.ph619.prol:                                   ; preds = %.lr.ph619.preheader, %.lr.ph619.prol
  %indvars.iv757.prol = phi i64 [ %indvars.iv.next758.prol, %.lr.ph619.prol ], [ %i.cn, %.lr.ph619.preheader ] ; 2 uses
  %prol.iter1125 = phi i64 [ %prol.iter1125.next, %.lr.ph619.prol ], [ 0, %.lr.ph619.preheader ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv757.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !34
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dm ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !28
  %i.dp = fadd double %i.dd, %i.do
  store double %i.dp, ptr %i.dn, align 8, !tbaa !28
  %indvars.iv.next758.prol = add nsw i64 %indvars.iv757.prol, 1 ; 2 uses
  %prol.iter1125.next = add i64 %prol.iter1125, 1 ; 2 uses
  %prol.iter1125.cmp.not = icmp eq i64 %prol.iter1125.next, %xtraiter1123
  br i1 %prol.iter1125.cmp.not, label %.lr.ph619.prol.loopexit, label %.lr.ph619.prol, !llvm.loop !35

.lr.ph619.prol.loopexit:                          ; preds = %.lr.ph619.prol, %.lr.ph619.preheader
  %indvars.iv757.unr = phi i64 [ %i.cn, %.lr.ph619.preheader ], [ %indvars.iv.next758.prol, %.lr.ph619.prol ]
  %i.dq = sub nsw i64 %i.cn, %wide.trip.count760
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge620, label %.lr.ph619

._crit_edge620:                                   ; preds = %.lr.ph619.prol.loopexit, %.lr.ph619, %bb.j
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %.loopexit603, label %bb.h, !llvm.loop !36

.lr.ph619:                                        ; preds = %.lr.ph619.prol.loopexit, %.lr.ph619
  %indvars.iv757 = phi i64 [ %indvars.iv.next758.3, %.lr.ph619 ], [ %indvars.iv757.unr, %.lr.ph619.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv757
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !34
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !28
  %i.dx = fadd double %i.dd, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !28
  %i.dy = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv757
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !34
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !28
  %i.ee = fadd double %i.dd, %i.ed
  store double %i.ee, ptr %i.ec, align 8, !tbaa !28
  %i.ef = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv757
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !34
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !28
  %i.el = fadd double %i.dd, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !28
  %i.em = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv757
  %i.en = getelementptr i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !34
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ep ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !28
  %i.es = fadd double %i.dd, %i.er
  store double %i.es, ptr %i.eq, align 8, !tbaa !28
  %indvars.iv.next758.3 = add nsw i64 %indvars.iv757, 4 ; 2 uses
  %exitcond761.not.3 = icmp eq i64 %indvars.iv.next758.3, %wide.trip.count760
  br i1 %exitcond761.not.3, label %._crit_edge620, label %.lr.ph619, !llvm.loop !37

.loopexit603:                                     ; preds = %._crit_edge620, %bb.g
  %i.et = icmp eq i32 %4, 2
  br i1 %i.et, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit603
  %i.eu = load double, ptr @Epsilon, align 8, !tbaa !28
  %i.ev = call i32 @IMDS_given_dim(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.bz, ptr noundef %i.bx, double noundef %i.eu) #11
  %.not498 = icmp eq i32 %i.ev, 0
  br i1 %.not498, label %bb.m, label %.thread578

bb.l:                                             ; preds = %bb.b
  %i.ew = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3) #11 ; 0 uses
  %i.ex = call i32 @compute_hierarchy(ptr noundef nonnull %0, i32 noundef %1, double noundef 1.000000e-02, double noundef 1.000000e-01, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not495 = icmp eq i32 %i.ex, 0
  br i1 %.not495, label %bb.m, label %.thread578

bb.m:                                             ; preds = %bb.k, %.loopexit603, %bb.l
  %i.ey = icmp eq i32 %1, 1
  br i1 %i.ey, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef %i.ez) #11
  br label %bb.bi

bb.o:                                             ; preds = %bb.m
  %i.fa = icmp eq i32 %7, 0
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef %i.fb) #11
  br label %bb.bi

bb.q:                                             ; preds = %bb.o
  %i.fc = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not499 = icmp eq i8 %i.fc, 0
  br i1 %.not499, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @start_timer() #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  switch i32 %6, label %.thread556 [
    i32 2, label %bb.t
    i32 1, label %bb.w
    i32 3, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.fd = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not502 = icmp eq i8 %i.fd, 0
  br i1 %.not502, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ff = call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %i.fe) #12 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fg = call ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1) #11
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.fh = call ptr @circuitModel(ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %.not501 = icmp eq ptr %i.fh, null
  br i1 %.not501, label %bb.x, label %.thread559

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.1) #11
  %i.fi = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %.thread556

bb.y:                                             ; preds = %bb.s
  %i.fj = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not500 = icmp eq i8 %i.fj, 0
  br i1 %.not500, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.fl = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %i.fk) #12 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fm = call ptr @mdsModel(ptr noundef %0, i32 noundef %1) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.0476 = phi ptr [ %i.fg, %bb.v ], [ %i.fm, %bb.aa ] ; 2 uses
  %.not503 = icmp eq ptr %.0476, null
  br i1 %.not503, label %.thread556, label %.thread559

.thread556:                                       ; preds = %bb.s, %bb.x, %bb.ab
  %i.fn = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not504 = icmp eq i8 %i.fn, 0
  br i1 %.not504, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread556
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.fp = call i64 @fwrite(ptr nonnull @.str.4, i64 26, i64 1, ptr %i.fo) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread556
  %i.fq = call ptr @compute_apsp_packed(ptr noundef %0, i32 noundef %1) #11
  br label %.thread559

.thread559:                                       ; preds = %bb.w, %bb.ad, %bb.ab
  %.1477 = phi ptr [ %.0476, %bb.ab ], [ %i.fq, %bb.ad ], [ %i.fh, %bb.w ] ; 17 uses
  %i.fr = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not505 = icmp eq i8 %i.fr, 0
  br i1 %.not505, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread559
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ft = call double @elapsed_sec() #11
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.5, double noundef %i.ft) #13 ; 0 uses
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.fw = call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr %i.fv) #12 ; 0 uses
  call void @start_timer() #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread559
  %i.fx = add nsw i32 %1, -1                      ; 5 uses
  %i.fy = mul nsw i32 %i.fx, %1
  %9 = lshr i32 %i.fy, 1                          ; 3 uses
  %i.fz = add nuw i32 %9, %1                      ; 8 uses
  %i.ga = icmp sgt i32 %4, 0
  %or.cond1105 = and i1 %.not, %i.ga
  br i1 %or.cond1105, label %.preheader600.us.preheader, label %.loopexit599

.preheader600.us.preheader:                       ; preds = %bb.af
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count775 = zext nneg i32 %4 to i64
  %wide.trip.count770 = zext nneg i32 %smax to i64 ; 5 uses
  %min.iters.check995 = icmp slt i32 %1, 4
  %n.vec997 = and i64 %wide.trip.count770, 2147483644 ; 3 uses
  %cmp.n1006 = icmp ne i64 %n.vec997, %wide.trip.count770
  br label %.preheader600.us

.preheader600.us:                                 ; preds = %.preheader600.us.preheader, %._crit_edge627.us
  %indvars.iv772 = phi i64 [ 0, %.preheader600.us.preheader ], [ %indvars.iv.next773, %._crit_edge627.us ] ; 2 uses
  %.0465629.us = phi double [ 1.000000e+00, %.preheader600.us.preheader ], [ %.lcssa971, %._crit_edge627.us ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv772
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check995, label %scalar.ph994.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %.preheader600.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0465629.us, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1004, %vector.body998 ] ; 3 uses
  %vec.phi1000 = phi <2 x double> [ %broadcast.splat, %vector.ph996 ], [ %i.gh, %vector.body998 ] ; 2 uses
  %vec.phi1001 = phi <2 x double> [ %broadcast.splat, %vector.ph996 ], [ %i.gi, %vector.body998 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index999 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load1002 = load <2 x double>, ptr %i.gd, align 8, !tbaa !28
  %wide.load1003 = load <2 x double>, ptr %i.ge, align 8, !tbaa !28
  %i.gf = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1002) ; 2 uses
  %i.gg = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1003) ; 2 uses
  %i.gh = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1000, <2 x double> %i.gf) ; 2 uses
  %i.gi = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1001, <2 x double> %i.gg) ; 2 uses
  %index.next1004 = add nuw i64 %index999, 4      ; 2 uses
  %i.gj = fcmp uno <2 x double> %i.gf, %i.gg
  %i.gk = freeze <2 x i1> %i.gj
  %i.gl = bitcast <2 x i1> %i.gk to i2
  %i.gm = icmp ne i2 %i.gl, 0                     ; 5 uses
  %i.gn = icmp eq i64 %index.next1004, %n.vec997
  %i.go = or i1 %i.gm, %i.gn
  br i1 %i.go, label %middle.block1005, label %vector.body998, !llvm.loop !40

middle.block1005:                                 ; preds = %vector.body998
  %i.gp = select i1 %i.gm, <2 x double> %vec.phi1000, <2 x double> %i.gh
  %i.gq = select i1 %i.gm, <2 x double> %vec.phi1001, <2 x double> %i.gi
  %i.gr = select i1 %i.gm, i64 %index999, i64 %n.vec997
  %rdx.minmax = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gp, <2 x double> %i.gq)
  %i.gs = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %.not1101 = or i1 %cmp.n1006, %i.gm
  br i1 %.not1101, label %scalar.ph994.preheader, label %._crit_edge627.us

scalar.ph994.preheader:                           ; preds = %.preheader600.us, %middle.block1005
  %indvars.iv767.ph = phi i64 [ 0, %.preheader600.us ], [ %i.gr, %middle.block1005 ]
  %.1466624.us.ph = phi double [ %.0465629.us, %.preheader600.us ], [ %i.gs, %middle.block1005 ]
  br label %scalar.ph994

scalar.ph994:                                     ; preds = %scalar.ph994.preheader, %scalar.ph994
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %scalar.ph994 ], [ %indvars.iv767.ph, %scalar.ph994.preheader ] ; 2 uses
  %.1466624.us = phi double [ %i.gw, %scalar.ph994 ], [ %.1466624.us.ph, %scalar.ph994.preheader ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv767
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !28
  %i.gv = call nsz double @llvm.fabs.f64(double %i.gu)
  %i.gw = call nsz double @llvm.maxnum.f64(double %.1466624.us, double %i.gv) ; 2 uses
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next768, %wide.trip.count770
  br i1 %exitcond771.not, label %._crit_edge627.us, label %scalar.ph994, !llvm.loop !41

._crit_edge627.us:                                ; preds = %scalar.ph994, %middle.block1005
  %.lcssa971 = phi double [ %i.gs, %middle.block1005 ], [ %i.gw, %scalar.ph994 ] ; 2 uses
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1 ; 2 uses
  %exitcond776.not = icmp eq i64 %indvars.iv.next773, %wide.trip.count775
  br i1 %exitcond776.not, label %.preheader597.preheader, label %.preheader600.us, !llvm.loop !42

.preheader597.preheader:                          ; preds = %._crit_edge627.us
  %i.gx = fdiv double 1.000000e+01, %.lcssa971    ; 2 uses
  %smax780 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count786 = zext nneg i32 %4 to i64
  %wide.trip.count781 = zext nneg i32 %smax780 to i64
  %min.iters.check1010 = icmp slt i32 %1, 4
  %n.vec1012 = and i64 %wide.trip.count770, 2147483644 ; 3 uses
  %broadcast.splatinsert1013 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat1014 = shufflevector <2 x double> %broadcast.splatinsert1013, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1021 = icmp eq i64 %n.vec1012, %wide.trip.count770
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.preheader, %._crit_edge634
  %indvars.iv783 = phi i64 [ 0, %.preheader597.preheader ], [ %indvars.iv.next784, %._crit_edge634 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv783
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check1010, label %scalar.ph1009.preheader, label %vector.body1015

vector.body1015:                                  ; preds = %.preheader597, %vector.body1015
  %index1016 = phi i64 [ %index.next1019, %vector.body1015 ], [ 0, %.preheader597 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %index1016 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load1017 = load <2 x double>, ptr %i.ha, align 8, !tbaa !28
  %wide.load1018 = load <2 x double>, ptr %i.hb, align 8, !tbaa !28
  %i.hc = fmul <2 x double> %broadcast.splat1014, %wide.load1017
  %i.hd = fmul <2 x double> %broadcast.splat1014, %wide.load1018
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !28
  store <2 x double> %i.hd, ptr %i.hb, align 8, !tbaa !28
  %index.next1019 = add nuw i64 %index1016, 4     ; 2 uses
  %i.he = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.he, label %middle.block1020, label %vector.body1015, !llvm.loop !43

middle.block1020:                                 ; preds = %vector.body1015
  br i1 %cmp.n1021, label %._crit_edge634, label %scalar.ph1009.preheader

scalar.ph1009.preheader:                          ; preds = %.preheader597, %middle.block1020
  %indvars.iv777.ph = phi i64 [ 0, %.preheader597 ], [ %n.vec1012, %middle.block1020 ]
  br label %scalar.ph1009

._crit_edge634:                                   ; preds = %scalar.ph1009, %middle.block1020
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %exitcond787.not = icmp eq i64 %indvars.iv.next784, %wide.trip.count786
  br i1 %exitcond787.not, label %.loopexit599, label %.preheader597, !llvm.loop !44

scalar.ph1009:                                    ; preds = %scalar.ph1009.preheader, %scalar.ph1009
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %scalar.ph1009 ], [ %indvars.iv777.ph, %scalar.ph1009.preheader ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv777 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !28
  %i.hh = fmul double %i.gx, %i.hg
  store double %i.hh, ptr %i.hf, align 8, !tbaa !28
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1 ; 2 uses
  %exitcond782.not = icmp eq i64 %indvars.iv.next778, %wide.trip.count781
  br i1 %exitcond782.not, label %._crit_edge634, label %scalar.ph1009, !llvm.loop !45

.loopexit599:                                     ; preds = %._crit_edge634, %bb.af
  %i.hi = fcmp ogt double %8, 0.000000e+00
  br i1 %i.hi, label %.lr.ph648.preheader, label %.loopexit595

.lr.ph648.preheader:                              ; preds = %.loopexit599
  %10 = uitofp nneg i32 %9 to double
  %i.hj = add nsw i32 %1, -2
  br label %.lr.ph641.preheader

.loopexit596:                                     ; preds = %.lr.ph641
  %i.hk = add nsw i64 %i.hw, 1
  %i.hl = add nsw i64 %i.hk, %i.hu
  %indvars.iv.next791 = add i32 %indvars.iv790, -1
  %exitcond794.not = icmp eq i32 %i.hv, %i.fx
  br i1 %exitcond794.not, label %._crit_edge649, label %.lr.ph641.preheader, !llvm.loop !46

._crit_edge649:                                   ; preds = %.loopexit596
  %i.hm = fdiv double %i.ic, %10
  %i.hn = fptrunc double %i.hm to float           ; 2 uses
  %i.ho = icmp sgt i32 %i.fz, 0
  br i1 %i.ho, label %.lr.ph653.preheader, label %.loopexit595

.lr.ph653.preheader:                              ; preds = %._crit_edge649
  %wide.trip.count798 = zext nneg i32 %i.fz to i64 ; 3 uses
  %min.iters.check1024 = icmp ult i32 %i.fz, 8
  br i1 %min.iters.check1024, label %.lr.ph653.preheader1113, label %vector.ph1025

vector.ph1025:                                    ; preds = %.lr.ph653.preheader
  %n.vec1026 = and i64 %wide.trip.count798, 2147483640 ; 3 uses
  %broadcast.splatinsert1027 = insertelement <4 x float> poison, float %i.hn, i64 0
  %broadcast.splat1028 = shufflevector <4 x float> %broadcast.splatinsert1027, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1025
  %index1030 = phi i64 [ 0, %vector.ph1025 ], [ %index.next1033, %vector.body1029 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %index1030 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %wide.load1031 = load <4 x float>, ptr %i.hp, align 4, !tbaa !47
  %wide.load1032 = load <4 x float>, ptr %i.hq, align 4, !tbaa !47
  %i.hr = fmul <4 x float> %wide.load1031, %broadcast.splat1028
  %i.hs = fmul <4 x float> %wide.load1032, %broadcast.splat1028
  store <4 x float> %i.hr, ptr %i.hp, align 4, !tbaa !47
  store <4 x float> %i.hs, ptr %i.hq, align 4, !tbaa !47
  %index.next1033 = add nuw i64 %index1030, 8     ; 2 uses
  %i.ht = icmp eq i64 %index.next1033, %n.vec1026
  br i1 %i.ht, label %middle.block1034, label %vector.body1029, !llvm.loop !49

middle.block1034:                                 ; preds = %vector.body1029
  %cmp.n1035 = icmp eq i64 %n.vec1026, %wide.trip.count798
  br i1 %cmp.n1035, label %.loopexit595, label %.lr.ph653.preheader1113

.lr.ph653.preheader1113:                          ; preds = %.lr.ph653.preheader, %middle.block1034
  %indvars.iv795.ph = phi i64 [ 0, %.lr.ph653.preheader ], [ %n.vec1026, %middle.block1034 ]
  br label %.lr.ph653

.lr.ph641.preheader:                              ; preds = %.loopexit596, %.lr.ph648.preheader
  %indvars.iv790 = phi i32 [ %i.hj, %.lr.ph648.preheader ], [ %indvars.iv.next791, %.loopexit596 ] ; 2 uses
  %.0456646 = phi i32 [ 0, %.lr.ph648.preheader ], [ %i.hv, %.loopexit596 ] ; 2 uses
  %.0457645 = phi i64 [ 0, %.lr.ph648.preheader ], [ %i.hl, %.loopexit596 ]
  %.0459644 = phi double [ 0.000000e+00, %.lr.ph648.preheader ], [ %i.ic, %.loopexit596 ]
  %i.hu = zext i32 %indvars.iv790 to i64
  %i.hv = add nuw nsw i32 %.0456646, 1            ; 3 uses
  %.1458636 = shl i64 %.0457645, 32
  %sext = add i64 %.1458636, 4294967296
  %i.hw = ashr exact i64 %sext, 32                ; 2 uses
  br label %.lr.ph641

.lr.ph641:                                        ; preds = %.lr.ph641.preheader, %.lr.ph641
  %indvars.iv788 = phi i64 [ %i.hw, %.lr.ph641.preheader ], [ %indvars.iv.next789, %.lr.ph641 ] ; 2 uses
  %.0455638 = phi i32 [ %i.hv, %.lr.ph641.preheader ], [ %i.id, %.lr.ph641 ] ; 2 uses
  %.1460637 = phi double [ %.0459644, %.lr.ph641.preheader ], [ %i.ic, %.lr.ph641 ]
  %i.hx = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %.0456646, i32 noundef %.0455638) #11
  %i.hy = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv788
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !47
  %i.ia = fpext float %i.hz to double
  %i.ib = fdiv double %i.hx, %i.ia
  %i.ic = fadd double %.1460637, %i.ib            ; 3 uses
  %i.id = add nuw i32 %.0455638, 1                ; 2 uses
  %indvars.iv.next789 = add nsw i64 %indvars.iv788, 1
  %exitcond793.not = icmp eq i32 %i.id, %1
  br i1 %exitcond793.not, label %.loopexit596, label %.lr.ph641, !llvm.loop !50

.lr.ph653:                                        ; preds = %.lr.ph653.preheader1113, %.lr.ph653
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %.lr.ph653 ], [ %indvars.iv795.ph, %.lr.ph653.preheader1113 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %indvars.iv795 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !47
  %i.ig = fmul float %i.if, %i.hn
  store float %i.ig, ptr %i.ie, align 4, !tbaa !47
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %.loopexit595, label %.lr.ph653, !llvm.loop !51

.loopexit595:                                     ; preds = %.lr.ph653, %middle.block1034, %._crit_edge649, %.loopexit599
  %i.ih = icmp sgt i32 %4, 0                      ; 5 uses
  br i1 %i.ih, label %.lr.ph656.preheader, label %.lr.ph660.preheader

.lr.ph656.preheader:                              ; preds = %.loopexit595
  %wide.trip.count803 = zext nneg i32 %4 to i64
  br label %.lr.ph656

.lr.ph660.preheader:                              ; preds = %.lr.ph656, %.loopexit595
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !26 ; 3 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !28 ; 2 uses
  %smax808 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count809 = zext nneg i32 %smax808 to i64 ; 7 uses
  %min.iters.check1038 = icmp slt i32 %1, 4
  br i1 %min.iters.check1038, label %.lr.ph660.preheader1112, label %vector.ph1039

vector.ph1039:                                    ; preds = %.lr.ph660.preheader
  %n.vec1040 = and i64 %wide.trip.count809, 2147483644 ; 3 uses
  %broadcast.splatinsert1041 = insertelement <2 x double> poison, double %i.ik, i64 0
  %broadcast.splat1042 = shufflevector <2 x double> %broadcast.splatinsert1041, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1039
  %index1044 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1047, %vector.body1043 ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index1044 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %wide.load1045 = load <2 x double>, ptr %i.il, align 8, !tbaa !28
  %wide.load1046 = load <2 x double>, ptr %i.im, align 8, !tbaa !28
  %i.in = fsub <2 x double> %wide.load1045, %broadcast.splat1042
  %i.io = fsub <2 x double> %wide.load1046, %broadcast.splat1042
  store <2 x double> %i.in, ptr %i.il, align 8, !tbaa !28
  store <2 x double> %i.io, ptr %i.im, align 8, !tbaa !28
  %index.next1047 = add nuw i64 %index1044, 4     ; 2 uses
  %i.ip = icmp eq i64 %index.next1047, %n.vec1040
  br i1 %i.ip, label %middle.block1048, label %vector.body1043, !llvm.loop !52

middle.block1048:                                 ; preds = %vector.body1043
  %cmp.n1049 = icmp eq i64 %n.vec1040, %wide.trip.count809
  br i1 %cmp.n1049, label %._crit_edge661, label %.lr.ph660.preheader1112

.lr.ph660.preheader1112:                          ; preds = %.lr.ph660.preheader, %middle.block1048
  %indvars.iv805.ph = phi i64 [ 0, %.lr.ph660.preheader ], [ %n.vec1040, %middle.block1048 ]
  br label %.lr.ph660

.lr.ph656:                                        ; preds = %.lr.ph656.preheader, %.lr.ph656
  %indvars.iv800 = phi i64 [ 0, %.lr.ph656.preheader ], [ %indvars.iv.next801, %.lr.ph656 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv800
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !26
  call void @orthog1(i32 noundef %1, ptr noundef %i.ir) #11
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %wide.trip.count803
  br i1 %exitcond804.not, label %.lr.ph660.preheader, label %.lr.ph656, !llvm.loop !53

._crit_edge661:                                   ; preds = %.lr.ph660, %middle.block1048
  %i.is = sext i32 %4 to i64                      ; 6 uses
  %.not.i = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not.i, label %gv_calloc.exit517, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge661
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.iv = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #15 ; 3 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ix = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.iy = shl nuw nsw i64 %i.is, 3
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.9, i64 noundef %i.iy) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ja = mul nuw nsw i32 %4, %1
  %i.jb = zext nneg i32 %i.ja to i64              ; 3 uses
  %i.jc = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jb, i64 noundef 4) #15 ; 3 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.al, label %.lr.ph667

bb.al:                                            ; preds = %bb.ak
  %i.je = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.jf = shl nuw nsw i64 %i.jb, 2
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.je, ptr noundef nonnull @.str.9, i64 noundef %i.jf) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit517:                                ; preds = %._crit_edge661
  %i.jh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15
  %i.ji = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  br label %._crit_edge668

.lr.ph667:                                        ; preds = %bb.ak
  %smax814 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count820 = zext nneg i32 %4 to i64
  %wide.trip.count815 = zext nneg i32 %smax814 to i64
  %min.iters.check1052 = icmp slt i32 %1, 4
  %n.vec1054 = and i64 %wide.trip.count809, 2147483644 ; 3 uses
  %cmp.n1061 = icmp eq i64 %n.vec1054, %wide.trip.count809
  br label %.lr.ph664

.lr.ph660:                                        ; preds = %.lr.ph660.preheader1112, %.lr.ph660
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %.lr.ph660 ], [ %indvars.iv805.ph, %.lr.ph660.preheader1112 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv805 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !28
  %i.jl = fsub double %i.jk, %i.ik
  store double %i.jl, ptr %i.jj, align 8, !tbaa !28
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %exitcond810.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count809
  br i1 %exitcond810.not, label %._crit_edge661, label %.lr.ph660, !llvm.loop !54

._crit_edge668:                                   ; preds = %._crit_edge665, %gv_calloc.exit517
  %i.jm = phi ptr [ %i.ji, %gv_calloc.exit517 ], [ %i.jc, %._crit_edge665 ]
  %i.jn = phi ptr [ %i.jh, %gv_calloc.exit517 ], [ %i.iv, %._crit_edge665 ] ; 9 uses
  %i.jo = phi i64 [ 0, %gv_calloc.exit517 ], [ %i.jb, %._crit_edge665 ] ; 2 uses
  %11 = uitofp nneg i32 %9 to double              ; 2 uses
  %i.jp = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not506 = icmp eq i8 %i.jp, 0
  br i1 %.not506, label %bb.an, label %bb.am

.lr.ph664:                                        ; preds = %._crit_edge665, %.lr.ph667
  %indvars.iv817 = phi i64 [ 0, %.lr.ph667 ], [ %indvars.iv.next818, %._crit_edge665 ] ; 4 uses
  %i.jq = mul nuw nsw i64 %indvars.iv817, %wide.trip.count
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.jq ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv817
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !55
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv817
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check1052, label %scalar.ph1051.preheader, label %vector.body1055

vector.body1055:                                  ; preds = %.lr.ph664, %vector.body1055
  %index1056 = phi i64 [ %index.next1059, %vector.body1055 ], [ 0, %.lr.ph664 ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %index1056 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load1057 = load <2 x double>, ptr %i.jv, align 8, !tbaa !28
  %wide.load1058 = load <2 x double>, ptr %i.jw, align 8, !tbaa !28
  %i.jx = fptrunc <2 x double> %wide.load1057 to <2 x float>
  %i.jy = fptrunc <2 x double> %wide.load1058 to <2 x float>
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index1056 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store <2 x float> %i.jx, ptr %i.jz, align 4, !tbaa !47
  store <2 x float> %i.jy, ptr %i.ka, align 4, !tbaa !47
  %index.next1059 = add nuw i64 %index1056, 4     ; 2 uses
  %i.kb = icmp eq i64 %index.next1059, %n.vec1054
  br i1 %i.kb, label %middle.block1060, label %vector.body1055, !llvm.loop !56

middle.block1060:                                 ; preds = %vector.body1055
  br i1 %cmp.n1061, label %._crit_edge665, label %scalar.ph1051.preheader

scalar.ph1051.preheader:                          ; preds = %.lr.ph664, %middle.block1060
  %indvars.iv811.ph = phi i64 [ 0, %.lr.ph664 ], [ %n.vec1054, %middle.block1060 ]
  br label %scalar.ph1051

._crit_edge665:                                   ; preds = %scalar.ph1051, %middle.block1060
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1 ; 2 uses
  %exitcond821.not = icmp eq i64 %indvars.iv.next818, %wide.trip.count820
  br i1 %exitcond821.not, label %._crit_edge668, label %.lr.ph664, !llvm.loop !57

scalar.ph1051:                                    ; preds = %scalar.ph1051.preheader, %scalar.ph1051
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %scalar.ph1051 ], [ %indvars.iv811.ph, %scalar.ph1051.preheader ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv811
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !28
  %i.ke = fptrunc double %i.kd to float
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv811
  store float %i.ke, ptr %i.kf, align 4, !tbaa !47
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond816.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count815
  br i1 %exitcond816.not, label %._crit_edge665, label %scalar.ph1051, !llvm.loop !58

bb.am:                                            ; preds = %._crit_edge668
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.kh = call double @elapsed_sec() #11
  %i.ki = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.7, double noundef %i.kh) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge668
  call void @square_vec(i32 noundef %i.fz, ptr noundef %.1477) #11
  call void @invert_vec(i32 noundef %i.fz, ptr noundef %.1477) #11
  %i.kj = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 8) #15 ; 14 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.ao, label %.preheader594.preheader

bb.ao:                                            ; preds = %bb.an
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.km = shl nuw nsw i64 %wide.trip.count, 3
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kl, ptr noundef nonnull @.str.9, i64 noundef %i.km) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

.preheader594.preheader:                          ; preds = %bb.an
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.kj) #11
  %i.ko = zext nneg i32 %1 to i64
  %wide.trip.count836 = zext nneg i32 %i.fx to i64
  %invariant.op = add nsw i64 %i.ko, -1
  br label %.preheader594

.preheader594:                                    ; preds = %.preheader594.preheader, %._crit_edge674
  %indvars.iv833 = phi i64 [ 0, %.preheader594.preheader ], [ %indvars.iv.next834, %._crit_edge674 ] ; 4 uses
  %indvars.iv829 = phi i32 [ %1, %.preheader594.preheader ], [ %indvars.iv.next830, %._crit_edge674 ] ; 3 uses
  %.0444678 = phi i32 [ 0, %.preheader594.preheader ], [ %.1445.lcssa, %._crit_edge674 ]
  %i.kp = zext i32 %indvars.iv829 to i64
  %i.kq = add nsw i64 %i.kp, -1                   ; 3 uses
  %.1445669 = add i32 %.0444678, 1                ; 2 uses
  %i.kr = icmp slt i64 %indvars.iv833, %invariant.op
  br i1 %i.kr, label %.lr.ph673.preheader, label %._crit_edge674

.lr.ph673.preheader:                              ; preds = %.preheader594
  %i.ks = sext i32 %.1445669 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv833 ; 3 uses
  %xtraiter1126 = and i64 %i.kq, 1
  %i.kt = icmp eq i32 %indvars.iv829, 2
  br i1 %i.kt, label %.lr.ph673.epil.preheader, label %.lr.ph673.preheader.new

.lr.ph673.preheader.new:                          ; preds = %.lr.ph673.preheader
  %unroll_iter = and i64 %i.kq, -2
  br label %.lr.ph673

.lr.ph682.preheader:                              ; preds = %._crit_edge674
  %smax845 = call i32 @llvm.smax.i32(i32 %1, i32 1) ; 3 uses
  %wide.trip.count846 = zext nneg i32 %smax845 to i64 ; 5 uses
  %i.ku = add nsw i64 %wide.trip.count846, -1     ; 2 uses
  %xtraiter1131 = and i64 %wide.trip.count846, 1
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %.lr.ph682.epil.preheader, label %.lr.ph682.preheader.new

.lr.ph682.preheader.new:                          ; preds = %.lr.ph682.preheader
  %i.kw = zext nneg i32 %1 to i64
  %unroll_iter1134 = and i64 %wide.trip.count846, 2147483646
  br label %.lr.ph682

._crit_edge674.loopexit.unr-lcssa:                ; preds = %.lr.ph673
  %lcmp.mod1127.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1127.not, label %._crit_edge674.loopexit, label %.lr.ph673.epil.preheader

.lr.ph673.epil.preheader:                         ; preds = %._crit_edge674.loopexit.unr-lcssa, %.lr.ph673.preheader
  %indvars.iv824.epil.init = phi i64 [ 1, %.lr.ph673.preheader ], [ %indvars.iv.next825.1, %._crit_edge674.loopexit.unr-lcssa ]
  %indvars.iv822.epil.init = phi i64 [ %i.ks, %.lr.ph673.preheader ], [ %indvars.iv.next823.1, %._crit_edge674.loopexit.unr-lcssa ] ; 2 uses
  %.0443670.epil.init = phi double [ 0.000000e+00, %.lr.ph673.preheader ], [ %i.lr, %._crit_edge674.loopexit.unr-lcssa ]
  %lcmp.mod1130 = trunc i64 %i.kq to i1
  call void @llvm.assume(i1 %lcmp.mod1130)
  %i.kx = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv822.epil.init
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !47
  %i.kz = fpext float %i.ky to double             ; 2 uses
  %i.la = fadd double %.0443670.epil.init, %i.kz
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv824.epil.init ; 2 uses
  %i.lb = load double, ptr %gep.epil, align 8, !tbaa !28
  %i.lc = fsub double %i.lb, %i.kz
  store double %i.lc, ptr %gep.epil, align 8, !tbaa !28
  %indvars.iv.next823.epil = add nsw i64 %indvars.iv822.epil.init, 1
  br label %._crit_edge674.loopexit

._crit_edge674.loopexit:                          ; preds = %._crit_edge674.loopexit.unr-lcssa, %.lr.ph673.epil.preheader
  %.lcssa1111 = phi double [ %i.lr, %._crit_edge674.loopexit.unr-lcssa ], [ %i.la, %.lr.ph673.epil.preheader ]
  %indvars.iv.next823.lcssa = phi i64 [ %indvars.iv.next823.1, %._crit_edge674.loopexit.unr-lcssa ], [ %indvars.iv.next823.epil, %.lr.ph673.epil.preheader ]
  %i.ld = trunc nsw i64 %indvars.iv.next823.lcssa to i32
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %._crit_edge674.loopexit, %.preheader594
  %.0443.lcssa = phi double [ 0.000000e+00, %.preheader594 ], [ %.lcssa1111, %._crit_edge674.loopexit ]
  %.1445.lcssa = phi i32 [ %.1445669, %.preheader594 ], [ %i.ld, %._crit_edge674.loopexit ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv833 ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !28
  %i.lg = fsub double %i.lf, %.0443.lcssa
  store double %i.lg, ptr %i.le, align 8, !tbaa !28
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 1 ; 2 uses
  %indvars.iv.next830 = add i32 %indvars.iv829, -1
  %exitcond837.not = icmp eq i64 %indvars.iv.next834, %wide.trip.count836
  br i1 %exitcond837.not, label %.lr.ph682.preheader, label %.preheader594, !llvm.loop !59

.lr.ph673:                                        ; preds = %.lr.ph673, %.lr.ph673.preheader.new
  %indvars.iv824 = phi i64 [ 1, %.lr.ph673.preheader.new ], [ %indvars.iv.next825.1, %.lr.ph673 ] ; 3 uses
  %indvars.iv822 = phi i64 [ %i.ks, %.lr.ph673.preheader.new ], [ %indvars.iv.next823.1, %.lr.ph673 ] ; 3 uses
  %.0443670 = phi double [ 0.000000e+00, %.lr.ph673.preheader.new ], [ %i.lr, %.lr.ph673 ]
  %niter = phi i64 [ 0, %.lr.ph673.preheader.new ], [ %niter.next.1, %.lr.ph673 ]
  %i.lh = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv822
  %i.li = load float, ptr %i.lh, align 4, !tbaa !47
  %i.lj = fpext float %i.li to double             ; 2 uses
  %i.lk = fadd double %.0443670, %i.lj
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv824 ; 2 uses
  %i.ll = load double, ptr %gep, align 8, !tbaa !28
  %i.lm = fsub double %i.ll, %i.lj
  store double %i.lm, ptr %gep, align 8, !tbaa !28
  %i.ln = getelementptr [4 x i8], ptr %.1477, i64 %indvars.iv822
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !47
  %i.lq = fpext float %i.lp to double             ; 2 uses
  %i.lr = fadd double %i.lk, %i.lq                ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv824
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  %i.lt = load double, ptr %gep.1, align 8, !tbaa !28
  %i.lu = fsub double %i.lt, %i.lq
  store double %i.lu, ptr %gep.1, align 8, !tbaa !28
  %indvars.iv.next825.1 = add nuw nsw i64 %indvars.iv824, 2 ; 2 uses
  %indvars.iv.next823.1 = add nsw i64 %indvars.iv822, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge674.loopexit.unr-lcssa, label %.lr.ph673, !llvm.loop !60

._crit_edge683.unr-lcssa:                         ; preds = %.lr.ph682
  %lcmp.mod1132.not = icmp eq i64 %xtraiter1131, 0
  br i1 %lcmp.mod1132.not, label %._crit_edge683, label %.lr.ph682.epil.preheader

.lr.ph682.epil.preheader:                         ; preds = %._crit_edge683.unr-lcssa, %.lr.ph682.preheader
  %indvars.iv838.epil.init = phi i64 [ 0, %.lr.ph682.preheader ], [ %indvars.iv.next839.1, %._crit_edge683.unr-lcssa ]
  %.0437680.epil.init = phi i32 [ 0, %.lr.ph682.preheader ], [ %i.ng, %._crit_edge683.unr-lcssa ]
  %lcmp.mod1133 = trunc i32 %smax845 to i1
  call void @llvm.assume(i1 %lcmp.mod1133)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv838.epil.init
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !28
  %i.lx = fptrunc double %i.lw to float
  %i.ly = sext i32 %.0437680.epil.init to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.ly
  store float %i.lx, ptr %i.lz, align 4, !tbaa !47
  br label %._crit_edge683

._crit_edge683:                                   ; preds = %._crit_edge683.unr-lcssa, %.lr.ph682.epil.preheader
  br i1 %.not.i, label %gv_calloc.exit532.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge683
  %mul.ov.i525 = icmp slt i32 %4, 0
  br i1 %mul.ov.i525, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.mb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ma, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.mc = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #15 ; 10 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.as, label %gv_calloc.exit527

bb.as:                                            ; preds = %bb.ar
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.mf = shl nuw nsw i64 %i.is, 3
  %i.mg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.me, ptr noundef nonnull @.str.9, i64 noundef %i.mf) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit532.thread:                         ; preds = %._crit_edge683
  %i.mh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15 ; 2 uses
  %i.mi = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  store ptr %i.mi, ptr %i.mh, align 8, !tbaa !55
  br label %._crit_edge686

gv_calloc.exit527:                                ; preds = %bb.ar
  %i.mj = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jo, i64 noundef 4) #15 ; 7 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.at, label %gv_calloc.exit532

bb.at:                                            ; preds = %gv_calloc.exit527
  %i.ml = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.mm = shl nuw nsw i64 %i.jo, 2
  %i.mn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.9, i64 noundef %i.mm) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit532:                                ; preds = %gv_calloc.exit527
  store ptr %i.mj, ptr %i.mc, align 8, !tbaa !55
  %.not964 = icmp eq i32 %4, 1
  br i1 %.not964, label %._crit_edge686, label %.lr.ph685.preheader

.lr.ph685.preheader:                              ; preds = %gv_calloc.exit532
  %wide.trip.count851 = zext nneg i32 %4 to i64
  %i.mo = add nsw i64 %wide.trip.count851, -1     ; 2 uses
  %xtraiter1136 = and i64 %i.mo, 3                ; 3 uses
  %i.mp = add nsw i32 %4, -2
  %i.mq = icmp ult i32 %i.mp, 3
  br i1 %i.mq, label %.lr.ph685.epil.preheader, label %.lr.ph685.preheader.new

.lr.ph685.preheader.new:                          ; preds = %.lr.ph685.preheader
  %unroll_iter1139 = and i64 %i.mo, -4
  br label %.lr.ph685

.lr.ph682:                                        ; preds = %.lr.ph682, %.lr.ph682.preheader.new
  %indvars.iv840 = phi i64 [ %i.kw, %.lr.ph682.preheader.new ], [ %indvars.iv.next841.1, %.lr.ph682 ] ; 3 uses
  %indvars.iv838 = phi i64 [ 0, %.lr.ph682.preheader.new ], [ %indvars.iv.next839.1, %.lr.ph682 ] ; 3 uses
  %.0437680 = phi i32 [ 0, %.lr.ph682.preheader.new ], [ %i.ng, %.lr.ph682 ] ; 2 uses
  %niter1135 = phi i64 [ 0, %.lr.ph682.preheader.new ], [ %niter1135.next.1, %.lr.ph682 ]
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv838
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !28
  %i.mt = fptrunc double %i.ms to float
  %i.mu = sext i32 %.0437680 to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mu
  store float %i.mt, ptr %i.mv, align 4, !tbaa !47
  %i.mw = trunc nsw i64 %indvars.iv840 to i32
  %i.mx = add nsw i32 %.0437680, %i.mw            ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv838
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !28
  %i.nb = fptrunc double %i.na to float
  %i.nc = sext i32 %i.mx to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.nc
  store float %i.nb, ptr %i.nd, align 4, !tbaa !47
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv838, 2 ; 2 uses
  %i.ne = trunc i64 %indvars.iv840 to i32
  %i.nf = add i32 %i.ne, -1
  %i.ng = add nsw i32 %i.mx, %i.nf                ; 2 uses
  %indvars.iv.next841.1 = add nsw i64 %indvars.iv840, -2
  %niter1135.next.1 = add i64 %niter1135, 2       ; 2 uses
  %niter1135.ncmp.1 = icmp eq i64 %niter1135.next.1, %unroll_iter1134
  br i1 %niter1135.ncmp.1, label %._crit_edge683.unr-lcssa, label %.lr.ph682, !llvm.loop !61

._crit_edge686.loopexit.unr-lcssa:                ; preds = %.lr.ph685
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1136, 0
  br i1 %lcmp.mod1137.not, label %._crit_edge686, label %.lr.ph685.epil.preheader

.lr.ph685.epil.preheader:                         ; preds = %._crit_edge686.loopexit.unr-lcssa, %.lr.ph685.preheader
  %indvars.iv848.epil.init = phi i64 [ 1, %.lr.ph685.preheader ], [ %indvars.iv.next849.3, %._crit_edge686.loopexit.unr-lcssa ]
  %lcmp.mod1138 = icmp ne i64 %xtraiter1136, 0
  call void @llvm.assume(i1 %lcmp.mod1138)
  br label %.lr.ph685.epil

.lr.ph685.epil:                                   ; preds = %.lr.ph685.epil, %.lr.ph685.epil.preheader
  %indvars.iv848.epil = phi i64 [ %indvars.iv848.epil.init, %.lr.ph685.epil.preheader ], [ %indvars.iv.next849.epil, %.lr.ph685.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph685.epil.preheader ], [ %epil.iter.next, %.lr.ph685.epil ]
  %i.nh = mul nuw nsw i64 %indvars.iv848.epil, %wide.trip.count
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv848.epil
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !55
  %indvars.iv.next849.epil = add nuw nsw i64 %indvars.iv848.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1136
  br i1 %epil.iter.cmp.not, label %._crit_edge686, label %.lr.ph685.epil, !llvm.loop !62

._crit_edge686:                                   ; preds = %._crit_edge686.loopexit.unr-lcssa, %.lr.ph685.epil, %gv_calloc.exit532.thread, %gv_calloc.exit532
  %i.nk = phi ptr [ %i.mh, %gv_calloc.exit532.thread ], [ %i.mc, %gv_calloc.exit532 ], [ %i.mc, %.lr.ph685.epil ], [ %i.mc, %._crit_edge686.loopexit.unr-lcssa ] ; 7 uses
  %i.nl = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 8 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.au, label %gv_calloc.exit537

bb.au:                                            ; preds = %._crit_edge686
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.no = shl nuw nsw i64 %wide.trip.count, 2
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nn, ptr noundef nonnull @.str.9, i64 noundef %i.no) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit537:                                ; preds = %._crit_edge686
  %i.nq = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 18 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %gv_calloc.exit537
  %i.ns = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.nt = shl nuw nsw i64 %wide.trip.count, 2
  %i.nu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ns, ptr noundef nonnull @.str.9, i64 noundef %i.nt) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.aw:                                            ; preds = %gv_calloc.exit537
  %i.nv = sext i32 %i.fz to i64                   ; 3 uses
  %mul.ov.i545 = icmp slt i32 %i.fz, 0
  br i1 %mul.ov.i545, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.nw = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.nx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nw, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.nv, i64 noundef 4) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ny = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.nv, i64 noundef 4) #15 ; 10 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.az, label %gv_calloc.exit547

bb.az:                                            ; preds = %bb.ay
  %i.oa = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ob = shl nuw nsw i64 %i.nv, 2
  %i.oc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oa, ptr noundef nonnull @.str.9, i64 noundef %i.ob) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit547:                                ; preds = %bb.ay
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.oe = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.of = load i32, ptr %i.c, align 4, !tbaa !34
  %i.og = call ptr @initConstrainedMajorization(ptr noundef nonnull %.1477, i32 noundef %1, ptr noundef %i.od, ptr noundef %i.oe, i32 noundef %i.of) #11 ; 3 uses
  %i.oh = icmp slt i32 %7, 1
  br i1 %i.oh, label %.preheader588, label %.lr.ph730

.lr.ph730:                                        ; preds = %gv_calloc.exit547
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.oj = fptrunc double %8 to float
  %i.ok = zext nneg i32 %1 to i64
  %wide.trip.count877 = zext nneg i32 %i.fx to i64
  %wide.trip.count856 = zext nneg i32 %4 to i64
  %wide.trip.count892 = zext nneg i32 %4 to i64
  %wide.trip.count897 = zext nneg i32 %4 to i64
  %wide.trip.count902 = zext nneg i32 %4 to i64
  %wide.trip.count907 = zext nneg i32 %4 to i64
  %exitcond908.peel.not = icmp eq i32 %4, 1
  %exitcond908.peel913.not = icmp eq i32 %4, 2
  %xtraiter1149 = and i64 %wide.trip.count846, 1
  %i.ol = icmp eq i64 %i.ku, 0
  %unroll_iter1153 = and i64 %wide.trip.count846, 2147483646
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  %lcmp.mod1152 = trunc i32 %smax845 to i1
  br label %.lr.ph705.preheader

.lr.ph685:                                        ; preds = %.lr.ph685, %.lr.ph685.preheader.new
  %indvars.iv848 = phi i64 [ 1, %.lr.ph685.preheader.new ], [ %indvars.iv.next849.3, %.lr.ph685 ] ; 6 uses
  %niter1140 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %niter1140.next.3, %.lr.ph685 ]
  %i.om = mul nuw nsw i64 %indvars.iv848, %wide.trip.count
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.om
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv848
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !55
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %i.op = mul nuw nsw i64 %indvars.iv.next849, %wide.trip.count
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.op
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next849
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !55
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2 ; 2 uses
  %i.os = mul nuw nsw i64 %indvars.iv.next849.1, %wide.trip.count
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.os
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next849.1
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !55
  %indvars.iv.next849.2 = add nuw nsw i64 %indvars.iv848, 3 ; 2 uses
  %i.ov = mul nuw nsw i64 %indvars.iv.next849.2, %wide.trip.count
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ov
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next849.2
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !55
  %indvars.iv.next849.3 = add nuw nsw i64 %indvars.iv848, 4 ; 2 uses
  %niter1140.next.3 = add nuw i64 %niter1140, 4   ; 2 uses
  %niter1140.ncmp.3 = icmp eq i64 %niter1140.next.3, %unroll_iter1139
  br i1 %niter1140.ncmp.3, label %._crit_edge686.loopexit.unr-lcssa, label %.lr.ph685, !llvm.loop !63

.preheader588:                                    ; preds = %._crit_edge727, %gv_calloc.exit547
  %.2441.lcssa = phi i32 [ 0, %gv_calloc.exit547 ], [ %i.uj, %._crit_edge727 ]
  br i1 %i.ih, label %.preheader.preheader, label %._crit_edge736.split

.preheader.preheader:                             ; preds = %.preheader588
  %smax919 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count925 = zext nneg i32 %4 to i64
  %wide.trip.count920 = zext nneg i32 %smax919 to i64
  %min.iters.check1090 = icmp slt i32 %1, 4
  %n.vec1092 = and i64 %wide.trip.count809, 2147483644 ; 3 uses
  %cmp.n1099 = icmp eq i64 %n.vec1092, %wide.trip.count809
  br label %.preheader

.lr.ph705.preheader:                              ; preds = %._crit_edge727, %.lr.ph730
  %.0434729 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph730 ], [ %.1.lcssa, %._crit_edge727 ] ; 3 uses
  %.2441728 = phi i32 [ 0, %.lr.ph730 ], [ %i.uj, %._crit_edge727 ] ; 2 uses
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.kj) #11
  call void @sqrt_vecf(i32 noundef %i.fz, ptr noundef nonnull %.1477, ptr noundef nonnull %i.ny) #11
  br label %.lr.ph705

.lr.ph705:                                        ; preds = %.lr.ph705.preheader, %._crit_edge699
  %indvars.iv874 = phi i64 [ 0, %.lr.ph705.preheader ], [ %indvars.iv.next875, %._crit_edge699 ] ; 6 uses
  %indvars.iv861 = phi i32 [ %i.fx, %.lr.ph705.preheader ], [ %indvars.iv.next862, %._crit_edge699 ] ; 6 uses
  %.0432702 = phi i32 [ 0, %.lr.ph705.preheader ], [ %.1433.lcssa, %._crit_edge699 ] ; 2 uses
  %i.oy = zext i32 %indvars.iv861 to i64          ; 2 uses
  %i.oz = trunc nuw nsw i64 %indvars.iv874 to i32
  %i.pa = xor i32 %i.oz, -1
  %i.pb = add nsw i32 %1, %i.pa                   ; 6 uses
  call void @set_vector_valf(i32 noundef %1, float noundef 0.000000e+00, ptr noundef nonnull %i.nq) #11
  br i1 %i.ih, label %.lr.ph689, label %._crit_edge690

._crit_edge690:                                   ; preds = %.lr.ph689, %.lr.ph705
  call void @invert_sqrt_vec(i32 noundef %i.pb, ptr noundef nonnull %i.nq) #11
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph693.preheader, label %.preheader589.thread

.preheader589.thread:                             ; preds = %._crit_edge690
  %.1433694951 = add i32 %.0432702, 1
  br label %._crit_edge699

.lr.ph693.preheader:                              ; preds = %._crit_edge690
  %wide.trip.count863 = zext i32 %indvars.iv861 to i64 ; 3 uses
  %min.iters.check1064 = icmp ult i32 %indvars.iv861, 8
  br i1 %min.iters.check1064, label %.lr.ph693.preheader1106, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph693.preheader
  %n.vec1066 = and i64 %wide.trip.count863, 4294967288 ; 3 uses
  br label %vector.body1067

vector.body1067:                                  ; preds = %pred.store.continue1084, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1085, %pred.store.continue1084 ] ; 9 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %wide.load1069 = load <4 x float>, ptr %i.pd, align 4, !tbaa !47 ; 2 uses
  %wide.load1070 = load <4 x float>, ptr %i.pe, align 4, !tbaa !47 ; 2 uses
  %i.pf = fcmp oge <4 x float> %wide.load1069, splat (float f0x7F7FFFFF)
  %i.pg = fcmp oge <4 x float> %wide.load1070, splat (float f0x7F7FFFFF)
  %i.ph = fcmp olt <4 x float> %wide.load1069, zeroinitializer
  %i.pi = fcmp olt <4 x float> %wide.load1070, zeroinitializer
  %i.pj = or <4 x i1> %i.pf, %i.ph                ; 4 uses
  %i.pk = or <4 x i1> %i.pg, %i.pi                ; 4 uses
  %i.pl = extractelement <4 x i1> %i.pj, i64 0
  br i1 %i.pl, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1067
  store float 0.000000e+00, ptr %i.pd, align 4, !tbaa !47
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1067
  %i.pm = extractelement <4 x i1> %i.pj, i64 1
  br i1 %i.pm, label %pred.store.if1071, label %pred.store.continue1072

pred.store.if1071:                                ; preds = %pred.store.continue
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store float 0.000000e+00, ptr %i.po, align 4, !tbaa !47
  br label %pred.store.continue1072

pred.store.continue1072:                          ; preds = %pred.store.if1071, %pred.store.continue
  %i.pp = extractelement <4 x i1> %i.pj, i64 2
  br i1 %i.pp, label %pred.store.if1073, label %pred.store.continue1074

pred.store.if1073:                                ; preds = %pred.store.continue1072
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store float 0.000000e+00, ptr %i.pr, align 4, !tbaa !47
  br label %pred.store.continue1074

pred.store.continue1074:                          ; preds = %pred.store.if1073, %pred.store.continue1072
  %i.ps = extractelement <4 x i1> %i.pj, i64 3
  br i1 %i.ps, label %pred.store.if1075, label %pred.store.continue1076

pred.store.if1075:                                ; preds = %pred.store.continue1074
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store float 0.000000e+00, ptr %i.pu, align 4, !tbaa !47
  br label %pred.store.continue1076

pred.store.continue1076:                          ; preds = %pred.store.if1075, %pred.store.continue1074
  %i.pv = extractelement <4 x i1> %i.pk, i64 0
  br i1 %i.pv, label %pred.store.if1077, label %pred.store.continue1078

pred.store.if1077:                                ; preds = %pred.store.continue1076
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store float 0.000000e+00, ptr %i.px, align 4, !tbaa !47
  br label %pred.store.continue1078

pred.store.continue1078:                          ; preds = %pred.store.if1077, %pred.store.continue1076
  %i.py = extractelement <4 x i1> %i.pk, i64 1
  br i1 %i.py, label %pred.store.if1079, label %pred.store.continue1080

pred.store.if1079:                                ; preds = %pred.store.continue1078
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 20
  store float 0.000000e+00, ptr %i.qa, align 4, !tbaa !47
  br label %pred.store.continue1080

pred.store.continue1080:                          ; preds = %pred.store.if1079, %pred.store.continue1078
  %i.qb = extractelement <4 x i1> %i.pk, i64 2
  br i1 %i.qb, label %pred.store.if1081, label %pred.store.continue1082

pred.store.if1081:                                ; preds = %pred.store.continue1080
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store float 0.000000e+00, ptr %i.qd, align 4, !tbaa !47
  br label %pred.store.continue1082

pred.store.continue1082:                          ; preds = %pred.store.if1081, %pred.store.continue1080
  %i.qe = extractelement <4 x i1> %i.pk, i64 3
  br i1 %i.qe, label %pred.store.if1083, label %pred.store.continue1084

pred.store.if1083:                                ; preds = %pred.store.continue1082
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index1068
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store float 0.000000e+00, ptr %i.qg, align 4, !tbaa !47
  br label %pred.store.continue1084

pred.store.continue1084:                          ; preds = %pred.store.if1083, %pred.store.continue1082
  %index.next1085 = add nuw i64 %index1068, 8     ; 2 uses
  %i.qh = icmp eq i64 %index.next1085, %n.vec1066
  br i1 %i.qh, label %middle.block1086, label %vector.body1067, !llvm.loop !64

middle.block1086:                                 ; preds = %pred.store.continue1084
  %cmp.n1087 = icmp eq i64 %n.vec1066, %wide.trip.count863
  br i1 %cmp.n1087, label %.lr.ph698.preheader, label %.lr.ph693.preheader1106

.lr.ph693.preheader1106:                          ; preds = %.lr.ph693.preheader, %middle.block1086
  %indvars.iv858.ph = phi i64 [ 0, %.lr.ph693.preheader ], [ %n.vec1066, %middle.block1086 ]
  br label %.lr.ph693

.lr.ph689:                                        ; preds = %.lr.ph705, %.lr.ph689
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %.lr.ph689 ], [ 0, %.lr.ph705 ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv853 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !55
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv874
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !47
  call void @set_vector_valf(i32 noundef %i.pb, float noundef %i.ql, ptr noundef nonnull %i.nl) #11
  %i.qm = load ptr, ptr %i.qi, align 8, !tbaa !55
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv874
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  call void @vectors_mult_additionf(i32 noundef %i.pb, ptr noundef nonnull %i.nl, float noundef -1.000000e+00, ptr noundef nonnull %i.qo) #11
  call void @square_vec(i32 noundef %i.pb, ptr noundef nonnull %i.nl) #11
  call void @vectors_additionf(i32 noundef %i.pb, ptr noundef nonnull %i.nl, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nq) #11
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %exitcond857.not = icmp eq i64 %indvars.iv.next854, %wide.trip.count856
  br i1 %exitcond857.not, label %._crit_edge690, label %.lr.ph689, !llvm.loop !65

.lr.ph698.preheader:                              ; preds = %bb.bb, %middle.block1086
  %.1433694 = add i32 %.0432702, 1
  %i.qp = sext i32 %.1433694 to i64               ; 2 uses
  %invariant.gep962 = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv874 ; 3 uses
  %xtraiter1141 = and i64 %i.oy, 1
  %i.qq = icmp eq i32 %indvars.iv861, 1
  br i1 %i.qq, label %.lr.ph698.epil.preheader, label %.lr.ph698.preheader.new

.lr.ph698.preheader.new:                          ; preds = %.lr.ph698.preheader
  %unroll_iter1147 = and i64 %i.oy, 4294967294
  br label %.lr.ph698

.lr.ph693:                                        ; preds = %.lr.ph693.preheader1106, %bb.bb
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %bb.bb ], [ %indvars.iv858.ph, %.lr.ph693.preheader1106 ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv858 ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !47 ; 2 uses
  %i.qt = fcmp oge float %i.qs, f0x7F7FFFFF
  %i.qu = fcmp olt float %i.qs, 0.000000e+00
  %or.cond = or i1 %i.qt, %i.qu
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph693
  store float 0.000000e+00, ptr %i.qr, align 4, !tbaa !47
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph693, %bb.ba
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1 ; 2 uses
  %exitcond864.not = icmp eq i64 %indvars.iv.next859, %wide.trip.count863
  br i1 %exitcond864.not, label %.lr.ph698.preheader, label %.lr.ph693, !llvm.loop !66

._crit_edge699.loopexit.unr-lcssa:                ; preds = %.lr.ph698
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1141, 0
  br i1 %lcmp.mod1143.not, label %._crit_edge699.loopexit, label %.lr.ph698.epil.preheader

.lr.ph698.epil.preheader:                         ; preds = %._crit_edge699.loopexit.unr-lcssa, %.lr.ph698.preheader
  %indvars.iv867.epil.init = phi i64 [ 0, %.lr.ph698.preheader ], [ %indvars.iv.next868.1, %._crit_edge699.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv865.epil.init = phi i64 [ %i.qp, %.lr.ph698.preheader ], [ %indvars.iv.next866.1, %._crit_edge699.loopexit.unr-lcssa ] ; 2 uses
  %.0428695.epil.init = phi double [ 0.000000e+00, %.lr.ph698.preheader ], [ %i.sa, %._crit_edge699.loopexit.unr-lcssa ]
  %lcmp.mod1146 = trunc i32 %indvars.iv861 to i1
  call void @llvm.assume(i1 %lcmp.mod1146)
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv867.epil.init
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !47
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %indvars.iv865.epil.init ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !47
  %i.qz = fmul float %i.qw, %i.qy                 ; 2 uses
  store float %i.qz, ptr %i.qx, align 4, !tbaa !47
  %i.ra = fpext float %i.qz to double             ; 2 uses
  %i.rb = fadd double %.0428695.epil.init, %i.ra
  %gep963.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep962, i64 %indvars.iv867.epil.init
  %i.rc = getelementptr inbounds nuw i8, ptr %gep963.epil, i64 8 ; 2 uses
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !28
  %i.re = fsub double %i.rd, %i.ra
  store double %i.re, ptr %i.rc, align 8, !tbaa !28
  %indvars.iv.next866.epil = add nsw i64 %indvars.iv865.epil.init, 1
  br label %._crit_edge699.loopexit

._crit_edge699.loopexit:                          ; preds = %._crit_edge699.loopexit.unr-lcssa, %.lr.ph698.epil.preheader
  %.lcssa = phi double [ %i.sa, %._crit_edge699.loopexit.unr-lcssa ], [ %i.rb, %.lr.ph698.epil.preheader ]
  %indvars.iv.next866.lcssa = phi i64 [ %indvars.iv.next866.1, %._crit_edge699.loopexit.unr-lcssa ], [ %indvars.iv.next866.epil, %.lr.ph698.epil.preheader ]
  %i.rf = trunc nsw i64 %indvars.iv.next866.lcssa to i32
  br label %._crit_edge699

._crit_edge699:                                   ; preds = %.preheader589.thread, %._crit_edge699.loopexit
  %.0428.lcssa = phi double [ 0.000000e+00, %.preheader589.thread ], [ %.lcssa, %._crit_edge699.loopexit ]
  %.1433.lcssa = phi i32 [ %.1433694951, %.preheader589.thread ], [ %i.rf, %._crit_edge699.loopexit ]
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv874 ; 2 uses
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !28
  %i.ri = fsub double %i.rh, %.0428.lcssa
  store double %i.ri, ptr %i.rg, align 8, !tbaa !28
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1 ; 2 uses
  %indvars.iv.next862 = add i32 %indvars.iv861, -1
  %exitcond878.not = icmp eq i64 %indvars.iv.next875, %wide.trip.count877
  br i1 %exitcond878.not, label %.lr.ph709.preheader, label %.lr.ph705, !llvm.loop !67

.lr.ph709.preheader:                              ; preds = %._crit_edge699
  br i1 %i.ol, label %.lr.ph709.epil.preheader, label %.lr.ph709

.lr.ph698:                                        ; preds = %.lr.ph698, %.lr.ph698.preheader.new
  %indvars.iv867 = phi i64 [ 0, %.lr.ph698.preheader.new ], [ %indvars.iv.next868.1, %.lr.ph698 ] ; 4 uses
  %indvars.iv865 = phi i64 [ %i.qp, %.lr.ph698.preheader.new ], [ %indvars.iv.next866.1, %.lr.ph698 ] ; 3 uses
  %.0428695 = phi double [ 0.000000e+00, %.lr.ph698.preheader.new ], [ %i.sa, %.lr.ph698 ]
  %niter1148 = phi i64 [ 0, %.lr.ph698.preheader.new ], [ %niter1148.next.1, %.lr.ph698 ]
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv867
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !47
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %indvars.iv865 ; 2 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !47
  %i.rn = fmul float %i.rk, %i.rm                 ; 2 uses
  store float %i.rn, ptr %i.rl, align 4, !tbaa !47
  %i.ro = fpext float %i.rn to double             ; 2 uses
  %i.rp = fadd double %.0428695, %i.ro
  %gep963 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep962, i64 %indvars.iv867
  %i.rq = getelementptr inbounds nuw i8, ptr %gep963, i64 8 ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !28
  %i.rs = fsub double %i.rr, %i.ro
  store double %i.rs, ptr %i.rq, align 8, !tbaa !28
  %indvars.iv.next868 = or disjoint i64 %indvars.iv867, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next868
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !47
  %i.rv = getelementptr [4 x i8], ptr %i.ny, i64 %indvars.iv865
  %i.rw = getelementptr i8, ptr %i.rv, i64 4      ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !47
  %i.ry = fmul float %i.ru, %i.rx                 ; 2 uses
  store float %i.ry, ptr %i.rw, align 4, !tbaa !47
  %i.rz = fpext float %i.ry to double             ; 2 uses
  %i.sa = fadd double %i.rp, %i.rz                ; 3 uses
  %gep963.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep962, i64 %indvars.iv.next868
  %i.sb = getelementptr inbounds nuw i8, ptr %gep963.1, i64 8 ; 2 uses
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !28
  %i.sd = fsub double %i.sc, %i.rz
  store double %i.sd, ptr %i.sb, align 8, !tbaa !28
  %indvars.iv.next868.1 = add nuw nsw i64 %indvars.iv867, 2 ; 2 uses
  %indvars.iv.next866.1 = add nsw i64 %indvars.iv865, 2 ; 3 uses
  %niter1148.next.1 = add i64 %niter1148, 2       ; 2 uses
  %niter1148.ncmp.1 = icmp eq i64 %niter1148.next.1, %unroll_iter1147
  br i1 %niter1148.ncmp.1, label %._crit_edge699.loopexit.unr-lcssa, label %.lr.ph698, !llvm.loop !68

.preheader591.unr-lcssa:                          ; preds = %.lr.ph709
  br i1 %lcmp.mod1151.not, label %.preheader591, label %.lr.ph709.epil.preheader

.lr.ph709.epil.preheader:                         ; preds = %.preheader591.unr-lcssa, %.lr.ph709.preheader
  %indvars.iv879.epil.init = phi i64 [ 0, %.lr.ph709.preheader ], [ %indvars.iv.next880.1, %.preheader591.unr-lcssa ]
  %.0423707.epil.init = phi i32 [ 0, %.lr.ph709.preheader ], [ %i.sy, %.preheader591.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1152)
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv879.epil.init
  %i.sf = load double, ptr %i.se, align 8, !tbaa !28
  %i.sg = fptrunc double %i.sf to float
  %i.sh = sext i32 %.0423707.epil.init to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.sh
  store float %i.sg, ptr %i.si, align 4, !tbaa !47
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.unr-lcssa, %.lr.ph709.epil.preheader
  br i1 %i.ih, label %.lr.ph711, label %._crit_edge721

.lr.ph709:                                        ; preds = %.lr.ph709.preheader, %.lr.ph709
  %indvars.iv881 = phi i64 [ %indvars.iv.next882.1, %.lr.ph709 ], [ %i.ok, %.lr.ph709.preheader ] ; 3 uses
  %indvars.iv879 = phi i64 [ %indvars.iv.next880.1, %.lr.ph709 ], [ 0, %.lr.ph709.preheader ] ; 3 uses
  %.0423707 = phi i32 [ %i.sy, %.lr.ph709 ], [ 0, %.lr.ph709.preheader ] ; 2 uses
  %niter1154 = phi i64 [ %niter1154.next.1, %.lr.ph709 ], [ 0, %.lr.ph709.preheader ]
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv879
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !28
  %i.sl = fptrunc double %i.sk to float
  %i.sm = sext i32 %.0423707 to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.sm
  store float %i.sl, ptr %i.sn, align 4, !tbaa !47
  %i.so = trunc nsw i64 %indvars.iv881 to i32
  %i.sp = add nsw i32 %.0423707, %i.so            ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv879
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !28
  %i.st = fptrunc double %i.ss to float
  %i.su = sext i32 %i.sp to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.su
  store float %i.st, ptr %i.sv, align 4, !tbaa !47
  %indvars.iv.next880.1 = add nuw nsw i64 %indvars.iv879, 2 ; 2 uses
  %i.sw = trunc i64 %indvars.iv881 to i32
  %i.sx = add i32 %i.sw, -1
  %i.sy = add nsw i32 %i.sp, %i.sx                ; 2 uses
  %indvars.iv.next882.1 = add nsw i64 %indvars.iv881, -2
  %niter1154.next.1 = add i64 %niter1154, 2       ; 2 uses
  %niter1154.ncmp.1 = icmp eq i64 %niter1154.next.1, %unroll_iter1153
  br i1 %niter1154.ncmp.1, label %.preheader591.unr-lcssa, label %.lr.ph709, !llvm.loop !69

.lr.ph711:                                        ; preds = %.preheader591, %.lr.ph711
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %.lr.ph711 ], [ 0, %.preheader591 ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv889
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !55
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv889
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !55
  call void @right_mult_with_vector_ff(ptr noundef nonnull %i.ny, i32 noundef %1, ptr noundef %i.ta, ptr noundef %i.tc) #11
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond893.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count892
  br i1 %exitcond893.not, label %.lr.ph714, label %.lr.ph711, !llvm.loop !70

.lr.ph720.preheader:                              ; preds = %.lr.ph714
  %i.td = fmul double %i.tk, 2.000000e+00
  %i.te = fadd double %i.td, %11
  br label %.lr.ph720

.lr.ph714:                                        ; preds = %.lr.ph711, %.lr.ph714
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %.lr.ph714 ], [ 0, %.lr.ph711 ] ; 3 uses
  %.0420712 = phi double [ %i.tk, %.lr.ph714 ], [ 0.000000e+00, %.lr.ph711 ]
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv894
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !55
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv894
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !55
  %i.tj = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.tg, ptr noundef %i.ti) #11
  %i.tk = fadd double %.0420712, %i.tj            ; 2 uses
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1 ; 2 uses
  %exitcond898.not = icmp eq i64 %indvars.iv.next895, %wide.trip.count897
  br i1 %exitcond898.not, label %.lr.ph720.preheader, label %.lr.ph714, !llvm.loop !71

._crit_edge721:                                   ; preds = %.lr.ph720, %.preheader591
  %.1.lcssa = phi double [ %11, %.preheader591 ], [ %i.ud, %.lr.ph720 ] ; 3 uses
  %i.tl = fsub double %.1.lcssa, %.0434729
  %i.tm = fadd double %.0434729, 1.000000e-10
  %i.tn = fdiv double %i.tl, %i.tm
  %i.to = call double @llvm.fabs.f64(double %i.tn)
  %i.tp = load double, ptr @Epsilon, align 8, !tbaa !28
  %i.tq = fcmp olt double %i.to, %i.tp
  %i.tr = icmp samesign ugt i32 %.2441728, 1
  %i.ts = fcmp ogt double %.1.lcssa, %.0434729
  %i.tt = select i1 %i.tr, i1 %i.ts, i1 false
  %i.tu = or i1 %i.tt, %i.tq
  br i1 %i.ih, label %bb.bc, label %._crit_edge727

bb.bc:                                            ; preds = %._crit_edge721
  %i.tv = load ptr, ptr %i.jn, align 8, !tbaa !55
  %i.tw = load ptr, ptr %i.nk, align 8, !tbaa !55
  %i.tx = call i32 @conjugate_gradient_mkernel(ptr noundef nonnull %.1477, ptr noundef %i.tv, ptr noundef %i.tw, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #11
  %.not509.peel = icmp eq i32 %i.tx, 0
  br i1 %.not509.peel, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  br i1 %exitcond908.peel.not, label %._crit_edge727, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ty = load ptr, ptr %i.oi, align 8, !tbaa !55
  call void @constrained_majorization_new_with_gaps(ptr noundef %i.og, ptr noundef %i.ty, ptr noundef nonnull %i.jn, i32 noundef 1, i32 noundef 15, float noundef %i.oj) #11
  br i1 %exitcond908.peel913.not, label %._crit_edge727, label %.lr.ph726.peel.next909

.lr.ph720:                                        ; preds = %.lr.ph720.preheader, %.lr.ph720
  %indvars.iv899 = phi i64 [ 0, %.lr.ph720.preheader ], [ %indvars.iv.next900, %.lr.ph720 ] ; 2 uses
  %.1717 = phi double [ %i.te, %.lr.ph720.preheader ], [ %i.ud, %.lr.ph720 ]
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv899 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !55
  call void @right_mult_with_vector_ff(ptr noundef nonnull %.1477, i32 noundef %1, ptr noundef %i.ua, ptr noundef nonnull %i.nl) #11
  %i.ub = load ptr, ptr %i.tz, align 8, !tbaa !55
  %i.uc = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.ub, ptr noundef nonnull %i.nl) #11
  %i.ud = fsub double %.1717, %i.uc               ; 2 uses
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1 ; 2 uses
  %exitcond903.not = icmp eq i64 %indvars.iv.next900, %wide.trip.count902
  br i1 %exitcond903.not, label %._crit_edge721, label %.lr.ph720, !llvm.loop !72

.lr.ph726.peel.next909:                           ; preds = %bb.be, %bb.bf
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %bb.bf ], [ 2, %bb.be ] ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv904
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !55
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv904
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !55
  %i.ui = call i32 @conjugate_gradient_mkernel(ptr noundef nonnull %.1477, ptr noundef %i.uf, ptr noundef %i.uh, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #11
  %.not509 = icmp eq i32 %i.ui, 0
  br i1 %.not509, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph726.peel.next909
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 1 ; 2 uses
  %exitcond908.not = icmp eq i64 %indvars.iv.next905, %wide.trip.count907
  br i1 %exitcond908.not, label %._crit_edge727, label %.lr.ph726.peel.next909, !llvm.loop !73

._crit_edge727:                                   ; preds = %bb.bf, %bb.bd, %bb.be, %._crit_edge721
  %i.uj = add nuw nsw i32 %.2441728, 1            ; 3 uses
  %i.uk = icmp sge i32 %i.uj, %7
  %.not508 = select i1 %i.uk, i1 true, i1 %i.tu
  br i1 %.not508, label %.preheader588, label %.lr.ph705.preheader, !llvm.loop !75

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge734
  %indvars.iv922 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next923, %._crit_edge734 ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv922
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !55 ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv922
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check1090, label %scalar.ph1089.preheader, label %vector.body1093

vector.body1093:                                  ; preds = %.preheader, %vector.body1093
  %index1094 = phi i64 [ %index.next1097, %vector.body1093 ], [ 0, %.preheader ] ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %index1094 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %wide.load1095 = load <2 x float>, ptr %i.up, align 4, !tbaa !47
  %wide.load1096 = load <2 x float>, ptr %i.uq, align 4, !tbaa !47
  %i.ur = fpext <2 x float> %wide.load1095 to <2 x double>
  %i.us = fpext <2 x float> %wide.load1096 to <2 x double>
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %index1094 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store <2 x double> %i.ur, ptr %i.ut, align 8, !tbaa !28
  store <2 x double> %i.us, ptr %i.uu, align 8, !tbaa !28
  %index.next1097 = add nuw i64 %index1094, 4     ; 2 uses
  %i.uv = icmp eq i64 %index.next1097, %n.vec1092
  br i1 %i.uv, label %middle.block1098, label %vector.body1093, !llvm.loop !76

middle.block1098:                                 ; preds = %vector.body1093
  br i1 %cmp.n1099, label %._crit_edge734, label %scalar.ph1089.preheader

scalar.ph1089.preheader:                          ; preds = %.preheader, %middle.block1098
  %indvars.iv916.ph = phi i64 [ 0, %.preheader ], [ %n.vec1092, %middle.block1098 ]
  br label %scalar.ph1089

._crit_edge736.split:                             ; preds = %._crit_edge734, %.preheader588
  call void @free(ptr noundef %i.nl) #11
  call void @free(ptr noundef %i.nq) #11
  call void @free(ptr noundef %i.kj) #11
  call void @free(ptr noundef %.1477) #11
  call void @free(ptr noundef %i.ny) #11
  br label %.loopexit

._crit_edge734:                                   ; preds = %scalar.ph1089, %middle.block1098
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1 ; 2 uses
  %exitcond926.not = icmp eq i64 %indvars.iv.next923, %wide.trip.count925
  br i1 %exitcond926.not, label %._crit_edge736.split, label %.preheader, !llvm.loop !77

scalar.ph1089:                                    ; preds = %scalar.ph1089.preheader, %scalar.ph1089
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %scalar.ph1089 ], [ %indvars.iv916.ph, %scalar.ph1089.preheader ] ; 3 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv916
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !47
  %i.uy = fpext float %i.ux to double
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv916
  store double %i.uy, ptr %i.uz, align 8, !tbaa !28
  %indvars.iv.next917 = add nuw nsw i64 %indvars.iv916, 1 ; 2 uses
  %exitcond921.not = icmp eq i64 %indvars.iv.next917, %wide.trip.count920
  br i1 %exitcond921.not, label %._crit_edge734, label %scalar.ph1089, !llvm.loop !78

.loopexit:                                        ; preds = %bb.bc, %.lr.ph726.peel.next909, %._crit_edge736.split
  %.4 = phi i32 [ %.2441.lcssa, %._crit_edge736.split ], [ -1, %.lr.ph726.peel.next909 ], [ -1, %bb.bc ]
  %.not511 = icmp eq ptr %i.og, null
  br i1 %.not511, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.loopexit
  call void @deleteCMajEnv(ptr noundef nonnull %i.og) #11
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %bb.bg
  %i.va = load ptr, ptr %i.nk, align 8, !tbaa !55
  call void @free(ptr noundef %i.va) #11
  call void @free(ptr noundef nonnull %i.nk) #11
  br label %.thread578

.thread578:                                       ; preds = %bb.l, %.loopexit605, %bb.e, %bb.k, %bb.bh
  %.0480575586 = phi ptr [ null, %bb.l ], [ %i.jm, %bb.bh ], [ null, %bb.k ], [ null, %bb.e ], [ null, %.loopexit605 ]
  %.0479576585 = phi ptr [ null, %bb.l ], [ %i.jn, %bb.bh ], [ null, %bb.k ], [ null, %bb.e ], [ null, %.loopexit605 ]
  %.4577584 = phi i32 [ -1, %bb.l ], [ %.4, %bb.bh ], [ -1, %bb.k ], [ -1, %bb.e ], [ -1, %.loopexit605 ]
  call void @free(ptr noundef %.0480575586) #11
  call void @free(ptr noundef %.0479576585) #11
  %i.vb = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @free(ptr noundef %i.vb) #11
  %i.vc = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef %i.vc) #11
  br label %bb.bi

bb.bi:                                            ; preds = %.thread551, %bb.d, %.thread578, %bb.p, %bb.n, %.critedge
  %.2 = phi i32 [ %i.ao, %.critedge ], [ %i.cf, %.thread551 ], [ 0, %bb.n ], [ 0, %bb.p ], [ -1, %bb.d ], [ %.4577584, %.thread578 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden i32 @stress_majorization_kD_mkernel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @compute_y_coords(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @compute_hierarchy(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare hidden i32 @IMDS_given_dim(ptr noundef, i32 noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare hidden i32 @initLayout(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @start_timer() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare hidden ptr @compute_apsp_artificial_weights_packed(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @circuitModel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @agerr(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare hidden ptr @mdsModel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @compute_apsp_packed(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @elapsed_sec() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #5

declare hidden double @distance_kD(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @orthog1(i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @square_vec(i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @invert_vec(i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @set_vector_val(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @initConstrainedMajorization(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @sqrt_vecf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @set_vector_valf(i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @vectors_mult_additionf(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @vectors_additionf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @invert_sqrt_vec(i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @right_mult_with_vector_ff(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden double @vectors_inner_productf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @constrained_majorization_new_with_gaps(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare hidden i32 @conjugate_gradient_mkernel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @deleteCMajEnv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !15, i64 32}
!12 = !{!"", !13, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 float", !10, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!12, !13, i64 0}
!17 = !{!6, !6, i64 0}
end_hunk_0
