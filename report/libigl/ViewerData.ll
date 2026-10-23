Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerData?download=true
inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN3igl6opengl10ViewerData8set_dataERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEddNS_12ColorMapTypeEi:bb.a
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader208 ] ; 4 uses
  %i.cg = icmp eq i64 %.05.i.i.i.i.i.i.i.i.i, %i.g
  %i.ch = sitofp i64 %.05.i.i.i.i.i.i.i.i.i to double
  %i.ci = call double @llvm.fmuladd.f64(double %i.ch, double %.sroa.19.24.vec.extract41.extract.i.i.i.i.i.i.i, double %i.e)
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cg, double 1.000000e+00, double %i.ci
  %i.cj = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cj, align 8, !tbaa !82
  %i.ck = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !441

.peel.next.i.i.i.i.i.i.i.i:                       ; preds = %.peel.next.i.preheader.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi16EDv2_dEEvl.exit.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi16EDv2_dEEvl.exit.i.i.i.i.i.i.i.i ], [ 2, %.peel.next.i.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.cl = uitofp nneg i64 %.012.i.i.i.i.i.i.i.i to double
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fadd nnan <2 x double> %i.cn, <double 0.000000e+00, double 1.000000e+00>
  %i.cp = fmul <2 x double> %i.ak, %i.co
  %i.cq = fadd <2 x double> %i.ai, %i.cp          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.012.i.i.i.i.i.i.i.i, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi16EDv2_dEEvl.exit.i.i.i.i.i.i.i.i, !prof !147

bb.j:                                             ; preds = %.peel.next.i.i.i.i.i.i.i.i
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %.sroa.0.i.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0.16.i.i.i.i.i.i.i, <2 x i32> <i32 0, i32 3>
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi16EDv2_dEEvl.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi16EDv2_dEEvl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.peel.next.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.cr, %bb.j ], [ %i.cq, %.peel.next.i.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.012.i.i.i.i.i.i.i.i
  store <2 x double> %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cs, align 16, !tbaa !74
  %i.ct = add nuw nsw i64 %.012.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.p
  br i1 %i.cu, label %.peel.next.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !438

.loopexit:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.1, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  invoke void @_ZN3igl8colormapIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvNS_12ColorMapTypeERKNS1_10MatrixBaseIT_EEddRNS1_15PlainObjectBaseIT0_EE(i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %8, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.k unwind label %.body

bb.k:                                             ; preds = %.loopexit
  %i.cv = load ptr, ptr %8, align 8, !tbaa !138
  call void @free(ptr noundef %i.cv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @_ZN3igl6opengl10ViewerData12set_colormapERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr %7, align 8, !tbaa !64
  call void @free(ptr noundef %i.cw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.o

.body:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i, %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %8, align 8, !tbaa !138
  call void @free(ptr noundef %i.cy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.body
  %.pn13 = phi { ptr, i32 } [ %i.cz, %bb.m ], [ %i.cx, %.body ]
  %i.da = load ptr, ptr %7, align 8, !tbaa !64
  call void @free(ptr noundef %i.da) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

bb.o:                                             ; preds = %bb.l, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !139, !noalias !460 ; 8 uses
  %.cast.i = ptrtoint ptr %1 to i64
  %i.dd = fsub double %3, %2
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.cast.i, ptr %i.de, align 8, !alias.scope !461
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dc, ptr %i.df, align 8, !alias.scope !461
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 32
  store double %2, ptr %i.dg, align 8, !tbaa !143, !alias.scope !461
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.dc, ptr %i.dh, align 8, !alias.scope !461
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 64
  store double %i.dd, ptr %i.di, align 8, !tbaa !143, !alias.scope !461
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i64 1, ptr %i.dj, align 8, !tbaa !86, !alias.scope !461
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 2, ptr %i.dk, align 8, !tbaa !86, !alias.scope !461
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.dl = icmp sgt i64 %i.dc, 4611686018427387903
  br i1 %i.dl, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.do = icmp sgt i64 %i.dc, 0
  br i1 %i.do, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %.not101 = icmp samesign ult i64 %i.dc, 1152921504606846976
  br i1 %.not101, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.q
  %i.dp = shl nuw i64 %i.dc, 4
  %i.dq = call noalias ptr @malloc(i64 noundef %i.dp) #27 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.q, %bb.o
  %i.ds = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ds, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.p
  %.sink.i = phi ptr [ %i.dq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.p ]
  store ptr %.sink.i, ptr %9, align 8, !tbaa !64
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.dc, ptr %i.dm, align 8, !tbaa !80
  store i64 2, ptr %i.dn, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9ReplicateINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS5_INS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.r

common.resume:                                    ; preds = %bb.n, %bb.z, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %bb.r ], [ %.pn17, %bb.z ], [ %.pn13, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %9, align 8, !tbaa !64
  call void @free(ptr noundef %i.du) #25
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dv = load i64, ptr %i.db, align 8, !tbaa !139
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !80
  %i.dy = icmp eq i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN3igl6opengl10ViewerData6set_uvERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.y unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

._crit_edge:                                      ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !111 ; 40 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.ec, -1                       ; 4 uses
  %i.ee = icmp sgt i64 %i.eb, 1
  %i.ef = call noundef i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.eg = add nuw nsw i32 %i.ef, 1                ; 2 uses
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = icmp samesign ugt i64 %i.eb, %i.eh
  %i.ej = select i1 %i.ee, i1 %i.ei, i1 false
  %.not.i.i.i = icmp slt i32 %i.ed, 0
  %i.ek = sub nsw i64 0, %i.eb
  %i.el = select i1 %.not.i.i.i, i64 %i.ek, i64 %i.eb
  %i.em = trunc i64 %i.el to i32
  %i.en = add i32 %i.ed, %i.em
  %i.eo = sdiv i32 %i.en, %i.eg                   ; 6 uses
  %i.ep = call i64 @llvm.smax.i64(i64 %i.eb, i64 2)
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %i.eq, -1
  %i.es = sdiv i32 %i.ed, %i.er                   ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.et = icmp sgt i64 %i.eb, 3074457345618258602
  br i1 %i.et, label %.invoke108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ew = icmp sgt i64 %i.eb, 0
  br i1 %i.ew, label %bb.u, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split

bb.u:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.ex = icmp ugt i64 %i.eb, 1537228672809129301
  br i1 %i.ex, label %.invoke108, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.u
  %i.ey = mul nuw i64 %i.eb, 12
  %i.ez = call noalias ptr @malloc(i64 noundef %i.ey) #27 ; 14 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.invoke108, label %.preheader.lr.ph.split.i.i

.invoke108:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.u, %._crit_edge
  %i.fb = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fb, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont109 unwind label %.body27

.cont109:                                         ; preds = %.invoke108
  unreachable

.preheader.lr.ph.split.i.i:                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.ez, ptr %11, align 8, !tbaa !66
  store i64 %i.eb, ptr %i.eu, align 8, !tbaa !111
  store i64 3, ptr %i.ev, align 8, !tbaa !112
  br i1 %i.ej, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader: ; preds = %.preheader.lr.ph.split.i.i
  %min.iters.check120 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check120, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader207, label %vector.ph121

vector.ph121:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader
  %n.vec122 = and i64 %i.eb, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body125 ] ; 2 uses
  %vec.ind127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph121 ], [ %vec.ind.next129, %vector.body125 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind127, splat (i32 4)
  %i.fc = mul nsw <4 x i32> %broadcast.splat124, %vec.ind127
  %i.fd = mul nsw <4 x i32> %broadcast.splat124, %step.add
  %i.fe = getelementptr [4 x i8], ptr %i.ez, i64 %index126 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !113
  store <4 x i32> %i.fd, ptr %i.ff, align 4, !tbaa !113
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
  %vec.ind.next129 = add <4 x i32> %vec.ind127, splat (i32 8)
  %i.fg = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.fg, label %middle.block130, label %vector.body125, !llvm.loop !446

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %i.eb, %n.vec122
  br i1 %cmp.n131, label %._crit_edge.split.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader207

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader207: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader, %middle.block130
  %.09.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader ], [ %n.vec122, %middle.block130 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader: ; preds = %.preheader.lr.ph.split.i.i
  %min.iters.check164 = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check164, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader205, label %vector.ph165

vector.ph165:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader
  %n.vec166 = and i64 %i.eb, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph165
  %index170 = phi i64 [ 0, %vector.ph165 ], [ %index.next172, %vector.body169 ] ; 2 uses
  %vec.ind171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph165 ], [ %vec.ind.next173, %vector.body169 ] ; 2 uses
  %i.fh = sdiv <4 x i32> %vec.ind171, %broadcast.splat168
  %i.fi = getelementptr [4 x i8], ptr %i.ez, i64 %index170
  store <4 x i32> %i.fh, ptr %i.fi, align 4, !tbaa !113
  %index.next172 = add nuw i64 %index170, 4       ; 2 uses
  %vec.ind.next173 = add <4 x i32> %vec.ind171, splat (i32 4)
  %i.fj = icmp eq i64 %index.next172, %n.vec166
  br i1 %i.fj, label %middle.block174, label %vector.body169, !llvm.loop !447

middle.block174:                                  ; preds = %vector.body169
  %cmp.n175 = icmp eq i64 %i.eb, %n.vec166
  br i1 %cmp.n175, label %._crit_edge.split.us.us.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader205

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader205: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader, %middle.block174
  %.09.us.us.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader ], [ %n.vec166, %middle.block174 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader205, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i
  %.09.us.us.i.i = phi i64 [ %i.fm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i ], [ %.09.us.us.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader205 ] ; 3 uses
  %i.fk = trunc i64 %.09.us.us.i.i to i32
  %i.fl = sdiv i32 %i.fk, %i.eo
  %gep.us.us.i.i = getelementptr [4 x i8], ptr %i.ez, i64 %.09.us.us.i.i
  store i32 %i.fl, ptr %gep.us.us.i.i, align 4, !tbaa !113
  %i.fm = add nuw nsw i64 %.09.us.us.i.i, 1       ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.fm, %i.eb
  br i1 %exitcond16.not.i.i, label %._crit_edge.split.us.us.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i, !llvm.loop !448

._crit_edge.split.us.us.i.i:                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i, %middle.block174
  %invariant.gep.us.i.i.1 = getelementptr [4 x i8], ptr %i.ez, i64 %i.eb ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check178, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %._crit_edge.split.us.us.i.i
  %n.vec180 = and i64 %i.eb, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert181 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat182 = shufflevector <4 x i32> %broadcast.splatinsert181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph179
  %index184 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body183 ] ; 2 uses
  %vec.ind185 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph179 ], [ %vec.ind.next187, %vector.body183 ] ; 2 uses
  %i.fn = sdiv <4 x i32> %vec.ind185, %broadcast.splat182
  %i.fo = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %index184
  store <4 x i32> %i.fn, ptr %i.fo, align 4, !tbaa !113
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next187 = add <4 x i32> %vec.ind185, splat (i32 4)
  %i.fp = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.fp, label %middle.block188, label %vector.body183, !llvm.loop !449

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.eb, %n.vec180
  br i1 %cmp.n189, label %._crit_edge.split.us.us.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader: ; preds = %._crit_edge.split.us.us.i.i, %middle.block188
  %.09.us.us.i.i.1.ph = phi i64 [ 0, %._crit_edge.split.us.us.i.i ], [ %n.vec180, %middle.block188 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1
  %.09.us.us.i.i.1 = phi i64 [ %i.fs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1 ], [ %.09.us.us.i.i.1.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader ] ; 3 uses
  %i.fq = trunc i64 %.09.us.us.i.i.1 to i32
  %i.fr = sdiv i32 %i.fq, %i.eo
  %gep.us.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %.09.us.us.i.i.1
  store i32 %i.fr, ptr %gep.us.us.i.i.1, align 4, !tbaa !113
  %i.fs = add nuw nsw i64 %.09.us.us.i.i.1, 1     ; 2 uses
  %exitcond16.not.i.i.1 = icmp eq i64 %i.fs, %i.eb
  br i1 %exitcond16.not.i.i.1, label %._crit_edge.split.us.us.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, !llvm.loop !450

._crit_edge.split.us.us.i.i.1:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, %middle.block188
  %invariant.gep.us.i.i.2.idx = shl nuw i64 %i.eb, 3
  %invariant.gep.us.i.i.2 = getelementptr i8, ptr %i.ez, i64 %invariant.gep.us.i.i.2.idx ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check192, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %._crit_edge.split.us.us.i.i.1
  %n.vec194 = and i64 %i.eb, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph193
  %index198 = phi i64 [ 0, %vector.ph193 ], [ %index.next200, %vector.body197 ] ; 2 uses
  %vec.ind199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph193 ], [ %vec.ind.next201, %vector.body197 ] ; 2 uses
  %i.ft = sdiv <4 x i32> %vec.ind199, %broadcast.splat196
  %i.fu = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %index198
  store <4 x i32> %i.ft, ptr %i.fu, align 4, !tbaa !113
  %index.next200 = add nuw i64 %index198, 4       ; 2 uses
  %vec.ind.next201 = add <4 x i32> %vec.ind199, splat (i32 4)
  %i.fv = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.fv, label %middle.block202, label %vector.body197, !llvm.loop !451

middle.block202:                                  ; preds = %vector.body197
  %cmp.n203 = icmp eq i64 %i.eb, %n.vec194
  br i1 %cmp.n203, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader: ; preds = %._crit_edge.split.us.us.i.i.1, %middle.block202
  %.09.us.us.i.i.2.ph = phi i64 [ 0, %._crit_edge.split.us.us.i.i.1 ], [ %n.vec194, %middle.block202 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2
  %.09.us.us.i.i.2 = phi i64 [ %i.fy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2 ], [ %.09.us.us.i.i.2.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader ] ; 3 uses
  %i.fw = trunc i64 %.09.us.us.i.i.2 to i32
  %i.fx = sdiv i32 %i.fw, %i.eo
  %gep.us.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %.09.us.us.i.i.2
  store i32 %i.fx, ptr %gep.us.us.i.i.2, align 4, !tbaa !113
  %i.fy = add nuw nsw i64 %.09.us.us.i.i.2, 1     ; 2 uses
  %exitcond16.not.i.i.2 = icmp eq i64 %i.fy, %i.eb
  br i1 %exitcond16.not.i.i.2, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2, !llvm.loop !452

._crit_edge.split.i.i:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i, %middle.block130
  %invariant.gep.i.i.1 = getelementptr [4 x i8], ptr %i.ez, i64 %i.eb ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check134, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %._crit_edge.split.i.i
  %n.vec136 = and i64 %i.eb, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body139 ] ; 2 uses
  %vec.ind141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph135 ], [ %vec.ind.next144, %vector.body139 ] ; 3 uses
  %step.add142 = add <4 x i32> %vec.ind141, splat (i32 4)
  %i.fz = mul nsw <4 x i32> %broadcast.splat138, %vec.ind141
  %i.ga = mul nsw <4 x i32> %broadcast.splat138, %step.add142
  %i.gb = getelementptr [4 x i8], ptr %invariant.gep.i.i.1, i64 %index140 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store <4 x i32> %i.fz, ptr %i.gb, align 4, !tbaa !113
  store <4 x i32> %i.ga, ptr %i.gc, align 4, !tbaa !113
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %vec.ind.next144 = add <4 x i32> %vec.ind141, splat (i32 8)
  %i.gd = icmp eq i64 %index.next143, %n.vec136
end_hunk_0
begin_hunk_1_@_ZN3igl6opengl10ViewerData9set_edgesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES6_:bb.a
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %wide.load223 = load <2 x double>, ptr %i.jh, align 8, !tbaa !82, !noalias !528
  %wide.load224 = load <2 x double>, ptr %i.ji, align 8, !tbaa !82, !noalias !528
  %i.jj = getelementptr i8, ptr %i.jg, i64 16
  store <2 x double> %wide.load223, ptr %i.jg, align 8, !tbaa !82, !noalias !528
  store <2 x double> %wide.load224, ptr %i.jj, align 8, !tbaa !82, !noalias !528
  %index.next225 = add nuw i64 %index222, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next225, %n.vec220
  br i1 %i.jk, label %middle.block226, label %vector.body221, !llvm.loop !518

middle.block226:                                  ; preds = %vector.body221
  br i1 %cmp.n227, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292

.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader, %vector.memcheck215, %middle.block226
  %.09.i.i.i.i.i.i.i.i.i.i.i.i53.ph = phi i64 [ 0, %vector.memcheck215 ], [ %n.vec220, %middle.block226 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader ] ; 3 uses
  br i1 %lcmp.mod300.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.i53.prol = phi i64 [ %i.jo, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i53.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292 ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292 ]
  %i.jl = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53.prol, %i.af
  %gep.i.i.i.i.i.i.i.i.i.i.i.i54.prol = getelementptr [8 x i8], ptr %i.ix, i64 %i.jl
  %i.jm = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53.prol, %i.ae
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.prol = getelementptr [8 x i8], ptr %i.jb, i64 %i.jm
  %i.jn = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.prol, align 8, !tbaa !82, !noalias !528
  store double %i.jn, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i54.prol, align 8, !tbaa !82, !noalias !528
  %i.jo = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53.prol, 1 ; 2 uses
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol, !llvm.loop !519

.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292
  %.09.i.i.i.i.i.i.i.i.i.i.i.i53.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i53.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.preheader292 ], [ %i.jo, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol ]
  %i.jp = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53.ph, %i.s
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52

.preheader.i.i.i.i.i.i.i.i.i.i.i.i52:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52
  %.09.i.i.i.i.i.i.i.i.i.i.i.i53 = phi i64 [ %i.kg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52 ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i53.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit ] ; 6 uses
  %i.jr = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, %i.af
  %gep.i.i.i.i.i.i.i.i.i.i.i.i54 = getelementptr [8 x i8], ptr %i.ix, i64 %i.jr
  %i.js = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, %i.ae
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i55 = getelementptr [8 x i8], ptr %i.jb, i64 %i.js
  %i.jt = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i55, align 8, !tbaa !82, !noalias !528
  store double %i.jt, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i54, align 8, !tbaa !82, !noalias !528
  %i.ju = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, 1 ; 2 uses
  %i.jv = mul nsw i64 %i.ju, %i.af
  %gep.i.i.i.i.i.i.i.i.i.i.i.i54.1 = getelementptr [8 x i8], ptr %i.ix, i64 %i.jv
  %i.jw = mul nsw i64 %i.ju, %i.ae
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.1 = getelementptr [8 x i8], ptr %i.jb, i64 %i.jw
  %i.jx = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.1, align 8, !tbaa !82, !noalias !528
  store double %i.jx, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i54.1, align 8, !tbaa !82, !noalias !528
  %i.jy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, 2 ; 2 uses
  %i.jz = mul nsw i64 %i.jy, %i.af
  %gep.i.i.i.i.i.i.i.i.i.i.i.i54.2 = getelementptr [8 x i8], ptr %i.ix, i64 %i.jz
  %i.ka = mul nsw i64 %i.jy, %i.ae
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.2 = getelementptr [8 x i8], ptr %i.jb, i64 %i.ka
  %i.kb = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.2, align 8, !tbaa !82, !noalias !528
  store double %i.kb, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i54.2, align 8, !tbaa !82, !noalias !528
  %i.kc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, 3 ; 2 uses
  %i.kd = mul nsw i64 %i.kc, %i.af
  %gep.i.i.i.i.i.i.i.i.i.i.i.i54.3 = getelementptr [8 x i8], ptr %i.ix, i64 %i.kd
  %i.ke = mul nsw i64 %i.kc, %i.ae
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.3 = getelementptr [8 x i8], ptr %i.jb, i64 %i.ke
  %i.kf = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i55.3, align 8, !tbaa !82, !noalias !528
  store double %i.kf, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i54.3, align 8, !tbaa !82, !noalias !528
  %i.kg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i53, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.kg, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i56.3, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52, !llvm.loop !520

.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i52, %middle.block226
  %i.kh = getelementptr [4 x i8], ptr %i.iy, i64 %i.g
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !113
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.kj ; 6 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.gj
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.mux191 ; 6 uses
  %brmerge316 = select i1 %min.iters.check, i1 true, i1 %i.gp
  br i1 %brmerge316, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader
  %i.kn = shl nsw i64 %i.kj, 3
  %i.ko = add i64 %i.gn, %i.gu
  %i.kp = add i64 %i.kn, %i.gh
  %i.kq = sub i64 %i.kp, %i.ko
  %diff.check = icmp ugt i64 %i.kq, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %index ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %index ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load = load <2 x double>, ptr %i.ks, align 8, !tbaa !82
  %wide.load211 = load <2 x double>, ptr %i.kt, align 8, !tbaa !82
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <2 x double> %wide.load, ptr %i.kr, align 8, !tbaa !82
  store <2 x double> %wide.load211, ptr %i.ku, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i58.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291

.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i60.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader ] ; 3 uses
  br i1 %lcmp.mod303.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i60.prol = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291 ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291 ]
  %i.kw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60.prol, %i.af
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kw
  %i.ky = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60.prol, %i.ae
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !82
  store double %i.la, ptr %i.kx, align 8, !tbaa !82
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60.prol, 1 ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol, !llvm.loop !522

.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291
  %.05.i.i.i.i.i.i.i.i.i.i.i60.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.preheader291 ], [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol ]
  %i.lc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60.ph, %i.s
  %i.ld = icmp ugt i64 %i.lc, -4
  br i1 %i.ld, label %._crit_edge.i58.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i.i.i.i.i.i59:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59
  %.05.i.i.i.i.i.i.i.i.i.i.i60 = phi i64 [ %i.mb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit ] ; 6 uses
  %i.le = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, %i.af
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.le
  %i.lg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, %i.ae
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !82
  store double %i.li, ptr %i.lf, align 8, !tbaa !82
  %i.lj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, 1 ; 2 uses
  %i.lk = mul nsw i64 %i.lj, %i.af
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lk
  %i.lm = mul nsw i64 %i.lj, %i.ae
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !82
  store double %i.lo, ptr %i.ll, align 8, !tbaa !82
  %i.lp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, 2 ; 2 uses
  %i.lq = mul nsw i64 %i.lp, %i.af
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lq
  %i.ls = mul nsw i64 %i.lp, %i.ae
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !82
  store double %i.lu, ptr %i.lr, align 8, !tbaa !82
  %i.lv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, 3 ; 2 uses
  %i.lw = mul nsw i64 %i.lv, %i.af
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lw
  %i.ly = mul nsw i64 %i.lv, %i.ae
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !82
  store double %i.ma, ptr %i.lx, align 8, !tbaa !82
  %i.mb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i60, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i61.3 = icmp eq i64 %i.mb, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i61.3, label %._crit_edge.i58.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59, !llvm.loop !523

._crit_edge.i58.thread:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, %middle.block
  %i.mc = phi i64 [ %spec.select204, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit ], [ %.mux164192, %middle.block ], [ %.mux164192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59 ], [ %.mux164192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit ]
  %.sroa.6.0150 = phi i64 [ %spec.select205, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit ], [ %.mux191, %middle.block ], [ %.mux191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59 ], [ %.mux191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i59.prol.loopexit ]
  %i.md = add nsw i64 %i.s, %i.mc                 ; 2 uses
  %i.me = icmp eq i64 %i.md, %i.ab                ; 2 uses
  %spec.select = select i1 %i.me, i64 0, i64 %i.md
  %i.mf = zext i1 %i.me to i64
  %i.mg = mul nsw i64 %spec.select, %i.af
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.mg
  %i.mi = getelementptr [8 x i8], ptr %i.mh, i64 %.sroa.6.0150
  %i.mj = getelementptr [8 x i8], ptr %i.mi, i64 %i.mf ; 3 uses
  %i.mk = load double, ptr %4, align 8, !tbaa !82
  store double %i.mk, ptr %i.mj, align 8, !tbaa !82
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.af
  %i.mm = load double, ptr %i.v, align 8, !tbaa !82
  store double %i.mm, ptr %i.ml, align 8, !tbaa !82
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i69
  %i.mo = load double, ptr %i.w, align 8, !tbaa !82
  store double %i.mo, ptr %i.mn, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !502
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData27set_edges_from_vector_fieldERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.708", align 8 ; 7 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.712", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block", align 8     ; 9 uses
  %14 = alloca %"class.Eigen::Matrix.12", align 8 ; 8 uses
  %15 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %16 = alloca %"class.Eigen::Matrix.3", align 8  ; 13 uses
  %17 = alloca %"class.Eigen::Matrix.3", align 8  ; 6 uses
  %18 = alloca %"class.Eigen::Replicate.241", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::Matrix.3", align 8  ; 8 uses
  %20 = alloca %"class.Eigen::Replicate.241", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 18 uses
  store i64 0, ptr %14, align 8
  %21 = icmp sgt i64 %i.b, 4611686018427387903
  br i1 %21, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.c, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.not.i42 = icmp eq i64 %i.b, 0
  br i1 %.not.i42, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit, label %22

22:                                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %23 = icmp sgt i64 %i.b, 0
  br i1 %23, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %22
  %.not = icmp samesign ult i64 %i.b, 2305843009213693952
  br i1 %.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc43, label %.sink.split.i

.noexc43:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %22
  %.sink.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %22 ] ; 2 uses
  store ptr %.sink.i, ptr %14, align 8, !tbaa !66
  br label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.k = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 8 uses
  store i64 %i.b, ptr %i.d, align 8, !tbaa !111
  store i64 2, ptr %i.e, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80
  %i.n = add nsw i64 %i.m, %i.b                   ; 8 uses
  store i64 0, ptr %16, align 8
  %i.o = icmp sgt i64 %i.n, 3074457345618258602
  br i1 %i.o, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.not.i44 = icmp eq i64 %i.n, 0
  br i1 %.not.i44, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.r = icmp sgt i64 %i.n, 0
  br i1 %i.r, label %bb.d, label %.sink.split.i45

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.s, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.t = mul nuw i64 %i.n, 24
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #27 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.invoke, label %.sink.split.i45

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i45:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.c
  %.sink.i46 = phi ptr [ %i.u, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink.i46, ptr %16, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %.invoke
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i45
  %i.y = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i46, %.sink.split.i45 ] ; 2 uses
  store i64 %i.n, ptr %i.p, align 8, !tbaa !80
  store i64 3, ptr %i.q, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79, !noalias !538 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !538
  store ptr %i.y, ptr %13, align 8, !tbaa !85, !alias.scope !539, !noalias !538
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.b, ptr %i.ab, align 8, !tbaa !86, !alias.scope !539, !noalias !538
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !86, !alias.scope !539, !noalias !538
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %16, ptr %i.ad, align 8, !tbaa !88, !alias.scope !539, !noalias !538
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !noalias !538
  store i64 %i.n, ptr %i.af, align 8, !tbaa !91, !alias.scope !539, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !538
  %i.ag = load ptr, ptr %1, align 8, !tbaa !64, !noalias !538
  store ptr %i.ag, ptr %9, align 8, !tbaa !93, !noalias !538
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !94, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !538
  store ptr %i.y, ptr %10, align 8, !tbaa !97, !noalias !538
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.n, ptr %i.ai, align 8, !tbaa !86, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !538
  store ptr %10, ptr %11, align 8, !tbaa !99, !noalias !538
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.aj, align 8, !tbaa !101, !noalias !538
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.ak, align 8, !tbaa !103, !noalias !538
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %13, ptr %i.al, align 8, !tbaa !105, !noalias !538
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !538
  %i.am = load i64, ptr %i.q, align 8, !tbaa !79
  %i.an = icmp eq i64 %i.aa, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !79 ; 3 uses
  br i1 %i.an, label %bb.h, label %._crit_edge11.i

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !80
  %.not8.i = icmp eq i64 %i.aq, %i.b
  br i1 %.not8.i, label %._crit_edge11.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.i
  br label %._crit_edge11.i

._crit_edge11.i:                                  ; preds = %._crit_edge.i, %bb.i, %bb.g
  %.sroa.6.0 = phi i64 [ 0, %bb.i ], [ %i.b, %._crit_edge.i ], [ 0, %bb.g ] ; 2 uses
  %i.ar = phi i64 [ 0, %bb.i ], [ %i.ap, %._crit_edge.i ], [ %i.ap, %bb.g ]
  %i.as = phi i64 [ %i.aa, %bb.i ], [ 0, %._crit_edge.i ], [ %i.aa, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.at = load i64, ptr %i.l, align 8, !tbaa !80  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.au = load ptr, ptr %16, align 8, !tbaa !64, !noalias !540
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.6.0
  %i.aw = load i64, ptr %i.p, align 8, !tbaa !80, !noalias !540 ; 3 uses
  %i.ax = mul nsw i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  store ptr %i.ay, ptr %8, align 8, !tbaa !85, !alias.scope !540
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.at, ptr %i.az, align 8, !tbaa !86, !alias.scope !540
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !86, !alias.scope !540
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %16, ptr %i.bb, align 8, !tbaa !88, !alias.scope !540
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.sroa.6.0, ptr %i.bc, align 8, !tbaa !86, !alias.scope !540
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.as, ptr %i.bd, align 8, !tbaa !86, !alias.scope !540
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !91, !alias.scope !540
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load ptr, ptr %1, align 8, !tbaa !64
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !80
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !94
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bk = load ptr, ptr %2, align 8, !tbaa !64
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.at, ptr %i.bl, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.ay, ptr %5, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.aw, ptr %i.bm, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %5, ptr %6, align 8, !tbaa !99
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.bn, align 8, !tbaa !541
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.bo, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.bp, align 8, !tbaa !105
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS6_SC_EEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit unwind label %bb.k

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit: ; preds = %bb.j
  %i.bq = load ptr, ptr %16, align 8, !tbaa !64
  call void @free(ptr noundef %i.bq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.br = load i64, ptr %i.a, align 8, !tbaa !80  ; 8 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bt = trunc i64 %i.br to i32                  ; 6 uses
  %min.iters.check = icmp ult i64 %i.br, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bu = shl i64 %i.b, 2
  %i.bv = add i64 %i.bu, -1
  %diff.check = icmp ult i64 %i.bv, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_1
