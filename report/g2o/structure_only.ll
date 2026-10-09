Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/structure_only?download=true
inline.NumInlined: 5419
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a
  %cmp.n478 = icmp eq i64 %i.bw, %n.vec469
  br i1 %cmp.n478, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader485

.lr.ph.i17.i.i.i.i.i.i.preheader485:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block477
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block477 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader485, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader485 ] ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !101
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !101
  store double %i.cr, ptr %i.co, align 8, !tbaa !101
  store double %i.cq, ptr %i.cp, align 8, !tbaa !101
  %i.cs = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.cs, %i.at
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !216

.lr.ph.i.i.i.i.i.i135:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i135
  %.021.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i135 ], [ %i.bk, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cu = load <2 x double>, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !19
  store <2 x double> %i.cw, ptr %i.ct, align 8, !tbaa !19
  store <2 x double> %i.cu, ptr %i.cv, align 16, !tbaa !19
  %i.cx = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.bn
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !217

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block477, %._crit_edge.i.i.i.i.i.i
  %i.cz = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i.i ; 2 uses
  %i.da = getelementptr i8, ptr %i.av, i64 %.idx.i.i.i.i134 ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !101
  %i.dc = load double, ptr %i.da, align 8, !tbaa !101
  store double %i.dc, ptr %i.cz, align 8, !tbaa !101
  store double %i.db, ptr %i.da, align 8, !tbaa !101
  %.0115409 = add nuw nsw i64 %.0116447, 1        ; 3 uses
  %.not442 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not442, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph
  %.0115410 = phi i64 [ %.0115, %.lr.ph ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %i.bc, i64 %.0115410 ; 2 uses
  %i.dd = load double, ptr %gep, align 8, !tbaa !101
  %.idx.i138 = mul i64 %.0115410, 24
  %i.de = getelementptr i8, ptr %i.av, i64 %.idx.i138 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !101
  store double %i.df, ptr %gep, align 8, !tbaa !101
  store double %i.dd, ptr %i.de, align 8, !tbaa !101
  %.0115 = add nuw nsw i64 %.0115410, 1           ; 2 uses
  %i.dg = icmp slt i64 %.0115, %i.aq
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.idx.i.i.i.pre-phi = phi i64 [ %.pre418, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.idx.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.idx.i.i.i.i, %.lr.ph ] ; 5 uses
  %.pre-phi = phi i64 [ %.pre, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.0115409, %.lr.ph ] ; 5 uses
  %i.dh = sub nuw nsw i64 2, %.0116447            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.pre-phi ; 2 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !115
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !116
  store ptr %0, ptr %i.b, align 8, !tbaa !228
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !116
  store i64 %.0116447, ptr %i.d, align 8, !tbaa !116
  store i64 3, ptr %i.e, align 8, !tbaa !231
  %i.dk = getelementptr [8 x i8], ptr %0, i64 %.0116447 ; 8 uses
  %.not132.not = icmp eq i64 %.0116447, 0
  br i1 %.not132.not, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.loopexit
  %i.dl = load double, ptr %0, align 8, !tbaa !101
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !101
  %i.dn = fmul double %i.dl, %i.dm
  store double %i.dn, ptr %2, align 8, !tbaa !101
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0116447, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.do = load double, ptr %i.o, align 8, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !101
  %i.dr = fmul double %i.do, %i.dq
  store double %i.dr, ptr %i.n, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ds = load double, ptr %i.dk, align 8, !tbaa !101
  %i.dt = load double, ptr %2, align 8, !tbaa !101
  %i.du = fmul double %i.ds, %i.dt                ; 2 uses
  br i1 %.not404, label %bb.e, label %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit

_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit: ; preds = %bb.d
  %i.dv = getelementptr i8, ptr %i.dk, i64 24
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !101
  %i.dx = load double, ptr %i.m, align 8, !tbaa !101
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !101
  %i.ec = fsub double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !101
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ed = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !101
  %i.ef = fsub double %i.ee, %i.du
  store double %i.ef, ptr %i.ed, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.di, ptr %4, align 8
  store i64 %i.dh, ptr %.sroa.0220.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %.0116447, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %.pre-phi, ptr %.sroa.5222.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5222.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 3, ptr %.sroa.5222.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %2, ptr %i.f, align 8
  store i64 %.0116447, ptr %.sroa.8224.56..sroa_idx, align 8
  store ptr %2, ptr %.sroa.10226.56..sroa_idx, align 8
  store i64 0, ptr %.sroa.11227.56..sroa_idx, align 8
  store i64 3, ptr %.sroa.13229.56..sroa_idx, align 8
  store ptr %i.di, ptr %i.g, align 8, !tbaa !120
  store ptr %2, ptr %i.h, align 8, !tbaa !122
  store i64 %.0116447, ptr %i.i, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.dj, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %5, ptr %6, align 8, !tbaa !232
  store ptr %4, ptr %i.j, align 8, !tbaa !233
  store ptr %7, ptr %i.k, align 8, !tbaa !234
  store ptr %8, ptr %i.l, align 8, !tbaa !235
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit, %bb.e
  %i.eg = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %i.ei = fcmp one double %i.eh, 0.000000e+00
  br label %bb.h

bb.f:                                             ; preds = %.loopexit
  %i.ej = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !101 ; 2 uses
  %i.el = fcmp ueq double %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !108
  store i32 0, ptr %1, align 4, !tbaa !29
  %i.em = trunc nuw i8 %.0118446 to i1
  br i1 %i.em, label %.preheader.us.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.preheader:                        ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !101
  %i.ep = fcmp oeq double %i.eo, 0.000000e+00
  br i1 %i.ep, label %.preheader.us.i.1417, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.1417:                             ; preds = %.preheader.us.i.preheader
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !101
  %i.es = fcmp oeq double %i.er, 0.000000e+00
  br i1 %i.es, label %.preheader.us.i.preheader.1, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread: ; preds = %.preheader.us.i.1417, %.preheader.us.i.preheader, %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.et, align 4, !tbaa !29
  br label %.thread430

.preheader.us.i.preheader.1:                      ; preds = %.preheader.us.i.1417
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.eu, align 4, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !101
  %i.ex = fcmp oeq double %i.ew, 0.000000e+00
  br label %.thread430

.thread430:                                       ; preds = %.preheader.us.i.preheader.1, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread
  %i.ey = phi i1 [ %i.ex, %.preheader.us.i.preheader.1 ], [ false, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ez, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread401

bb.h:                                             ; preds = %.thread, %bb.f
  %i.fa = phi i1 [ %i.ei, %.thread ], [ true, %bb.f ] ; 3 uses
  %i.fb = phi double [ %i.eh, %.thread ], [ %i.ek, %bb.f ] ; 9 uses
  %or.cond4 = and i1 %.not404, %i.fa
  br i1 %or.cond4, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.fc = load ptr, ptr %8, align 8, !tbaa !115   ; 6 uses
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !116 ; 5 uses
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 7
  %.not.i.i.i.i.i.i.i144 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i.i.i.i.i.i144, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145

bb.j:                                             ; preds = %bb.i
  %i.fg = lshr exact i64 %i.fe, 3
  %i.fh = and i64 %i.fg, 1
  %i.fi = call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.fd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i146 = phi i64 [ %i.fi, %bb.j ], [ %i.fd, %bb.i ] ; 8 uses
  %i.fj = sub nsw i64 %i.fd, %.0.i.i.i.i.i.i.i146 ; 4 uses
  %i.fk = sdiv i64 %i.fj, 2
  %i.fl = shl nsw i64 %i.fk, 1                    ; 2 uses
  %i.fm = add nsw i64 %i.fl, %.0.i.i.i.i.i.i.i146 ; 5 uses
  %i.fn = icmp sgt i64 %.0.i.i.i.i.i.i.i146, 0
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i153.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i153.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145
  %min.iters.check450 = icmp eq i64 %.0.i.i.i.i.i.i.i146, 1
  br i1 %min.iters.check450, label %.lr.ph.i.i.i.i.i.i.i153.preheader483, label %vector.ph451

vector.ph451:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader
  %n.vec452 = and i64 %.0.i.i.i.i.i.i.i146, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert453 = insertelement <2 x double> poison, double %i.fb, i64 0
  %broadcast.splat454 = shufflevector <2 x double> %broadcast.splatinsert453, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph451
  %index456 = phi i64 [ 0, %vector.ph451 ], [ %index.next458, %vector.body455 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index456 ; 2 uses
  %wide.load457 = load <2 x double>, ptr %i.fo, align 8, !tbaa !101
  %i.fp = fdiv <2 x double> %wide.load457, %broadcast.splat454
  store <2 x double> %i.fp, ptr %i.fo, align 8, !tbaa !101
  %index.next458 = add nuw i64 %index456, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next458, %n.vec452
  br i1 %i.fq, label %middle.block459, label %vector.body455, !llvm.loop !219

middle.block459:                                  ; preds = %vector.body455
  %cmp.n460 = icmp eq i64 %.0.i.i.i.i.i.i.i146, %n.vec452
  br i1 %cmp.n460, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i153.preheader483

.lr.ph.i.i.i.i.i.i.i153.preheader483:             ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader, %middle.block459
  %.05.i.i.i.i.i.i.i154.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i153.preheader ], [ %n.vec452, %middle.block459 ]
  br label %.lr.ph.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i153:                          ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader483, %.lr.ph.i.i.i.i.i.i.i153
  %.05.i.i.i.i.i.i.i154 = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i153 ], [ %.05.i.i.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i.i.i153.preheader483 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.05.i.i.i.i.i.i.i154 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !101
  %i.ft = fdiv double %i.fs, %i.fb
  store double %i.ft, ptr %i.fr, align 8, !tbaa !101
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i154, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i155 = icmp eq i64 %i.fu, %.0.i.i.i.i.i.i.i146
  br i1 %exitcond.not.i.i.i.i.i.i.i155, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i153, !llvm.loop !220

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i153, %middle.block459, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145
  %i.fv = icmp sgt i64 %i.fj, 1
  br i1 %i.fv, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i147

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.fw = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i151

._crit_edge.i.i.i.i.i.i147:                       ; preds = %.lr.ph.i.i.i.i.i.i151, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.fy = icmp slt i64 %i.fm, %i.fd
  br i1 %i.fy, label %.lr.ph.i17.i.i.i.i.i.i148.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i148.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i147
  %i.fz = sub i64 %i.fj, %i.fl                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fz, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i148.preheader482, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader
  %n.vec.a = and i64 %i.fj, 1                     ; 2 uses
  %n.vec = sub nuw i64 %i.fz, %n.vec.a            ; 2 uses
  %i.ga = add i64 %i.fm, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = getelementptr [8 x i8], ptr %i.fc, i64 %i.fm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gc = getelementptr [8 x i8], ptr %i.gb, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gc, align 8, !tbaa !101
  %i.gd = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.gd, ptr %i.gc, align 8, !tbaa !101
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec.a, 0
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i148.preheader482

.lr.ph.i17.i.i.i.i.i.i148.preheader482:           ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i149.ph = phi i64 [ %i.fm, %.lr.ph.i17.i.i.i.i.i.i148.preheader ], [ %i.ga, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i148

.lr.ph.i17.i.i.i.i.i.i148:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader482, %.lr.ph.i17.i.i.i.i.i.i148
  %.05.i18.i.i.i.i.i.i149 = phi i64 [ %i.gi, %.lr.ph.i17.i.i.i.i.i.i148 ], [ %.05.i18.i.i.i.i.i.i149.ph, %.lr.ph.i17.i.i.i.i.i.i148.preheader482 ] ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.05.i18.i.i.i.i.i.i149 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !101
  %i.gh = fdiv double %i.gg, %i.fb
  store double %i.gh, ptr %i.gf, align 8, !tbaa !101
  %i.gi = add nsw i64 %.05.i18.i.i.i.i.i.i149, 1  ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i150 = icmp eq i64 %i.gi, %i.fd
  br i1 %exitcond.not.i19.i.i.i.i.i.i150, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i148, !llvm.loop !222

.lr.ph.i.i.i.i.i.i151:                            ; preds = %.lr.ph.i.i.i.i.i.i151, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i152 = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i.i151 ], [ %.0.i.i.i.i.i.i.i146, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.021.i.i.i.i.i.i152 ; 2 uses
  %i.gk = load <2 x double>, ptr %i.gj, align 16, !tbaa !19
  %i.gl = fdiv <2 x double> %i.gk, %i.fx
  store <2 x double> %i.gl, ptr %i.gj, align 16, !tbaa !19
  %i.gm = add nsw i64 %.021.i.i.i.i.i.i152, 2     ; 2 uses
  %i.gn = icmp slt i64 %i.gm, %i.fm
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i151, label %._crit_edge.i.i.i.i.i.i147, !llvm.loop !223

bb.k:                                             ; preds = %bb.h
  br i1 %.not404, label %bb.l, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.l:                                             ; preds = %bb.k
  %i.go = trunc nuw i8 %.0118446 to i1
  br i1 %i.go, label %bb.m, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8
  %.sroa.4.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.not23.i156 = icmp sgt i64 %.sroa.4.0.copyload, 0
  br i1 %.not23.i156, label %.preheader.us.i158, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.n:                                             ; preds = %.preheader.us.i158
  %i.gp = add nuw nsw i64 %.01324.us.i159, 1      ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.gp, %.sroa.4.0.copyload
  br i1 %exitcond.not.i160, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.preheader.us.i158, !llvm.loop !224

.preheader.us.i158:                               ; preds = %bb.m, %bb.n
  %.01324.us.i159 = phi i64 [ %i.gp, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %.sroa.0.0.copyload, i64 %.01324.us.i159
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !101
  %i.gs = fcmp oeq double %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %bb.n, %.preheader.us.i158, %.lr.ph.i17.i.i.i.i.i.i148, %middle.block, %bb.l, %bb.m, %._crit_edge.i.i.i.i.i.i147, %bb.k
  %.2 = phi i8 [ %.0118446, %bb.k ], [ %.0118446, %middle.block ], [ %.0118446, %._crit_edge.i.i.i.i.i.i147 ], [ 0, %bb.l ], [ 1, %bb.m ], [ %.0118446, %.lr.ph.i17.i.i.i.i.i.i148 ], [ 1, %bb.n ], [ 0, %.preheader.us.i158 ]
  %or.cond6 = and i1 %.0120445, %i.fa
  %not. = xor i1 %i.fa, true
  %.1121 = select i1 %not., i1 true, i1 %.0120445
  %.3 = select i1 %or.cond6, i8 0, i8 %.2         ; 2 uses
  %i.gt = load i32, ptr %3, align 4, !tbaa !108
  switch i32 %i.gt, label %.backedge [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gu = fcmp olt double %i.fb, 0.000000e+00
  br i1 %i.gu, label %.backedge.sink.split, label %.backedge

bb.p:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gv = fcmp ogt double %i.fb, 0.000000e+00
  br i1 %i.gv, label %.backedge.sink.split, label %.backedge

bb.q:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gw = fcmp ogt double %i.fb, 0.000000e+00
  br i1 %i.gw, label %.backedge.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gx = fcmp olt double %i.fb, 0.000000e+00
  br i1 %i.gx, label %.backedge.sink.split, label %.backedge

.backedge.sink.split:                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sink = phi i32 [ 0, %bb.q ], [ 3, %bb.o ], [ 3, %bb.p ], [ 1, %bb.r ]
  store i32 %.sink, ptr %3, align 4, !tbaa !108
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, %bb.p, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %exitcond.not = icmp eq i64 %.pre-phi, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %bb.s, label %bb.b, !llvm.loop !225

bb.s:                                             ; preds = %.backedge
  %i.gy = trunc nuw i8 %.3 to i1
  br label %.thread401

.thread401:                                       ; preds = %.thread430, %bb.s
  %.3126 = phi i1 [ %i.gy, %bb.s ], [ %i.ey, %.thread430 ]
  ret i1 %.3126
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263, !nonnull !68, !align !264 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116  ; 9 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 13 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 2 uses
  %i.n = add nsw i64 %i.m, %.0.i                  ; 7 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !68, !align !264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !266, !nonnull !68, !align !264 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !267, !noalias !268 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !269, !noalias !270 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !116, !noalias !270 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter109 = and i64 %i.aa, 3                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = icmp ne i64 %xtraiter109, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 10
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %i.af
  %bound1 = icmp ult ptr %i.t, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %i.q, %i.ag
  %bound162 = icmp ult ptr %i.v, %i.ae
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ah = load double, ptr %i.v, align 8, !tbaa !101, !alias.scope !271
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !101, !alias.scope !272
  %wide.load64 = load <2 x double>, ptr %i.aj, align 8, !tbaa !101, !alias.scope !272
  %i.ak = fmul <2 x double> %wide.load, %broadcast.splat
  %i.al = fmul <2 x double> %wide.load64, %broadcast.splat
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.am, align 8, !tbaa !101, !alias.scope !273, !noalias !274
  %wide.load66 = load <2 x double>, ptr %i.an, align 8, !tbaa !101, !alias.scope !273, !noalias !274
  %i.ao = fsub <2 x double> %wide.load65, %i.ak
  %i.ap = fsub <2 x double> %wide.load66, %i.al
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !101, !alias.scope !273, !noalias !274
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !101, !alias.scope !273, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.as = load double, ptr %i.ar, align 8, !tbaa !101
  %i.at = load double, ptr %i.v, align 8, !tbaa !101
  %i.au = fmul double %i.as, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !101
  %i.ax = fsub double %i.aw, %i.au
  store double %i.ax, ptr %i.av, align 8, !tbaa !101
  %i.ay = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107 ], [ %i.ay, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.az = icmp eq i64 %.0.i, %.neg
  br i1 %i.az, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !101
  %i.bc = load double, ptr %i.v, align 8, !tbaa !101
  %i.bd = fmul double %i.bb, %i.bc                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 6 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.ce, %.lr.ph.i.i.i.i.i.us.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %i.be = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !101
  %i.bg = getelementptr [8 x i8], ptr %i.v, i64 %.01725.i.i.i.i.i.us.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !101
  %i.bi = fmul double %i.bf, %i.bh
  %i.bj = fadd double %.02324.i.i.i.i.i.us.i, %i.bi
  %i.bk = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = mul i64 %i.bk, 24
  %i.bl = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !101
  %i.bn = getelementptr [8 x i8], ptr %i.v, i64 %i.bk
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !101
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = fadd double %i.bj, %i.bp
  %i.br = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = mul i64 %i.br, 24
  %i.bs = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !101
  %i.bu = getelementptr [8 x i8], ptr %i.v, i64 %i.br
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !101
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = fadd double %i.bq, %i.bw
  %i.by = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = mul i64 %i.by, 24
  %i.bz = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !101
  %i.cb = getelementptr [8 x i8], ptr %i.v, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !101
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %i.bx, %i.cd                ; 3 uses
  %i.cf = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !245

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod110.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.cl, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 24
  %i.cg = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !101
  %i.ci = getelementptr [8 x i8], ptr %i.v, i64 %.01725.i.i.i.i.i.us.i.epil
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !101
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = fadd double %.02324.i.i.i.i.i.us.i.epil, %i.ck ; 2 uses
  %i.cm = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter109
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa106 = phi double [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.cl, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us6.i ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !101
  %i.cp = fsub double %i.co, %.lcssa106
  store double %i.cp, ptr %i.cn, align 8, !tbaa !101
  %i.cq = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.cq, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !247

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !101
  %i.ct = load double, ptr %i.v, align 8, !tbaa !101
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !101
  %i.cx = fsub double %i.cw, %i.cu
  store double %i.cx, ptr %i.cv, align 8, !tbaa !101
  %i.cy = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !101
  %i.db = load double, ptr %i.v, align 8, !tbaa !101
  %i.dc = fmul double %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cy ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !101
  %i.df = fsub double %i.de, %i.dc
  store double %i.df, ptr %i.dd, align 8, !tbaa !101
  %i.dg = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dg, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, !llvm.loop !248

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.lr.ph.i
  %i.dh = icmp sgt i64 %i.k, 1
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.dj = icmp slt i64 %i.n, %i.d
  br i1 %i.dj, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.dk = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !68, !align !264
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !142 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !266, !nonnull !68, !align !264 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !267, !noalias !276 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !269, !noalias !277 ; 12 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !116, !noalias !277 ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.split.i18

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.du = icmp sgt i64 %i.ds, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.dv = add nsw i64 %i.ds, -1                   ; 2 uses
  %i.dw = add nsw i64 %i.ds, -2
  %xtraiter122 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 3
  %unroll_iter127 = and i64 %i.dv, -4
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.dy = sub i64 %i.k, %i.m                      ; 3 uses
  %min.iters.check80 = icmp ult i64 %i.dy, 14
  br i1 %min.iters.check80, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103, label %vector.memcheck81

vector.memcheck81:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.dz = shl i64 %i.l, 4
  %i.ea = shl i64 %.0.i, 3
  %i.eb = add i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dl, i64 %i.eb  ; 2 uses
  %i.ed = shl i64 %i.d, 3                         ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dl, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %i.do, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.do, i64 %i.ed
  %i.eh = getelementptr i8, ptr %i.dq, i64 8
  %bound082 = icmp ult ptr %i.ec, %i.eg
  %bound183 = icmp ult ptr %i.ef, %i.ee
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.ec, %i.eh
  %bound186 = icmp ult ptr %i.dq, %i.ee
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  br i1 %conflict.rdx88, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck81
  %n.vec90 = and i64 %i.dy, -4                    ; 3 uses
  %i.ei = add i64 %i.n, %n.vec90
  %i.ej = load double, ptr %i.dq, align 8, !tbaa !101, !alias.scope !278
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %i.ej, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body91 ] ; 2 uses
  %i.ek = add i64 %i.n, %index92                  ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load93 = load <2 x double>, ptr %i.el, align 8, !tbaa !101, !alias.scope !279
  %wide.load94 = load <2 x double>, ptr %i.em, align 8, !tbaa !101, !alias.scope !279
  %i.en = fmul <2 x double> %wide.load93, %broadcast.splat96
  %i.eo = fmul <2 x double> %wide.load94, %broadcast.splat96
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ek ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.ep, align 8, !tbaa !101, !alias.scope !280, !noalias !281
  %wide.load98 = load <2 x double>, ptr %i.eq, align 8, !tbaa !101, !alias.scope !280, !noalias !281
  %i.er = fsub <2 x double> %wide.load97, %i.en
  %i.es = fsub <2 x double> %wide.load98, %i.eo
  store <2 x double> %i.er, ptr %i.ep, align 8, !tbaa !101, !alias.scope !280, !noalias !281
  store <2 x double> %i.es, ptr %i.eq, align 8, !tbaa !101, !alias.scope !280, !noalias !281
  %index.next99 = add nuw i64 %index92, 4         ; 2 uses
  %i.et = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.et, label %middle.block100, label %vector.body91, !llvm.loop !257

middle.block100:                                  ; preds = %vector.body91
  %cmp.n101 = icmp eq i64 %i.dy, %n.vec90
  br i1 %cmp.n101, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103: ; preds = %vector.memcheck81, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block100
  %.05.i20.ph = phi i64 [ %i.n, %vector.memcheck81 ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.ei, %middle.block100 ] ; 6 uses
  %i.eu = sub i64 %i.d, %.05.i20.ph
  %.neg129 = add i64 %.05.i20.ph, 1
  %xtraiter120 = and i64 %i.eu, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i20.ph
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !101
  %i.ex = load double, ptr %i.dq, align 8, !tbaa !101
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20.ph ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !101
  %i.fb = fsub double %i.fa, %i.ey
  store double %i.fb, ptr %i.ez, align 8, !tbaa !101
  %i.fc = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103 ], [ %i.fc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.fd = icmp eq i64 %i.d, %.neg129
  br i1 %i.fd, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.gu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.us6.i23 ; 6 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !101
  %i.fg = load double, ptr %i.dq, align 8, !tbaa !101
  %i.fh = fmul double %i.ff, %i.fg                ; 2 uses
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 6 uses
  %.02324.i.i.i.i.i.us.i26 = phi double [ %i.gi, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.fh, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter128 = phi i64 [ %niter128.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %i.fi = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !101
  %i.fk = getelementptr [8 x i8], ptr %i.dq, i64 %.01725.i.i.i.i.i.us.i25
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !101
  %i.fm = fmul double %i.fj, %i.fl
  %i.fn = fadd double %.02324.i.i.i.i.i.us.i26, %i.fm
  %i.fo = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = mul i64 %i.fo, 24
  %i.fp = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !101
  %i.fr = getelementptr [8 x i8], ptr %i.dq, i64 %i.fo
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !101
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fadd double %i.fn, %i.ft
  %i.fv = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = mul i64 %i.fv, 24
  %i.fw = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !101
  %i.fy = getelementptr [8 x i8], ptr %i.dq, i64 %i.fv
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !101
  %i.ga = fmul double %i.fx, %i.fz
  %i.gb = fadd double %i.fu, %i.ga
  %i.gc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = mul i64 %i.gc, 24
  %i.gd = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !101
  %i.gf = getelementptr [8 x i8], ptr %i.dq, i64 %i.gc
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !101
  %i.gh = fmul double %i.ge, %i.gg
  %i.gi = fadd double %i.gb, %i.gh                ; 3 uses
  %i.gj = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !245

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod124.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fh, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gp, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 24
  %i.gk = getelementptr i8, ptr %i.fe, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !101
  %i.gm = getelementptr [8 x i8], ptr %i.dq, i64 %.01725.i.i.i.i.i.us.i25.epil
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !101
  %i.go = fmul double %i.gl, %i.gn
  %i.gp = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.go ; 2 uses
  %i.gq = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !258

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gp, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.us6.i23 ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !101
  %i.gt = fsub double %i.gs, %.lcssa
  store double %i.gt, ptr %i.gr, align 8, !tbaa !101
  %i.gu = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gu, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !247

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i20
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !101
  %i.gx = load double, ptr %i.dq, align 8, !tbaa !101
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !101
  %i.hb = fsub double %i.ha, %i.gy
  store double %i.hb, ptr %i.gz, align 8, !tbaa !101
  %i.hc = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !101
  %i.hf = load double, ptr %i.dq, align 8, !tbaa !101
  %i.hg = fmul double %i.he, %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.hc ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !101
  %i.hj = fsub double %i.hi, %i.hg
  store double %i.hj, ptr %i.hh, align 8, !tbaa !101
  %i.hk = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hk, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !259

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block100, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.jb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hl = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !68, !align !264
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !142
  %i.hn = load ptr, ptr %i.di, align 8, !tbaa !266, !nonnull !68, !align !264 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 144
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !140 ; 5 uses
  %i.hq = icmp sgt i64 %i.hp, 0
  br i1 %i.hq, label %.lr.ph.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
end_hunk_0
