Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/polar_svd?download=true
inline.NumInlined: 18204
inline.NumDeleted: 9109
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i.i.i.i.i112, %bb.aq
  %.274.i.i.i.i.i105 = phi <2 x double> [ %i.rc, %bb.aq ], [ %i.ru, %bb.as ], [ %i.rg, %._crit_edge.i.i.i.i.i112 ] ; 2 uses
  %shift312 = shufflevector <2 x double> %.274.i.i.i.i.i105, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fadd <2 x double> %.274.i.i.i.i.i105, %shift312
  %i.rv = extractelement <2 x double> %foldExtExtBinop313, i64 0 ; 3 uses
  br i1 %i.pw, label %.lr.ph85.i.i.i.i.i108.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

.lr.ph85.i.i.i.i.i108.preheader:                  ; preds = %bb.at
  br i1 %lcmp.mod345.not, label %.lr.ph85.i.i.i.i.i108.prol.loopexit, label %.lr.ph85.i.i.i.i.i108.prol

.lr.ph85.i.i.i.i.i108.prol:                       ; preds = %.lr.ph85.i.i.i.i.i108.preheader, %.lr.ph85.i.i.i.i.i108.prol
  %.05283.i.i.i.i.i109.prol = phi i64 [ %i.sa, %.lr.ph85.i.i.i.i.i108.prol ], [ %i.ps, %.lr.ph85.i.i.i.i.i108.preheader ] ; 2 uses
  %.182.i.i.i.i.i110.prol = phi double [ %i.rz, %.lr.ph85.i.i.i.i.i108.prol ], [ %i.rv, %.lr.ph85.i.i.i.i.i108.preheader ]
  %prol.iter346 = phi i64 [ %prol.iter346.next, %.lr.ph85.i.i.i.i.i108.prol ], [ 0, %.lr.ph85.i.i.i.i.i108.preheader ]
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %.05283.i.i.i.i.i109.prol
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !39 ; 2 uses
  %i.ry = fmul double %i.rx, %i.rx
  %i.rz = fadd double %.182.i.i.i.i.i110.prol, %i.ry ; 3 uses
  %i.sa = add nsw i64 %.05283.i.i.i.i.i109.prol, 1 ; 2 uses
  %prol.iter346.next = add i64 %prol.iter346, 1   ; 2 uses
  %prol.iter346.cmp.not = icmp eq i64 %prol.iter346.next, %xtraiter344
  br i1 %prol.iter346.cmp.not, label %.lr.ph85.i.i.i.i.i108.prol.loopexit, label %.lr.ph85.i.i.i.i.i108.prol, !llvm.loop !641

.lr.ph85.i.i.i.i.i108.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i108.prol, %.lr.ph85.i.i.i.i.i108.preheader
  %.lcssa318.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i108.preheader ], [ %i.rz, %.lr.ph85.i.i.i.i.i108.prol ]
  %.05283.i.i.i.i.i109.unr = phi i64 [ %i.ps, %.lr.ph85.i.i.i.i.i108.preheader ], [ %i.sa, %.lr.ph85.i.i.i.i.i108.prol ]
  %.182.i.i.i.i.i110.unr = phi double [ %i.rv, %.lr.ph85.i.i.i.i.i108.preheader ], [ %i.rz, %.lr.ph85.i.i.i.i.i108.prol ]
  br i1 %i.qa, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i108

.lr.ph85.i.i.i.i.i108:                            ; preds = %.lr.ph85.i.i.i.i.i108.prol.loopexit, %.lr.ph85.i.i.i.i.i108
  %.05283.i.i.i.i.i109 = phi i64 [ %i.su, %.lr.ph85.i.i.i.i.i108 ], [ %.05283.i.i.i.i.i109.unr, %.lr.ph85.i.i.i.i.i108.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i110 = phi double [ %i.st, %.lr.ph85.i.i.i.i.i108 ], [ %.182.i.i.i.i.i110.unr, %.lr.ph85.i.i.i.i.i108.prol.loopexit ]
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %.05283.i.i.i.i.i109
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !39 ; 2 uses
  %i.sd = fmul double %i.sc, %i.sc
  %i.se = fadd double %.182.i.i.i.i.i110, %i.sd
  %i.sf = getelementptr [8 x i8], ptr %i.ra, i64 %.05283.i.i.i.i.i109
  %i.sg = getelementptr i8, ptr %i.sf, i64 8
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !39 ; 2 uses
  %i.si = fmul double %i.sh, %i.sh
  %i.sj = fadd double %i.se, %i.si
  %i.sk = getelementptr [8 x i8], ptr %i.ra, i64 %.05283.i.i.i.i.i109
  %i.sl = getelementptr i8, ptr %i.sk, i64 16
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !39 ; 2 uses
  %i.sn = fmul double %i.sm, %i.sm
  %i.so = fadd double %i.sj, %i.sn
  %i.sp = getelementptr [8 x i8], ptr %i.ra, i64 %.05283.i.i.i.i.i109
  %i.sq = getelementptr i8, ptr %i.sp, i64 24
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !39 ; 2 uses
  %i.ss = fmul double %i.sr, %i.sr
  %i.st = fadd double %i.so, %i.ss                ; 2 uses
  %i.su = add nsw i64 %.05283.i.i.i.i.i109, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i111.3 = icmp eq i64 %i.su, %i.oj
  br i1 %exitcond.not.i.i.i.i.i111.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i108, !llvm.loop !642

bb.au:                                            ; preds = %bb.ap
  %i.sv = load double, ptr %i.ra, align 8, !tbaa !39 ; 2 uses
  %i.sw = fmul double %i.sv, %i.sv
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i108.prol.loopexit, %.lr.ph85.i.i.i.i.i108, %bb.ao, %bb.at, %bb.au
  %.0.i.i.i106 = phi double [ 0.000000e+00, %bb.ao ], [ %i.rv, %bb.at ], [ %i.sw, %bb.au ], [ %.lcssa318.unr, %.lr.ph85.i.i.i.i.i108.prol.loopexit ], [ %i.st, %.lr.ph85.i.i.i.i.i108 ]
  %.scalar.i107 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i106) ; 2 uses
  store double %.scalar.i107, ptr %i.qs, align 8, !tbaa !39
  br label %.sink.split

bb.av:                                            ; preds = %bb.an
  %.scalar = call double @llvm.sqrt.f64(double %i.qq)
  %i.sx = fmul double %i.qc, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.av, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i107.sink = phi double [ %.scalar.i107, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.sx, %bb.av ]
  store double %.scalar.i107.sink, ptr %i.qb, align 8, !tbaa !39
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.am
  %i.sy = add nuw nsw i64 %.072195, 1             ; 2 uses
  %exitcond218.not = icmp eq i64 %i.sy, %i.e
  br i1 %exitcond218.not, label %._crit_edge198, label %bb.am, !llvm.loop !643

._crit_edge206.loopexit.unr-lcssa:                ; preds = %bb.ax
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %._crit_edge206, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge206.loopexit.unr-lcssa, %._crit_edge202
  %indvars.iv.epil.init = phi i64 [ 0, %._crit_edge202 ], [ %indvars.iv.next.1, %._crit_edge206.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod349 = trunc i64 %.sroa.speculated.i to i1
  call void @llvm.assume(i1 %lcmp.mod349)
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.epil.init
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !183
  %sext80.epil = shl i64 %i.ta, 32
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.epil.init ; 2 uses
  %i.tc = ashr exact i64 %sext80.epil, 30
  %i.td = getelementptr inbounds i8, ptr %i.it, i64 %i.tc ; 2 uses
  %i.te = load i32, ptr %i.tb, align 4, !tbaa !191
  %i.tf = load i32, ptr %i.td, align 4, !tbaa !191
  store i32 %i.tf, ptr %i.tb, align 4, !tbaa !191
  store i32 %i.te, ptr %i.td, align 4, !tbaa !191
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %.epil.preheader, %._crit_edge206.loopexit.unr-lcssa, %._crit_edge202.thread
  %.075.lcssa250 = phi i64 [ 1, %._crit_edge202.thread ], [ %i.ip, %._crit_edge206.loopexit.unr-lcssa ], [ %i.ip, %.epil.preheader ]
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.075.lcssa250, ptr %i.tg, align 8, !tbaa !669
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.th, align 8, !tbaa !163
  ret void

bb.ax:                                            ; preds = %bb.ax, %._crit_edge202.new
  %indvars.iv = phi i64 [ 0, %._crit_edge202.new ], [ %indvars.iv.next.1, %bb.ax ] ; 4 uses
  %niter351 = phi i64 [ 0, %._crit_edge202.new ], [ %niter351.next.1, %bb.ax ]
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !183
  %sext80 = shl i64 %i.tj, 32
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv ; 2 uses
  %i.tl = ashr exact i64 %sext80, 30
  %i.tm = getelementptr inbounds i8, ptr %i.it, i64 %i.tl ; 2 uses
  %i.tn = load i32, ptr %i.tk, align 4, !tbaa !191
  %i.to = load i32, ptr %i.tm, align 4, !tbaa !191
  store i32 %i.to, ptr %i.tk, align 4, !tbaa !191
  store i32 %i.tn, ptr %i.tm, align 4, !tbaa !191
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !183
  %sext80.1 = shl i64 %i.tq, 32
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.next ; 2 uses
  %i.ts = ashr exact i64 %sext80.1, 30
  %i.tt = getelementptr inbounds i8, ptr %i.it, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tr, align 4, !tbaa !191
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !191
  store i32 %i.tv, ptr %i.tr, align 4, !tbaa !191
  store i32 %i.tu, ptr %i.tt, align 4, !tbaa !191
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter351.next.1 = add i64 %niter351, 2         ; 2 uses
  %niter351.ncmp.1 = icmp eq i64 %niter351.next.1, %unroll_iter350
  br i1 %niter351.ncmp.1, label %._crit_edge206.loopexit.unr-lcssa, label %bb.ax, !llvm.loop !644
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Lin1ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::generic_product_impl<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, 1>>, const Eigen::Block<Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>, -1, 1>>, Eigen::Map<Eigen::Matrix<double, 1, -1>>>::sub", align 1 ; 3 uses
  %5 = alloca %"struct.Eigen::internal::generic_product_impl<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, 1>>, const Eigen::Block<Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>, -1, 1>>, Eigen::Map<Eigen::Matrix<double, 1, -1>>>::is_row_major", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Transpose.971", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::Transpose.979", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Transpose.986", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.891", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.895", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.900", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::mul_assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block.823", align 8 ; 11 uses
  %.sroa.537 = alloca [96 x i8], align 8          ; 5 uses
  %14 = alloca %"class.Eigen::Product.871", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168  ; 7 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !39  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store double %i.f, ptr %9, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.g = load ptr, ptr %0, align 8, !tbaa !167
  store ptr %i.g, ptr %10, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194, !nonnull !130, !align !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  store i64 %i.l, ptr %i.h, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %10, ptr %11, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.m, align 8, !tbaa !198
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.n, align 8, !tbaa !200
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %0, ptr %i.o, align 8, !tbaa !202
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES6_EEEENS0_13mul_assign_opIddEELi0EEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.p = fcmp une double %i.e, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.s = add nsw i64 %i.c, -1                     ; 6 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.u, ptr %13, align 8, !tbaa !204
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.s, ptr %i.w, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.r, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 1, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 0, ptr %i.aa, align 8, !tbaa !168
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194, !nonnull !130, !align !131
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537)
  %.sroa.034.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 12 uses
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.537, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.034.sroa.4.0..sroa_idx, i64 96, i1 false)
  %i.ag = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1
  %i.ak = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.r)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.r, %bb.d ] ; 8 uses
  %i.al = sub i64 %i.r, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.am = sdiv i64 %i.al, 2                       ; 2 uses
  %i.an = shl nsw i64 %i.am, 1                    ; 2 uses
  %i.ao = add i64 %i.an, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i:   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.aq, i1 false), !tbaa !39
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = icmp sgt i64 %i.al, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i:     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %3, i64 %i.as
  %i.at = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %i.at)
  %i.au = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.av = add i64 %smax.i.i.i.i.i, %i.au
  %i.aw = shl i64 %i.av, 3
  %i.ax = and i64 %i.aw, -16
  %i.ay = add i64 %i.ax, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.ay, i1 false), !tbaa !44
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = icmp slt i64 %i.ao, %i.r
  br i1 %i.az, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = shl i64 %i.am, 4
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.bc = getelementptr i8, ptr %3, i64 %i.ba
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.bd = sub i64 %i.al, %i.an
  %i.be = shl nuw i64 %i.bd, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !39
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !39
  %i.bf = icmp eq i64 %i.r, 1
  br i1 %i.bf, label %bb.f, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i
  %i.bg = sdiv i64 %i.s, 4
  %i.bh = shl nsw i64 %i.bg, 2                    ; 4 uses
  %i.bi = sdiv i64 %i.s, 2
  %i.bj = shl nsw i64 %i.bi, 1                    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.c, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load <2 x double>, ptr %.sroa.034.sroa.0.0.copyload, align 1, !tbaa !44
  %i.bl = load <2 x double>, ptr %i.u, align 1, !tbaa !44
  %i.bm = fmul <2 x double> %i.bk, %i.bl          ; 3 uses
  %i.bn = icmp sgt i64 %i.c, 4
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.034.sroa.0.0.copyload, i64 16
  %i.bp = load <2 x double>, ptr %i.bo, align 1, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.br = load <2 x double>, ptr %i.bq, align 1, !tbaa !44
  %i.bs = fmul <2 x double> %i.bp, %i.br          ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.c, 8
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bs, %bb.h ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bm, %bb.h ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bu = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bv = icmp sgt i64 %i.bj, %i.bh
  br i1 %i.bv, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.h ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %bb.h ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.h ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load <2 x double>, ptr %i.bw, align 1, !tbaa !44
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = load <2 x double>, ptr %i.by, align 1, !tbaa !44
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i, %i.ca ; 2 uses
  %i.cc = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.cc
  %i.ce = load <2 x double>, ptr %i.cd, align 1, !tbaa !44
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cc
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !44
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i, %i.ch ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.cj = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !670

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.bh
  %i.cl = load <2 x double>, ptr %i.ck, align 1, !tbaa !44
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bh
  %i.cn = load <2 x double>, ptr %i.cm, align 1, !tbaa !44
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = fadd <2 x double> %i.bu, %i.co
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.274.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bm, %bb.g ], [ %i.cp, %bb.i ], [ %i.bu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, %shift
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.cr = icmp slt i64 %i.bj, %i.s
  br i1 %i.cr, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.j
  %i.cs = xor i64 %i.bj, -1
  %i.ct = add i64 %i.c, %i.cs
  %i.cu = add i64 %i.c, -2
  %i.cv = sub i64 %i.cu, %i.bj
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !39
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !39
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.prol, %i.da ; 3 uses
  %i.dc = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !671

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bj, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dd = icmp ult i64 %i.cv, 3
  br i1 %i.dd, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ee, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !39
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !39
  %i.di = fmul double %i.df, %i.dh
  %i.dj = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i, %i.di
  %i.dk = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dk
  %i.do = load double, ptr %i.dn, align 8, !tbaa !39
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fadd double %i.dj, %i.dp
  %i.dr = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !39
  %i.du = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dr
  %i.dv = load double, ptr %i.du, align 8, !tbaa !39
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = fadd double %i.dq, %i.dw
  %i.dy = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !39
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dy
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !39
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %i.dx, %i.ed                ; 2 uses
  %i.ef = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ef, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !672

bb.k:                                             ; preds = %bb.f
  %i.eg = load double, ptr %.sroa.034.sroa.0.0.copyload, align 8, !tbaa !39
  %i.eh = load double, ptr %i.u, align 8, !tbaa !39
  %i.ei = fmul double %i.eg, %i.eh
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi double [ %i.ei, %bb.k ], [ %i.cq, %bb.j ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ej = load double, ptr %3, align 8, !tbaa !39
  %i.ek = fadd double %.0.i.i.i.i.i.i.i.i.i, %i.ej
  store double %i.ek, ptr %3, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537)
  %i.el = load ptr, ptr %0, align 8, !tbaa !167, !noalias !693
  %.sroa.627.24.copyload69 = load ptr, ptr %i.v, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.627.24.copyload69, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !37
  br label %.lr.ph.i.i.i.i.i.i.preheader

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %.sroa.034.sroa.0.0.copyload, ptr %8, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.537, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.u, ptr %7, align 8
  %.sroa.840.104..sroa_idx41 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.s, ptr %.sroa.840.104..sroa_idx41, align 8
  %.sroa.943.104..sroa_idx44 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.r, ptr %.sroa.943.104..sroa_idx44, align 8
  %.sroa.1046.104..sroa_idx47 = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1046.104..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %3, ptr %6, align 8
  %.sroa.10.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx54, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_5BlockINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS4_IKNS5_INS5_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS4_INS_3MapINS6_IdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKT_RKT0_RT1_RKNSU_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537)
  %i.eo = load ptr, ptr %0, align 8, !tbaa !167, !noalias !693 ; 2 uses
  %.sroa.627.24.copyload = load ptr, ptr %i.v, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.627.24.copyload, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !37 ; 2 uses
  %i.er = icmp sgt i64 %i.r, 0
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.es = phi i64 [ %i.en, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread ], [ %i.eq, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 4 uses
  %i.et = phi ptr [ %i.el, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread ], [ %i.eo, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 7 uses
  %min.iters.check = icmp ugt i64 %i.r, 7
  %ident.check.not = icmp eq i64 %i.es, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.preheader103

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.eu = shl i64 %i.r, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.eu
  %scevgep74 = getelementptr i8, ptr %i.et, i64 %i.eu
  %bound0 = icmp ult ptr %3, %scevgep74
  %bound1 = icmp ult ptr %i.et, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <2 x double>, ptr %i.ew, align 8, !tbaa !39, !alias.scope !694
  %wide.load75 = load <2 x double>, ptr %i.ex, align 8, !tbaa !39, !alias.scope !694
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.ev, align 8, !tbaa !39, !alias.scope !695, !noalias !694
  %wide.load77 = load <2 x double>, ptr %i.ey, align 8, !tbaa !39, !alias.scope !695, !noalias !694
  %i.ez = fadd <2 x double> %wide.load, %wide.load76
  %i.fa = fadd <2 x double> %wide.load75, %wide.load77
  store <2 x double> %i.ez, ptr %i.ev, align 8, !tbaa !39, !alias.scope !695, !noalias !694
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !39, !alias.scope !695, !noalias !694
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader103

.lr.ph.i.i.i.i.i.i.preheader103:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter106 = and i64 %i.r, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader103
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %i.fd = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.es
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !39
  %i.fg = load double, ptr %i.fc, align 8, !tbaa !39
  %i.fh = fadd double %i.ff, %i.fg
  store double %i.fh, ptr %i.fc, align 8, !tbaa !39
  %i.fi = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader103
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader103 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.fj = icmp eq i64 %i.r, %.neg
  br i1 %i.fj, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %i.fl = mul nsw i64 %.05.i.i.i.i.i.i, %i.es
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !39
  %i.fo = load double, ptr %i.fk, align 8, !tbaa !39
  %i.fp = fadd double %i.fn, %i.fo
  store double %i.fp, ptr %i.fk, align 8, !tbaa !39
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fq ; 2 uses
  %i.fs = mul nsw i64 %i.fq, %i.es
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !39
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !39
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !39
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.fx, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !679

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %.sroa.7.24.copyload.pre = load ptr, ptr %i.v, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.7.24.copyload.pre, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.fy = phi ptr [ %i.et, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.eo, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 6 uses
  %i.fz = phi i64 [ %.pre, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.eq, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 4 uses
  %i.ga = load double, ptr %2, align 8, !tbaa !39, !noalias !696 ; 5 uses
  %i.gb = load i64, ptr %i.q, align 8, !tbaa !168, !noalias !697 ; 8 uses
  %i.gc = icmp sgt i64 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i.i8.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i8.preheader:                    ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %min.iters.check87 = icmp ugt i64 %i.gb, 5
  %ident.check79.not = icmp eq i64 %i.fz, 1
  %or.cond100 = select i1 %min.iters.check87, i1 %ident.check79.not, i1 false
  br i1 %or.cond100, label %vector.memcheck80, label %.lr.ph.i.i.i.i.i.i8.preheader102

vector.memcheck80:                                ; preds = %.lr.ph.i.i.i.i.i.i8.preheader
  %i.gd = shl i64 %i.gb, 3                        ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.fy, i64 %i.gd
  %scevgep82 = getelementptr i8, ptr %3, i64 %i.gd
  %bound083 = icmp ult ptr %i.fy, %scevgep82
  %bound184 = icmp ult ptr %3, %scevgep81
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %.lr.ph.i.i.i.i.i.i8.preheader102, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck80
  %n.vec89 = and i64 %i.gb, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ga, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %index91 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index91 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load92 = load <2 x double>, ptr %i.gf, align 8, !tbaa !39, !alias.scope !698
  %wide.load93 = load <2 x double>, ptr %i.gg, align 8, !tbaa !39, !alias.scope !698
  %i.gh = fmul <2 x double> %broadcast.splat, %wide.load92
  %i.gi = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.ge, align 8, !tbaa !39, !alias.scope !699, !noalias !698
  %wide.load95 = load <2 x double>, ptr %i.gj, align 8, !tbaa !39, !alias.scope !699, !noalias !698
  %i.gk = fsub <2 x double> %wide.load94, %i.gh
  %i.gl = fsub <2 x double> %wide.load95, %i.gi
  store <2 x double> %i.gk, ptr %i.ge, align 8, !tbaa !39, !alias.scope !699, !noalias !698
  store <2 x double> %i.gl, ptr %i.gj, align 8, !tbaa !39, !alias.scope !699, !noalias !698
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.gm = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.gm, label %middle.block97, label %vector.body90, !llvm.loop !687

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.gb, %n.vec89
  br i1 %cmp.n98, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.preheader102

.lr.ph.i.i.i.i.i.i8.preheader102:                 ; preds = %vector.memcheck80, %.lr.ph.i.i.i.i.i.i8.preheader, %middle.block97
  %.05.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph.i.i.i.i.i.i8.preheader ], [ %n.vec89, %middle.block97 ] ; 5 uses
  %.neg112 = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  %xtraiter109 = and i64 %i.gb, 1
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i.i.i.i8.prol

.lr.ph.i.i.i.i.i.i8.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i8.preheader102
  %i.gn = mul nsw i64 %.05.i.i.i.i.i.i9.ph, %i.fz
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !39
  %i.gr = fmul double %i.ga, %i.gq
end_hunk_0
begin_hunk_1_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

._crit_edge.i.i.i.i.i.i11:                        ; preds = %.lr.ph.i.i.i.i.i.i15, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.gl = icmp slt i64 %i.fb, %i.es
  br i1 %i.gl, label %.lr.ph.i17.i.i.i.i.i.i12.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i12.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i11
  %i.gm = add i64 %.0.i.i.i.i.i.i.i10, %i.fa
  %i.gn = sub i64 %i.es, %i.gm                    ; 3 uses
  %min.iters.check103 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check103, label %.lr.ph.i17.i.i.i.i.i.i12.preheader118, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i12.preheader
  %i.go = shl i64 %i.ez, 4
  %i.gp = shl i64 %.0.i.i.i.i.i.i.i10, 3
  %i.gq = add i64 %i.go, %i.gp                    ; 2 uses
  %scevgep95 = getelementptr i8, ptr %i.er, i64 %i.gq
  %i.gr = shl i64 %i.es, 3                        ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.er, i64 %i.gr
  %scevgep97 = getelementptr i8, ptr %.sroa.5.32.copyload, i64 %i.gq
  %scevgep98 = getelementptr i8, ptr %.sroa.5.32.copyload, i64 %i.gr
  %bound099 = icmp ult ptr %scevgep95, %scevgep98
  %bound1100 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i17.i.i.i.i.i.i12.preheader118, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck94
  %n.vec105 = and i64 %i.gn, -4                   ; 3 uses
  %i.gs = add i64 %i.fb, %n.vec105
  %broadcast.splatinsert106 = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat107 = shufflevector <2 x double> %broadcast.splatinsert106, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph104
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.gt = add i64 %i.fb, %index109                ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %.sroa.5.32.copyload, i64 %i.gt ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load110 = load <2 x double>, ptr %i.gv, align 8, !tbaa !39, !alias.scope !807
  %wide.load111 = load <2 x double>, ptr %i.gw, align 8, !tbaa !39, !alias.scope !807
  %i.gx = fmul <2 x double> %broadcast.splat107, %wide.load110
  %i.gy = fmul <2 x double> %broadcast.splat107, %wide.load111
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load112 = load <2 x double>, ptr %i.gu, align 8, !tbaa !39, !alias.scope !808, !noalias !807
  %wide.load113 = load <2 x double>, ptr %i.gz, align 8, !tbaa !39, !alias.scope !808, !noalias !807
  %i.ha = fsub <2 x double> %wide.load112, %i.gx
  %i.hb = fsub <2 x double> %wide.load113, %i.gy
  store <2 x double> %i.ha, ptr %i.gu, align 8, !tbaa !39, !alias.scope !808, !noalias !807
  store <2 x double> %i.hb, ptr %i.gz, align 8, !tbaa !39, !alias.scope !808, !noalias !807
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next114, %n.vec105
  br i1 %i.hc, label %middle.block115, label %vector.body108, !llvm.loop !791

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.gn, %n.vec105
  br i1 %cmp.n116, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i12.preheader118

.lr.ph.i17.i.i.i.i.i.i12.preheader118:            ; preds = %vector.memcheck94, %.lr.ph.i17.i.i.i.i.i.i12.preheader, %middle.block115
  %.05.i18.i.i.i.i.i.i13.ph = phi i64 [ %i.fb, %vector.memcheck94 ], [ %i.fb, %.lr.ph.i17.i.i.i.i.i.i12.preheader ], [ %i.gs, %middle.block115 ] ; 6 uses
  %i.hd = sub i64 %i.es, %.05.i18.i.i.i.i.i.i13.ph
  %.neg131 = add i64 %.05.i18.i.i.i.i.i.i13.ph, 1
  %xtraiter128 = and i64 %i.hd, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i12.prol

.lr.ph.i17.i.i.i.i.i.i12.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i12.preheader118
  %i.he = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.05.i18.i.i.i.i.i.i13.ph ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.5.32.copyload, i64 %.05.i18.i.i.i.i.i.i13.ph
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !39
  %i.hh = fmul double %i.eq, %i.hg
  %i.hi = load double, ptr %i.he, align 8, !tbaa !39
  %i.hj = fsub double %i.hi, %i.hh
  store double %i.hj, ptr %i.he, align 8, !tbaa !39
  %i.hk = add nsw i64 %.05.i18.i.i.i.i.i.i13.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i12.prol, %.lr.ph.i17.i.i.i.i.i.i12.preheader118
  %.05.i18.i.i.i.i.i.i13.unr = phi i64 [ %.05.i18.i.i.i.i.i.i13.ph, %.lr.ph.i17.i.i.i.i.i.i12.preheader118 ], [ %i.hk, %.lr.ph.i17.i.i.i.i.i.i12.prol ]
  %i.hl = icmp eq i64 %i.es, %.neg131
  br i1 %i.hl, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i12

.lr.ph.i17.i.i.i.i.i.i12:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i12
  %.05.i18.i.i.i.i.i.i13 = phi i64 [ %i.hz, %.lr.ph.i17.i.i.i.i.i.i12 ], [ %.05.i18.i.i.i.i.i.i13.unr, %.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit ] ; 4 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.05.i18.i.i.i.i.i.i13 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %.sroa.5.32.copyload, i64 %.05.i18.i.i.i.i.i.i13
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !39
  %i.hp = fmul double %i.eq, %i.ho
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !39
  %i.hr = fsub double %i.hq, %i.hp
  store double %i.hr, ptr %i.hm, align 8, !tbaa !39
  %i.hs = add nsw i64 %.05.i18.i.i.i.i.i.i13, 1   ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %.sroa.5.32.copyload, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !39
  %i.hw = fmul double %i.eq, %i.hv
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !39
  %i.hy = fsub double %i.hx, %i.hw
  store double %i.hy, ptr %i.ht, align 8, !tbaa !39
  %i.hz = add nsw i64 %.05.i18.i.i.i.i.i.i13, 2   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i14.1 = icmp eq i64 %i.hz, %i.es
  br i1 %exitcond.not.i19.i.i.i.i.i.i14.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i12, !llvm.loop !792

.lr.ph.i.i.i.i.i.i15:                             ; preds = %.lr.ph.i.i.i.i.i.i15, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i16 = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i.i15 ], [ %.0.i.i.i.i.i.i.i10, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.021.i.i.i.i.i.i16 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %.sroa.5.32.copyload, i64 %.021.i.i.i.i.i.i16
  %i.ic = load <2 x double>, ptr %i.ib, align 1, !tbaa !44
  %i.id = fmul <2 x double> %i.gk, %i.ic
  %i.ie = load <2 x double>, ptr %i.ia, align 16, !tbaa !44
  %i.if = fsub <2 x double> %i.ie, %i.id
  store <2 x double> %i.if, ptr %i.ia, align 16, !tbaa !44
  %i.ig = add nsw i64 %.021.i.i.i.i.i.i16, 2      ; 2 uses
  %i.ih = icmp slt i64 %i.ig, %i.fb
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i.i15, label %._crit_edge.i.i.i.i.i.i11, !llvm.loop !793

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i12.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i12, %middle.block115, %._crit_edge.i.i.i.i.i.i11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ii = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !809
  %i.ij = load double, ptr %2, align 8, !tbaa !39, !noalias !809
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ik, ptr noundef nonnull align 8 dereferenceable(17) %10, i64 17, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.il, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ii, ptr %i.im, align 8, !alias.scope !810
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 24
  store double %i.ij, ptr %i.in, align 8, !tbaa !139, !alias.scope !810
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN5Eigen8internal26outer_product_selector_runINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISD_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS2_IKS4_Lin1ELi1ELb0EEEEENS0_20generic_product_implISM_SR_NS_10DenseShapeEST_Li5EE3subEEEvRT_RKT0_RKT1_RKT2_RKNS0_10false_typeE(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(56) %i.il, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::generic_product_impl<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, 1>>, const Eigen::Block<const Eigen::Matrix<double, -1, -1>, -1, 1>>, Eigen::Map<Eigen::Matrix<double, 1, -1>>>::sub", align 1 ; 3 uses
  %5 = alloca %"struct.Eigen::internal::generic_product_impl<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, 1>>, const Eigen::Block<const Eigen::Matrix<double, -1, -1>, -1, 1>>, Eigen::Map<Eigen::Matrix<double, 1, -1>>>::is_row_major", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Transpose.971", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::Transpose.979", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Transpose.1341", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.891", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.895", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.900", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::mul_assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block.823", align 8 ; 11 uses
  %.sroa.537 = alloca [48 x i8], align 8          ; 5 uses
  %14 = alloca %"class.Eigen::Product.1288", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168  ; 7 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !39  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store double %i.f, ptr %9, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.g = load ptr, ptr %0, align 8, !tbaa !167
  store ptr %i.g, ptr %10, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194, !nonnull !130, !align !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  store i64 %i.l, ptr %i.h, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %10, ptr %11, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.m, align 8, !tbaa !198
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.n, align 8, !tbaa !200
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %0, ptr %i.o, align 8, !tbaa !202
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES6_EEEENS0_13mul_assign_opIddEELi0EEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.p = fcmp une double %i.e, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.s = add nsw i64 %i.c, -1                     ; 6 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.u, ptr %13, align 8, !tbaa !204
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.s, ptr %i.w, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.r, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 1, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 0, ptr %i.aa, align 8, !tbaa !168
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194, !nonnull !130, !align !131
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537)
  %.sroa.034.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 12 uses
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.034.sroa.4.0..sroa_idx, i64 48, i1 false)
  %i.ag = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1
  %i.ak = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.r)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.r, %bb.d ] ; 8 uses
  %i.al = sub i64 %i.r, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.am = sdiv i64 %i.al, 2                       ; 2 uses
  %i.an = shl nsw i64 %i.am, 1                    ; 2 uses
  %i.ao = add i64 %i.an, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i:   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.aq, i1 false), !tbaa !39
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = icmp sgt i64 %i.al, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i:     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %3, i64 %i.as
  %i.at = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %i.at)
  %i.au = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.av = add i64 %smax.i.i.i.i.i, %i.au
  %i.aw = shl i64 %i.av, 3
  %i.ax = and i64 %i.aw, -16
  %i.ay = add i64 %i.ax, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.ay, i1 false), !tbaa !44
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = icmp slt i64 %i.ao, %i.r
  br i1 %i.az, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = shl i64 %i.am, 4
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.bc = getelementptr i8, ptr %3, i64 %i.ba
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.bd = sub i64 %i.al, %i.an
  %i.be = shl nuw i64 %i.bd, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !39
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !39
  %i.bf = icmp eq i64 %i.r, 1
  br i1 %i.bf, label %bb.f, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i
  %i.bg = sdiv i64 %i.s, 4
  %i.bh = shl nsw i64 %i.bg, 2                    ; 4 uses
  %i.bi = sdiv i64 %i.s, 2
  %i.bj = shl nsw i64 %i.bi, 1                    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.c, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load <2 x double>, ptr %.sroa.034.sroa.0.0.copyload, align 1, !tbaa !44
  %i.bl = load <2 x double>, ptr %i.u, align 1, !tbaa !44
  %i.bm = fmul <2 x double> %i.bk, %i.bl          ; 3 uses
  %i.bn = icmp sgt i64 %i.c, 4
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.034.sroa.0.0.copyload, i64 16
  %i.bp = load <2 x double>, ptr %i.bo, align 1, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.br = load <2 x double>, ptr %i.bq, align 1, !tbaa !44
  %i.bs = fmul <2 x double> %i.bp, %i.br          ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.c, 8
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bs, %bb.h ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bm, %bb.h ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bu = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bv = icmp sgt i64 %i.bj, %i.bh
  br i1 %i.bv, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.h ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %bb.h ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.h ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load <2 x double>, ptr %i.bw, align 1, !tbaa !44
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = load <2 x double>, ptr %i.by, align 1, !tbaa !44
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i, %i.ca ; 2 uses
  %i.cc = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.cc
  %i.ce = load <2 x double>, ptr %i.cd, align 1, !tbaa !44
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cc
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !44
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i, %i.ch ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.cj = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !811

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.bh
  %i.cl = load <2 x double>, ptr %i.ck, align 1, !tbaa !44
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bh
  %i.cn = load <2 x double>, ptr %i.cm, align 1, !tbaa !44
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = fadd <2 x double> %i.bu, %i.co
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.274.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.bm, %bb.g ], [ %i.cp, %bb.i ], [ %i.bu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, %shift
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.cr = icmp slt i64 %i.bj, %i.s
  br i1 %i.cr, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.j
  %i.cs = xor i64 %i.bj, -1
  %i.ct = add i64 %i.c, %i.cs
  %i.cu = add i64 %i.c, -2
  %i.cv = sub i64 %i.cu, %i.bj
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !39
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !39
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.prol, %i.da ; 3 uses
  %i.dc = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !812

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bj, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dd = icmp ult i64 %i.cv, 3
  br i1 %i.dd, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ee, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !39
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !39
  %i.di = fmul double %i.df, %i.dh
  %i.dj = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i, %i.di
  %i.dk = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dk
  %i.do = load double, ptr %i.dn, align 8, !tbaa !39
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fadd double %i.dj, %i.dp
  %i.dr = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !39
  %i.du = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dr
  %i.dv = load double, ptr %i.du, align 8, !tbaa !39
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = fadd double %i.dq, %i.dw
  %i.dy = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.sroa.034.sroa.0.0.copyload, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !39
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dy
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !39
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %i.dx, %i.ed                ; 2 uses
  %i.ef = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ef, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !813

bb.k:                                             ; preds = %bb.f
  %i.eg = load double, ptr %.sroa.034.sroa.0.0.copyload, align 8, !tbaa !39
  %i.eh = load double, ptr %i.u, align 8, !tbaa !39
  %i.ei = fmul double %i.eg, %i.eh
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi double [ %i.ei, %bb.k ], [ %i.cq, %bb.j ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ej = load double, ptr %3, align 8, !tbaa !39
  %i.ek = fadd double %.0.i.i.i.i.i.i.i.i.i, %i.ej
  store double %i.ek, ptr %3, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537)
  %i.el = load ptr, ptr %0, align 8, !tbaa !167, !noalias !834
  %.sroa.627.24.copyload69 = load ptr, ptr %i.v, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.627.24.copyload69, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !37
  br label %.lr.ph.i.i.i.i.i.i.preheader

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %.sroa.034.sroa.0.0.copyload, ptr %8, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.u, ptr %7, align 8
  %.sroa.840.56..sroa_idx41 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.s, ptr %.sroa.840.56..sroa_idx41, align 8
  %.sroa.943.56..sroa_idx44 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.r, ptr %.sroa.943.56..sroa_idx44, align 8
  %.sroa.1046.56..sroa_idx47 = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1046.56..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %3, ptr %6, align 8
  %.sroa.10.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx54, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_5BlockINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS4_IKNS5_IKS7_Lin1ELi1ELb0EEEEEEENS4_INS_3MapINS6_IdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKT_RKT0_RT1_RKNSU_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537)
  %i.eo = load ptr, ptr %0, align 8, !tbaa !167, !noalias !834 ; 2 uses
  %.sroa.627.24.copyload = load ptr, ptr %i.v, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.627.24.copyload, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !37 ; 2 uses
  %i.er = icmp sgt i64 %i.r, 0
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.es = phi i64 [ %i.en, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread ], [ %i.eq, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 4 uses
  %i.et = phi ptr [ %i.el, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.thread ], [ %i.eo, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 7 uses
  %min.iters.check = icmp ugt i64 %i.r, 7
  %ident.check.not = icmp eq i64 %i.es, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.preheader103

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.eu = shl i64 %i.r, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.eu
  %scevgep74 = getelementptr i8, ptr %i.et, i64 %i.eu
  %bound0 = icmp ult ptr %3, %scevgep74
  %bound1 = icmp ult ptr %i.et, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <2 x double>, ptr %i.ew, align 8, !tbaa !39, !alias.scope !835
  %wide.load75 = load <2 x double>, ptr %i.ex, align 8, !tbaa !39, !alias.scope !835
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.ev, align 8, !tbaa !39, !alias.scope !836, !noalias !835
  %wide.load77 = load <2 x double>, ptr %i.ey, align 8, !tbaa !39, !alias.scope !836, !noalias !835
  %i.ez = fadd <2 x double> %wide.load, %wide.load76
  %i.fa = fadd <2 x double> %wide.load75, %wide.load77
  store <2 x double> %i.ez, ptr %i.ev, align 8, !tbaa !39, !alias.scope !836, !noalias !835
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !39, !alias.scope !836, !noalias !835
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader103

.lr.ph.i.i.i.i.i.i.preheader103:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter106 = and i64 %i.r, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader103
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %i.fd = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.es
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !39
  %i.fg = load double, ptr %i.fc, align 8, !tbaa !39
  %i.fh = fadd double %i.ff, %i.fg
  store double %i.fh, ptr %i.fc, align 8, !tbaa !39
  %i.fi = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader103
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader103 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.fj = icmp eq i64 %i.r, %.neg
  br i1 %i.fj, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %i.fl = mul nsw i64 %.05.i.i.i.i.i.i, %i.es
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !39
  %i.fo = load double, ptr %i.fk, align 8, !tbaa !39
  %i.fp = fadd double %i.fn, %i.fo
  store double %i.fp, ptr %i.fk, align 8, !tbaa !39
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fq ; 2 uses
  %i.fs = mul nsw i64 %i.fq, %i.es
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !39
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !39
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !39
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.fx, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !820

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %.sroa.7.24.copyload.pre = load ptr, ptr %i.v, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.7.24.copyload.pre, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.fy = phi ptr [ %i.et, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.eo, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 6 uses
  %i.fz = phi i64 [ %.pre, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.eq, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 4 uses
  %i.ga = load double, ptr %2, align 8, !tbaa !39, !noalias !837 ; 5 uses
  %i.gb = load i64, ptr %i.q, align 8, !tbaa !168, !noalias !838 ; 8 uses
  %i.gc = icmp sgt i64 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i.i8.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i8.preheader:                    ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %min.iters.check87 = icmp ugt i64 %i.gb, 5
  %ident.check79.not = icmp eq i64 %i.fz, 1
  %or.cond100 = select i1 %min.iters.check87, i1 %ident.check79.not, i1 false
  br i1 %or.cond100, label %vector.memcheck80, label %.lr.ph.i.i.i.i.i.i8.preheader102

vector.memcheck80:                                ; preds = %.lr.ph.i.i.i.i.i.i8.preheader
  %i.gd = shl i64 %i.gb, 3                        ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.fy, i64 %i.gd
  %scevgep82 = getelementptr i8, ptr %3, i64 %i.gd
  %bound083 = icmp ult ptr %i.fy, %scevgep82
  %bound184 = icmp ult ptr %3, %scevgep81
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %.lr.ph.i.i.i.i.i.i8.preheader102, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck80
  %n.vec89 = and i64 %i.gb, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ga, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %index91 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index91 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load92 = load <2 x double>, ptr %i.gf, align 8, !tbaa !39, !alias.scope !839
  %wide.load93 = load <2 x double>, ptr %i.gg, align 8, !tbaa !39, !alias.scope !839
  %i.gh = fmul <2 x double> %broadcast.splat, %wide.load92
  %i.gi = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.ge, align 8, !tbaa !39, !alias.scope !840, !noalias !839
  %wide.load95 = load <2 x double>, ptr %i.gj, align 8, !tbaa !39, !alias.scope !840, !noalias !839
  %i.gk = fsub <2 x double> %wide.load94, %i.gh
  %i.gl = fsub <2 x double> %wide.load95, %i.gi
  store <2 x double> %i.gk, ptr %i.ge, align 8, !tbaa !39, !alias.scope !840, !noalias !839
  store <2 x double> %i.gl, ptr %i.gj, align 8, !tbaa !39, !alias.scope !840, !noalias !839
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.gm = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.gm, label %middle.block97, label %vector.body90, !llvm.loop !828

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.gb, %n.vec89
  br i1 %cmp.n98, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.preheader102

.lr.ph.i.i.i.i.i.i8.preheader102:                 ; preds = %vector.memcheck80, %.lr.ph.i.i.i.i.i.i8.preheader, %middle.block97
  %.05.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph.i.i.i.i.i.i8.preheader ], [ %n.vec89, %middle.block97 ] ; 5 uses
  %.neg112 = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  %xtraiter109 = and i64 %i.gb, 1
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i.i.i.i8.prol

.lr.ph.i.i.i.i.i.i8.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i8.preheader102
  %i.gn = mul nsw i64 %.05.i.i.i.i.i.i9.ph, %i.fz
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !39
  %i.gr = fmul double %i.ga, %i.gq
end_hunk_1
