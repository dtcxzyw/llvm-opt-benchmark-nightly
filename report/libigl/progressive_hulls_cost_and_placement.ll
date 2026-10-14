Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/progressive_hulls_cost_and_placement?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1355
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3igl8copyleft36progressive_hulls_cost_and_placementEiRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEES8_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEES8_S8_RdRNS2_IdLi1ELin1ELi1ELi1ELin1EEE:bb.a
  br label %._crit_edge.i150

._crit_edge.i150:                                 ; preds = %bb.n, %._crit_edge.i.thread
  %.sroa.7349.1 = phi i64 [ %.sroa.7349.0488, %._crit_edge.i.thread ], [ %i.fs, %bb.n ]
  %i.ft = phi i64 [ %i.fq, %._crit_edge.i.thread ], [ 0, %bb.n ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %.sroa.7349.1
  %.idx.i.i.i.i.i151 = mul nsw i64 %i.ft, 24
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %.idx.i.i.i.i.i151 ; 5 uses
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader, label %._crit_edge.i150.thread

.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader:        ; preds = %._crit_edge.i150
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152

.lr.ph.i.i.i.i.i.i.i.i.i.i.i152:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152
  %.05.i.i.i.i.i.i.i.i.i.i.i153 = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader ] ; 6 uses
  %niter656 = phi i64 [ %niter656.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154 = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, %i.ar
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !27
  store double %i.fz, ptr %i.fw, align 8, !tbaa !27
  %i.ga = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.1 = mul nuw nsw i64 %i.ga, 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.1
  %i.gc = mul nsw i64 %i.ga, %i.ar
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !27
  store double %i.ge, ptr %i.gb, align 8, !tbaa !27
  %i.gf = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.2 = mul nuw nsw i64 %i.gf, 24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.2
  %i.gh = mul nsw i64 %i.gf, %i.ar
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !27
  store double %i.gj, ptr %i.gg, align 8, !tbaa !27
  %i.gk = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.3 = mul nuw nsw i64 %i.gk, 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.3
  %i.gm = mul nsw i64 %i.gk, %i.ar
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !27
  store double %i.go, ptr %i.gl, align 8, !tbaa !27
  %i.gp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153, 4 ; 2 uses
  %niter656.next.3 = add nuw nsw i64 %niter656, 4 ; 2 uses
  %niter656.ncmp.3 = icmp eq i64 %niter656.next.3, %unroll_iter655
  br i1 %niter656.ncmp.3, label %._crit_edge.i150.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152, !llvm.loop !59

._crit_edge.i150.thread.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152
  br i1 %lcmp.mod653.not, label %._crit_edge.i150.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader:   ; preds = %._crit_edge.i150.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i153.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.preheader ], [ %i.gp, %._crit_edge.i150.thread.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod654)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i153.epil = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i153.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader ] ; 3 uses
  %epil.iter652 = phi i64 [ %epil.iter652.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153.epil, 24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i154.epil
  %i.gr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153.epil, %i.ar
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !27
  store double %i.gt, ptr %i.gq, align 8, !tbaa !27
  %i.gu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i153.epil, 1
  %epil.iter652.next = add i64 %epil.iter652, 1   ; 2 uses
  %epil.iter652.cmp.not = icmp eq i64 %epil.iter652.next, %xtraiter651
  br i1 %epil.iter652.cmp.not, label %._crit_edge.i150.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil, !llvm.loop !61

._crit_edge.i150.thread:                          ; preds = %._crit_edge.i150.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i152.epil, %bb.m, %._crit_edge.i150
  %i.gv = load double, ptr %i.ay, align 16, !tbaa !27 ; 2 uses
  %i.gw = load double, ptr %i.ba, align 8, !tbaa !27
  %i.gx = load double, ptr %i.ax, align 16, !tbaa !27
  %i.gy = load <2 x double>, ptr %i.aw, align 16, !tbaa !27 ; 3 uses
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ha = load <2 x double>, ptr %19, align 16, !tbaa !27 ; 2 uses
  %i.hb = load double, ptr %.sroa.gep, align 8, !tbaa !27
  %i.hc = insertelement <2 x double> %i.gy, double %i.gx, i64 0
  %i.hd = fneg <2 x double> %i.hc                 ; 2 uses
  %i.he = load <2 x double>, ptr %i.bb, align 16, !tbaa !27 ; 2 uses
  %i.hf = load double, ptr %i.az, align 8, !tbaa !27
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = call double @llvm.fmuladd.f64(double %i.hb, double %i.gv, double %i.hh)
  %i.hj = fmul double %i.gw, %i.hi
  %i.hk = shufflevector <2 x double> %i.gy, <2 x double> %i.he, <2 x i32> <i32 0, i32 3>
  %i.hl = fmul <2 x double> %i.hk, %i.hd
  %i.hm = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hn = insertelement <2 x double> %i.hm, double %i.gv, i64 1
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.hn, <2 x double> %i.hl)
  %i.hp = shufflevector <2 x double> %i.he, <2 x double> %i.ha, <2 x i32> <i32 0, i32 2>
  %i.hq = fmul <2 x double> %i.hp, %i.ho          ; 2 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 1
  %i.hs = fsub double %i.hr, %i.hj
  %i.ht = extractelement <2 x double> %i.hq, i64 0
  %i.hu = fadd double %i.ht, %i.hs
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0444.0.ph484, i64 %indvars.iv
  store double %i.hu, ptr %i.hv, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.i150.thread, %.thread565
  %i.hw = phi ptr [ %i.af, %.thread565 ], [ %i.ak, %._crit_edge.i150.thread ] ; 2 uses
  %.sroa.0444.0458567 = phi ptr [ null, %.thread565 ], [ %.sroa.0444.0.ph484, %._crit_edge.i150.thread ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %17, ptr %10, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr %20, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %11, ptr %12, align 8, !tbaa !102
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.hx, align 8, !tbaa !103
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.hy, align 8, !tbaa !104
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %20, ptr %i.hz, align 8, !tbaa !105
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS3_INS_9TransposeIKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.o unwind label %bb.az

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.ia = sext i32 %0 to i64                      ; 2 uses
  %i.ib = load ptr, ptr %3, align 8, !tbaa !96
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !25
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = load ptr, ptr %1, align 8, !tbaa !19, !noalias !106 ; 3 uses
  %i.ih = ptrtoaddr ptr %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.if ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ik = load i64, ptr %i.ic, align 8, !tbaa !97
  %i.il = getelementptr [4 x i8], ptr %i.id, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !25
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.in ; 4 uses
  %i.ip = load i64, ptr %i.ij, align 8, !tbaa !21, !noalias !107 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ir = sdiv i64 9223372036854775807, %i.ip
  %i.is = icmp slt i64 %i.ir, 1
  br i1 %i.is, label %bb.q, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.it = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.it, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.it, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc.i216 unwind label %bb.s

.noexc.i216:                                      ; preds = %bb.q
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.p, %bb.o
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef 1, i64 noundef %i.ip)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_sum_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESL_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %bb.s

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_sum_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESL_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !20 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !38
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.ix, %i.ip
  br i1 %.not8.i.i.i.i.i.i, label %bb.r, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_sum_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESL_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef 1, i64 noundef %i.ip)
          to label %.noexc5.i unwind label %bb.s

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.iw, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_sum_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESL_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.iy = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %i.ip, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_sum_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESL_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 7 uses
  %i.iz = load ptr, ptr %22, align 8, !tbaa !39   ; 7 uses
  %i.ja = ptrtoaddr ptr %i.iz to i64
  %i.jb = icmp sgt i64 %i.iy, 0
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i.i.preheader, label %.loopexit498

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.r
  %min.iters.check = icmp ugt i64 %i.iy, 13
  %ident.check.not = icmp eq i64 %i.iv, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.preheader643

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %31 = shl nsw i64 %i.in, 3
  %32 = sub i64 %i.ja, %i.ih                      ; 2 uses
  %i.jc = sub i64 %31, %32
  %diff.check = icmp ugt i64 %i.jc, -32
  %i.jd = shl nsw i64 %i.if, 3
  %i.je = sub i64 %i.jd, %32
  %diff.check596 = icmp ugt i64 %i.je, -32
  %conflict.rdx = or i1 %diff.check, %diff.check596
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader643, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load = load <2 x double>, ptr %i.jg, align 8, !tbaa !27
  %wide.load597 = load <2 x double>, ptr %i.jh, align 8, !tbaa !27
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.io, i64 %index ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load598 = load <2 x double>, ptr %i.ji, align 8, !tbaa !27
  %wide.load599 = load <2 x double>, ptr %i.jj, align 8, !tbaa !27
  %i.jk = fadd <2 x double> %wide.load, %wide.load598
  %i.jl = fadd <2 x double> %wide.load597, %wide.load599
  %i.jm = fmul <2 x double> %i.jk, splat (double 5.000000e-01)
  %i.jn = fmul <2 x double> %i.jl, splat (double 5.000000e-01)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <2 x double> %i.jm, ptr %i.jf, align 8, !tbaa !27
  store <2 x double> %i.jn, ptr %i.jo, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jp = icmp eq i64 %index.next, %n.vec
  br i1 %i.jp, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.loopexit498, label %.lr.ph.i.i.i.i.i.i.preheader643

.lr.ph.i.i.i.i.i.i.preheader643:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter657 = and i64 %i.iy, 1
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader643
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.05.i.i.i.i.i.i.ph
  %i.jr = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.iv  ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !27
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.jr
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !27
  %i.jw = fadd double %i.jt, %i.jv
  %i.jx = fmul double %i.jw, 5.000000e-01
  store double %i.jx, ptr %i.jq, align 8, !tbaa !27
  %i.jy = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader643
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader643 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jz = icmp eq i64 %i.iy, %.neg
  br i1 %i.jz, label %.loopexit498, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.05.i.i.i.i.i.i
  %i.kb = mul nsw i64 %.05.i.i.i.i.i.i, %i.iv     ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.kb
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !27
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.kb
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !27
  %i.kg = fadd double %i.kd, %i.kf
  %i.kh = fmul double %i.kg, 5.000000e-01
  store double %i.kh, ptr %i.ka, align 8, !tbaa !27
  %i.ki = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ki
  %i.kk = mul nsw i64 %i.ki, %i.iv                ; 2 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !27
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.kk
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !27
  %i.kp = fadd double %i.km, %i.ko
  %i.kq = fmul double %i.kp, 5.000000e-01
  store double %i.kq, ptr %i.kj, align 8, !tbaa !27
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.kr, %i.iy
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %.loopexit498, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !68

bb.s:                                             ; preds = %thread-pre-split.i.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %bb.q
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit498:                                     ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.kt = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #19 ; 7 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit498
  %i.kv = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kv, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.kv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body160

bb.v:                                             ; preds = %.loopexit498
  store ptr %i.kt, ptr %23, align 8, !tbaa !19
  %i.kx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 3, ptr %i.ky, align 8, !tbaa !20
  store i64 3, ptr %i.kx, align 8, !tbaa !21
  store double 1.000000e-01, ptr %i.kt, align 8, !tbaa !27
  %gep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.kt, i64 8
  %gep.i.1.peel24.i.i.i.i.i.i = getelementptr i8, ptr %i.kt, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  store double 1.000000e-01, ptr %gep.i.1.peel24.i.i.i.i.i.i, align 8, !tbaa !27
  %gep.i.1.i.i.i.i.i.i = getelementptr i8, ptr %i.kt, i64 40
  %gep.i.2.peel18.i.i.i.i.i.i = getelementptr i8, ptr %i.kt, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep.i.1.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  store double 1.000000e-01, ptr %gep.i.2.peel18.i.i.i.i.i.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.kz = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 4 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.w, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i165

bb.w:                                             ; preds = %bb.v
  %i.lb = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lb, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc4.i.i unwind label %bb.x

.noexc4.i.i:                                      ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body162

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i165: ; preds = %bb.v
  store ptr %i.kz, ptr %24, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 3, ptr %i.ld, align 8, !tbaa !23
  %i.le = load <2 x double>, ptr %20, align 16, !tbaa !42
  %i.lf = fmul <2 x double> %i.le, splat (double 9.000000e-01)
  %i.lg = load <2 x double>, ptr %i.iz, align 1, !tbaa !42
  %i.lh = fmul <2 x double> %i.lg, splat (double 1.000000e-01)
  %i.li = fsub <2 x double> %i.lf, %i.lh
  store <2 x double> %i.li, ptr %i.kz, align 16, !tbaa !42
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ll = load double, ptr %i.lk, align 16, !tbaa !27
  %i.lm = fmul double %i.ll, 9.000000e-01
  %i.ln = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27
  %i.lp = fmul double %i.lo, 1.000000e-01
  %i.lq = fsub double %i.lm, %i.lp
  store double %i.lq, ptr %i.lj, align 16, !tbaa !27
  %i.lr = load i64, ptr %i.s, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store i64 0, ptr %25, align 8
  %i.ls = shl i64 %i.lr, 32
  %i.lt = ashr exact i64 %i.ls, 32
  %i.lu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !20
  store i64 0, ptr %i.lv, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 0, i64 noundef 1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i165
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.z:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i165
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store ptr %17, ptr %28, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIS2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.aa unwind label %bb.ba

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.lx = load i64, ptr %i.hw, align 8, !tbaa !23
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.lx, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.ac

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.aa
  %i.ly = load ptr, ptr %18, align 8, !tbaa !24   ; 8 uses
  %i.lz = ptrtoaddr ptr %i.ly to i64
end_hunk_0
