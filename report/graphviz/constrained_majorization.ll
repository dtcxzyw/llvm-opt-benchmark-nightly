Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dh = phi i32 [ %i.dg, %bb.i ], [ %1, %bb.h ] ; 2 uses
  %i.di = icmp slt i32 %i.cm, %i.dh
  br i1 %i.di, label %.lr.ph622.preheader, label %._crit_edge623

.lr.ph622.preheader:                              ; preds = %bb.j
  %wide.trip.count763 = sext i32 %i.dh to i64     ; 3 uses
  %i.dj = sub nsw i64 %wide.trip.count763, %i.cn
  %xtraiter1126 = and i64 %i.dj, 3                ; 2 uses
  %lcmp.mod1127.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1127.not, label %.lr.ph622.prol.loopexit, label %.lr.ph622.prol

.lr.ph622.prol:                                   ; preds = %.lr.ph622.preheader, %.lr.ph622.prol
  %indvars.iv760.prol = phi i64 [ %indvars.iv.next761.prol, %.lr.ph622.prol ], [ %i.cn, %.lr.ph622.preheader ] ; 2 uses
  %prol.iter1128 = phi i64 [ %prol.iter1128.next, %.lr.ph622.prol ], [ 0, %.lr.ph622.preheader ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv760.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !72
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dm ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !70
  %i.dp = fadd double %i.dd, %i.do
  store double %i.dp, ptr %i.dn, align 8, !tbaa !70
  %indvars.iv.next761.prol = add nsw i64 %indvars.iv760.prol, 1 ; 2 uses
  %prol.iter1128.next = add i64 %prol.iter1128, 1 ; 2 uses
  %prol.iter1128.cmp.not = icmp eq i64 %prol.iter1128.next, %xtraiter1126
  br i1 %prol.iter1128.cmp.not, label %.lr.ph622.prol.loopexit, label %.lr.ph622.prol, !llvm.loop !15

.lr.ph622.prol.loopexit:                          ; preds = %.lr.ph622.prol, %.lr.ph622.preheader
  %indvars.iv760.unr = phi i64 [ %i.cn, %.lr.ph622.preheader ], [ %indvars.iv.next761.prol, %.lr.ph622.prol ]
  %i.dq = sub nsw i64 %i.cn, %wide.trip.count763
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge623, label %.lr.ph622

._crit_edge623:                                   ; preds = %.lr.ph622.prol.loopexit, %.lr.ph622, %bb.j
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1 ; 2 uses
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
  br label %bb.bg

bb.o:                                             ; preds = %bb.m
  %i.fa = icmp eq i32 %7, 0
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !55
  call void @free(ptr noundef %i.fb) #11
  br label %bb.bg

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
  %i.fu = mul i32 %i.ft, %1
  %i.fv = lshr i32 %i.fu, 1                       ; 3 uses
  %i.fw = add nuw i32 %i.fv, %1                   ; 6 uses
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
  %vec.phi1003.a = phi <2 x double> [ %broadcast.splat, %vector.ph999 ], [ %i.ge, %vector.body1001 ] ; 2 uses
  %vec.phi1004 = phi <2 x double> [ %broadcast.splat, %vector.ph999 ], [ %i.gf, %vector.body1001 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index1002 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load1005.a = load <2 x double>, ptr %i.ga, align 8, !tbaa !70
  %wide.load1006 = load <2 x double>, ptr %i.gb, align 8, !tbaa !70
  %i.gc = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1005.a) ; 2 uses
  %i.gd = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1006) ; 2 uses
  %i.ge = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1003.a, <2 x double> %i.gc) ; 2 uses
  %i.gf = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1004, <2 x double> %i.gd) ; 2 uses
  %index.next1007 = add nuw i64 %index1002, 4     ; 2 uses
  %i.gg = fcmp uno <2 x double> %i.gc, %i.gd
  %i.gh = freeze <2 x i1> %i.gg
  %i.gi = bitcast <2 x i1> %i.gh to i2
  %i.gj = icmp ne i2 %i.gi, 0                     ; 5 uses
  %i.gk = icmp eq i64 %index.next1007, %n.vec1000
  %i.gl = or i1 %i.gj, %i.gk
  br i1 %i.gl, label %middle.block1008, label %vector.body1001, !llvm.loop !18

middle.block1008:                                 ; preds = %vector.body1001
  %i.gm = select i1 %i.gj, <2 x double> %vec.phi1003.a, <2 x double> %i.ge
  %i.gn = select i1 %i.gj, <2 x double> %vec.phi1004, <2 x double> %i.gf
  %i.go = select i1 %i.gj, i64 %index1002, i64 %n.vec1000
  %rdx.minmax = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gm, <2 x double> %i.gn)
  %i.gp = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %.not1104 = or i1 %cmp.n1009, %i.gj
  br i1 %.not1104, label %scalar.ph997.preheader, label %._crit_edge630.us

scalar.ph997.preheader:                           ; preds = %.preheader603.us, %middle.block1008
  %indvars.iv770.ph = phi i64 [ 0, %.preheader603.us ], [ %i.go, %middle.block1008 ]
  %.1466627.us.ph = phi double [ %.0465632.us, %.preheader603.us ], [ %i.gp, %middle.block1008 ]
  br label %scalar.ph997

scalar.ph997:                                     ; preds = %scalar.ph997.preheader, %scalar.ph997
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %scalar.ph997 ], [ %indvars.iv770.ph, %scalar.ph997.preheader ] ; 2 uses
  %.1466627.us = phi double [ %i.gt, %scalar.ph997 ], [ %.1466627.us.ph, %scalar.ph997.preheader ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv770
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !70
  %i.gs = call nsz double @llvm.fabs.f64(double %i.gr)
  %i.gt = call nsz double @llvm.maxnum.f64(double %.1466627.us, double %i.gs) ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge630.us, label %scalar.ph997, !llvm.loop !19

._crit_edge630.us:                                ; preds = %scalar.ph997, %middle.block1008
  %.lcssa974 = phi double [ %i.gp, %middle.block1008 ], [ %i.gt, %scalar.ph997 ] ; 2 uses
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond779.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count778
  br i1 %exitcond779.not, label %.preheader600.preheader, label %.preheader603.us, !llvm.loop !20

.preheader600.preheader:                          ; preds = %._crit_edge630.us
  %i.gu = fdiv double 1.000000e+01, %.lcssa974    ; 2 uses
  %smax783 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count789 = zext nneg i32 %4 to i64
  %wide.trip.count784 = zext nneg i32 %smax783 to i64
  %min.iters.check1013 = icmp slt i32 %1, 4
  %n.vec1015 = and i64 %wide.trip.count773, 2147483644 ; 3 uses
  %broadcast.splatinsert1016 = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat1017 = shufflevector <2 x double> %broadcast.splatinsert1016, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1024 = icmp eq i64 %n.vec1015, %wide.trip.count773
  br label %.preheader600

.preheader600:                                    ; preds = %.preheader600.preheader, %._crit_edge637
  %indvars.iv786 = phi i64 [ 0, %.preheader600.preheader ], [ %indvars.iv.next787, %._crit_edge637 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv786
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1013, label %scalar.ph1012.preheader, label %vector.body1018

vector.body1018:                                  ; preds = %.preheader600, %vector.body1018
  %index1019 = phi i64 [ %index.next1022, %vector.body1018 ], [ 0, %.preheader600 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %index1019 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load1020.a = load <2 x double>, ptr %i.gx, align 8, !tbaa !70
  %wide.load1021 = load <2 x double>, ptr %i.gy, align 8, !tbaa !70
  %i.gz = fmul <2 x double> %broadcast.splat1017, %wide.load1020.a
  %i.ha = fmul <2 x double> %broadcast.splat1017, %wide.load1021
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !70
  store <2 x double> %i.ha, ptr %i.gy, align 8, !tbaa !70
  %index.next1022 = add nuw i64 %index1019, 4     ; 2 uses
  %i.hb = icmp eq i64 %index.next1022, %n.vec1015
  br i1 %i.hb, label %middle.block1023, label %vector.body1018, !llvm.loop !21

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
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv780 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !70
  %i.he = fmul double %i.gu, %i.hd
  store double %i.he, ptr %i.hc, align 8, !tbaa !70
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond785.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count784
  br i1 %exitcond785.not, label %._crit_edge637, label %scalar.ph1012, !llvm.loop !23

.loopexit602:                                     ; preds = %._crit_edge637, %bb.af
  %i.hf = fcmp ogt double %8, 0.000000e+00
  br i1 %i.hf, label %.lr.ph651.preheader, label %.loopexit598

.lr.ph651.preheader:                              ; preds = %.loopexit602
  %i.hg = uitofp nneg i32 %i.fv to double
  %i.hh = add nsw i32 %1, -2
  br label %.lr.ph644.preheader

.loopexit599:                                     ; preds = %.lr.ph644
  %i.hi = add nsw i64 %i.ht, 1
  %i.hj = add nsw i64 %i.hi, %i.hr
  %indvars.iv.next794 = add i32 %indvars.iv793, -1
  %exitcond797.not = icmp eq i32 %i.hs, %i.ft
  br i1 %exitcond797.not, label %._crit_edge652, label %.lr.ph644.preheader, !llvm.loop !24

._crit_edge652:                                   ; preds = %.loopexit599
  %i.hk = fdiv double %i.hz, %i.hg
  %i.hl = fptrunc double %i.hk to float           ; 2 uses
  %smax801 = call i32 @llvm.smax.i32(i32 %i.fw, i32 1)
  %wide.trip.count802 = zext nneg i32 %smax801 to i64 ; 3 uses
  %min.iters.check1026 = icmp slt i32 %i.fw, 8
  br i1 %min.iters.check1026, label %.lr.ph656.preheader1116, label %vector.ph1028

vector.ph1028:                                    ; preds = %._crit_edge652
  %n.vec1029 = and i64 %wide.trip.count802, 2147483640 ; 3 uses
  %broadcast.splatinsert1030 = insertelement <4 x float> poison, float %i.hl, i64 0
  %broadcast.splat1031 = shufflevector <4 x float> %broadcast.splatinsert1030, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1028
  %index1033 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1036, %vector.body1032 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %index1033 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load1034.a = load <4 x float>, ptr %i.hm, align 4, !tbaa !76
  %wide.load1035 = load <4 x float>, ptr %i.hn, align 4, !tbaa !76
  %i.ho = fmul <4 x float> %wide.load1034.a, %broadcast.splat1031
  %i.hp = fmul <4 x float> %wide.load1035, %broadcast.splat1031
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !76
  store <4 x float> %i.hp, ptr %i.hn, align 4, !tbaa !76
  %index.next1036 = add nuw i64 %index1033, 8     ; 2 uses
  %i.hq = icmp eq i64 %index.next1036, %n.vec1029
  br i1 %i.hq, label %middle.block1037, label %vector.body1032, !llvm.loop !25

middle.block1037:                                 ; preds = %vector.body1032
  %cmp.n1038 = icmp eq i64 %n.vec1029, %wide.trip.count802
  br i1 %cmp.n1038, label %.loopexit598, label %.lr.ph656.preheader1116

.lr.ph656.preheader1116:                          ; preds = %._crit_edge652, %middle.block1037
  %indvars.iv798.ph = phi i64 [ 0, %._crit_edge652 ], [ %n.vec1029, %middle.block1037 ]
  br label %.lr.ph656

.lr.ph644.preheader:                              ; preds = %.loopexit599, %.lr.ph651.preheader
  %indvars.iv793 = phi i32 [ %i.hh, %.lr.ph651.preheader ], [ %indvars.iv.next794, %.loopexit599 ] ; 2 uses
  %.0456649 = phi i32 [ 0, %.lr.ph651.preheader ], [ %i.hs, %.loopexit599 ] ; 2 uses
  %.0457648 = phi i64 [ 0, %.lr.ph651.preheader ], [ %i.hj, %.loopexit599 ]
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
  %i.id = fmul float %i.ic, %i.hl
  store float %i.id, ptr %i.ib, align 4, !tbaa !76
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 2 uses
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count802
  br i1 %exitcond802.not, label %.loopexit598, label %.lr.ph656, !llvm.loop !27

.loopexit598:                                     ; preds = %.lr.ph656, %middle.block1037, %.loopexit602
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
  %n.vec1043 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %broadcast.splatinsert1044 = insertelement <2 x double> poison, double %i.ih, i64 0
  %broadcast.splat1045 = shufflevector <2 x double> %broadcast.splatinsert1044, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1042
  %index1047 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1050, %vector.body1046 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index1047 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %wide.load1048.a = load <2 x double>, ptr %i.ii, align 8, !tbaa !70
  %wide.load1049 = load <2 x double>, ptr %i.ij, align 8, !tbaa !70
  %i.ik = fsub <2 x double> %wide.load1048.a, %broadcast.splat1045
  %i.il = fsub <2 x double> %wide.load1049, %broadcast.splat1045
  store <2 x double> %i.ik, ptr %i.ii, align 8, !tbaa !70
  store <2 x double> %i.il, ptr %i.ij, align 8, !tbaa !70
  %index.next1050 = add nuw i64 %index1047, 4     ; 2 uses
  %i.im = icmp eq i64 %index.next1050, %n.vec1043
  br i1 %i.im, label %middle.block1051, label %vector.body1046, !llvm.loop !28

middle.block1051:                                 ; preds = %vector.body1046
  %cmp.n1052 = icmp eq i64 %n.vec1043, %wide.trip.count812
  br i1 %cmp.n1052, label %._crit_edge664, label %.lr.ph663.preheader1115

.lr.ph663.preheader1115:                          ; preds = %.lr.ph663.preheader, %middle.block1051
  %indvars.iv808.ph = phi i64 [ 0, %.lr.ph663.preheader ], [ %n.vec1043, %middle.block1051 ]
  br label %.lr.ph663

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %.lr.ph659
  %indvars.iv803 = phi i64 [ 0, %.lr.ph659.preheader ], [ %indvars.iv.next804, %.lr.ph659 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv803
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !68
  call void @orthog1(i32 noundef %1, ptr noundef %i.io) #11
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count806
  br i1 %exitcond807.not, label %.lr.ph663.preheader, label %.lr.ph659, !llvm.loop !29

._crit_edge664:                                   ; preds = %.lr.ph663, %middle.block1051
  %i.ip = sext i32 %4 to i64                      ; 6 uses
  %.not.i = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not.i, label %gv_calloc.exit520, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge664
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.ir = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.is = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #15 ; 3 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.iv = shl nuw nsw i64 %i.ip, 3
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.9, i64 noundef %i.iv) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ix = mul nuw nsw i32 %4, %1
  %i.iy = zext nneg i32 %i.ix to i64              ; 3 uses
  %i.iz = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iy, i64 noundef 4) #15 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.al, label %.lr.ph670

bb.al:                                            ; preds = %bb.ak
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.jc = shl nuw nsw i64 %i.iy, 2
  %i.jd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.9, i64 noundef %i.jc) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit520:                                ; preds = %._crit_edge664
  %i.je = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15
  %i.jf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  br label %._crit_edge671

.lr.ph670:                                        ; preds = %bb.ak
  %smax817 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count823 = zext nneg i32 %4 to i64
  %wide.trip.count818 = zext nneg i32 %smax817 to i64
  %min.iters.check1055 = icmp slt i32 %1, 4
  %n.vec1057 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %cmp.n1064 = icmp eq i64 %n.vec1057, %wide.trip.count812
  br label %.lr.ph667

.lr.ph663:                                        ; preds = %.lr.ph663.preheader1115, %.lr.ph663
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph663 ], [ %indvars.iv808.ph, %.lr.ph663.preheader1115 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv808 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !70
  %i.ji = fsub double %i.jh, %i.ih
  store double %i.ji, ptr %i.jg, align 8, !tbaa !70
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond813.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count812
  br i1 %exitcond813.not, label %._crit_edge664, label %.lr.ph663, !llvm.loop !30

._crit_edge671:                                   ; preds = %._crit_edge668, %gv_calloc.exit520
  %i.jj = phi ptr [ %i.jf, %gv_calloc.exit520 ], [ %i.iz, %._crit_edge668 ]
  %i.jk = phi ptr [ %i.je, %gv_calloc.exit520 ], [ %i.is, %._crit_edge668 ] ; 9 uses
  %i.jl = phi i64 [ 0, %gv_calloc.exit520 ], [ %i.iy, %._crit_edge668 ] ; 2 uses
  %i.jm = uitofp nneg i32 %i.fv to double         ; 2 uses
  %i.jn = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not509 = icmp eq i8 %i.jn, 0
  br i1 %.not509, label %bb.an, label %bb.am

.lr.ph667:                                        ; preds = %._crit_edge668, %.lr.ph670
  %indvars.iv820 = phi i64 [ 0, %.lr.ph670 ], [ %indvars.iv.next821, %._crit_edge668 ] ; 4 uses
  %i.jo = mul nuw nsw i64 %indvars.iv820, %wide.trip.count
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jo ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv820
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !77
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv820
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1055, label %scalar.ph1054.preheader, label %vector.body1058

vector.body1058:                                  ; preds = %.lr.ph667, %vector.body1058
  %index1059 = phi i64 [ %index.next1062, %vector.body1058 ], [ 0, %.lr.ph667 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index1059 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load1060.a = load <2 x double>, ptr %i.jt, align 8, !tbaa !70
  %wide.load1061 = load <2 x double>, ptr %i.ju, align 8, !tbaa !70
  %i.jv = fptrunc <2 x double> %wide.load1060.a to <2 x float>
  %i.jw = fptrunc <2 x double> %wide.load1061 to <2 x float>
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index1059 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store <2 x float> %i.jv, ptr %i.jx, align 4, !tbaa !76
  store <2 x float> %i.jw, ptr %i.jy, align 4, !tbaa !76
  %index.next1062 = add nuw i64 %index1059, 4     ; 2 uses
  %i.jz = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.jz, label %middle.block1063, label %vector.body1058, !llvm.loop !31

middle.block1063:                                 ; preds = %vector.body1058
  br i1 %cmp.n1064, label %._crit_edge668, label %scalar.ph1054.preheader

scalar.ph1054.preheader:                          ; preds = %.lr.ph667, %middle.block1063
  %indvars.iv814.ph = phi i64 [ 0, %.lr.ph667 ], [ %n.vec1057, %middle.block1063 ]
  br label %scalar.ph1054

._crit_edge668:                                   ; preds = %scalar.ph1054, %middle.block1063
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %exitcond824.not = icmp eq i64 %indvars.iv.next821, %wide.trip.count823
  br i1 %exitcond824.not, label %._crit_edge671, label %.lr.ph667, !llvm.loop !32

scalar.ph1054:                                    ; preds = %scalar.ph1054.preheader, %scalar.ph1054
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %scalar.ph1054 ], [ %indvars.iv814.ph, %scalar.ph1054.preheader ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv814
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !70
  %i.kc = fptrunc double %i.kb to float
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv814
  store float %i.kc, ptr %i.kd, align 4, !tbaa !76
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next815, %wide.trip.count818
  br i1 %exitcond819.not, label %._crit_edge668, label %scalar.ph1054, !llvm.loop !33

bb.am:                                            ; preds = %._crit_edge671
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kf = call double @elapsed_sec() #11
  %i.kg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ke, ptr noundef nonnull @.str.7, double noundef %i.kf) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge671
  call void @square_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  call void @invert_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  %i.kh = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 8) #15 ; 14 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.ao, label %.preheader597.preheader

bb.ao:                                            ; preds = %bb.an
  %i.kj = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kk = shl nuw nsw i64 %wide.trip.count, 3
  %i.kl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kj, ptr noundef nonnull @.str.9, i64 noundef %i.kk) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

.preheader597.preheader:                          ; preds = %bb.an
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.kh) #11
  %i.km = zext nneg i32 %1 to i64
  %wide.trip.count839 = zext nneg i32 %i.ft to i64
end_hunk_0
begin_hunk_1_@stress_majorization_with_hierarchy:bb.a
  %i.kx = fpext float %i.kw to double             ; 2 uses
  %i.ky = fadd double %.0443673.epil.init, %i.kx
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827.epil.init ; 2 uses
  %i.kz = load double, ptr %gep.epil, align 8, !tbaa !70
  %i.la = fsub double %i.kz, %i.kx
  store double %i.la, ptr %gep.epil, align 8, !tbaa !70
  %indvars.iv.next826.epil = add nsw i64 %indvars.iv825.epil.init, 1
  br label %._crit_edge677.loopexit

._crit_edge677.loopexit:                          ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.epil.preheader
  %.lcssa1114 = phi double [ %i.lp, %._crit_edge677.loopexit.unr-lcssa ], [ %i.ky, %.lr.ph676.epil.preheader ]
  %indvars.iv.next826.lcssa = phi i64 [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ], [ %indvars.iv.next826.epil, %.lr.ph676.epil.preheader ]
  %i.lb = trunc nsw i64 %indvars.iv.next826.lcssa to i32
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader597
  %.0443.lcssa = phi double [ 0.000000e+00, %.preheader597 ], [ %.lcssa1114, %._crit_edge677.loopexit ]
  %.1445.lcssa = phi i32 [ %.1445672, %.preheader597 ], [ %i.lb, %._crit_edge677.loopexit ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv836 ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !70
  %i.le = fsub double %i.ld, %.0443.lcssa
  store double %i.le, ptr %i.lc, align 8, !tbaa !70
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %indvars.iv.next833 = add i32 %indvars.iv832, -1
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %.lr.ph685.preheader, label %.preheader597, !llvm.loop !34

.lr.ph676:                                        ; preds = %.lr.ph676, %.lr.ph676.preheader.new
  %indvars.iv827 = phi i64 [ 1, %.lr.ph676.preheader.new ], [ %indvars.iv.next828.1, %.lr.ph676 ] ; 3 uses
  %indvars.iv825 = phi i64 [ %i.kq, %.lr.ph676.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph676 ] ; 3 uses
  %.0443673 = phi double [ 0.000000e+00, %.lr.ph676.preheader.new ], [ %i.lp, %.lr.ph676 ]
  %niter = phi i64 [ 0, %.lr.ph676.preheader.new ], [ %niter.next.1, %.lr.ph676 ]
  %i.lf = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !76
  %i.lh = fpext float %i.lg to double             ; 2 uses
  %i.li = fadd double %.0443673, %i.lh
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827 ; 2 uses
  %i.lj = load double, ptr %gep, align 8, !tbaa !70
  %i.lk = fsub double %i.lj, %i.lh
  store double %i.lk, ptr %gep, align 8, !tbaa !70
  %i.ll = getelementptr [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.lm = getelementptr i8, ptr %i.ll, i64 4
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !76
  %i.lo = fpext float %i.ln to double             ; 2 uses
  %i.lp = fadd double %i.li, %i.lo                ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.lr = load double, ptr %gep.1, align 8, !tbaa !70
  %i.ls = fsub double %i.lr, %i.lo
  store double %i.ls, ptr %gep.1, align 8, !tbaa !70
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827, 2 ; 2 uses
  %indvars.iv.next826.1 = add nsw i64 %indvars.iv825, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge677.loopexit.unr-lcssa, label %.lr.ph676, !llvm.loop !35

._crit_edge686.unr-lcssa:                         ; preds = %.lr.ph685
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  br i1 %lcmp.mod1135.not, label %._crit_edge686, label %.lr.ph685.epil.preheader

.lr.ph685.epil.preheader:                         ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.preheader
  %indvars.iv841.epil.init = phi i64 [ 0, %.lr.ph685.preheader ], [ %indvars.iv.next842.1, %._crit_edge686.unr-lcssa ]
  %.0437683.epil.init = phi i32 [ 0, %.lr.ph685.preheader ], [ %i.ne, %._crit_edge686.unr-lcssa ]
  %lcmp.mod1136 = trunc i32 %smax848 to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841.epil.init
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !70
  %i.lv = fptrunc double %i.lu to float
  %i.lw = sext i32 %.0437683.epil.init to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.lw
  store float %i.lv, ptr %i.lx, align 4, !tbaa !76
  br label %._crit_edge686

._crit_edge686:                                   ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.epil.preheader
  br i1 %.not.i, label %gv_calloc.exit535.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge686
  %mul.ov.i528 = icmp slt i32 %4, 0
  br i1 %mul.ov.i528, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ly = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.lz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ly, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ma = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #15 ; 10 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %bb.as, label %gv_calloc.exit530

bb.as:                                            ; preds = %bb.ar
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.md = shl nuw nsw i64 %i.ip, 3
  %i.me = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.9, i64 noundef %i.md) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535.thread:                         ; preds = %._crit_edge686
  %i.mf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15 ; 2 uses
  %i.mg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !77
  br label %._crit_edge689

gv_calloc.exit530:                                ; preds = %bb.ar
  %i.mh = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jl, i64 noundef 4) #15 ; 7 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.at, label %gv_calloc.exit535

bb.at:                                            ; preds = %gv_calloc.exit530
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mk = shl nuw nsw i64 %i.jl, 2
  %i.ml = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mj, ptr noundef nonnull @.str.9, i64 noundef %i.mk) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535:                                ; preds = %gv_calloc.exit530
  store ptr %i.mh, ptr %i.ma, align 8, !tbaa !77
  %.not967 = icmp eq i32 %4, 1
  br i1 %.not967, label %._crit_edge689, label %.lr.ph688.preheader

.lr.ph688.preheader:                              ; preds = %gv_calloc.exit535
  %wide.trip.count854 = zext nneg i32 %4 to i64
  %i.mm = add nsw i64 %wide.trip.count854, -1     ; 2 uses
  %xtraiter1139 = and i64 %i.mm, 3                ; 3 uses
  %i.mn = add nsw i32 %4, -2
  %i.mo = icmp ult i32 %i.mn, 3
  br i1 %i.mo, label %.lr.ph688.epil.preheader, label %.lr.ph688.preheader.new

.lr.ph688.preheader.new:                          ; preds = %.lr.ph688.preheader
  %unroll_iter1142 = and i64 %i.mm, -4
  br label %.lr.ph688

.lr.ph685:                                        ; preds = %.lr.ph685, %.lr.ph685.preheader.new
  %indvars.iv843 = phi i64 [ %i.ku, %.lr.ph685.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph685 ] ; 3 uses
  %indvars.iv841 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %indvars.iv.next842.1, %.lr.ph685 ] ; 3 uses
  %.0437683 = phi i32 [ 0, %.lr.ph685.preheader.new ], [ %i.ne, %.lr.ph685 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %niter1138.next.1, %.lr.ph685 ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !70
  %i.mr = fptrunc double %i.mq to float
  %i.ms = sext i32 %.0437683 to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.ms
  store float %i.mr, ptr %i.mt, align 4, !tbaa !76
  %i.mu = trunc nsw i64 %indvars.iv843 to i32
  %i.mv = add nsw i32 %.0437683, %i.mu            ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load double, ptr %i.mx, align 8, !tbaa !70
  %i.mz = fptrunc double %i.my to float
  %i.na = sext i32 %i.mv to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.na
  store float %i.mz, ptr %i.nb, align 4, !tbaa !76
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %i.nc = trunc i64 %indvars.iv843 to i32
  %i.nd = add i32 %i.nc, -1
  %i.ne = add nsw i32 %i.mv, %i.nd                ; 2 uses
  %indvars.iv.next844.1 = add nsw i64 %indvars.iv843, -2
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge686.unr-lcssa, label %.lr.ph685, !llvm.loop !36

._crit_edge689.loopexit.unr-lcssa:                ; preds = %.lr.ph688
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1140.not, label %._crit_edge689, label %.lr.ph688.epil.preheader

.lr.ph688.epil.preheader:                         ; preds = %._crit_edge689.loopexit.unr-lcssa, %.lr.ph688.preheader
  %indvars.iv851.epil.init = phi i64 [ 1, %.lr.ph688.preheader ], [ %indvars.iv.next852.3, %._crit_edge689.loopexit.unr-lcssa ]
  %lcmp.mod1141 = icmp ne i64 %xtraiter1139, 0
  call void @llvm.assume(i1 %lcmp.mod1141)
  br label %.lr.ph688.epil

.lr.ph688.epil:                                   ; preds = %.lr.ph688.epil, %.lr.ph688.epil.preheader
  %indvars.iv851.epil = phi i64 [ %indvars.iv851.epil.init, %.lr.ph688.epil.preheader ], [ %indvars.iv.next852.epil, %.lr.ph688.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph688.epil.preheader ], [ %epil.iter.next, %.lr.ph688.epil ]
  %i.nf = mul nuw nsw i64 %indvars.iv851.epil, %wide.trip.count
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.nf
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv851.epil
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !77
  %indvars.iv.next852.epil = add nuw nsw i64 %indvars.iv851.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1139
  br i1 %epil.iter.cmp.not, label %._crit_edge689, label %.lr.ph688.epil, !llvm.loop !37

._crit_edge689:                                   ; preds = %._crit_edge689.loopexit.unr-lcssa, %.lr.ph688.epil, %gv_calloc.exit535.thread, %gv_calloc.exit535
  %i.ni = phi ptr [ %i.mf, %gv_calloc.exit535.thread ], [ %i.ma, %gv_calloc.exit535 ], [ %i.ma, %.lr.ph688.epil ], [ %i.ma, %._crit_edge689.loopexit.unr-lcssa ] ; 7 uses
  %i.nj = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 8 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.au, label %gv_calloc.exit540

bb.au:                                            ; preds = %._crit_edge689
  %i.nl = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.nm = shl nuw nsw i64 %wide.trip.count, 2
  %i.nn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nl, ptr noundef nonnull @.str.9, i64 noundef %i.nm) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit540:                                ; preds = %._crit_edge689
  %i.no = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 18 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %gv_calloc.exit540
  %i.nq = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.nr = shl nuw nsw i64 %wide.trip.count, 2
  %i.ns = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nq, ptr noundef nonnull @.str.9, i64 noundef %i.nr) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.aw:                                            ; preds = %gv_calloc.exit540
  %9 = zext nneg i32 %i.fw to i64                 ; 2 uses
  %i.nt = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %9, i64 noundef 4) #15 ; 10 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.ax, label %gv_calloc.exit550

bb.ax:                                            ; preds = %bb.aw
  %i.nv = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.nw = shl nuw nsw i64 %9, 2
  %i.nx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nv, ptr noundef nonnull @.str.9, i64 noundef %i.nw) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit550:                                ; preds = %bb.aw
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.nz = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.oa = load i32, ptr %i.c, align 4, !tbaa !72
  %i.ob = call ptr @initConstrainedMajorization(ptr noundef nonnull %.1477, i32 noundef %1, ptr noundef %i.ny, ptr noundef %i.nz, i32 noundef %i.oa) #11 ; 3 uses
  %i.oc = icmp slt i32 %7, 1
  br i1 %i.oc, label %.preheader591, label %.lr.ph733

.lr.ph733:                                        ; preds = %gv_calloc.exit550
  %i.od = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.oe = fptrunc double %8 to float
  %i.of = zext nneg i32 %1 to i64
  %wide.trip.count880 = zext nneg i32 %i.ft to i64
  %wide.trip.count859 = zext nneg i32 %4 to i64
  %wide.trip.count895 = zext nneg i32 %4 to i64
  %wide.trip.count900 = zext nneg i32 %4 to i64
  %wide.trip.count905 = zext nneg i32 %4 to i64
  %wide.trip.count910 = zext nneg i32 %4 to i64
  %exitcond911.peel.not = icmp eq i32 %4, 1
  %exitcond911.peel916.not = icmp eq i32 %4, 2
  %xtraiter1152 = and i64 %wide.trip.count849, 1
  %i.og = icmp eq i64 %i.ks, 0
  %unroll_iter1156 = and i64 %wide.trip.count849, 2147483646
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  %lcmp.mod1155 = trunc i32 %smax848 to i1
  br label %.lr.ph708.preheader

.lr.ph688:                                        ; preds = %.lr.ph688, %.lr.ph688.preheader.new
  %indvars.iv851 = phi i64 [ 1, %.lr.ph688.preheader.new ], [ %indvars.iv.next852.3, %.lr.ph688 ] ; 6 uses
  %niter1143 = phi i64 [ 0, %.lr.ph688.preheader.new ], [ %niter1143.next.3, %.lr.ph688 ]
  %i.oh = mul nuw nsw i64 %indvars.iv851, %wide.trip.count
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv851
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !77
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %i.ok = mul nuw nsw i64 %indvars.iv.next852, %wide.trip.count
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ok
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv.next852
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !77
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv851, 2 ; 2 uses
  %i.on = mul nuw nsw i64 %indvars.iv.next852.1, %wide.trip.count
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv.next852.1
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !77
  %indvars.iv.next852.2 = add nuw nsw i64 %indvars.iv851, 3 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next852.2, %wide.trip.count
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv.next852.2
  store ptr %i.or, ptr %i.os, align 8, !tbaa !77
  %indvars.iv.next852.3 = add nuw nsw i64 %indvars.iv851, 4 ; 2 uses
  %niter1143.next.3 = add nuw i64 %niter1143, 4   ; 2 uses
  %niter1143.ncmp.3 = icmp eq i64 %niter1143.next.3, %unroll_iter1142
  br i1 %niter1143.ncmp.3, label %._crit_edge689.loopexit.unr-lcssa, label %.lr.ph688, !llvm.loop !38

.preheader591:                                    ; preds = %._crit_edge730, %gv_calloc.exit550
  %.2441.lcssa = phi i32 [ 0, %gv_calloc.exit550 ], [ %i.ud, %._crit_edge730 ]
  br i1 %i.ie, label %.preheader.preheader, label %._crit_edge739.split

.preheader.preheader:                             ; preds = %.preheader591
  %smax922 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count928 = zext nneg i32 %4 to i64
  %wide.trip.count923 = zext nneg i32 %smax922 to i64
  %min.iters.check1093 = icmp slt i32 %1, 4
  %n.vec1095 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %cmp.n1102 = icmp eq i64 %n.vec1095, %wide.trip.count812
  br label %.preheader

.lr.ph708.preheader:                              ; preds = %._crit_edge730, %.lr.ph733
  %.0434732 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph733 ], [ %.1.lcssa, %._crit_edge730 ] ; 3 uses
  %.2441731 = phi i32 [ 0, %.lr.ph733 ], [ %i.ud, %._crit_edge730 ] ; 2 uses
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.kh) #11
  call void @sqrt_vecf(i32 noundef %i.fw, ptr noundef nonnull %.1477, ptr noundef nonnull %i.nt) #11
  br label %.lr.ph708

.lr.ph708:                                        ; preds = %.lr.ph708.preheader, %._crit_edge702
  %indvars.iv877 = phi i64 [ 0, %.lr.ph708.preheader ], [ %indvars.iv.next878, %._crit_edge702 ] ; 6 uses
  %indvars.iv864 = phi i32 [ %i.ft, %.lr.ph708.preheader ], [ %indvars.iv.next865, %._crit_edge702 ] ; 5 uses
  %.0432705 = phi i32 [ 0, %.lr.ph708.preheader ], [ %.1433.lcssa, %._crit_edge702 ] ; 2 uses
  %i.ot = trunc nuw nsw i64 %indvars.iv877 to i32
  %i.ou = xor i32 %i.ot, -1
  %i.ov = add nsw i32 %1, %i.ou                   ; 6 uses
  call void @set_vector_valf(i32 noundef %1, float noundef 0.000000e+00, ptr noundef nonnull %i.no) #11
  br i1 %i.ie, label %.lr.ph692, label %._crit_edge693

._crit_edge693:                                   ; preds = %.lr.ph692, %.lr.ph708
  call void @invert_sqrt_vec(i32 noundef %i.ov, ptr noundef nonnull %i.no) #11
  %i.ow = icmp sgt i32 %i.ov, 0
  br i1 %i.ow, label %.lr.ph696.preheader, label %.preheader592.thread

.preheader592.thread:                             ; preds = %._crit_edge693
  %.1433697954 = add i32 %.0432705, 1
  br label %._crit_edge702

.lr.ph696.preheader:                              ; preds = %._crit_edge693
  %wide.trip.count866 = zext i32 %indvars.iv864 to i64 ; 5 uses
  %min.iters.check1067 = icmp ult i32 %indvars.iv864, 8
  br i1 %min.iters.check1067, label %.lr.ph696.preheader1109, label %vector.ph1068

vector.ph1068:                                    ; preds = %.lr.ph696.preheader
  %n.vec1069 = and i64 %wide.trip.count866, 4294967288 ; 3 uses
  br label %vector.body1070

vector.body1070:                                  ; preds = %pred.store.continue1087, %vector.ph1068
  %index1071 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1088, %pred.store.continue1087 ] ; 9 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load1072.a = load <4 x float>, ptr %i.ox, align 4, !tbaa !76 ; 2 uses
  %wide.load1073 = load <4 x float>, ptr %i.oy, align 4, !tbaa !76 ; 2 uses
  %i.oz = fcmp oge <4 x float> %wide.load1072.a, splat (float f0x7F7FFFFF)
  %i.pa = fcmp oge <4 x float> %wide.load1073, splat (float f0x7F7FFFFF)
  %i.pb = fcmp olt <4 x float> %wide.load1072.a, zeroinitializer
  %i.pc = fcmp olt <4 x float> %wide.load1073, zeroinitializer
  %i.pd = or <4 x i1> %i.oz, %i.pb                ; 4 uses
  %i.pe = or <4 x i1> %i.pa, %i.pc                ; 4 uses
  %i.pf = extractelement <4 x i1> %i.pd, i64 0
  br i1 %i.pf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1070
  store float 0.000000e+00, ptr %i.ox, align 4, !tbaa !76
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1070
  %i.pg = extractelement <4 x i1> %i.pd, i64 1
  br i1 %i.pg, label %pred.store.if1074, label %pred.store.continue1075

pred.store.if1074:                                ; preds = %pred.store.continue
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store float 0.000000e+00, ptr %i.pi, align 4, !tbaa !76
  br label %pred.store.continue1075

pred.store.continue1075:                          ; preds = %pred.store.if1074, %pred.store.continue
  %i.pj = extractelement <4 x i1> %i.pd, i64 2
  br i1 %i.pj, label %pred.store.if1076, label %pred.store.continue1077

pred.store.if1076:                                ; preds = %pred.store.continue1075
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store float 0.000000e+00, ptr %i.pl, align 4, !tbaa !76
  br label %pred.store.continue1077

pred.store.continue1077:                          ; preds = %pred.store.if1076, %pred.store.continue1075
  %i.pm = extractelement <4 x i1> %i.pd, i64 3
  br i1 %i.pm, label %pred.store.if1078, label %pred.store.continue1079

pred.store.if1078:                                ; preds = %pred.store.continue1077
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store float 0.000000e+00, ptr %i.po, align 4, !tbaa !76
  br label %pred.store.continue1079

pred.store.continue1079:                          ; preds = %pred.store.if1078, %pred.store.continue1077
  %i.pp = extractelement <4 x i1> %i.pe, i64 0
  br i1 %i.pp, label %pred.store.if1080, label %pred.store.continue1081

pred.store.if1080:                                ; preds = %pred.store.continue1079
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store float 0.000000e+00, ptr %i.pr, align 4, !tbaa !76
  br label %pred.store.continue1081

pred.store.continue1081:                          ; preds = %pred.store.if1080, %pred.store.continue1079
  %i.ps = extractelement <4 x i1> %i.pe, i64 1
  br i1 %i.ps, label %pred.store.if1082, label %pred.store.continue1083

pred.store.if1082:                                ; preds = %pred.store.continue1081
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 20
  store float 0.000000e+00, ptr %i.pu, align 4, !tbaa !76
  br label %pred.store.continue1083

pred.store.continue1083:                          ; preds = %pred.store.if1082, %pred.store.continue1081
  %i.pv = extractelement <4 x i1> %i.pe, i64 2
  br i1 %i.pv, label %pred.store.if1084, label %pred.store.continue1085

pred.store.if1084:                                ; preds = %pred.store.continue1083
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store float 0.000000e+00, ptr %i.px, align 4, !tbaa !76
  br label %pred.store.continue1085

pred.store.continue1085:                          ; preds = %pred.store.if1084, %pred.store.continue1083
  %i.py = extractelement <4 x i1> %i.pe, i64 3
  br i1 %i.py, label %pred.store.if1086, label %pred.store.continue1087

pred.store.if1086:                                ; preds = %pred.store.continue1085
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index1071
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 28
  store float 0.000000e+00, ptr %i.qa, align 4, !tbaa !76
  br label %pred.store.continue1087

pred.store.continue1087:                          ; preds = %pred.store.if1086, %pred.store.continue1085
  %index.next1088 = add nuw i64 %index1071, 8     ; 2 uses
  %i.qb = icmp eq i64 %index.next1088, %n.vec1069
  br i1 %i.qb, label %middle.block1089, label %vector.body1070, !llvm.loop !39

end_hunk_1
