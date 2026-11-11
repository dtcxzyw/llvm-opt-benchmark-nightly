Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN3igl8triangle4scaf12mesh_improveERNS0_8SCAFDataE:bb.a
  %i.gu = shufflevector <2 x double> %i.ff, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x double> %i.gu, ptr %i.fs, align 8, !tbaa !68
  %i.gv = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.gv, ptr %i.ft, align 8, !tbaa !68, !noalias !395
  %i.gw = fsub <2 x double> %i.gf, %i.gs
  store <2 x double> %i.gw, ptr %i.gp, align 8, !tbaa !68, !noalias !393
  %i.gx = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x double> %i.gx, ptr %i.fw, align 8, !tbaa !68
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.gz = extractelement <2 x double> %i.fc, i64 0
  store double %i.gz, ptr %i.gy, align 8, !tbaa !68, !noalias !394
  %i.ha = fmul <2 x double> %i.gh, <double 3.000000e+00, double 4.000000e+00>
  %i.hb = fdiv <2 x double> %i.ha, splat (double 5.000000e+00) ; 3 uses
  %i.hc = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hd = shufflevector <2 x double> %i.gj, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.he = fsub <2 x double> %i.hc, %i.hd
  store <2 x double> %i.he, ptr %i.go, align 8, !tbaa !68
  %i.hf = fadd <2 x double> %i.gk, %i.hb
  store <2 x double> %i.hf, ptr %i.gr, align 8, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.hh = getelementptr i8, ptr %i.fp, i64 232
  store double %i.ge, ptr %i.hh, align 8, !tbaa !68
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  %i.hj = extractelement <2 x double> %i.fe, i64 0
  store double %i.hj, ptr %i.hi, align 8, !tbaa !68, !noalias !395
  %foldExtExtBinop = fsub <2 x double> %i.ff, %i.hb
  %i.hk = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.hl = getelementptr i8, ptr %i.fp, i64 272
  store double %i.hk, ptr %i.hl, align 8, !tbaa !68
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fp, i64 152
  %i.hn = fdiv <2 x double> %i.fq, splat (double 5.000000e+00) ; 4 uses
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.hp = fsub <2 x double> %i.hc, %i.ho
  store <2 x double> %i.hp, ptr %i.fu, align 8, !tbaa !68
  %foldExtExtBinop709 = fadd <2 x double> %i.fc, %i.hn
  %i.hq = extractelement <2 x double> %foldExtExtBinop709, i64 0
  store double %i.hq, ptr %i.hg, align 8, !tbaa !68, !noalias !392
  %i.hr = fsub <2 x double> %i.fe, %i.hn
  %i.hs = fadd <2 x double> %i.fe, %i.hn
  %i.ht = shufflevector <2 x double> %i.hr, <2 x double> %i.hs, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ht, ptr %i.hm, align 8, !tbaa !68
  %i.hu = getelementptr i8, ptr %i.fp, i64 312
  store double %i.fx, ptr %i.hu, align 8, !tbaa !68
  %i.hv = load i64, ptr %i.b, align 8, !tbaa !61
  %i.hw = trunc i64 %i.hv to i32                  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !123
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hz, 20
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i230, label %thread-pre-split.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.o
  %.pn160.pn.pn.pn.pn = phi { ptr, i32 } [ %i.en, %.body ], [ %i.ib, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.ic = load ptr, ptr %9, align 8, !tbaa !70
  call void @free(ptr noundef %i.ic) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.pn160.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn.pn.pn, %bb.p ], [ %i.ia, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.az

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 noundef 20, i64 noundef 1)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.hy, align 8, !tbaa !123 ; 2 uses
  %i.id = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i.i.i230, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i230:                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213, %bb.r
  %i.ie = phi i64 [ %.pr.i.i.i.i.i.i.i, %bb.r ], [ 20, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit213 ] ; 4 uses
  %i.if = load ptr, ptr %i.hx, align 8, !tbaa !100 ; 2 uses
  %min.iters.check592 = icmp samesign ult i64 %i.ie, 8
  br i1 %min.iters.check592, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader, label %vector.ph593

vector.ph593:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i230
  %n.vec594 = and i64 %i.ie, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next597, %vector.body595 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph593 ], [ %vec.ind.next, %vector.body595 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index596 ; 2 uses
  %i.ih = add nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %i.ih, ptr %i.ig, align 4, !tbaa !78
  store <4 x i32> %.reass, ptr %i.ii, align 4, !tbaa !78
  %index.next597 = add nuw i64 %index596, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ij = icmp eq i64 %index.next597, %n.vec594
  br i1 %i.ij, label %middle.block598, label %vector.body595, !llvm.loop !344

middle.block598:                                  ; preds = %vector.body595
  %cmp.n599 = icmp eq i64 %i.ie, %n.vec594
  br i1 %cmp.n599, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i230, %middle.block598
  %.05.i.i.i.i.i.i.i.i231.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i230 ], [ %n.vec594, %middle.block598 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i231 = phi i64 [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i231.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ik = trunc i64 %.05.i.i.i.i.i.i.i.i231 to i32
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.05.i.i.i.i.i.i.i.i231
  %i.im = add nsw i32 %i.ik, %i.hw
  store i32 %i.im, ptr %i.il, align 4, !tbaa !78
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i231, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i232 = icmp eq i64 %i.in, %i.ie
  br i1 %exitcond.not.i.i.i.i.i.i.i.i232, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !345

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %middle.block598, %bb.r, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl3catIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEviRKNS1_10MatrixBaseIT_EES8_RT0_(i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !27 ; 14 uses
  %i.iq = icmp sgt i64 %i.ip, 4611686018427387903
  br i1 %i.iq, label %.invoke580, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234: ; preds = %bb.s
  %i.ir = shl nsw i64 %i.ip, 1                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !62
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !124
  %i.iw = mul nsw i64 %i.iv, %i.it
  %.not.i278 = icmp eq i64 %i.ir, %i.iw
  %.pre527.pre533.pre = load ptr, ptr %15, align 8, !tbaa !89 ; 2 uses
  br i1 %.not.i278, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234
  call void @free(ptr noundef %.pre527.pre533.pre) #32
  %i.ix = icmp sgt i64 %i.ip, 0
  br i1 %i.ix, label %bb.u, label %.sink.split.i279

bb.u:                                             ; preds = %bb.t
  %i.iy = icmp samesign ugt i64 %i.ir, 4611686018427387903
  br i1 %i.iy, label %.invoke580, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.u
  %i.iz = shl nuw i64 %i.ip, 3
  %i.ja = call noalias ptr @malloc(i64 noundef %i.iz) #33 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %.invoke580, label %.sink.split.i279

.invoke580:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.u, %bb.s
  %i.jc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jc, align 8, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont581 unwind label %bb.w

.cont581:                                         ; preds = %.invoke580
  unreachable

.sink.split.i279:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.t
  %.sink.i280 = phi ptr [ %i.ja, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.t ] ; 2 uses
  store ptr %.sink.i280, ptr %15, align 8, !tbaa !89
  br label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234, %.sink.split.i279
  %.pre527.pre = phi ptr [ %.pre527.pre533.pre, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i234 ], [ %.sink.i280, %.sink.split.i279 ] ; 4 uses
  store i64 %i.ip, ptr %i.is, align 8, !tbaa !62
  store i64 2, ptr %i.iu, align 8, !tbaa !124
  %i.jd = icmp sgt i64 %i.ip, 0
  br i1 %i.jd, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader, label %._crit_edge482

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader: ; preds = %bb.v
  %min.iters.check602 = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check602, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader712, label %vector.ph603

vector.ph603:                                     ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader
  %n.vec604 = and i64 %i.ip, 9223372036854775800  ; 3 uses
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph603
  %index606 = phi i64 [ 0, %vector.ph603 ], [ %index.next611, %vector.body605 ] ; 2 uses
  %vec.ind607 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph603 ], [ %vec.ind.next612, %vector.body605 ] ; 3 uses
  %vec.ind608 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph603 ], [ %vec.ind.next613, %vector.body605 ] ; 3 uses
  %step.add609 = add <4 x i32> %vec.ind607, splat (i32 4)
  %step.add610 = add <4 x i32> %vec.ind608, splat (i32 4)
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.pre527.pre, i64 %index606 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %vec.ind607, ptr %i.je, align 4, !tbaa !78, !noalias !396
  store <4 x i32> %step.add609, ptr %i.jf, align 4, !tbaa !78, !noalias !396
  %i.jg = getelementptr [4 x i8], ptr %i.je, i64 %i.ip ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  store <4 x i32> %vec.ind608, ptr %i.jg, align 4, !tbaa !78
  store <4 x i32> %step.add610, ptr %i.jh, align 4, !tbaa !78
  %index.next611 = add nuw i64 %index606, 8       ; 2 uses
  %vec.ind.next612 = add <4 x i32> %vec.ind607, splat (i32 8)
  %vec.ind.next613 = add <4 x i32> %vec.ind608, splat (i32 8)
  %i.ji = icmp eq i64 %index.next611, %n.vec604
  br i1 %i.ji, label %middle.block614, label %vector.body605, !llvm.loop !348

middle.block614:                                  ; preds = %vector.body605
  %cmp.n615 = icmp eq i64 %i.ip, %n.vec604
  br i1 %cmp.n615, label %._crit_edge482, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader712

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader712: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader, %middle.block614
  %indvars.iv507.ph = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader ], [ %n.vec604, %middle.block614 ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit

._crit_edge482:                                   ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit, %middle.block614, %bb.v
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !125 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !125 ; 2 uses
  %.not483 = icmp eq ptr %i.jk, %i.jm
  br i1 %.not483, label %._crit_edge488, label %.lr.ph487

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader712, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit ], [ %indvars.iv507.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.preheader712 ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.pre527.pre, i64 %indvars.iv507 ; 2 uses
  %i.jo = trunc nuw nsw i64 %indvars.iv507 to i32
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !78, !noalias !396
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 3 uses
  %i.jp = getelementptr [4 x i8], ptr %i.jn, i64 %i.ip
  %i.jq = trunc nuw nsw i64 %indvars.iv.next508 to i32
  store i32 %i.jq, ptr %i.jp, align 4, !tbaa !78
  %exitcond510.not = icmp eq i64 %indvars.iv.next508, %i.ip
  br i1 %exitcond510.not, label %._crit_edge482, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit, !llvm.loop !349

.lr.ph487:                                        ; preds = %._crit_edge482, %.lr.ph487
  %.0112485 = phi i32 [ %i.js, %.lr.ph487 ], [ 0, %._crit_edge482 ] ; 2 uses
  %.sroa.0305.0484 = phi ptr [ %i.jx, %.lr.ph487 ], [ %i.jk, %._crit_edge482 ] ; 2 uses
  %i.jr = load i32, ptr %.sroa.0305.0484, align 4, !tbaa !78
  %i.js = add nsw i32 %i.jr, %.0112485            ; 3 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr [4 x i8], ptr %.pre527.pre, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.ju, i64 -4
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %i.ip
  store i32 %.0112485, ptr %i.jw, align 4, !tbaa !78
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0305.0484, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.jx, %i.jm
  br i1 %.not, label %._crit_edge488, label %.lr.ph487

._crit_edge488:                                   ; preds = %.lr.ph487, %._crit_edge482
  %.0112.lcssa = phi i32 [ 0, %._crit_edge482 ], [ %i.js, %.lr.ph487 ]
  %i.jy = load i64, ptr %i.io, align 8, !tbaa !27
  %i.jz = getelementptr [4 x i8], ptr %.pre527.pre, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 -4
  %i.kb = getelementptr [4 x i8], ptr %i.ka, i64 %i.ip
  store i32 %.0112.lcssa, ptr %i.kb, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !98
  %i.kf = load ptr, ptr %i.kc, align 8, !tbaa !99
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 2
  store i64 %i.kj, ptr %17, align 8, !tbaa !84, !alias.scope !397
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.kk, align 8, !tbaa !84, !alias.scope !397
  %i.kl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 0.000000e+00, ptr %i.kl, align 8, !tbaa !93, !alias.scope !397
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.x

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %._crit_edge488
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !125 ; 3 uses
  %i.kn = ptrtoaddr ptr %i.km to i64              ; 3 uses
  %i.ko = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 3 uses
  %i.kp = ptrtoaddr ptr %i.ko to i64              ; 3 uses
  %.not478491 = icmp eq ptr %i.km, %i.ko
  %.pre529 = load ptr, ptr %16, align 8, !tbaa !94 ; 10 uses
  br i1 %.not478491, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge, label %.lr.ph495

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre530 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  %.phi.trans.insert531 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.pre532 = load i64, ptr %.phi.trans.insert531, align 8, !tbaa !101
  br label %._crit_edge496.split

.lr.ph495:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !89
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !62 ; 2 uses
  %i.ku = load ptr, ptr %6, align 8, !tbaa !94, !noalias !398 ; 6 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !101, !noalias !399 ; 24 uses
  %i.kx = load i64, ptr %i.s, align 8, !tbaa !27  ; 12 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !27 ; 14 uses
  %i.la = icmp sgt i64 %i.kw, 0
  br i1 %i.la, label %.split.preheader, label %._crit_edge496.split

.split.preheader:                                 ; preds = %.lr.ph495
  %.idx = shl i64 %i.kt, 3
  %i.lb = shl i64 %i.kw, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ku, i64 %i.lb
  %i.lc = add i64 %i.kp, 9223372036854775804
  %i.ld = sub i64 %i.lc, %i.kn
  %i.le = shl i64 %i.ld, 1
  %i.lf = and i64 %i.le, -8
  %i.lg = getelementptr i8, ptr %.pre529, i64 %i.lb
  %scevgep621 = getelementptr i8, ptr %i.lg, i64 %i.lf
  %i.lh = shl i64 %i.kw, 3                        ; 2 uses
  %scevgep647 = getelementptr i8, ptr %i.ku, i64 %i.lh
  %i.li = add i64 %i.kp, 9223372036854775804
  %i.lj = sub i64 %i.li, %i.kn
  %i.lk = shl i64 %i.lj, 1
  %i.ll = and i64 %i.lk, -8
  %i.lm = getelementptr i8, ptr %.pre529, i64 %i.lh
  %scevgep648 = getelementptr i8, ptr %i.lm, i64 %i.ll
  %i.ln = shl i64 %i.kw, 3                        ; 2 uses
  %scevgep677 = getelementptr i8, ptr %i.ku, i64 %i.ln
  %i.lo = add i64 %i.kp, 9223372036854775804
  %i.lp = sub i64 %i.lo, %i.kn
  %i.lq = shl i64 %i.lp, 1
  %i.lr = and i64 %i.lq, -8
  %i.ls = getelementptr i8, ptr %.pre529, i64 %i.ln
  %scevgep678 = getelementptr i8, ptr %i.ls, i64 %i.lr
  %min.iters.check680 = icmp ult i64 %i.kw, 8
  %ident.check668 = icmp ne i64 %i.kz, 1
  %ident.check669 = icmp ne i64 %i.kx, 1
  %i.lt = or i1 %ident.check668, %ident.check669
  %n.vec686 = and i64 %i.kw, 9223372036854775804  ; 3 uses
  %cmp.n695 = icmp eq i64 %i.kw, %n.vec686
  %xtraiter717 = and i64 %i.kw, 1
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  %min.iters.check650 = icmp ult i64 %i.kw, 8
  %ident.check638 = icmp ne i64 %i.kz, 1
  %ident.check639 = icmp ne i64 %i.kx, 1
  %i.lu = or i1 %ident.check638, %ident.check639
  %n.vec656 = and i64 %i.kw, 9223372036854775804  ; 3 uses
  %cmp.n665 = icmp eq i64 %i.kw, %n.vec656
  %xtraiter722 = and i64 %i.kw, 1
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  %min.iters.check623 = icmp ult i64 %i.kw, 8
  %ident.check = icmp ne i64 %i.kz, 1
  %ident.check617 = icmp ne i64 %i.kx, 1
  %i.lv = or i1 %ident.check, %ident.check617
  %n.vec626 = and i64 %i.kw, 9223372036854775804  ; 3 uses
  %cmp.n635 = icmp eq i64 %i.kw, %n.vec626
  %xtraiter724 = and i64 %i.kw, 1
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br label %.split

._crit_edge496.split:                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge, %.lr.ph495
  %i.lw = phi i64 [ %.pre532, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge ], [ %i.kw, %.lr.ph495 ], [ %i.kw, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2 ]
  %i.lx = phi i64 [ %.pre530, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.._crit_edge496.split_crit_edge ], [ %i.kz, %.lr.ph495 ], [ %i.kz, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLIS4_EERS4_RKNS0_IT_EE.exit.loopexit.2 ]
  %i.ly = mul nsw i64 %i.lw, %i.lx                ; 6 uses
  %i.lz = sdiv i64 %i.ly, 2
  %i.ma = shl nsw i64 %i.lz, 1                    ; 6 uses
  %i.mb = icmp sgt i64 %i.ly, 1
  br i1 %i.mb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge496.split
  %i.mc = icmp slt i64 %i.ma, %i.ly
  br i1 %i.mc, label %.lr.ph.i.i.i.i.i.i.i241.preheader, label %._crit_edge.i.i

.lr.ph.i.i.i.i.i.i.i241.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.md = sub i64 %i.ly, %i.ma                    ; 2 uses
  %min.iters.check698 = icmp ult i64 %i.md, 2
  br i1 %min.iters.check698, label %.lr.ph.i.i.i.i.i.i.i241.preheader711, label %vector.ph699

vector.ph699:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader
  %i.me = and i64 %i.ly, 1                        ; 2 uses
  %n.vec700 = sub nuw i64 %i.md, %i.me            ; 2 uses
  %i.mf = add i64 %i.ma, %n.vec700
  %i.mg = getelementptr [8 x i8], ptr %.pre529, i64 %i.ma
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next704, %vector.body701 ] ; 2 uses
  %i.mh = getelementptr [8 x i8], ptr %i.mg, i64 %index702 ; 2 uses
  %wide.load703 = load <2 x double>, ptr %i.mh, align 8, !tbaa !68
  %i.mi = fdiv <2 x double> %wide.load703, splat (double 3.000000e+00)
  store <2 x double> %i.mi, ptr %i.mh, align 8, !tbaa !68
  %index.next704 = add nuw i64 %index702, 2       ; 2 uses
  %i.mj = icmp eq i64 %index.next704, %n.vec700
  br i1 %i.mj, label %middle.block705, label %vector.body701, !llvm.loop !360

middle.block705:                                  ; preds = %vector.body701
  %cmp.n706 = icmp eq i64 %i.me, 0
  br i1 %cmp.n706, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i.i.i.i241.preheader711

.lr.ph.i.i.i.i.i.i.i241.preheader711:             ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader, %middle.block705
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.ma, %.lr.ph.i.i.i.i.i.i.i241.preheader ], [ %i.mf, %middle.block705 ]
  br label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader711, %.lr.ph.i.i.i.i.i.i.i241
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.mn, %.lr.ph.i.i.i.i.i.i.i241 ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i241.preheader711 ] ; 2 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %.pre529, i64 %.05.i.i.i.i.i.i.i ; 2 uses
end_hunk_0
