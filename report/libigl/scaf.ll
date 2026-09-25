Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN3igl8triangle4scaf12mesh_improveERNS0_8SCAFDataE:bb.a
  store double %i.ha, ptr %i.gz, align 8, !tbaa !68, !noalias !394
  %i.hb = fmul <2 x double> %i.gi, <double 3.000000e+00, double 4.000000e+00>
  %i.hc = fdiv <2 x double> %i.hb, splat (double 5.000000e+00) ; 3 uses
  %i.hd = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.he = shufflevector <2 x double> %i.gk, <2 x double> %i.hc, <2 x i32> <i32 1, i32 2>
  %i.hf = fsub <2 x double> %i.hd, %i.he
  store <2 x double> %i.hf, ptr %i.gp, align 8, !tbaa !68
  %i.hg = fadd <2 x double> %i.gl, %i.hc
  store <2 x double> %i.hg, ptr %i.gs, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.hi = getelementptr i8, ptr %i.fq, i64 232
  store double %i.gf, ptr %i.hi, align 8, !tbaa !68
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %i.hk = extractelement <2 x double> %i.ff, i64 0
  store double %i.hk, ptr %i.hj, align 8, !tbaa !68, !noalias !395
  %foldExtExtBinop = fsub <2 x double> %i.fg, %i.hc
  %i.hl = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.hm = getelementptr i8, ptr %i.fq, i64 272
  store double %i.hl, ptr %i.hm, align 8, !tbaa !68
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fq, i64 152
  %i.ho = fdiv <2 x double> %i.fr, splat (double 5.000000e+00) ; 4 uses
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.hq = fsub <2 x double> %i.hd, %i.hp
  store <2 x double> %i.hq, ptr %i.fv, align 8, !tbaa !68
  %foldExtExtBinop692 = fadd <2 x double> %i.fd, %i.ho
  %i.hr = extractelement <2 x double> %foldExtExtBinop692, i64 0
  store double %i.hr, ptr %i.hh, align 8, !tbaa !68, !noalias !392
  %i.hs = fsub <2 x double> %i.ff, %i.ho
  %i.ht = fadd <2 x double> %i.ff, %i.ho
  %i.hu = shufflevector <2 x double> %i.hs, <2 x double> %i.ht, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hu, ptr %i.hn, align 8, !tbaa !68
  %i.hv = getelementptr i8, ptr %i.fq, i64 312
  store double %i.fy, ptr %i.hv, align 8, !tbaa !68
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !61
  %i.hx = trunc i64 %i.hw to i32                  ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !123
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ia, 20
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i230, label %thread-pre-split.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.p
  %.pn160.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %.body ], [ %i.ic, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.id = load ptr, ptr %9, align 8, !tbaa !70
  call void @free(ptr noundef %i.id) #32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.pn160.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn.pn.pn, %bb.q ], [ %i.ib, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.be

bb.s:                                             ; preds = %bb.n
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 noundef 20, i64 noundef 1)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.hz, align 8, !tbaa !123 ; 2 uses
  %i.if = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i230, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i230:                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213, %bb.t
  %i.ig = phi i64 [ %.pr.i.i.i.i.i.i.i, %bb.t ], [ 20, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213 ] ; 4 uses
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !100 ; 2 uses
  %min.iters.check589 = icmp samesign ult i64 %i.ig, 8
  br i1 %min.iters.check589, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader, label %vector.ph590

vector.ph590:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i230
  %n.vec591 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body592

vector.body592:                                   ; preds = %vector.body592, %vector.ph590
  %index593 = phi i64 [ 0, %vector.ph590 ], [ %index.next594, %vector.body592 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph590 ], [ %vec.ind.next, %vector.body592 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index593 ; 2 uses
  %i.ij = add nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %i.ij, ptr %i.ii, align 4, !tbaa !78
  store <4 x i32> %.reass, ptr %i.ik, align 4, !tbaa !78
  %index.next594 = add nuw i64 %index593, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.il = icmp eq i64 %index.next594, %n.vec591
  br i1 %i.il, label %middle.block595, label %vector.body592, !llvm.loop !344

middle.block595:                                  ; preds = %vector.body592
  %cmp.n596 = icmp eq i64 %i.ig, %n.vec591
  br i1 %cmp.n596, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i230, %middle.block595
  %.05.i.i.i.i.i.i.i.i231.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i230 ], [ %n.vec591, %middle.block595 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i231 = phi i64 [ %i.ip, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i231.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.im = trunc i64 %.05.i.i.i.i.i.i.i.i231 to i32
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.05.i.i.i.i.i.i.i.i231
  %i.io = add nsw i32 %i.im, %i.hx
  store i32 %i.io, ptr %i.in, align 4, !tbaa !78
  %i.ip = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i231, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i232 = icmp eq i64 %i.ip, %i.ig
  br i1 %exitcond.not.i.i.i.i.i.i.i.i232, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !345

bb.u:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %middle.block595, %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl3catIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEviRKNS1_10MatrixBaseIT_EES8_RT0_(i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !27 ; 14 uses
  %i.it = icmp sgt i64 %i.is, 4611686018427387903
  br i1 %i.it, label %.invoke580, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234: ; preds = %bb.v
  %i.iu = shl nsw i64 %i.is, 1                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !62
  %i.ix = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !124
  %i.iz = mul nsw i64 %i.iy, %i.iw
  %.not.i278 = icmp eq i64 %i.iu, %i.iz
  %.pre527.pre533.pre = load ptr, ptr %15, align 8, !tbaa !89 ; 2 uses
  br i1 %.not.i278, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234
  call void @free(ptr noundef %.pre527.pre533.pre) #32
  %i.ja = icmp sgt i64 %i.is, 0
  br i1 %i.ja, label %bb.x, label %.sink.split.i279

bb.x:                                             ; preds = %bb.w
  %i.jb = icmp samesign ugt i64 %i.iu, 4611686018427387903
  br i1 %i.jb, label %.invoke580, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.x
  %i.jc = shl nuw i64 %i.is, 3
  %i.jd = call noalias ptr @malloc(i64 noundef %i.jc) #33 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.invoke580, label %.sink.split.i279

.invoke580:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.x, %bb.v
  %i.jf = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jf, align 8, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont581 unwind label %bb.z

.cont581:                                         ; preds = %.invoke580
  unreachable

.sink.split.i279:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.w
  %.sink.i280 = phi ptr [ %i.jd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.w ] ; 2 uses
  store ptr %.sink.i280, ptr %15, align 8, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234, %.sink.split.i279
  %.pre527.pre = phi ptr [ %.pre527.pre533.pre, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234 ], [ %.sink.i280, %.sink.split.i279 ] ; 4 uses
  store i64 %i.is, ptr %i.iv, align 8, !tbaa !62
  store i64 2, ptr %i.ix, align 8, !tbaa !124
  %i.jg = icmp sgt i64 %i.is, 0
  br i1 %i.jg, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader, label %._crit_edge482

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader: ; preds = %bb.y
  %min.iters.check599 = icmp ult i64 %i.is, 8
  br i1 %min.iters.check599, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader695, label %vector.ph600

vector.ph600:                                     ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader
  %n.vec601 = and i64 %i.is, 9223372036854775800  ; 3 uses
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next608, %vector.body602 ] ; 2 uses
  %vec.ind604 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph600 ], [ %vec.ind.next609, %vector.body602 ] ; 3 uses
  %vec.ind605 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph600 ], [ %vec.ind.next610, %vector.body602 ] ; 3 uses
  %step.add606 = add <4 x i32> %vec.ind604, splat (i32 4)
  %step.add607 = add <4 x i32> %vec.ind605, splat (i32 4)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.pre527.pre, i64 %index603 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <4 x i32> %vec.ind604, ptr %i.jh, align 4, !tbaa !78, !noalias !396
  store <4 x i32> %step.add606, ptr %i.ji, align 4, !tbaa !78, !noalias !396
  %i.jj = getelementptr [4 x i8], ptr %i.jh, i64 %i.is ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  store <4 x i32> %vec.ind605, ptr %i.jj, align 4, !tbaa !78
  store <4 x i32> %step.add607, ptr %i.jk, align 4, !tbaa !78
  %index.next608 = add nuw i64 %index603, 8       ; 2 uses
  %vec.ind.next609 = add <4 x i32> %vec.ind604, splat (i32 8)
  %vec.ind.next610 = add <4 x i32> %vec.ind605, splat (i32 8)
  %i.jl = icmp eq i64 %index.next608, %n.vec601
  br i1 %i.jl, label %middle.block611, label %vector.body602, !llvm.loop !348

middle.block611:                                  ; preds = %vector.body602
  %cmp.n612 = icmp eq i64 %i.is, %n.vec601
  br i1 %cmp.n612, label %._crit_edge482, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader695

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader695: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader, %middle.block611
  %indvars.iv507.ph = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader ], [ %n.vec601, %middle.block611 ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit

._crit_edge482:                                   ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit, %middle.block611, %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !125 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !125 ; 2 uses
  %.not483 = icmp eq ptr %i.jn, %i.jp
  br i1 %.not483, label %._crit_edge488, label %.lr.ph487

bb.z:                                             ; preds = %.invoke580, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader695, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit ], [ %indvars.iv507.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader695 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.pre527.pre, i64 %indvars.iv507 ; 2 uses
  %i.js = trunc nuw nsw i64 %indvars.iv507 to i32
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !78, !noalias !396
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 3 uses
  %i.jt = getelementptr [4 x i8], ptr %i.jr, i64 %i.is
  %i.ju = trunc nuw nsw i64 %indvars.iv.next508 to i32
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !78
  %exitcond510.not = icmp eq i64 %indvars.iv.next508, %i.is
  br i1 %exitcond510.not, label %._crit_edge482, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit, !llvm.loop !349

.lr.ph487:                                        ; preds = %._crit_edge482, %.lr.ph487
  %.0112485 = phi i32 [ %i.jw, %.lr.ph487 ], [ 0, %._crit_edge482 ] ; 2 uses
  %.sroa.0305.0484 = phi ptr [ %i.kb, %.lr.ph487 ], [ %i.jn, %._crit_edge482 ] ; 2 uses
  %i.jv = load i32, ptr %.sroa.0305.0484, align 4, !tbaa !78
  %i.jw = add nsw i32 %i.jv, %.0112485            ; 3 uses
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [4 x i8], ptr %.pre527.pre, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %i.ka = getelementptr [4 x i8], ptr %i.jz, i64 %i.is
  store i32 %.0112485, ptr %i.ka, align 4, !tbaa !78
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0305.0484, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.kb, %i.jp
  br i1 %.not, label %._crit_edge488, label %.lr.ph487

._crit_edge488:                                   ; preds = %.lr.ph487, %._crit_edge482
  %.0112.lcssa = phi i32 [ 0, %._crit_edge482 ], [ %i.jw, %.lr.ph487 ]
  %i.kc = load i64, ptr %i.ir, align 8, !tbaa !27
  %i.kd = getelementptr [4 x i8], ptr %.pre527.pre, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 -4
  %i.kf = getelementptr [4 x i8], ptr %i.ke, i64 %i.is
  store i32 %.0112.lcssa, ptr %i.kf, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !98
  %i.kj = load ptr, ptr %i.kg, align 8, !tbaa !99
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 2
  store i64 %i.kn, ptr %17, align 8, !tbaa !84, !alias.scope !397
  %i.ko = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.ko, align 8, !tbaa !84, !alias.scope !397
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 0.000000e+00, ptr %i.kp, align 8, !tbaa !93, !alias.scope !397
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.aa

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %._crit_edge488
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.kq = load ptr, ptr %i.kg, align 8, !tbaa !125 ; 3 uses
  %i.kr = ptrtoaddr ptr %i.kq to i64              ; 3 uses
  %i.ks = load ptr, ptr %i.kh, align 8, !tbaa !125 ; 3 uses
  %i.kt = ptrtoaddr ptr %i.ks to i64              ; 3 uses
  %.not478491 = icmp eq ptr %i.kq, %i.ks
  %.pre529 = load ptr, ptr %16, align 8, !tbaa !94 ; 10 uses
  br i1 %.not478491, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge, label %.lr.ph495

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre530 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  %.phi.trans.insert531 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.pre532 = load i64, ptr %.phi.trans.insert531, align 8, !tbaa !101
  br label %._crit_edge496.split

.lr.ph495:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !89
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !62 ; 2 uses
  %i.ky = load ptr, ptr %6, align 8, !tbaa !94, !noalias !398 ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !101, !noalias !399 ; 24 uses
  %i.lb = load i64, ptr %i.s, align 8, !tbaa !27  ; 12 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !27 ; 14 uses
  %i.le = icmp sgt i64 %i.la, 0
  br i1 %i.le, label %.split.preheader, label %._crit_edge496.split

.split.preheader:                                 ; preds = %.lr.ph495
  %.idx = shl i64 %i.kx, 3
  %i.lf = shl i64 %i.la, 3                        ; 2 uses
  %i.lg = add i64 %i.kt, 9223372036854775804
  %i.lh = sub i64 %i.lg, %i.kr
  %i.li = shl i64 %i.lh, 1
  %i.lj = and i64 %i.li, -8
  %i.lk = getelementptr i8, ptr %.pre529, i64 %i.lf
  %scevgep = getelementptr i8, ptr %i.lk, i64 %i.lj
  %scevgep616 = getelementptr i8, ptr %i.ky, i64 %i.lf
  %i.ll = shl i64 %i.la, 3                        ; 2 uses
  %i.lm = add i64 %i.kt, 9223372036854775804
  %i.ln = sub i64 %i.lm, %i.kr
  %i.lo = shl i64 %i.ln, 1
  %i.lp = and i64 %i.lo, -8
  %i.lq = getelementptr i8, ptr %.pre529, i64 %i.ll
  %scevgep636 = getelementptr i8, ptr %i.lq, i64 %i.lp
  %scevgep637 = getelementptr i8, ptr %i.ky, i64 %i.ll
  %i.lr = shl i64 %i.la, 3                        ; 2 uses
  %i.ls = add i64 %i.kt, 9223372036854775804
  %i.lt = sub i64 %i.ls, %i.kr
  %i.lu = shl i64 %i.lt, 1
  %i.lv = and i64 %i.lu, -8
  %i.lw = getelementptr i8, ptr %.pre529, i64 %i.lr
  %scevgep660 = getelementptr i8, ptr %i.lw, i64 %i.lv
  %scevgep661 = getelementptr i8, ptr %i.ky, i64 %i.lr
  %min.iters.check667 = icmp ult i64 %i.la, 8
  %ident.check657 = icmp ne i64 %i.ld, 1
  %ident.check658 = icmp ne i64 %i.lb, 1
  %i.lx = or i1 %ident.check657, %ident.check658
  %n.vec669 = and i64 %i.la, 9223372036854775804  ; 3 uses
  %cmp.n678 = icmp eq i64 %i.la, %n.vec669
  %xtraiter700 = and i64 %i.la, 1
  %lcmp.mod701.not = icmp eq i64 %xtraiter700, 0
  %min.iters.check643 = icmp ult i64 %i.la, 8
  %ident.check633 = icmp ne i64 %i.ld, 1
  %ident.check634 = icmp ne i64 %i.lb, 1
  %i.ly = or i1 %ident.check633, %ident.check634
  %n.vec645 = and i64 %i.la, 9223372036854775804  ; 3 uses
  %cmp.n654 = icmp eq i64 %i.la, %n.vec645
  %xtraiter705 = and i64 %i.la, 1
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  %min.iters.check619 = icmp ult i64 %i.la, 8
  %ident.check = icmp ne i64 %i.ld, 1
  %ident.check614 = icmp ne i64 %i.lb, 1
  %i.lz = or i1 %ident.check, %ident.check614
  %n.vec621 = and i64 %i.la, 9223372036854775804  ; 3 uses
  %cmp.n630 = icmp eq i64 %i.la, %n.vec621
  %xtraiter707 = and i64 %i.la, 1
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br label %.split

._crit_edge496.split:                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge, %.lr.ph495
  %i.ma = phi i64 [ %.pre532, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge ], [ %i.la, %.lr.ph495 ], [ %i.la, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2 ]
  %i.mb = phi i64 [ %.pre530, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge ], [ %i.ld, %.lr.ph495 ], [ %i.ld, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2 ]
  %i.mc = mul nsw i64 %i.ma, %i.mb                ; 6 uses
  %i.md = sdiv i64 %i.mc, 2
  %i.me = shl nsw i64 %i.md, 1                    ; 6 uses
  %i.mf = icmp sgt i64 %i.mc, 1
  br i1 %i.mf, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge496.split
  %i.mg = icmp slt i64 %i.me, %i.mc
  br i1 %i.mg, label %.lr.ph.i.i.i.i.i.i.i241.preheader, label %._crit_edge.i.i

.lr.ph.i.i.i.i.i.i.i241.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.mh = sub i64 %i.mc, %i.me                    ; 2 uses
  %min.iters.check681 = icmp ult i64 %i.mh, 2
  br i1 %min.iters.check681, label %.lr.ph.i.i.i.i.i.i.i241.preheader694, label %vector.ph682

vector.ph682:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader
  %i.mi = and i64 %i.mc, 1                        ; 2 uses
  %n.vec683 = sub nuw i64 %i.mh, %i.mi            ; 2 uses
  %i.mj = add i64 %i.me, %n.vec683
  %i.mk = getelementptr [8 x i8], ptr %.pre529, i64 %i.me
  br label %vector.body684

vector.body684:                                   ; preds = %vector.body684, %vector.ph682
  %index685 = phi i64 [ 0, %vector.ph682 ], [ %index.next687, %vector.body684 ] ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %index685 ; 2 uses
  %wide.load686 = load <2 x double>, ptr %i.ml, align 8, !tbaa !68
  %i.mm = fdiv <2 x double> %wide.load686, splat (double 3.000000e+00)
  store <2 x double> %i.mm, ptr %i.ml, align 8, !tbaa !68
  %index.next687 = add nuw i64 %index685, 2       ; 2 uses
  %i.mn = icmp eq i64 %index.next687, %n.vec683
  br i1 %i.mn, label %middle.block688, label %vector.body684, !llvm.loop !360

middle.block688:                                  ; preds = %vector.body684
  %cmp.n689 = icmp eq i64 %i.mi, 0
  br i1 %cmp.n689, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i.i.i.i241.preheader694

.lr.ph.i.i.i.i.i.i.i241.preheader694:             ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader, %middle.block688
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.me, %.lr.ph.i.i.i.i.i.i.i241.preheader ], [ %i.mj, %middle.block688 ]
end_hunk_0
