Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a
  %exitcond769.not = icmp eq i64 %indvars.iv.next766, %wide.trip.count768
  br i1 %exitcond769.not, label %.loopexit606, label %bb.h, !llvm.loop !16

.lr.ph622:                                        ; preds = %.lr.ph622.prol.loopexit, %.lr.ph622
  %indvars.iv760 = phi i64 [ %indvars.iv.next761.3, %.lr.ph622 ], [ %indvars.iv760.unr, %.lr.ph622.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv760
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !72
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !70
  %i.dx = fadd double %i.dd, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !70
  %i.dy = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv760
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !72
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !70
  %i.ee = fadd double %i.dd, %i.ed
  store double %i.ee, ptr %i.ec, align 8, !tbaa !70
  %i.ef = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv760
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !72
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !70
  %i.el = fadd double %i.dd, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !70
  %i.em = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv760
  %i.en = getelementptr i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !72
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ep ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !70
  %i.es = fadd double %i.dd, %i.er
  store double %i.es, ptr %i.eq, align 8, !tbaa !70
  %indvars.iv.next761.3 = add nsw i64 %indvars.iv760, 4 ; 2 uses
  %exitcond764.not.3 = icmp eq i64 %indvars.iv.next761.3, %wide.trip.count763
  br i1 %exitcond764.not.3, label %._crit_edge623, label %.lr.ph622, !llvm.loop !17

.loopexit606:                                     ; preds = %._crit_edge623, %bb.g
  %i.et = icmp eq i32 %4, 2
  br i1 %i.et, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit606
  %i.eu = load double, ptr @Epsilon, align 8, !tbaa !70
  %i.ev = call i32 @IMDS_given_dim(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.bz, ptr noundef %i.bx, double noundef %i.eu) #11
  %.not498 = icmp eq i32 %i.ev, 0
  br i1 %.not498, label %bb.m, label %.thread581

bb.l:                                             ; preds = %bb.b
  %i.ew = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3) #11 ; 0 uses
  %i.ex = call i32 @compute_hierarchy(ptr noundef nonnull %0, i32 noundef %1, double noundef 1.000000e-02, double noundef 1.000000e-01, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not495 = icmp eq i32 %i.ex, 0
  br i1 %.not495, label %bb.m, label %.thread581

bb.m:                                             ; preds = %bb.k, %.loopexit606, %bb.l
  %i.ey = icmp eq i32 %1, 1
  br i1 %i.ey, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !55
  call void @free(ptr noundef %i.ez) #11
  br label %bb.bi

bb.o:                                             ; preds = %bb.m
  %i.fa = icmp eq i32 %7, 0
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !55
  call void @free(ptr noundef %i.fb) #11
  br label %bb.bi

bb.q:                                             ; preds = %bb.o
  %i.fc = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not499 = icmp eq i8 %i.fc, 0
  br i1 %.not499, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @start_timer() #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  switch i32 %6, label %.thread559 [
    i32 2, label %bb.t
    i32 1, label %bb.w
    i32 3, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.fd = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not502 = icmp eq i8 %i.fd, 0
  br i1 %.not502, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !74
  %fwrite503 = call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %i.fe) #12 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ff = call ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1) #11
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.fg = call ptr @circuitModel(ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %.not501 = icmp eq ptr %i.fg, null
  br i1 %.not501, label %bb.x, label %.thread562

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.1) #11
  %i.fh = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %.thread559

bb.y:                                             ; preds = %bb.s
  %i.fi = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not500 = icmp eq i8 %i.fi, 0
  br i1 %.not500, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !74
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %i.fj) #12 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fk = call ptr @mdsModel(ptr noundef %0, i32 noundef %1) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.0476 = phi ptr [ %i.ff, %bb.v ], [ %i.fk, %bb.aa ] ; 2 uses
  %.not504 = icmp eq ptr %.0476, null
  br i1 %.not504, label %.thread559, label %.thread562

.thread559:                                       ; preds = %bb.s, %bb.x, %bb.ab
  %i.fl = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not505 = icmp eq i8 %i.fl, 0
  br i1 %.not505, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread559
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !74
  %fwrite506 = call i64 @fwrite(ptr nonnull @.str.4, i64 26, i64 1, ptr %i.fm) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread559
  %i.fn = call ptr @compute_apsp_packed(ptr noundef %0, i32 noundef %1) #11
  br label %.thread562

.thread562:                                       ; preds = %bb.w, %bb.ad, %bb.ab
  %.1477 = phi ptr [ %.0476, %bb.ab ], [ %i.fn, %bb.ad ], [ %i.fg, %bb.w ] ; 17 uses
  %i.fo = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not507 = icmp eq i8 %i.fo, 0
  br i1 %.not507, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread562
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.fq = call double @elapsed_sec() #11
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fp, ptr noundef nonnull @.str.5, double noundef %i.fq) #13 ; 0 uses
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !74
  %fwrite508 = call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr %i.fs) #12 ; 0 uses
  call void @start_timer() #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread562
  %i.ft = add nsw i32 %1, -1                      ; 5 uses
  %i.fu = mul nsw i32 %i.ft, %1
  %i.fv = lshr i32 %i.fu, 1                       ; 3 uses
  %i.fw = add nuw i32 %i.fv, %1                   ; 8 uses
  %i.fx = icmp sgt i32 %4, 0
  %or.cond1108 = and i1 %.not, %i.fx
  br i1 %or.cond1108, label %.preheader603.us.preheader, label %.loopexit602

.preheader603.us.preheader:                       ; preds = %bb.af
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count778 = zext nneg i32 %4 to i64
  %wide.trip.count773 = zext nneg i32 %smax to i64 ; 5 uses
  %min.iters.check998 = icmp slt i32 %1, 4
  %n.vec1000 = and i64 %wide.trip.count773, 2147483644 ; 3 uses
  %cmp.n1009 = icmp ne i64 %n.vec1000, %wide.trip.count773
  br label %.preheader603.us

.preheader603.us:                                 ; preds = %.preheader603.us.preheader, %._crit_edge630.us
  %indvars.iv775 = phi i64 [ 0, %.preheader603.us.preheader ], [ %indvars.iv.next776, %._crit_edge630.us ] ; 2 uses
  %.0465632.us = phi double [ 1.000000e+00, %.preheader603.us.preheader ], [ %.lcssa974, %._crit_edge630.us ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv775
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check998, label %scalar.ph997.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %.preheader603.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0465632.us, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1007, %vector.body1001 ] ; 3 uses
  %vec.phi1003 = phi <2 x double> [ %broadcast.splat, %vector.ph999 ], [ %i.ge, %vector.body1001 ] ; 2 uses
  %vec.phi1004 = phi <2 x double> [ %broadcast.splat, %vector.ph999 ], [ %i.gf, %vector.body1001 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index1002 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load1005 = load <2 x double>, ptr %i.ga, align 8, !tbaa !70
  %wide.load1006 = load <2 x double>, ptr %i.gb, align 8, !tbaa !70
  %i.gc = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1005) ; 2 uses
  %i.gd = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1006) ; 2 uses
  %i.ge = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1003, <2 x double> %i.gc) ; 2 uses
  %i.gf = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1004, <2 x double> %i.gd) ; 2 uses
  %index.next1007 = add nuw i64 %index1002, 4     ; 2 uses
  %i.gg = fcmp uno <2 x double> %i.gc, %i.gd
  %9 = freeze <2 x i1> %i.gg
  %i.gh = bitcast <2 x i1> %9 to i2
  %i.gi = icmp ne i2 %i.gh, 0                     ; 5 uses
  %i.gj = icmp eq i64 %index.next1007, %n.vec1000
  %i.gk = or i1 %i.gi, %i.gj
  br i1 %i.gk, label %middle.block1008, label %vector.body1001, !llvm.loop !18

middle.block1008:                                 ; preds = %vector.body1001
  %i.gl = select i1 %i.gi, <2 x double> %vec.phi1003, <2 x double> %i.ge
  %i.gm = select i1 %i.gi, <2 x double> %vec.phi1004, <2 x double> %i.gf
  %i.gn = select i1 %i.gi, i64 %index1002, i64 %n.vec1000
  %rdx.minmax = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gl, <2 x double> %i.gm)
  %i.go = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %.not1104 = or i1 %cmp.n1009, %i.gi
  br i1 %.not1104, label %scalar.ph997.preheader, label %._crit_edge630.us

scalar.ph997.preheader:                           ; preds = %.preheader603.us, %middle.block1008
  %indvars.iv770.ph = phi i64 [ 0, %.preheader603.us ], [ %i.gn, %middle.block1008 ]
  %.1466627.us.ph = phi double [ %.0465632.us, %.preheader603.us ], [ %i.go, %middle.block1008 ]
  br label %scalar.ph997

scalar.ph997:                                     ; preds = %scalar.ph997.preheader, %scalar.ph997
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %scalar.ph997 ], [ %indvars.iv770.ph, %scalar.ph997.preheader ] ; 2 uses
  %.1466627.us = phi double [ %i.gs, %scalar.ph997 ], [ %.1466627.us.ph, %scalar.ph997.preheader ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv770
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !70
  %i.gr = call nsz double @llvm.fabs.f64(double %i.gq)
  %i.gs = call nsz double @llvm.maxnum.f64(double %.1466627.us, double %i.gr) ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge630.us, label %scalar.ph997, !llvm.loop !19

._crit_edge630.us:                                ; preds = %scalar.ph997, %middle.block1008
  %.lcssa974 = phi double [ %i.go, %middle.block1008 ], [ %i.gs, %scalar.ph997 ] ; 2 uses
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond779.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count778
  br i1 %exitcond779.not, label %.preheader600.preheader, label %.preheader603.us, !llvm.loop !20

.preheader600.preheader:                          ; preds = %._crit_edge630.us
  %i.gt = fdiv double 1.000000e+01, %.lcssa974    ; 2 uses
  %smax783 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count789 = zext nneg i32 %4 to i64
  %wide.trip.count784 = zext nneg i32 %smax783 to i64
  %min.iters.check1013 = icmp slt i32 %1, 4
  %n.vec1015 = and i64 %wide.trip.count773, 2147483644 ; 3 uses
  %broadcast.splatinsert1016 = insertelement <2 x double> poison, double %i.gt, i64 0
  %broadcast.splat1017 = shufflevector <2 x double> %broadcast.splatinsert1016, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1024 = icmp eq i64 %n.vec1015, %wide.trip.count773
  br label %.preheader600

.preheader600:                                    ; preds = %.preheader600.preheader, %._crit_edge637
  %indvars.iv786 = phi i64 [ 0, %.preheader600.preheader ], [ %indvars.iv.next787, %._crit_edge637 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv786
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1013, label %scalar.ph1012.preheader, label %vector.body1018

vector.body1018:                                  ; preds = %.preheader600, %vector.body1018
  %index1019 = phi i64 [ %index.next1022, %vector.body1018 ], [ 0, %.preheader600 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index1019 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load1020 = load <2 x double>, ptr %i.gw, align 8, !tbaa !70
  %wide.load1021 = load <2 x double>, ptr %i.gx, align 8, !tbaa !70
  %i.gy = fmul <2 x double> %broadcast.splat1017, %wide.load1020
  %i.gz = fmul <2 x double> %broadcast.splat1017, %wide.load1021
  store <2 x double> %i.gy, ptr %i.gw, align 8, !tbaa !70
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !70
  %index.next1022 = add nuw i64 %index1019, 4     ; 2 uses
  %i.ha = icmp eq i64 %index.next1022, %n.vec1015
  br i1 %i.ha, label %middle.block1023, label %vector.body1018, !llvm.loop !21

middle.block1023:                                 ; preds = %vector.body1018
  br i1 %cmp.n1024, label %._crit_edge637, label %scalar.ph1012.preheader

scalar.ph1012.preheader:                          ; preds = %.preheader600, %middle.block1023
  %indvars.iv780.ph = phi i64 [ 0, %.preheader600 ], [ %n.vec1015, %middle.block1023 ]
  br label %scalar.ph1012

._crit_edge637:                                   ; preds = %scalar.ph1012, %middle.block1023
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %exitcond790.not = icmp eq i64 %indvars.iv.next787, %wide.trip.count789
  br i1 %exitcond790.not, label %.loopexit602, label %.preheader600, !llvm.loop !22

scalar.ph1012:                                    ; preds = %scalar.ph1012.preheader, %scalar.ph1012
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %scalar.ph1012 ], [ %indvars.iv780.ph, %scalar.ph1012.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv780 ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !70
  %i.hd = fmul double %i.gt, %i.hc
  store double %i.hd, ptr %i.hb, align 8, !tbaa !70
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond785.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count784
  br i1 %exitcond785.not, label %._crit_edge637, label %scalar.ph1012, !llvm.loop !23

.loopexit602:                                     ; preds = %._crit_edge637, %bb.af
  %i.he = fcmp ogt double %8, 0.000000e+00
  br i1 %i.he, label %.lr.ph651.preheader, label %.loopexit598

.lr.ph651.preheader:                              ; preds = %.loopexit602
  %i.hf = uitofp nneg i32 %i.fv to double
  %i.hg = add nsw i32 %1, -2
  br label %.lr.ph644.preheader

.loopexit599:                                     ; preds = %.lr.ph644
  %i.hh = add nsw i64 %i.ht, 1
  %i.hi = add nsw i64 %i.hh, %i.hr
  %indvars.iv.next794 = add i32 %indvars.iv793, -1
  %exitcond797.not = icmp eq i32 %i.hs, %i.ft
  br i1 %exitcond797.not, label %._crit_edge652, label %.lr.ph644.preheader, !llvm.loop !24

._crit_edge652:                                   ; preds = %.loopexit599
  %i.hj = fdiv double %i.hz, %i.hf
  %i.hk = fptrunc double %i.hj to float           ; 2 uses
  %i.hl = icmp sgt i32 %i.fw, 0
  br i1 %i.hl, label %.lr.ph656.preheader, label %.loopexit598

.lr.ph656.preheader:                              ; preds = %._crit_edge652
  %wide.trip.count801 = zext nneg i32 %i.fw to i64 ; 3 uses
  %min.iters.check1027 = icmp ult i32 %i.fw, 8
  br i1 %min.iters.check1027, label %.lr.ph656.preheader1116, label %vector.ph1028

vector.ph1028:                                    ; preds = %.lr.ph656.preheader
  %n.vec1029 = and i64 %wide.trip.count801, 2147483640 ; 3 uses
  %broadcast.splatinsert1030 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat1031 = shufflevector <4 x float> %broadcast.splatinsert1030, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1028
  %index1033 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1036, %vector.body1032 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %index1033 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load1034 = load <4 x float>, ptr %i.hm, align 4, !tbaa !76
  %wide.load1035 = load <4 x float>, ptr %i.hn, align 4, !tbaa !76
  %i.ho = fmul <4 x float> %wide.load1034, %broadcast.splat1031
  %i.hp = fmul <4 x float> %wide.load1035, %broadcast.splat1031
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !76
  store <4 x float> %i.hp, ptr %i.hn, align 4, !tbaa !76
  %index.next1036 = add nuw i64 %index1033, 8     ; 2 uses
  %i.hq = icmp eq i64 %index.next1036, %n.vec1029
  br i1 %i.hq, label %middle.block1037, label %vector.body1032, !llvm.loop !25

middle.block1037:                                 ; preds = %vector.body1032
  %cmp.n1038 = icmp eq i64 %n.vec1029, %wide.trip.count801
  br i1 %cmp.n1038, label %.loopexit598, label %.lr.ph656.preheader1116

.lr.ph656.preheader1116:                          ; preds = %.lr.ph656.preheader, %middle.block1037
  %indvars.iv798.ph = phi i64 [ 0, %.lr.ph656.preheader ], [ %n.vec1029, %middle.block1037 ]
  br label %.lr.ph656

.lr.ph644.preheader:                              ; preds = %.loopexit599, %.lr.ph651.preheader
  %indvars.iv793 = phi i32 [ %i.hg, %.lr.ph651.preheader ], [ %indvars.iv.next794, %.loopexit599 ] ; 2 uses
  %.0456649 = phi i32 [ 0, %.lr.ph651.preheader ], [ %i.hs, %.loopexit599 ] ; 2 uses
  %.0457648 = phi i64 [ 0, %.lr.ph651.preheader ], [ %i.hi, %.loopexit599 ]
  %.0459647 = phi double [ 0.000000e+00, %.lr.ph651.preheader ], [ %i.hz, %.loopexit599 ]
  %i.hr = zext i32 %indvars.iv793 to i64
  %i.hs = add nuw nsw i32 %.0456649, 1            ; 3 uses
  %.1458639 = shl i64 %.0457648, 32
  %sext = add i64 %.1458639, 4294967296
  %i.ht = ashr exact i64 %sext, 32                ; 2 uses
  br label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %.lr.ph644
  %indvars.iv791 = phi i64 [ %i.ht, %.lr.ph644.preheader ], [ %indvars.iv.next792, %.lr.ph644 ] ; 2 uses
  %.0455641 = phi i32 [ %i.hs, %.lr.ph644.preheader ], [ %i.ia, %.lr.ph644 ] ; 2 uses
  %.1460640 = phi double [ %.0459647, %.lr.ph644.preheader ], [ %i.hz, %.lr.ph644 ]
  %i.hu = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %.0456649, i32 noundef %.0455641) #11
  %i.hv = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv791
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !76
  %i.hx = fpext float %i.hw to double
  %i.hy = fdiv double %i.hu, %i.hx
  %i.hz = fadd double %.1460640, %i.hy            ; 3 uses
  %i.ia = add nuw i32 %.0455641, 1                ; 2 uses
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, 1
  %exitcond796.not = icmp eq i32 %i.ia, %1
  br i1 %exitcond796.not, label %.loopexit599, label %.lr.ph644, !llvm.loop !26

.lr.ph656:                                        ; preds = %.lr.ph656.preheader1116, %.lr.ph656
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %.lr.ph656 ], [ %indvars.iv798.ph, %.lr.ph656.preheader1116 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %indvars.iv798 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !76
  %i.id = fmul float %i.ic, %i.hk
  store float %i.id, ptr %i.ib, align 4, !tbaa !76
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 2 uses
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count801
  br i1 %exitcond802.not, label %.loopexit598, label %.lr.ph656, !llvm.loop !27

.loopexit598:                                     ; preds = %.lr.ph656, %middle.block1037, %._crit_edge652, %.loopexit602
  %i.ie = icmp sgt i32 %4, 0                      ; 5 uses
  br i1 %i.ie, label %.lr.ph659.preheader, label %.lr.ph663.preheader

.lr.ph659.preheader:                              ; preds = %.loopexit598
  %wide.trip.count806 = zext nneg i32 %4 to i64
  br label %.lr.ph659

.lr.ph663.preheader:                              ; preds = %.lr.ph659, %.loopexit598
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !68 ; 3 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !70 ; 2 uses
  %smax811 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count812 = zext nneg i32 %smax811 to i64 ; 7 uses
  %min.iters.check1041 = icmp slt i32 %1, 4
  br i1 %min.iters.check1041, label %.lr.ph663.preheader1115, label %vector.ph1042

vector.ph1042:                                    ; preds = %.lr.ph663.preheader
end_hunk_0
