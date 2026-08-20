inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_ZN3igl6opengl10ViewerData8set_dataERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEddNS_12ColorMapTypeEi:bb.a
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.r
  %.sink.i = phi ptr [ %i.ds, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %9, align 8, !tbaa !59
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.de, ptr %i.do, align 8, !tbaa !77
  store i64 2, ptr %i.dp, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9ReplicateINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS5_INS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.t

common.resume:                                    ; preds = %bb.p, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.t ], [ %.pn17, %bb.ab ], [ %.pn13, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %9, align 8, !tbaa !59
  call void @free(ptr noundef %i.dw) #25
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS6_INS7_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESO_EELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dx = load i64, ptr %i.dd, align 8, !tbaa !204
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !77
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN3igl6opengl10ViewerData6set_uvERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.aa unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS4_INS5_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !115 ; 38 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = add i32 %i.ee, -1                       ; 4 uses
  %i.eg = icmp sgt i64 %i.ed, 1
  %i.eh = call noundef i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.ei = add nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = icmp samesign ugt i64 %i.ed, %i.ej
  %i.el = select i1 %i.eg, i1 %i.ek, i1 false
  %.not.i.i.i = icmp slt i32 %i.ef, 0
  %i.em = sub nsw i64 0, %i.ed
  %i.en = select i1 %.not.i.i.i, i64 %i.em, i64 %i.ed
  %i.eo = trunc i64 %i.en to i32
  %i.ep = add i32 %i.ef, %i.eo
  %i.eq = sdiv i32 %i.ep, %i.ei                   ; 9 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.ed, i64 2)
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, -1
  %i.eu = sdiv i32 %i.ef, %i.et                   ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ev = icmp sgt i64 %i.ed, 3074457345618258602
  br i1 %i.ev, label %.invoke108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %._crit_edge
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ey = icmp sgt i64 %i.ed, 0
  br i1 %i.ey, label %bb.w, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split

bb.w:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.ez = icmp ugt i64 %i.ed, 1537228672809129301
  br i1 %i.ez, label %.invoke108, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.w
  %i.fa = mul i64 %i.ed, 12
  %i.fb = call noalias ptr @malloc(i64 noundef %i.fa) #27 ; 15 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.invoke108, label %.preheader.lr.ph.split.i.i

.invoke108:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.w, %._crit_edge
  %i.fd = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fd, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont109 unwind label %.body27

.cont109:                                         ; preds = %.invoke108
  unreachable

.preheader.lr.ph.split.i.i:                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.fb, ptr %11, align 8, !tbaa !61
  store i64 %i.ed, ptr %i.ew, align 8, !tbaa !115
  store i64 3, ptr %i.ex, align 8, !tbaa !119
  br i1 %i.el, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader: ; preds = %.preheader.lr.ph.split.i.i
  %i.fe = add nsw i64 %i.ed, -1                   ; 3 uses
  %xtraiter168 = and i64 %i.ed, 1
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader
  %unroll_iter = and i64 %i.ed, 2305843009213693950
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader: ; preds = %.preheader.lr.ph.split.i.i
  %min.iters.check120 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check120, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader164, label %vector.ph121

vector.ph121:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader
  %n.vec122 = and i64 %i.ed, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body125 ] ; 2 uses
  %vec.ind127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph121 ], [ %vec.ind.next129, %vector.body125 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind127, splat (i32 4)
  %i.fg = mul nsw <4 x i32> %broadcast.splat124, %vec.ind127
  %i.fh = mul nsw <4 x i32> %broadcast.splat124, %step.add
  %i.fi = getelementptr [4 x i8], ptr %i.fb, i64 %index126 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store <4 x i32> %i.fg, ptr %i.fi, align 4, !tbaa !120
  store <4 x i32> %i.fh, ptr %i.fj, align 4, !tbaa !120
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
  %vec.ind.next129 = add <4 x i32> %vec.ind127, splat (i32 8)
  %i.fk = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.fk, label %middle.block130, label %vector.body125, !llvm.loop !433

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %i.ed, %n.vec122
  br i1 %cmp.n131, label %._crit_edge.split.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader164

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader164: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader, %middle.block130
  %.09.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader ], [ %n.vec122, %middle.block130 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader.new
  %.09.us.us.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader.new ], [ %i.fq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i ]
  %i.fl = trunc i64 %.09.us.us.i.i to i32
  %i.fm = sdiv i32 %i.fl, %i.eq
  %gep.us.us.i.i = getelementptr [4 x i8], ptr %i.fb, i64 %.09.us.us.i.i
  store i32 %i.fm, ptr %gep.us.us.i.i, align 4, !tbaa !120
  %i.fn = or disjoint i64 %.09.us.us.i.i, 1       ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = sdiv i32 %i.fo, %i.eq
  %gep.us.us.i.i.1172 = getelementptr [4 x i8], ptr %i.fb, i64 %i.fn
  store i32 %i.fp, ptr %gep.us.us.i.i.1172, align 4, !tbaa !120
  %i.fq = add nuw nsw i64 %.09.us.us.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.i.i.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i, !llvm.loop !434

._crit_edge.split.us.us.i.i.unr-lcssa:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %._crit_edge.split.us.us.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.epil.preheader: ; preds = %._crit_edge.split.us.us.i.i.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader
  %.09.us.us.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.preheader ], [ %i.fq, %._crit_edge.split.us.us.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i64 %i.ed to i1
  call void @llvm.assume(i1 %lcmp.mod170)
  %i.fr = trunc i64 %.09.us.us.i.i.epil.init to i32
  %i.fs = sdiv i32 %i.fr, %i.eq
  %gep.us.us.i.i.epil = getelementptr [4 x i8], ptr %i.fb, i64 %.09.us.us.i.i.epil.init
  store i32 %i.fs, ptr %gep.us.us.i.i.epil, align 4, !tbaa !120
  br label %._crit_edge.split.us.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %._crit_edge.split.us.us.i.i.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.epil.preheader
  %invariant.gep.us.i.i.1 = getelementptr [4 x i8], ptr %i.fb, i64 %i.ed ; 3 uses
  %xtraiter175 = and i64 %i.ed, 1
  %i.ft = icmp eq i64 %i.fe, 0
  br i1 %i.ft, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.epil.preheader, label %._crit_edge.split.us.us.i.i.new

._crit_edge.split.us.us.i.i.new:                  ; preds = %._crit_edge.split.us.us.i.i
  %unroll_iter178 = and i64 %i.ed, 2305843009213693950
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, %._crit_edge.split.us.us.i.i.new
  %.09.us.us.i.i.1 = phi i64 [ 0, %._crit_edge.split.us.us.i.i.new ], [ %i.fz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1 ] ; 4 uses
  %niter179 = phi i64 [ 0, %._crit_edge.split.us.us.i.i.new ], [ %niter179.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1 ]
  %i.fu = trunc i64 %.09.us.us.i.i.1 to i32
  %i.fv = sdiv i32 %i.fu, %i.eq
  %gep.us.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %.09.us.us.i.i.1
  store i32 %i.fv, ptr %gep.us.us.i.i.1, align 4, !tbaa !120
  %i.fw = or disjoint i64 %.09.us.us.i.i.1, 1     ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = sdiv i32 %i.fx, %i.eq
  %gep.us.us.i.i.1.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %i.fw
  store i32 %i.fy, ptr %gep.us.us.i.i.1.1, align 4, !tbaa !120
  %i.fz = add nuw nsw i64 %.09.us.us.i.i.1, 2     ; 2 uses
  %niter179.next.1 = add nuw i64 %niter179, 2     ; 2 uses
  %niter179.ncmp.1 = icmp eq i64 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %._crit_edge.split.us.us.i.i.1.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, !llvm.loop !434

._crit_edge.split.us.us.i.i.1.unr-lcssa:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %._crit_edge.split.us.us.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.epil.preheader: ; preds = %._crit_edge.split.us.us.i.i.1.unr-lcssa, %._crit_edge.split.us.us.i.i
  %.09.us.us.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.split.us.us.i.i ], [ %i.fz, %._crit_edge.split.us.us.i.i.1.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i64 %i.ed to i1
  call void @llvm.assume(i1 %lcmp.mod177)
  %i.ga = trunc i64 %.09.us.us.i.i.1.epil.init to i32
  %i.gb = sdiv i32 %i.ga, %i.eq
  %gep.us.us.i.i.1.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %.09.us.us.i.i.1.epil.init
  store i32 %i.gb, ptr %gep.us.us.i.i.1.epil, align 4, !tbaa !120
  br label %._crit_edge.split.us.us.i.i.1

._crit_edge.split.us.us.i.i.1:                    ; preds = %._crit_edge.split.us.us.i.i.1.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.epil.preheader
  %invariant.gep.us.i.i.2.idx = shl nuw i64 %i.ed, 3
  %invariant.gep.us.i.i.2 = getelementptr i8, ptr %i.fb, i64 %invariant.gep.us.i.i.2.idx ; 3 uses
  %xtraiter180 = and i64 %i.ed, 1
  %i.gc = icmp eq i64 %i.fe, 0
  br i1 %i.gc, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.epil.preheader, label %._crit_edge.split.us.us.i.i.1.new

._crit_edge.split.us.us.i.i.1.new:                ; preds = %._crit_edge.split.us.us.i.i.1
  %unroll_iter183 = and i64 %i.ed, 2305843009213693950
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2, %._crit_edge.split.us.us.i.i.1.new
  %.09.us.us.i.i.2 = phi i64 [ 0, %._crit_edge.split.us.us.i.i.1.new ], [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2 ] ; 4 uses
  %niter184 = phi i64 [ 0, %._crit_edge.split.us.us.i.i.1.new ], [ %niter184.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2 ]
  %i.gd = trunc i64 %.09.us.us.i.i.2 to i32
  %i.ge = sdiv i32 %i.gd, %i.eq
  %gep.us.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %.09.us.us.i.i.2
  store i32 %i.ge, ptr %gep.us.us.i.i.2, align 4, !tbaa !120
  %i.gf = or disjoint i64 %.09.us.us.i.i.2, 1     ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = sdiv i32 %i.gg, %i.eq
  %gep.us.us.i.i.2.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %i.gf
  store i32 %i.gh, ptr %gep.us.us.i.i.2.1, align 4, !tbaa !120
  %i.gi = add nuw nsw i64 %.09.us.us.i.i.2, 2     ; 2 uses
  %niter184.next.1 = add nuw i64 %niter184, 2     ; 2 uses
  %niter184.ncmp.1 = icmp eq i64 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2, !llvm.loop !434

._crit_edge.split.i.i:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i, %middle.block130
  %invariant.gep.i.i.1 = getelementptr [4 x i8], ptr %i.fb, i64 %i.ed ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check134, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %._crit_edge.split.i.i
  %n.vec136 = and i64 %i.ed, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body139 ] ; 2 uses
  %vec.ind141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph135 ], [ %vec.ind.next144, %vector.body139 ] ; 3 uses
  %step.add142 = add <4 x i32> %vec.ind141, splat (i32 4)
  %i.gj = mul nsw <4 x i32> %broadcast.splat138, %vec.ind141
  %i.gk = mul nsw <4 x i32> %broadcast.splat138, %step.add142
  %i.gl = getelementptr [4 x i8], ptr %invariant.gep.i.i.1, i64 %index140 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  store <4 x i32> %i.gj, ptr %i.gl, align 4, !tbaa !120
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !120
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %vec.ind.next144 = add <4 x i32> %vec.ind141, splat (i32 8)
  %i.gn = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.gn, label %middle.block145, label %vector.body139, !llvm.loop !435

middle.block145:                                  ; preds = %vector.body139
  %cmp.n146 = icmp eq i64 %i.ed, %n.vec136
  br i1 %cmp.n146, label %._crit_edge.split.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader: ; preds = %._crit_edge.split.i.i, %middle.block145
  %.09.i.i.1.ph = phi i64 [ 0, %._crit_edge.split.i.i ], [ %n.vec136, %middle.block145 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1
  %.09.i.i.1 = phi i64 [ %i.gq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1 ], [ %.09.i.i.1.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader ] ; 3 uses
  %i.go = trunc i64 %.09.i.i.1 to i32
  %i.gp = mul nsw i32 %i.eu, %i.go
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.1, i64 %.09.i.i.1
  store i32 %i.gp, ptr %gep.i.i.1, align 4, !tbaa !120
  %i.gq = add nuw nsw i64 %.09.i.i.1, 1           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.gq, %i.ed
  br i1 %exitcond.not.i.i.1, label %._crit_edge.split.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1, !llvm.loop !436

._crit_edge.split.i.i.1:                          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1, %middle.block145
  %invariant.gep.i.i.2.idx = shl nuw i64 %i.ed, 3
  %invariant.gep.i.i.2 = getelementptr i8, ptr %i.fb, i64 %invariant.gep.i.i.2.idx ; 2 uses
  %min.iters.check149 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check149, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %._crit_edge.split.i.i.1
  %n.vec151 = and i64 %i.ed, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %vec.ind156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph150 ], [ %vec.ind.next159, %vector.body154 ] ; 3 uses
  %step.add157 = add <4 x i32> %vec.ind156, splat (i32 4)
  %i.gr = mul nsw <4 x i32> %broadcast.splat153, %vec.ind156
  %i.gs = mul nsw <4 x i32> %broadcast.splat153, %step.add157
  %i.gt = getelementptr [4 x i8], ptr %invariant.gep.i.i.2, i64 %index155 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store <4 x i32> %i.gr, ptr %i.gt, align 4, !tbaa !120
  store <4 x i32> %i.gs, ptr %i.gu, align 4, !tbaa !120
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %vec.ind.next159 = add <4 x i32> %vec.ind156, splat (i32 8)
  %i.gv = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.gv, label %middle.block160, label %vector.body154, !llvm.loop !437

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.ed, %n.vec151
  br i1 %cmp.n161, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader: ; preds = %._crit_edge.split.i.i.1, %middle.block160
  %.09.i.i.2.ph = phi i64 [ 0, %._crit_edge.split.i.i.1 ], [ %n.vec151, %middle.block160 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2
  %.09.i.i.2 = phi i64 [ %i.gy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2 ], [ %.09.i.i.2.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader ] ; 3 uses
  %i.gw = trunc i64 %.09.i.i.2 to i32
  %i.gx = mul nsw i32 %i.eu, %i.gw
  %gep.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.2, i64 %.09.i.i.2
  store i32 %i.gx, ptr %gep.i.i.2, align 4, !tbaa !120
  %i.gy = add nuw nsw i64 %.09.i.i.2, 1           ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %i.gy, %i.ed
  br i1 %exitcond.not.i.i.2, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2, !llvm.loop !438

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader164, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i
  %.09.i.i = phi i64 [ %i.hb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i ], [ %.09.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader164 ] ; 3 uses
  %i.gz = trunc i64 %.09.i.i to i32
  %i.ha = mul nsw i32 %i.eu, %i.gz
  %gep.i.i = getelementptr [4 x i8], ptr %i.fb, i64 %.09.i.i
  store i32 %i.ha, ptr %gep.i.i, align 4, !tbaa !120
  %i.hb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hb, %i.ed
  br i1 %exitcond.not.i.i, label %._crit_edge.split.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i, !llvm.loop !439

.body27:                                          ; preds = %.invoke108
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.ed, ptr %i.ew, align 8, !tbaa !115
  store i64 3, ptr %i.ex, align 8, !tbaa !119
  br label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, %._crit_edge.split.us.us.i.i.1
  %.09.us.us.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.split.us.us.i.i.1 ], [ %i.gi, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod182 = trunc i64 %i.ed to i1
  call void @llvm.assume(i1 %lcmp.mod182)
  %i.hd = trunc i64 %.09.us.us.i.i.2.epil.init to i32
  %i.he = sdiv i32 %i.hd, %i.eq
  %gep.us.us.i.i.2.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %.09.us.us.i.i.2.epil.init
  store i32 %i.he, ptr %gep.us.us.i.i.2.epil, align 4, !tbaa !120
  br label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, %middle.block160, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split
  %i.hf = phi ptr [ %i.fb, %middle.block160 ], [ null, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split ], [ %i.fb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.epil.preheader ], [ %i.fb, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa ], [ %i.fb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2 ] ; 2 uses
  invoke void @_ZN3igl6opengl10ViewerData6set_uvERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  call void @free(ptr noundef %i.hf) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.y:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %i.hf) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.body27
  %.pn15 = phi { ptr, i32 } [ %i.hg, %bb.y ], [ %i.hc, %.body27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u, %bb.x
  %i.hh = load ptr, ptr %9, align 8, !tbaa !59
  call void @free(ptr noundef %i.hh) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.ab:                                            ; preds = %bb.z, %bb.v
  %.pn17 = phi { ptr, i32 } [ %i.eb, %bb.v ], [ %.pn15, %bb.z ]
  %i.hi = load ptr, ptr %9, align 8, !tbaa !59
  call void @free(ptr noundef %i.hi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume
}

declare void @_ZN3igl8colormapIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvNS_12ColorMapTypeERKNS1_10MatrixBaseIT_EEddRNS1_15PlainObjectBaseIT0_EE(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData12set_colormapERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.21", align 8  ; 10 uses
  %3 = alloca %"class.Eigen::Matrix.21", align 8  ; 13 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 13 uses
  %5 = alloca %"class.Eigen::Matrix.3", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !59, !noalias !440 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !440 ; 36 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp sgt i64 %i.c, 0
  br i1 %i.f, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  store ptr %i.g, ptr %2, align 8, !tbaa !60
  store i64 %i.c, ptr %i.d, align 8, !tbaa !175
  store i64 1, ptr %i.e, align 8, !tbaa !176
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.c
end_hunk_0
begin_hunk_1_@_ZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLE:bb.a
bb.bc:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us
  %i.za = load i64, ptr %i.f, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1:        ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us, %bb.bc
  %.sink1338.in = phi ptr [ %i.e, %bb.bc ], [ %i.h, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us ]
  %.sink1337 = phi i64 [ %i.za, %bb.bc ], [ %i.wx, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us ]
  %.sink1338 = load ptr, ptr %.sink1338.in, align 8, !tbaa !61
  %i.zb = getelementptr [4 x i8], ptr %.sink1338, i64 %indvars.iv1145
  %i.zc = getelementptr [4 x i8], ptr %i.zb, i64 %.sink1337
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !120
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.wz, i64 %i.ze ; 6 uses
  %i.zg = add i32 %i.xg, 1
  %i.zh = zext i32 %i.zg to i64
  %i.zi = mul nuw nsw i64 %i.xc, %i.zh
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.zi ; 6 uses
  br i1 %or.cond1985, label %vector.body1505, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader

vector.body1505:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1, %vector.body1505
  %index1506 = phi i64 [ %index.next1509, %vector.body1505 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1 ] ; 3 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %index1506 ; 2 uses
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %index1506 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %wide.load1507 = load <2 x double>, ptr %i.zl, align 8, !tbaa !80
  %wide.load1508 = load <2 x double>, ptr %i.zm, align 8, !tbaa !80
  %i.zn = fptrunc <2 x double> %wide.load1507 to <2 x float>
  %i.zo = fptrunc <2 x double> %wide.load1508 to <2 x float>
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store <2 x float> %i.zn, ptr %i.zk, align 4, !tbaa !57
  store <2 x float> %i.zo, ptr %i.zp, align 4, !tbaa !57
  %index.next1509 = add nuw i64 %index1506, 4     ; 2 uses
  %i.zq = icmp eq i64 %index.next1509, %n.vec1504
  br i1 %i.zq, label %middle.block1510, label %vector.body1505, !llvm.loop !740

middle.block1510:                                 ; preds = %vector.body1505
  br i1 %cmp.n1511, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1, %middle.block1510
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.1 ], [ %n.vec1504, %middle.block1510 ] ; 3 uses
  br i1 %lcmp.mod2067.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol = phi i64 [ %i.zw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ] ; 3 uses
  %prol.iter2068 = phi i64 [ %prol.iter2068.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ]
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol
  %i.zs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol, %i.xd
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.zs
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !80
  %i.zv = fptrunc double %i.zu to float
  store float %i.zv, ptr %i.zr, align 4, !tbaa !57
  %i.zw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol, 1 ; 2 uses
  %prol.iter2068.next = add i64 %prol.iter2068, 1 ; 2 uses
  %prol.iter2068.cmp.not = icmp eq i64 %prol.iter2068.next, %xtraiter2066
  br i1 %prol.iter2068.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol, !llvm.loop !741

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ], [ %i.zw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ]
  %i.zx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %i.xc
  %i.zy = icmp ugt i64 %i.zx, -4
  br i1 %i.zy, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1
  %.05.i.i.i.i.i.i.i.i.i.i.us.1 = phi i64 [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit ] ; 6 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1
  %i.aaa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, %i.xd
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.aaa
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !80
  %i.aad = fptrunc double %i.aac to float
  store float %i.aad, ptr %i.zz, align 4, !tbaa !57
  %i.aae = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 1 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.aae
  %i.aag = mul nsw i64 %i.aae, %i.xd
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.aag
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !80
  %i.aaj = fptrunc double %i.aai to float
  store float %i.aaj, ptr %i.aaf, align 4, !tbaa !57
  %i.aak = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 2 ; 2 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.aak
  %i.aam = mul nsw i64 %i.aak, %i.xd
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.aam
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !80
  %i.aap = fptrunc double %i.aao to float
  store float %i.aap, ptr %i.aal, align 4, !tbaa !57
  %i.aaq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 3 ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.aaq
  %i.aas = mul nsw i64 %i.aaq, %i.xd
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.aas
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !80
  %i.aav = fptrunc double %i.aau to float
  store float %i.aav, ptr %i.aar, align 4, !tbaa !57
  %i.aaw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.3 = icmp eq i64 %i.aaw, %i.xc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1, !llvm.loop !742

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1, %middle.block1510
  br i1 %i.k, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1
  %i.aax = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.aay = getelementptr [4 x i8], ptr %i.aax, i64 %indvars.iv1145
  %i.aaz = getelementptr i8, ptr %i.aay, i64 %.idx1315
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2

bb.be:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1
  %i.aba = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.abb = load i64, ptr %i.f, align 8, !tbaa !115
  %i.abc = getelementptr [4 x i8], ptr %i.aba, i64 %indvars.iv1145
  %.idx1316 = shl i64 %i.abb, 3
  %i.abd = getelementptr i8, ptr %i.abc, i64 %.idx1316
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2:        ; preds = %bb.be, %bb.bd
  %.in.us.2 = phi ptr [ %i.abd, %bb.be ], [ %i.aaz, %bb.bd ]
  %i.abe = load i32, ptr %.in.us.2, align 4, !tbaa !120
  %i.abf = sext i32 %i.abe to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.wz, i64 %i.abf ; 6 uses
  %i.abh = add i32 %i.xg, 2
  %i.abi = zext i32 %i.abh to i64
  %i.abj = mul nuw nsw i64 %i.xc, %i.abi
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.abj ; 6 uses
  br i1 %or.cond1986, label %vector.body1491, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader

vector.body1491:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2, %vector.body1491
  %index1492 = phi i64 [ %index.next1495, %vector.body1491 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2 ] ; 3 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %index1492 ; 2 uses
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %index1492 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %wide.load1493 = load <2 x double>, ptr %i.abm, align 8, !tbaa !80
  %wide.load1494 = load <2 x double>, ptr %i.abn, align 8, !tbaa !80
  %i.abo = fptrunc <2 x double> %wide.load1493 to <2 x float>
  %i.abp = fptrunc <2 x double> %wide.load1494 to <2 x float>
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store <2 x float> %i.abo, ptr %i.abl, align 4, !tbaa !57
  store <2 x float> %i.abp, ptr %i.abq, align 4, !tbaa !57
  %index.next1495 = add nuw i64 %index1492, 4     ; 2 uses
  %i.abr = icmp eq i64 %index.next1495, %n.vec1490
  br i1 %i.abr, label %middle.block1496, label %vector.body1491, !llvm.loop !743

middle.block1496:                                 ; preds = %vector.body1491
  br i1 %cmp.n1497, label %.split.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2, %middle.block1496
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.2 ], [ %n.vec1490, %middle.block1496 ] ; 3 uses
  br i1 %lcmp.mod2070.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol = phi i64 [ %i.abx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ] ; 3 uses
  %prol.iter2071 = phi i64 [ %prol.iter2071.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ]
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol
  %i.abt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol, %i.xd
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %i.abt
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !80
  %i.abw = fptrunc double %i.abv to float
  store float %i.abw, ptr %i.abs, align 4, !tbaa !57
  %i.abx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol, 1 ; 2 uses
  %prol.iter2071.next = add i64 %prol.iter2071, 1 ; 2 uses
  %prol.iter2071.cmp.not = icmp eq i64 %prol.iter2071.next, %xtraiter2069
  br i1 %prol.iter2071.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol, !llvm.loop !744

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ], [ %i.abx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ]
  %i.aby = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %i.xc
  %i.abz = icmp ugt i64 %i.aby, -4
  br i1 %i.abz, label %.split.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2
  %.05.i.i.i.i.i.i.i.i.i.i.us.2 = phi i64 [ %i.acx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit ] ; 6 uses
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2
  %i.acb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, %i.xd
  %i.acc = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !80
  %i.ace = fptrunc double %i.acd to float
  store float %i.ace, ptr %i.aca, align 4, !tbaa !57
  %i.acf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 1 ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.acf
  %i.ach = mul nsw i64 %i.acf, %i.xd
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %i.ach
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !80
  %i.ack = fptrunc double %i.acj to float
  store float %i.ack, ptr %i.acg, align 4, !tbaa !57
  %i.acl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 2 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.acl
  %i.acn = mul nsw i64 %i.acl, %i.xd
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %i.acn
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !80
  %i.acq = fptrunc double %i.acp to float
  store float %i.acq, ptr %i.acm, align 4, !tbaa !57
  %i.acr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 3 ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.acr
  %i.act = mul nsw i64 %i.acr, %i.xd
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.abg, i64 %i.act
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !80
  %i.acw = fptrunc double %i.acv to float
  store float %i.acw, ptr %i.acs, align 4, !tbaa !57
  %i.acx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.3 = icmp eq i64 %i.acx, %i.xc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.3, label %.split.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2, !llvm.loop !745

.split.us:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2, %middle.block1496, %.preheader1065
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 1 ; 2 uses
  %10 = icmp sgt i64 %i.wx, %indvars.iv.next1146
  br i1 %10, label %.preheader1065, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449, !llvm.loop !746

bb.bf:                                            ; preds = %bb.c
  %i.acy = and i32 %i.u, 1
  %.not310 = icmp eq i32 %i.acy, 0
  br i1 %.not310, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.acz = getelementptr inbounds nuw i8, ptr %3, i64 88
  tail call fastcc void @"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_1clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE"(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.acz)
  %.pre1188 = load i32, ptr %i.s, align 8, !tbaa !687
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ada = phi i32 [ %.pre1188, %bb.bg ], [ %i.u, %bb.bf ]
  %i.adb = and i32 %i.ada, 8
  %.not311 = icmp eq i32 %i.adb, 0
  br i1 %.not311, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.add = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.ade = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.adf = icmp sgt i64 %i.ade, 768614336404564650
  br i1 %i.adf, label %bb.bj, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.adg = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.adg, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.adg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.bi
  %i.adh = mul nsw i64 %i.ade, 3
  %i.adi = mul nsw i64 %i.ade, 12
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.add, i64 noundef %i.adi, i64 noundef %i.adh, i64 noundef 4)
  %i.adj = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.adk = icmp sgt i64 %i.adj, 0
  br i1 %i.adk, label %.preheader.lr.ph.i, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit"

.preheader.lr.ph.i:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i
  %i.adl = load ptr, ptr %i.adc, align 8, !tbaa !59, !noalias !747
  %i.adm = load ptr, ptr %i.add, align 8, !tbaa !662, !noalias !750 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !666, !noalias !750 ; 22 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !77 ; 18 uses
  %i.adr = icmp sgt i64 %i.ado, 0
  br i1 %i.adr, label %.preheader.us.i.preheader, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit"

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i
  %min.iters.check1558 = icmp ugt i64 %i.ado, 3
  %ident.check1556.not = icmp eq i64 %i.adq, 1
  %or.cond1987 = select i1 %min.iters.check1558, i1 %ident.check1556.not, i1 false
  %n.vec1560 = and i64 %i.ado, 9223372036854775804 ; 3 uses
  %cmp.n1567 = icmp eq i64 %i.ado, %n.vec1560
  %xtraiter2072 = and i64 %i.ado, 3               ; 2 uses
  %lcmp.mod2073.not = icmp eq i64 %xtraiter2072, 0
  %min.iters.check1544 = icmp ugt i64 %i.ado, 3
  %ident.check1542.not = icmp eq i64 %i.adq, 1
  %or.cond1988 = select i1 %min.iters.check1544, i1 %ident.check1542.not, i1 false
  %n.vec1546 = and i64 %i.ado, 9223372036854775804 ; 3 uses
  %cmp.n1553 = icmp eq i64 %i.ado, %n.vec1546
  %xtraiter2075 = and i64 %i.ado, 3               ; 2 uses
  %lcmp.mod2076.not = icmp eq i64 %xtraiter2075, 0
  %min.iters.check1530 = icmp ugt i64 %i.ado, 3
  %ident.check1528.not = icmp eq i64 %i.adq, 1
  %or.cond1989 = select i1 %min.iters.check1530, i1 %ident.check1528.not, i1 false
  %n.vec1532 = and i64 %i.ado, 9223372036854775804 ; 3 uses
  %cmp.n1539 = icmp eq i64 %i.ado, %n.vec1532
  %xtraiter2078 = and i64 %i.ado, 3               ; 2 uses
  %lcmp.mod2079.not = icmp eq i64 %xtraiter2078, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %indvars.iv.i ; 18 uses
  %i.adt = trunc nuw i64 %indvars.iv.i to i32
  %i.adu = mul i32 %i.adt, 3                      ; 3 uses
  %i.adv = zext i32 %i.adu to i64
  %i.adw = mul nuw nsw i64 %i.ado, %i.adv
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.adw ; 6 uses
  br i1 %or.cond1987, label %vector.body1561, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader

vector.body1561:                                  ; preds = %.preheader.us.i, %vector.body1561
  %index1562 = phi i64 [ %index.next1565, %vector.body1561 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %index1562 ; 2 uses
  %i.adz = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %index1562 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %wide.load1563 = load <2 x double>, ptr %i.adz, align 8, !tbaa !80
  %wide.load1564 = load <2 x double>, ptr %i.aea, align 8, !tbaa !80
  %i.aeb = fptrunc <2 x double> %wide.load1563 to <2 x float>
  %i.aec = fptrunc <2 x double> %wide.load1564 to <2 x float>
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store <2 x float> %i.aeb, ptr %i.ady, align 4, !tbaa !57
  store <2 x float> %i.aec, ptr %i.aed, align 4, !tbaa !57
  %index.next1565 = add nuw i64 %index1562, 4     ; 2 uses
  %i.aee = icmp eq i64 %index.next1565, %n.vec1560
  br i1 %i.aee, label %middle.block1566, label %vector.body1561, !llvm.loop !753

middle.block1566:                                 ; preds = %vector.body1561
  br i1 %cmp.n1567, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader:        ; preds = %.preheader.us.i, %middle.block1566
  %.05.i.i.i.i.i.i.i.i.i.i.us.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec1560, %middle.block1566 ] ; 3 uses
  br i1 %lcmp.mod2073.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.i.prol = phi i64 [ %i.aek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader ] ; 3 uses
  %prol.iter2074 = phi i64 [ %prol.iter2074.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader ]
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i.prol
  %i.aeg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i.prol, %i.adq
  %i.aeh = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aeg
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !80
  %i.aej = fptrunc double %i.aei to float
  store float %i.aej, ptr %i.aef, align 4, !tbaa !57
  %i.aek = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i.prol, 1 ; 2 uses
  %prol.iter2074.next = add i64 %prol.iter2074, 1 ; 2 uses
  %prol.iter2074.cmp.not = icmp eq i64 %prol.iter2074.next, %xtraiter2072
  br i1 %prol.iter2074.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol, !llvm.loop !754

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.aek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol ]
  %i.ael = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i.ph, %i.ado
  %i.aem = icmp ugt i64 %i.ael, -4
  br i1 %i.aem, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i
  %.05.i.i.i.i.i.i.i.i.i.i.us.i = phi i64 [ %i.afk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit ] ; 6 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i
  %i.aeo = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i, %i.adq
  %i.aep = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aeo
  %i.aeq = load double, ptr %i.aep, align 8, !tbaa !80
  %i.aer = fptrunc double %i.aeq to float
  store float %i.aer, ptr %i.aen, align 4, !tbaa !57
  %i.aes = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i, 1 ; 2 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.aes
  %i.aeu = mul nsw i64 %i.aes, %i.adq
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aeu
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !80
  %i.aex = fptrunc double %i.aew to float
  store float %i.aex, ptr %i.aet, align 4, !tbaa !57
  %i.aey = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i, 2 ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.aey
  %i.afa = mul nsw i64 %i.aey, %i.adq
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.afa
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !80
  %i.afd = fptrunc double %i.afc to float
  store float %i.afd, ptr %i.aez, align 4, !tbaa !57
  %i.afe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i, 3 ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.afe
  %i.afg = mul nsw i64 %i.afe, %i.adq
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.afg
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !80
  %i.afj = fptrunc double %i.afi to float
  store float %i.afj, ptr %i.aff, align 4, !tbaa !57
  %i.afk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i.3 = icmp eq i64 %i.afk, %i.ado
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i, !llvm.loop !755

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i, %middle.block1566
  %i.afl = add i32 %i.adu, 1
  %i.afm = zext i32 %i.afl to i64
  %i.afn = mul nuw nsw i64 %i.ado, %i.afm
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.afn ; 6 uses
  br i1 %or.cond1988, label %vector.body1547, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader

vector.body1547:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i, %vector.body1547
  %index1548 = phi i64 [ %index.next1551, %vector.body1547 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i ] ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %index1548 ; 2 uses
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %index1548 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 16
  %wide.load1549 = load <2 x double>, ptr %i.afq, align 8, !tbaa !80
  %wide.load1550 = load <2 x double>, ptr %i.afr, align 8, !tbaa !80
  %i.afs = fptrunc <2 x double> %wide.load1549 to <2 x float>
  %i.aft = fptrunc <2 x double> %wide.load1550 to <2 x float>
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  store <2 x float> %i.afs, ptr %i.afp, align 4, !tbaa !57
  store <2 x float> %i.aft, ptr %i.afu, align 4, !tbaa !57
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.afv = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.afv, label %middle.block1552, label %vector.body1547, !llvm.loop !756

middle.block1552:                                 ; preds = %vector.body1547
  br i1 %cmp.n1553, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader:      ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i, %middle.block1552
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i ], [ %n.vec1546, %middle.block1552 ] ; 3 uses
  br i1 %lcmp.mod2076.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.prol = phi i64 [ %i.agb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader ] ; 3 uses
  %prol.iter2077 = phi i64 [ %prol.iter2077.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader ]
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.prol
  %i.afx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.prol, %i.adq
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.afx
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !80
  %i.aga = fptrunc double %i.afz to float
  store float %i.aga, ptr %i.afw, align 4, !tbaa !57
  %i.agb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.prol, 1 ; 2 uses
  %prol.iter2077.next = add i64 %prol.iter2077, 1 ; 2 uses
  %prol.iter2077.cmp.not = icmp eq i64 %prol.iter2077.next, %xtraiter2075
  br i1 %prol.iter2077.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol, !llvm.loop !757

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.preheader ], [ %i.agb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol ]
  %i.agc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.ph, %i.ado
  %i.agd = icmp ugt i64 %i.agc, -4
  br i1 %i.agd, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i = phi i64 [ %i.ahb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit ] ; 6 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i
  %i.agf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i, %i.adq
  %i.agg = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.agf
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !80
  %i.agi = fptrunc double %i.agh to float
  store float %i.agi, ptr %i.age, align 4, !tbaa !57
  %i.agj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i, 1 ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.agj
  %i.agl = mul nsw i64 %i.agj, %i.adq
  %i.agm = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.agl
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !80
  %i.ago = fptrunc double %i.agn to float
  store float %i.ago, ptr %i.agk, align 4, !tbaa !57
  %i.agp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i, 2 ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.agp
  %i.agr = mul nsw i64 %i.agp, %i.adq
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.agr
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !80
  %i.agu = fptrunc double %i.agt to float
  store float %i.agu, ptr %i.agq, align 4, !tbaa !57
  %i.agv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i, 3 ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.agv
  %i.agx = mul nsw i64 %i.agv, %i.adq
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.agx
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !80
  %i.aha = fptrunc double %i.agz to float
  store float %i.aha, ptr %i.agw, align 4, !tbaa !57
  %i.ahb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i.3 = icmp eq i64 %i.ahb, %i.ado
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i, !llvm.loop !758

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i, %middle.block1552
  %i.ahc = add i32 %i.adu, 2
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = mul nuw nsw i64 %i.ado, %i.ahd
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.ahe ; 6 uses
  br i1 %or.cond1989, label %vector.body1533, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader

vector.body1533:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i, %vector.body1533
  %index1534 = phi i64 [ %index.next1537, %vector.body1533 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i ] ; 3 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %index1534 ; 2 uses
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %index1534 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  %wide.load1535 = load <2 x double>, ptr %i.ahh, align 8, !tbaa !80
  %wide.load1536 = load <2 x double>, ptr %i.ahi, align 8, !tbaa !80
  %i.ahj = fptrunc <2 x double> %wide.load1535 to <2 x float>
  %i.ahk = fptrunc <2 x double> %wide.load1536 to <2 x float>
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  store <2 x float> %i.ahj, ptr %i.ahg, align 4, !tbaa !57
  store <2 x float> %i.ahk, ptr %i.ahl, align 4, !tbaa !57
  %index.next1537 = add nuw i64 %index1534, 4     ; 2 uses
  %i.ahm = icmp eq i64 %index.next1537, %n.vec1532
  br i1 %i.ahm, label %middle.block1538, label %vector.body1533, !llvm.loop !759

middle.block1538:                                 ; preds = %vector.body1533
  br i1 %cmp.n1539, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader:      ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i, %middle.block1538
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i ], [ %n.vec1532, %middle.block1538 ] ; 3 uses
  br i1 %lcmp.mod2079.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.prol = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader ] ; 3 uses
  %prol.iter2080 = phi i64 [ %prol.iter2080.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader ]
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.prol
  %i.aho = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.prol, %i.adq
  %i.ahp = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aho
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !80
  %i.ahr = fptrunc double %i.ahq to float
  store float %i.ahr, ptr %i.ahn, align 4, !tbaa !57
  %i.ahs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.prol, 1 ; 2 uses
  %prol.iter2080.next = add i64 %prol.iter2080, 1 ; 2 uses
  %prol.iter2080.cmp.not = icmp eq i64 %prol.iter2080.next, %xtraiter2078
  br i1 %prol.iter2080.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol, !llvm.loop !760

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.preheader ], [ %i.ahs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol ]
  %i.aht = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.ph, %i.ado
  %i.ahu = icmp ugt i64 %i.aht, -4
  br i1 %i.ahu, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i = phi i64 [ %i.ais, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit ] ; 6 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i
  %i.ahw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i, %i.adq
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.ahw
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !80
  %i.ahz = fptrunc double %i.ahy to float
  store float %i.ahz, ptr %i.ahv, align 4, !tbaa !57
  %i.aia = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i, 1 ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.aia
  %i.aic = mul nsw i64 %i.aia, %i.adq
  %i.aid = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aic
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !80
  %i.aif = fptrunc double %i.aie to float
  store float %i.aif, ptr %i.aib, align 4, !tbaa !57
  %i.aig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i, 2 ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.aig
  %i.aii = mul nsw i64 %i.aig, %i.adq
  %i.aij = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aii
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !80
  %i.ail = fptrunc double %i.aik to float
  store float %i.ail, ptr %i.aih, align 4, !tbaa !57
  %i.aim = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i, 3 ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.aim
  %i.aio = mul nsw i64 %i.aim, %i.adq
  %i.aip = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.aio
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !80
  %i.air = fptrunc double %i.aiq to float
  store float %i.air, ptr %i.ain, align 4, !tbaa !57
  %i.ais = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i.3 = icmp eq i64 %i.ais, %i.ado
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i, !llvm.loop !761

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i, %middle.block1538
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.adj
  br i1 %exitcond.not, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit", label %.preheader.us.i, !llvm.loop !762

"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit": ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i, %.preheader.lr.ph.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i, %bb.bh
  %i.ait = load i32, ptr %i.s, align 8, !tbaa !687
  %i.aiu = and i32 %i.ait, 16
  %.not312 = icmp eq i32 %i.aiu, 0
  br i1 %.not312, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492", label %bb.bk

bb.bk:                                            ; preds = %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit"
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aiw = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.aix = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.aiy = icmp sgt i64 %i.aix, 768614336404564650
  br i1 %i.aiy, label %bb.bl, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i474

bb.bl:                                            ; preds = %bb.bk
  %i.aiz = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aiz, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.aiz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i474: ; preds = %bb.bk
  %i.aja = mul nsw i64 %i.aix, 3
  %i.ajb = mul nsw i64 %i.aix, 12
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.aiw, i64 noundef %i.ajb, i64 noundef %i.aja, i64 noundef 4)
  %i.ajc = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.ajd = icmp sgt i64 %i.ajc, 0
  br i1 %i.ajd, label %.preheader.lr.ph.i476, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492"

.preheader.lr.ph.i476:                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i474
  %i.aje = load ptr, ptr %i.aiv, align 8, !tbaa !59, !noalias !763
  %i.ajf = load ptr, ptr %i.aiw, align 8, !tbaa !662, !noalias !766 ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !666, !noalias !766 ; 22 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !77 ; 18 uses
  %i.ajk = icmp sgt i64 %i.ajh, 0
  br i1 %i.ajk, label %.preheader.us.i477.preheader, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492"

.preheader.us.i477.preheader:                     ; preds = %.preheader.lr.ph.i476
  %min.iters.check1600 = icmp ugt i64 %i.ajh, 3
  %ident.check1598.not = icmp eq i64 %i.ajj, 1
  %or.cond1990 = select i1 %min.iters.check1600, i1 %ident.check1598.not, i1 false
  %n.vec1602 = and i64 %i.ajh, 9223372036854775804 ; 3 uses
  %cmp.n1609 = icmp eq i64 %i.ajh, %n.vec1602
  %xtraiter2081 = and i64 %i.ajh, 3               ; 2 uses
  %lcmp.mod2082.not = icmp eq i64 %xtraiter2081, 0
  %min.iters.check1586 = icmp ugt i64 %i.ajh, 3
  %ident.check1584.not = icmp eq i64 %i.ajj, 1
  %or.cond1991 = select i1 %min.iters.check1586, i1 %ident.check1584.not, i1 false
  %n.vec1588 = and i64 %i.ajh, 9223372036854775804 ; 3 uses
  %cmp.n1595 = icmp eq i64 %i.ajh, %n.vec1588
  %xtraiter2084 = and i64 %i.ajh, 3               ; 2 uses
  %lcmp.mod2085.not = icmp eq i64 %xtraiter2084, 0
  %min.iters.check1572 = icmp ugt i64 %i.ajh, 3
  %ident.check1570.not = icmp eq i64 %i.ajj, 1
  %or.cond1992 = select i1 %min.iters.check1572, i1 %ident.check1570.not, i1 false
  %n.vec1574 = and i64 %i.ajh, 9223372036854775804 ; 3 uses
  %cmp.n1581 = icmp eq i64 %i.ajh, %n.vec1574
  %xtraiter2087 = and i64 %i.ajh, 3               ; 2 uses
  %lcmp.mod2088.not = icmp eq i64 %xtraiter2087, 0
  br label %.preheader.us.i477

.preheader.us.i477:                               ; preds = %.preheader.us.i477.preheader, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490
  %indvars.iv.i478 = phi i64 [ %indvars.iv.next.i491, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490 ], [ 0, %.preheader.us.i477.preheader ] ; 3 uses
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %indvars.iv.i478 ; 18 uses
  %i.ajm = trunc nuw i64 %indvars.iv.i478 to i32
  %i.ajn = mul i32 %i.ajm, 3                      ; 3 uses
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = mul nuw nsw i64 %i.ajh, %i.ajo
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.ajp ; 6 uses
  br i1 %or.cond1990, label %vector.body1603, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader

vector.body1603:                                  ; preds = %.preheader.us.i477, %vector.body1603
  %index1604 = phi i64 [ %index.next1607, %vector.body1603 ], [ 0, %.preheader.us.i477 ] ; 3 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %index1604 ; 2 uses
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %index1604 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %wide.load1605 = load <2 x double>, ptr %i.ajs, align 8, !tbaa !80
  %wide.load1606 = load <2 x double>, ptr %i.ajt, align 8, !tbaa !80
  %i.aju = fptrunc <2 x double> %wide.load1605 to <2 x float>
  %i.ajv = fptrunc <2 x double> %wide.load1606 to <2 x float>
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  store <2 x float> %i.aju, ptr %i.ajr, align 4, !tbaa !57
  store <2 x float> %i.ajv, ptr %i.ajw, align 4, !tbaa !57
  %index.next1607 = add nuw i64 %index1604, 4     ; 2 uses
  %i.ajx = icmp eq i64 %index.next1607, %n.vec1602
  br i1 %i.ajx, label %middle.block1608, label %vector.body1603, !llvm.loop !769

middle.block1608:                                 ; preds = %vector.body1603
  br i1 %cmp.n1609, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader:     ; preds = %.preheader.us.i477, %middle.block1608
  %.05.i.i.i.i.i.i.i.i.i.i.us.i480.ph = phi i64 [ 0, %.preheader.us.i477 ], [ %n.vec1602, %middle.block1608 ] ; 3 uses
  br i1 %lcmp.mod2082.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.i480.prol = phi i64 [ %i.akd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i480.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader ] ; 3 uses
  %prol.iter2083 = phi i64 [ %prol.iter2083.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader ]
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480.prol
  %i.ajz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480.prol, %i.ajj
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.ajz
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !80
  %i.akc = fptrunc double %i.akb to float
  store float %i.akc, ptr %i.ajy, align 4, !tbaa !57
  %i.akd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480.prol, 1 ; 2 uses
  %prol.iter2083.next = add i64 %prol.iter2083, 1 ; 2 uses
  %prol.iter2083.cmp.not = icmp eq i64 %prol.iter2083.next, %xtraiter2081
  br i1 %prol.iter2083.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol, !llvm.loop !770

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.i480.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.i480.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.preheader ], [ %i.akd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol ]
  %i.ake = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480.ph, %i.ajh
  %i.akf = icmp ugt i64 %i.ake, -4
  br i1 %i.akf, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479
  %.05.i.i.i.i.i.i.i.i.i.i.us.i480 = phi i64 [ %i.ald, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i480.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit ] ; 6 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480
  %i.akh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480, %i.ajj
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.akh
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !80
  %i.akk = fptrunc double %i.akj to float
  store float %i.akk, ptr %i.akg, align 4, !tbaa !57
  %i.akl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480, 1 ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %i.akl
  %i.akn = mul nsw i64 %i.akl, %i.ajj
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.akn
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !80
  %i.akq = fptrunc double %i.akp to float
  store float %i.akq, ptr %i.akm, align 4, !tbaa !57
  %i.akr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480, 2 ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %i.akr
  %i.akt = mul nsw i64 %i.akr, %i.ajj
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.akt
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !80
  %i.akw = fptrunc double %i.akv to float
  store float %i.akw, ptr %i.aks, align 4, !tbaa !57
  %i.akx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480, 3 ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %i.akx
  %i.akz = mul nsw i64 %i.akx, %i.ajj
  %i.ala = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.akz
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !80
  %i.alc = fptrunc double %i.alb to float
  store float %i.alc, ptr %i.aky, align 4, !tbaa !57
  %i.ald = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i480, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i481.3 = icmp eq i64 %i.ald, %i.ajh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i481.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479, !llvm.loop !771

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i479, %middle.block1608
  %i.ale = add i32 %i.ajn, 1
  %i.alf = zext i32 %i.ale to i64
  %i.alg = mul nuw nsw i64 %i.ajh, %i.alf
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.alg ; 6 uses
  br i1 %or.cond1991, label %vector.body1589, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader

vector.body1589:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482, %vector.body1589
  %index1590 = phi i64 [ %index.next1593, %vector.body1589 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482 ] ; 3 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %index1590 ; 2 uses
  %i.alj = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %index1590 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %wide.load1591 = load <2 x double>, ptr %i.alj, align 8, !tbaa !80
  %wide.load1592 = load <2 x double>, ptr %i.alk, align 8, !tbaa !80
  %i.all = fptrunc <2 x double> %wide.load1591 to <2 x float>
  %i.alm = fptrunc <2 x double> %wide.load1592 to <2 x float>
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  store <2 x float> %i.all, ptr %i.ali, align 4, !tbaa !57
  store <2 x float> %i.alm, ptr %i.aln, align 4, !tbaa !57
  %index.next1593 = add nuw i64 %index1590, 4     ; 2 uses
  %i.alo = icmp eq i64 %index.next1593, %n.vec1588
  br i1 %i.alo, label %middle.block1594, label %vector.body1589, !llvm.loop !772

middle.block1594:                                 ; preds = %vector.body1589
  br i1 %cmp.n1595, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader:   ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482, %middle.block1594
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i482 ], [ %n.vec1588, %middle.block1594 ] ; 3 uses
  br i1 %lcmp.mod2085.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.prol = phi i64 [ %i.alu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader ] ; 3 uses
  %prol.iter2086 = phi i64 [ %prol.iter2086.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.prol
  %i.alq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.prol, %i.ajj
  %i.alr = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.alq
  %i.als = load double, ptr %i.alr, align 8, !tbaa !80
  %i.alt = fptrunc double %i.als to float
  store float %i.alt, ptr %i.alp, align 4, !tbaa !57
  %i.alu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.prol, 1 ; 2 uses
  %prol.iter2086.next = add i64 %prol.iter2086, 1 ; 2 uses
  %prol.iter2086.cmp.not = icmp eq i64 %prol.iter2086.next, %xtraiter2084
  br i1 %prol.iter2086.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol, !llvm.loop !773

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.preheader ], [ %i.alu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol ]
  %i.alv = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.ph, %i.ajh
  %i.alw = icmp ugt i64 %i.alv, -4
  br i1 %i.alw, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484 = phi i64 [ %i.amu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit ] ; 6 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484
  %i.aly = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484, %i.ajj
  %i.alz = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.aly
  %i.ama = load double, ptr %i.alz, align 8, !tbaa !80
  %i.amb = fptrunc double %i.ama to float
  store float %i.amb, ptr %i.alx, align 4, !tbaa !57
  %i.amc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484, 1 ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.amc
  %i.ame = mul nsw i64 %i.amc, %i.ajj
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.ame
  %i.amg = load double, ptr %i.amf, align 8, !tbaa !80
  %i.amh = fptrunc double %i.amg to float
  store float %i.amh, ptr %i.amd, align 4, !tbaa !57
  %i.ami = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484, 2 ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.ami
  %i.amk = mul nsw i64 %i.ami, %i.ajj
  %i.aml = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.amk
  %i.amm = load double, ptr %i.aml, align 8, !tbaa !80
  %i.amn = fptrunc double %i.amm to float
  store float %i.amn, ptr %i.amj, align 4, !tbaa !57
  %i.amo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484, 3 ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.amo
  %i.amq = mul nsw i64 %i.amo, %i.ajj
  %i.amr = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.amq
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !80
  %i.amt = fptrunc double %i.ams to float
  store float %i.amt, ptr %i.amp, align 4, !tbaa !57
  %i.amu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i484, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i485.3 = icmp eq i64 %i.amu, %i.ajh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i485.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483, !llvm.loop !774

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i483, %middle.block1594
  %i.amv = add i32 %i.ajn, 2
  %i.amw = zext i32 %i.amv to i64
  %i.amx = mul nuw nsw i64 %i.ajh, %i.amw
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.amx ; 6 uses
  br i1 %or.cond1992, label %vector.body1575, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader

vector.body1575:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486, %vector.body1575
  %index1576 = phi i64 [ %index.next1579, %vector.body1575 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486 ] ; 3 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %index1576 ; 2 uses
  %i.ana = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %index1576 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %wide.load1577 = load <2 x double>, ptr %i.ana, align 8, !tbaa !80
  %wide.load1578 = load <2 x double>, ptr %i.anb, align 8, !tbaa !80
  %i.anc = fptrunc <2 x double> %wide.load1577 to <2 x float>
  %i.and = fptrunc <2 x double> %wide.load1578 to <2 x float>
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  store <2 x float> %i.anc, ptr %i.amz, align 4, !tbaa !57
  store <2 x float> %i.and, ptr %i.ane, align 4, !tbaa !57
  %index.next1579 = add nuw i64 %index1576, 4     ; 2 uses
  %i.anf = icmp eq i64 %index.next1579, %n.vec1574
  br i1 %i.anf, label %middle.block1580, label %vector.body1575, !llvm.loop !775

middle.block1580:                                 ; preds = %vector.body1575
  br i1 %cmp.n1581, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader:   ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486, %middle.block1580
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i486 ], [ %n.vec1574, %middle.block1580 ] ; 3 uses
  br i1 %lcmp.mod2088.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.prol = phi i64 [ %i.anl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader ] ; 3 uses
  %prol.iter2089 = phi i64 [ %prol.iter2089.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader ]
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.prol
  %i.anh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.prol, %i.ajj
  %i.ani = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.anh
  %i.anj = load double, ptr %i.ani, align 8, !tbaa !80
  %i.ank = fptrunc double %i.anj to float
  store float %i.ank, ptr %i.ang, align 4, !tbaa !57
  %i.anl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.prol, 1 ; 2 uses
  %prol.iter2089.next = add i64 %prol.iter2089, 1 ; 2 uses
  %prol.iter2089.cmp.not = icmp eq i64 %prol.iter2089.next, %xtraiter2087
  br i1 %prol.iter2089.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol, !llvm.loop !776

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.preheader ], [ %i.anl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol ]
  %i.anm = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.ph, %i.ajh
  %i.ann = icmp ugt i64 %i.anm, -4
  br i1 %i.ann, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488 = phi i64 [ %i.aol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit ] ; 6 uses
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488
  %i.anp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488, %i.ajj
  %i.anq = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.anp
  %i.anr = load double, ptr %i.anq, align 8, !tbaa !80
  %i.ans = fptrunc double %i.anr to float
  store float %i.ans, ptr %i.ano, align 4, !tbaa !57
  %i.ant = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488, 1 ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %i.ant
  %i.anv = mul nsw i64 %i.ant, %i.ajj
  %i.anw = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.anv
  %i.anx = load double, ptr %i.anw, align 8, !tbaa !80
  %i.any = fptrunc double %i.anx to float
  store float %i.any, ptr %i.anu, align 4, !tbaa !57
  %i.anz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488, 2 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %i.anz
  %i.aob = mul nsw i64 %i.anz, %i.ajj
  %i.aoc = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.aob
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !80
  %i.aoe = fptrunc double %i.aod to float
  store float %i.aoe, ptr %i.aoa, align 4, !tbaa !57
  %i.aof = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488, 3 ; 2 uses
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %i.aof
  %i.aoh = mul nsw i64 %i.aof, %i.ajj
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.ajl, i64 %i.aoh
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !80
  %i.aok = fptrunc double %i.aoj to float
  store float %i.aok, ptr %i.aog, align 4, !tbaa !57
  %i.aol = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i488, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i489.3 = icmp eq i64 %i.aol, %i.ajh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i489.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487, !llvm.loop !777

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i487, %middle.block1580
  %indvars.iv.next.i491 = add nuw nsw i64 %indvars.iv.i478, 1 ; 2 uses
  %exitcond1149.not = icmp eq i64 %indvars.iv.next.i491, %i.ajc
  br i1 %exitcond1149.not, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492", label %.preheader.us.i477, !llvm.loop !762

"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492": ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i490, %.preheader.lr.ph.i476, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i474, %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit"
  %i.aom = load i32, ptr %i.s, align 8, !tbaa !687
  %i.aon = and i32 %i.aom, 32
  %.not313 = icmp eq i32 %i.aon, 0
  br i1 %.not313, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511", label %bb.bm

bb.bm:                                            ; preds = %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492"
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aop = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.aoq = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.aor = icmp sgt i64 %i.aoq, 768614336404564650
  br i1 %i.aor, label %bb.bn, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i493

bb.bn:                                            ; preds = %bb.bm
  %i.aos = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aos, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.aos, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i493: ; preds = %bb.bm
  %i.aot = mul nsw i64 %i.aoq, 3
  %i.aou = mul nsw i64 %i.aoq, 12
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, i64 noundef %i.aou, i64 noundef %i.aot, i64 noundef 4)
  %i.aov = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.aow = icmp sgt i64 %i.aov, 0
  br i1 %i.aow, label %.preheader.lr.ph.i495, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511"

.preheader.lr.ph.i495:                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i493
  %i.aox = load ptr, ptr %i.aoo, align 8, !tbaa !59, !noalias !778
  %i.aoy = load ptr, ptr %i.aop, align 8, !tbaa !662, !noalias !781 ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !666, !noalias !781 ; 22 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !77 ; 18 uses
  %i.apd = icmp sgt i64 %i.apa, 0
  br i1 %i.apd, label %.preheader.us.i496.preheader, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511"

.preheader.us.i496.preheader:                     ; preds = %.preheader.lr.ph.i495
  %min.iters.check1642 = icmp ugt i64 %i.apa, 3
  %ident.check1640.not = icmp eq i64 %i.apc, 1
  %or.cond1993 = select i1 %min.iters.check1642, i1 %ident.check1640.not, i1 false
  %n.vec1644 = and i64 %i.apa, 9223372036854775804 ; 3 uses
  %cmp.n1651 = icmp eq i64 %i.apa, %n.vec1644
  %xtraiter2090 = and i64 %i.apa, 3               ; 2 uses
  %lcmp.mod2091.not = icmp eq i64 %xtraiter2090, 0
  %min.iters.check1628 = icmp ugt i64 %i.apa, 3
  %ident.check1626.not = icmp eq i64 %i.apc, 1
  %or.cond1994 = select i1 %min.iters.check1628, i1 %ident.check1626.not, i1 false
  %n.vec1630 = and i64 %i.apa, 9223372036854775804 ; 3 uses
  %cmp.n1637 = icmp eq i64 %i.apa, %n.vec1630
  %xtraiter2093 = and i64 %i.apa, 3               ; 2 uses
  %lcmp.mod2094.not = icmp eq i64 %xtraiter2093, 0
  %min.iters.check1614 = icmp ugt i64 %i.apa, 3
  %ident.check1612.not = icmp eq i64 %i.apc, 1
  %or.cond1995 = select i1 %min.iters.check1614, i1 %ident.check1612.not, i1 false
  %n.vec1616 = and i64 %i.apa, 9223372036854775804 ; 3 uses
  %cmp.n1623 = icmp eq i64 %i.apa, %n.vec1616
  %xtraiter2096 = and i64 %i.apa, 3               ; 2 uses
  %lcmp.mod2097.not = icmp eq i64 %xtraiter2096, 0
  br label %.preheader.us.i496

.preheader.us.i496:                               ; preds = %.preheader.us.i496.preheader, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509
  %indvars.iv.i497 = phi i64 [ %indvars.iv.next.i510, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509 ], [ 0, %.preheader.us.i496.preheader ] ; 3 uses
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.aox, i64 %indvars.iv.i497 ; 18 uses
  %i.apf = trunc nuw i64 %indvars.iv.i497 to i32
  %i.apg = mul i32 %i.apf, 3                      ; 3 uses
  %i.aph = zext i32 %i.apg to i64
  %i.api = mul nuw nsw i64 %i.apa, %i.aph
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %i.api ; 6 uses
  br i1 %or.cond1993, label %vector.body1645, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader

vector.body1645:                                  ; preds = %.preheader.us.i496, %vector.body1645
  %index1646 = phi i64 [ %index.next1649, %vector.body1645 ], [ 0, %.preheader.us.i496 ] ; 3 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %index1646 ; 2 uses
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %index1646 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %wide.load1647 = load <2 x double>, ptr %i.apl, align 8, !tbaa !80
  %wide.load1648 = load <2 x double>, ptr %i.apm, align 8, !tbaa !80
  %i.apn = fptrunc <2 x double> %wide.load1647 to <2 x float>
  %i.apo = fptrunc <2 x double> %wide.load1648 to <2 x float>
  %i.app = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  store <2 x float> %i.apn, ptr %i.apk, align 4, !tbaa !57
  store <2 x float> %i.apo, ptr %i.app, align 4, !tbaa !57
  %index.next1649 = add nuw i64 %index1646, 4     ; 2 uses
  %i.apq = icmp eq i64 %index.next1649, %n.vec1644
  br i1 %i.apq, label %middle.block1650, label %vector.body1645, !llvm.loop !784

middle.block1650:                                 ; preds = %vector.body1645
  br i1 %cmp.n1651, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader:     ; preds = %.preheader.us.i496, %middle.block1650
  %.05.i.i.i.i.i.i.i.i.i.i.us.i499.ph = phi i64 [ 0, %.preheader.us.i496 ], [ %n.vec1644, %middle.block1650 ] ; 3 uses
  br i1 %lcmp.mod2091.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.i499.prol = phi i64 [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i499.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader ] ; 3 uses
  %prol.iter2092 = phi i64 [ %prol.iter2092.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader ]
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499.prol
  %i.aps = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499.prol, %i.apc
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aps
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !80
  %i.apv = fptrunc double %i.apu to float
  store float %i.apv, ptr %i.apr, align 4, !tbaa !57
  %i.apw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499.prol, 1 ; 2 uses
  %prol.iter2092.next = add i64 %prol.iter2092, 1 ; 2 uses
  %prol.iter2092.cmp.not = icmp eq i64 %prol.iter2092.next, %xtraiter2090
  br i1 %prol.iter2092.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol, !llvm.loop !785

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.i499.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.i499.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.preheader ], [ %i.apw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol ]
  %i.apx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499.ph, %i.apa
  %i.apy = icmp ugt i64 %i.apx, -4
  br i1 %i.apy, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498
  %.05.i.i.i.i.i.i.i.i.i.i.us.i499 = phi i64 [ %i.aqw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.i499.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit ] ; 6 uses
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499
  %i.aqa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499, %i.apc
  %i.aqb = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aqa
  %i.aqc = load double, ptr %i.aqb, align 8, !tbaa !80
  %i.aqd = fptrunc double %i.aqc to float
  store float %i.aqd, ptr %i.apz, align 4, !tbaa !57
  %i.aqe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499, 1 ; 2 uses
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.aqe
  %i.aqg = mul nsw i64 %i.aqe, %i.apc
  %i.aqh = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aqg
  %i.aqi = load double, ptr %i.aqh, align 8, !tbaa !80
  %i.aqj = fptrunc double %i.aqi to float
  store float %i.aqj, ptr %i.aqf, align 4, !tbaa !57
  %i.aqk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499, 2 ; 2 uses
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.aqk
  %i.aqm = mul nsw i64 %i.aqk, %i.apc
  %i.aqn = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aqm
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !80
  %i.aqp = fptrunc double %i.aqo to float
  store float %i.aqp, ptr %i.aql, align 4, !tbaa !57
  %i.aqq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499, 3 ; 2 uses
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.aqq
  %i.aqs = mul nsw i64 %i.aqq, %i.apc
  %i.aqt = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aqs
  %i.aqu = load double, ptr %i.aqt, align 8, !tbaa !80
  %i.aqv = fptrunc double %i.aqu to float
  store float %i.aqv, ptr %i.aqr, align 4, !tbaa !57
  %i.aqw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.i499, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i500.3 = icmp eq i64 %i.aqw, %i.apa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.i500.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498, !llvm.loop !786

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.i498, %middle.block1650
  %i.aqx = add i32 %i.apg, 1
  %i.aqy = zext i32 %i.aqx to i64
  %i.aqz = mul nuw nsw i64 %i.apa, %i.aqy
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %i.aqz ; 6 uses
  br i1 %or.cond1994, label %vector.body1631, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader

vector.body1631:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501, %vector.body1631
  %index1632 = phi i64 [ %index.next1635, %vector.body1631 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501 ] ; 3 uses
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %index1632 ; 2 uses
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %index1632 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %wide.load1633 = load <2 x double>, ptr %i.arc, align 8, !tbaa !80
  %wide.load1634 = load <2 x double>, ptr %i.ard, align 8, !tbaa !80
  %i.are = fptrunc <2 x double> %wide.load1633 to <2 x float>
  %i.arf = fptrunc <2 x double> %wide.load1634 to <2 x float>
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store <2 x float> %i.are, ptr %i.arb, align 4, !tbaa !57
  store <2 x float> %i.arf, ptr %i.arg, align 4, !tbaa !57
  %index.next1635 = add nuw i64 %index1632, 4     ; 2 uses
  %i.arh = icmp eq i64 %index.next1635, %n.vec1630
  br i1 %i.arh, label %middle.block1636, label %vector.body1631, !llvm.loop !787

middle.block1636:                                 ; preds = %vector.body1631
  br i1 %cmp.n1637, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader:   ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501, %middle.block1636
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.i501 ], [ %n.vec1630, %middle.block1636 ] ; 3 uses
  br i1 %lcmp.mod2094.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.prol = phi i64 [ %i.arn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader ] ; 3 uses
  %prol.iter2095 = phi i64 [ %prol.iter2095.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader ]
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.prol
  %i.arj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.prol, %i.apc
  %i.ark = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.arj
  %i.arl = load double, ptr %i.ark, align 8, !tbaa !80
  %i.arm = fptrunc double %i.arl to float
  store float %i.arm, ptr %i.ari, align 4, !tbaa !57
  %i.arn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.prol, 1 ; 2 uses
  %prol.iter2095.next = add i64 %prol.iter2095, 1 ; 2 uses
  %prol.iter2095.cmp.not = icmp eq i64 %prol.iter2095.next, %xtraiter2093
  br i1 %prol.iter2095.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol, !llvm.loop !788

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.preheader ], [ %i.arn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol ]
  %i.aro = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.ph, %i.apa
  %i.arp = icmp ugt i64 %i.aro, -4
  br i1 %i.arp, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503 = phi i64 [ %i.asn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit ] ; 6 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503
  %i.arr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503, %i.apc
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.arr
  %i.art = load double, ptr %i.ars, align 8, !tbaa !80
  %i.aru = fptrunc double %i.art to float
  store float %i.aru, ptr %i.arq, align 4, !tbaa !57
  %i.arv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503, 1 ; 2 uses
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.arv
  %i.arx = mul nsw i64 %i.arv, %i.apc
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.arx
  %i.arz = load double, ptr %i.ary, align 8, !tbaa !80
  %i.asa = fptrunc double %i.arz to float
  store float %i.asa, ptr %i.arw, align 4, !tbaa !57
  %i.asb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503, 2 ; 2 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.asb
  %i.asd = mul nsw i64 %i.asb, %i.apc
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.asd
  %i.asf = load double, ptr %i.ase, align 8, !tbaa !80
  %i.asg = fptrunc double %i.asf to float
  store float %i.asg, ptr %i.asc, align 4, !tbaa !57
  %i.ash = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503, 3 ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.ash
  %i.asj = mul nsw i64 %i.ash, %i.apc
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.asj
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !80
  %i.asm = fptrunc double %i.asl to float
  store float %i.asm, ptr %i.asi, align 4, !tbaa !57
  %i.asn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.i503, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i504.3 = icmp eq i64 %i.asn, %i.apa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.i504.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502, !llvm.loop !789

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.i502, %middle.block1636
  %i.aso = add i32 %i.apg, 2
  %i.asp = zext i32 %i.aso to i64
  %i.asq = mul nuw nsw i64 %i.apa, %i.asp
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %i.asq ; 6 uses
  br i1 %or.cond1995, label %vector.body1617, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader

vector.body1617:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505, %vector.body1617
  %index1618 = phi i64 [ %index.next1621, %vector.body1617 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505 ] ; 3 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %index1618 ; 2 uses
  %i.ast = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %index1618 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %wide.load1619 = load <2 x double>, ptr %i.ast, align 8, !tbaa !80
  %wide.load1620 = load <2 x double>, ptr %i.asu, align 8, !tbaa !80
  %i.asv = fptrunc <2 x double> %wide.load1619 to <2 x float>
  %i.asw = fptrunc <2 x double> %wide.load1620 to <2 x float>
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ass, i64 8
  store <2 x float> %i.asv, ptr %i.ass, align 4, !tbaa !57
  store <2 x float> %i.asw, ptr %i.asx, align 4, !tbaa !57
  %index.next1621 = add nuw i64 %index1618, 4     ; 2 uses
  %i.asy = icmp eq i64 %index.next1621, %n.vec1616
  br i1 %i.asy, label %middle.block1622, label %vector.body1617, !llvm.loop !790

middle.block1622:                                 ; preds = %vector.body1617
  br i1 %cmp.n1623, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader:   ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505, %middle.block1622
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1.i505 ], [ %n.vec1616, %middle.block1622 ] ; 3 uses
  br i1 %lcmp.mod2097.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.prol = phi i64 [ %i.ate, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader ] ; 3 uses
  %prol.iter2098 = phi i64 [ %prol.iter2098.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader ]
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.prol
  %i.ata = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.prol, %i.apc
  %i.atb = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.ata
  %i.atc = load double, ptr %i.atb, align 8, !tbaa !80
  %i.atd = fptrunc double %i.atc to float
  store float %i.atd, ptr %i.asz, align 4, !tbaa !57
  %i.ate = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.prol, 1 ; 2 uses
  %prol.iter2098.next = add i64 %prol.iter2098, 1 ; 2 uses
  %prol.iter2098.cmp.not = icmp eq i64 %prol.iter2098.next, %xtraiter2096
  br i1 %prol.iter2098.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol, !llvm.loop !791

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.preheader ], [ %i.ate, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol ]
  %i.atf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.ph, %i.apa
  %i.atg = icmp ugt i64 %i.atf, -4
  br i1 %i.atg, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507 = phi i64 [ %i.aue, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit ] ; 6 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507
  %i.ati = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507, %i.apc
  %i.atj = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.ati
  %i.atk = load double, ptr %i.atj, align 8, !tbaa !80
  %i.atl = fptrunc double %i.atk to float
  store float %i.atl, ptr %i.ath, align 4, !tbaa !57
  %i.atm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507, 1 ; 2 uses
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.atm
  %i.ato = mul nsw i64 %i.atm, %i.apc
  %i.atp = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.ato
  %i.atq = load double, ptr %i.atp, align 8, !tbaa !80
  %i.atr = fptrunc double %i.atq to float
  store float %i.atr, ptr %i.atn, align 4, !tbaa !57
  %i.ats = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507, 2 ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.ats
  %i.atu = mul nsw i64 %i.ats, %i.apc
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.atu
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !80
  %i.atx = fptrunc double %i.atw to float
  store float %i.atx, ptr %i.att, align 4, !tbaa !57
  %i.aty = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507, 3 ; 2 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.aty
  %i.aua = mul nsw i64 %i.aty, %i.apc
  %i.aub = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %i.aua
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !80
  %i.aud = fptrunc double %i.auc to float
  store float %i.aud, ptr %i.atz, align 4, !tbaa !57
  %i.aue = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.i507, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i508.3 = icmp eq i64 %i.aue, %i.apa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.i508.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506, !llvm.loop !792

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.i506, %middle.block1622
  %indvars.iv.next.i510 = add nuw nsw i64 %indvars.iv.i497, 1 ; 2 uses
  %exitcond1150.not = icmp eq i64 %indvars.iv.next.i510, %i.aov
  br i1 %exitcond1150.not, label %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511", label %.preheader.us.i496, !llvm.loop !762

"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511": ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2.i509, %.preheader.lr.ph.i495, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i493, %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit492"
  %i.auf = load i32, ptr %i.s, align 8, !tbaa !687
  %i.aug = and i32 %i.auf, 4
  %.not314 = icmp eq i32 %i.aug, 0
  br i1 %.not314, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531, label %bb.bo

bb.bo:                                            ; preds = %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511"
  %i.auh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.aui = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.auj = icmp sgt i64 %i.aui, 1024819115206086200
  br i1 %i.auj, label %bb.bp, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit512

bb.bp:                                            ; preds = %bb.bo
  %i.auk = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.auk, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.auk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit512: ; preds = %bb.bo
  %i.aul = mul nsw i64 %i.aui, 3
  %i.aum = mul nsw i64 %i.aui, 9
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.auh, i64 noundef %i.aum, i64 noundef %i.aul, i64 noundef 3)
  %i.aun = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.auo = icmp sgt i64 %i.aun, 0
  br i1 %i.auo, label %.preheader1064.lr.ph, label %._crit_edge

.preheader1064.lr.ph:                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit512
  %i.aup = load ptr, ptr %i.auh, align 8, !tbaa !662, !noalias !793 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !666, !noalias !793 ; 22 uses
  %i.aus = load i64, ptr %i.m, align 8, !tbaa !77 ; 18 uses
  %i.aut = icmp sgt i64 %i.aur, 0
  %min.iters.check1684 = icmp ugt i64 %i.aur, 3
  %ident.check1682.not = icmp eq i64 %i.aus, 1
  %or.cond1996 = select i1 %min.iters.check1684, i1 %ident.check1682.not, i1 false
  %n.vec1686 = and i64 %i.aur, 9223372036854775804 ; 3 uses
  %cmp.n1693 = icmp eq i64 %i.aur, %n.vec1686
  %xtraiter2099 = and i64 %i.aur, 3               ; 2 uses
  %lcmp.mod2100.not = icmp eq i64 %xtraiter2099, 0
  %min.iters.check1670 = icmp ugt i64 %i.aur, 3
  %ident.check1668.not = icmp eq i64 %i.aus, 1
  %or.cond1997 = select i1 %min.iters.check1670, i1 %ident.check1668.not, i1 false
  %n.vec1672 = and i64 %i.aur, 9223372036854775804 ; 3 uses
  %cmp.n1679 = icmp eq i64 %i.aur, %n.vec1672
  %xtraiter2108 = and i64 %i.aur, 3               ; 2 uses
  %lcmp.mod2109.not = icmp eq i64 %xtraiter2108, 0
  %min.iters.check1656 = icmp ugt i64 %i.aur, 3
  %ident.check1654.not = icmp eq i64 %i.aus, 1
  %or.cond1998 = select i1 %min.iters.check1656, i1 %ident.check1654.not, i1 false
  %n.vec1658 = and i64 %i.aur, 9223372036854775804 ; 3 uses
  %cmp.n1665 = icmp eq i64 %i.aur, %n.vec1658
  %xtraiter2111 = and i64 %i.aur, 3               ; 2 uses
  %lcmp.mod2112.not = icmp eq i64 %xtraiter2111, 0
  br label %.preheader1064

.preheader1064:                                   ; preds = %.preheader1064.lr.ph, %.split1095.us
  %indvars.iv1153 = phi i64 [ 0, %.preheader1064.lr.ph ], [ %indvars.iv.next1154, %.split1095.us ] ; 5 uses
  %i.auu = trunc nuw i64 %indvars.iv1153 to i32
  %i.auv = mul i32 %i.auu, 3                      ; 6 uses
  br i1 %i.aut, label %.preheader1064.split.us.preheader, label %.split1095.us

.preheader1064.split.us.preheader:                ; preds = %.preheader1064
  br i1 %i.p, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader1064.split.us.preheader
  %i.auw = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !796
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %indvars.iv1153
  %.pre1194.a = zext i32 %i.auv to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us

bb.br:                                            ; preds = %.preheader1064.split.us.preheader
  %i.auy = zext i32 %i.auv to i64                 ; 2 uses
  %i.auz = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !799
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %i.auy
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us

.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us:       ; preds = %bb.br, %bb.bq
  %.pre-phi1195 = phi i64 [ %i.auy, %bb.br ], [ %.pre1194.a, %bb.bq ]
  %.sroa.0963.0.us = phi ptr [ %i.ava, %bb.br ], [ %i.aux, %bb.bq ] ; 6 uses
  %i.avb = mul nuw nsw i64 %i.aur, %.pre-phi1195
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %i.avb ; 6 uses
  br i1 %or.cond1996, label %vector.body1687, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader

vector.body1687:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us, %vector.body1687
  %index1688 = phi i64 [ %index.next1691, %vector.body1687 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us ] ; 3 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %index1688 ; 2 uses
  %i.ave = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %index1688 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 16
  %wide.load1689 = load <2 x double>, ptr %i.ave, align 8, !tbaa !80
  %wide.load1690 = load <2 x double>, ptr %i.avf, align 8, !tbaa !80
  %i.avg = fptrunc <2 x double> %wide.load1689 to <2 x float>
  %i.avh = fptrunc <2 x double> %wide.load1690 to <2 x float>
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  store <2 x float> %i.avg, ptr %i.avd, align 4, !tbaa !57
  store <2 x float> %i.avh, ptr %i.avi, align 4, !tbaa !57
  %index.next1691 = add nuw i64 %index1688, 4     ; 2 uses
  %i.avj = icmp eq i64 %index.next1691, %n.vec1686
  br i1 %i.avj, label %middle.block1692, label %vector.body1687, !llvm.loop !802

middle.block1692:                                 ; preds = %vector.body1687
  br i1 %cmp.n1693, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us, %middle.block1692
  %.05.i.i.i.i.i.i.i.i.i.i514.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us ], [ %n.vec1686, %middle.block1692 ] ; 3 uses
  br i1 %lcmp.mod2100.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i514.us.prol = phi i64 [ %i.avp, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader ] ; 3 uses
  %prol.iter2101 = phi i64 [ %prol.iter2101.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader ]
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.prol
  %i.avl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.prol, %i.aus
  %i.avm = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %i.avl
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !80
  %i.avo = fptrunc double %i.avn to float
  store float %i.avo, ptr %i.avk, align 4, !tbaa !57
  %i.avp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.prol, 1 ; 2 uses
  %prol.iter2101.next = add i64 %prol.iter2101, 1 ; 2 uses
  %prol.iter2101.cmp.not = icmp eq i64 %prol.iter2101.next, %xtraiter2099
  br i1 %prol.iter2101.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol, !llvm.loop !803

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i514.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i514.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.preheader ], [ %i.avp, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol ]
  %i.avq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.ph, %i.aur
  %i.avr = icmp ugt i64 %i.avq, -4
  br i1 %i.avr, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us
  %.05.i.i.i.i.i.i.i.i.i.i514.us = phi i64 [ %i.awp, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit ] ; 6 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us
  %i.avt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us, %i.aus
  %i.avu = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %i.avt
  %i.avv = load double, ptr %i.avu, align 8, !tbaa !80
  %i.avw = fptrunc double %i.avv to float
  store float %i.avw, ptr %i.avs, align 4, !tbaa !57
  %i.avx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us, 1 ; 2 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.avx
  %i.avz = mul nsw i64 %i.avx, %i.aus
  %i.awa = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %i.avz
  %i.awb = load double, ptr %i.awa, align 8, !tbaa !80
  %i.awc = fptrunc double %i.awb to float
  store float %i.awc, ptr %i.avy, align 4, !tbaa !57
  %i.awd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us, 2 ; 2 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.awd
  %i.awf = mul nsw i64 %i.awd, %i.aus
  %i.awg = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %i.awf
  %i.awh = load double, ptr %i.awg, align 8, !tbaa !80
  %i.awi = fptrunc double %i.awh to float
  store float %i.awi, ptr %i.awe, align 4, !tbaa !57
  %i.awj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us, 3 ; 2 uses
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.awj
  %i.awl = mul nsw i64 %i.awj, %i.aus
  %i.awm = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us, i64 %i.awl
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !80
  %i.awo = fptrunc double %i.awn to float
  store float %i.awo, ptr %i.awk, align 4, !tbaa !57
  %i.awp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.3 = icmp eq i64 %i.awp, %i.aur
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us, !llvm.loop !804

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us, %middle.block1692
  br i1 %i.p, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us
  %i.awq = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !796
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %indvars.iv1153
  %.pre1196.a = add i32 %i.auv, 1
  %.pre1198 = zext i32 %.pre1196.a to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1

bb.bt:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us
  %i.aws = add i32 %i.auv, 1
  %i.awt = zext i32 %i.aws to i64                 ; 2 uses
  %i.awu = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !799
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.awu, i64 %i.awt
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1:     ; preds = %bb.bt, %bb.bs
  %.pre-phi1199 = phi i64 [ %i.awt, %bb.bt ], [ %.pre1198, %bb.bs ]
  %.sroa.0963.0.us.1 = phi ptr [ %i.awv, %bb.bt ], [ %i.awr, %bb.bs ] ; 6 uses
  %i.aww = mul nuw nsw i64 %i.aur, %.pre-phi1199
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %i.aww ; 6 uses
  br i1 %or.cond1997, label %vector.body1673, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader

vector.body1673:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1, %vector.body1673
  %index1674 = phi i64 [ %index.next1677, %vector.body1673 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1 ] ; 3 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %index1674 ; 2 uses
  %i.awz = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %index1674 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 16
  %wide.load1675 = load <2 x double>, ptr %i.awz, align 8, !tbaa !80
  %wide.load1676 = load <2 x double>, ptr %i.axa, align 8, !tbaa !80
  %i.axb = fptrunc <2 x double> %wide.load1675 to <2 x float>
  %i.axc = fptrunc <2 x double> %wide.load1676 to <2 x float>
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  store <2 x float> %i.axb, ptr %i.awy, align 4, !tbaa !57
  store <2 x float> %i.axc, ptr %i.axd, align 4, !tbaa !57
  %index.next1677 = add nuw i64 %index1674, 4     ; 2 uses
  %i.axe = icmp eq i64 %index.next1677, %n.vec1672
  br i1 %i.axe, label %middle.block1678, label %vector.body1673, !llvm.loop !805

middle.block1678:                                 ; preds = %vector.body1673
  br i1 %cmp.n1679, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1, %middle.block1678
  %.05.i.i.i.i.i.i.i.i.i.i514.us.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.1 ], [ %n.vec1672, %middle.block1678 ] ; 3 uses
  br i1 %lcmp.mod2109.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol
  %.05.i.i.i.i.i.i.i.i.i.i514.us.1.prol = phi i64 [ %i.axk, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader ] ; 3 uses
  %prol.iter2110 = phi i64 [ %prol.iter2110.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader ]
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1.prol
  %i.axg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1.prol, %i.aus
  %i.axh = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %i.axg
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !80
  %i.axj = fptrunc double %i.axi to float
  store float %i.axj, ptr %i.axf, align 4, !tbaa !57
  %i.axk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1.prol, 1 ; 2 uses
  %prol.iter2110.next = add i64 %prol.iter2110, 1 ; 2 uses
  %prol.iter2110.cmp.not = icmp eq i64 %prol.iter2110.next, %xtraiter2108
  br i1 %prol.iter2110.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol, !llvm.loop !806

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader
  %.05.i.i.i.i.i.i.i.i.i.i514.us.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i514.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.preheader ], [ %i.axk, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol ]
  %i.axl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1.ph, %i.aur
  %i.axm = icmp ugt i64 %i.axl, -4
  br i1 %i.axm, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1
  %.05.i.i.i.i.i.i.i.i.i.i514.us.1 = phi i64 [ %i.ayk, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit ] ; 6 uses
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1
  %i.axo = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1, %i.aus
  %i.axp = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %i.axo
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !80
  %i.axr = fptrunc double %i.axq to float
  store float %i.axr, ptr %i.axn, align 4, !tbaa !57
  %i.axs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1, 1 ; 2 uses
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.axs
  %i.axu = mul nsw i64 %i.axs, %i.aus
  %i.axv = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %i.axu
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !80
  %i.axx = fptrunc double %i.axw to float
  store float %i.axx, ptr %i.axt, align 4, !tbaa !57
  %i.axy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1, 2 ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.axy
  %i.aya = mul nsw i64 %i.axy, %i.aus
  %i.ayb = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %i.aya
  %i.ayc = load double, ptr %i.ayb, align 8, !tbaa !80
  %i.ayd = fptrunc double %i.ayc to float
  store float %i.ayd, ptr %i.axz, align 4, !tbaa !57
  %i.aye = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1, 3 ; 2 uses
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.aye
  %i.ayg = mul nsw i64 %i.aye, %i.aus
  %i.ayh = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.1, i64 %i.ayg
  %i.ayi = load double, ptr %i.ayh, align 8, !tbaa !80
  %i.ayj = fptrunc double %i.ayi to float
  store float %i.ayj, ptr %i.ayf, align 4, !tbaa !57
  %i.ayk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.1.3 = icmp eq i64 %i.ayk, %i.aur
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.1.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1, !llvm.loop !807

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.1, %middle.block1678
  br i1 %i.p, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1
  %i.ayl = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !796
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %indvars.iv1153
  %.pre1200 = add i32 %i.auv, 2
  %.pre1202 = zext i32 %.pre1200 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2

bb.bv:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit516.loopexit.us.1
  %i.ayn = add i32 %i.auv, 2
  %i.ayo = zext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !799
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %i.ayo
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2:     ; preds = %bb.bv, %bb.bu
  %.pre-phi1203 = phi i64 [ %i.ayo, %bb.bv ], [ %.pre1202, %bb.bu ]
  %.sroa.0963.0.us.2 = phi ptr [ %i.ayq, %bb.bv ], [ %i.aym, %bb.bu ] ; 6 uses
  %i.ayr = mul nuw nsw i64 %i.aur, %.pre-phi1203
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %i.ayr ; 6 uses
  br i1 %or.cond1998, label %vector.body1659, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader

vector.body1659:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2, %vector.body1659
  %index1660 = phi i64 [ %index.next1663, %vector.body1659 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2 ] ; 3 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %index1660 ; 2 uses
  %i.ayu = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %index1660 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 16
  %wide.load1661 = load <2 x double>, ptr %i.ayu, align 8, !tbaa !80
  %wide.load1662 = load <2 x double>, ptr %i.ayv, align 8, !tbaa !80
  %i.ayw = fptrunc <2 x double> %wide.load1661 to <2 x float>
  %i.ayx = fptrunc <2 x double> %wide.load1662 to <2 x float>
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  store <2 x float> %i.ayw, ptr %i.ayt, align 4, !tbaa !57
  store <2 x float> %i.ayx, ptr %i.ayy, align 4, !tbaa !57
  %index.next1663 = add nuw i64 %index1660, 4     ; 2 uses
  %i.ayz = icmp eq i64 %index.next1663, %n.vec1658
  br i1 %i.ayz, label %middle.block1664, label %vector.body1659, !llvm.loop !808

middle.block1664:                                 ; preds = %vector.body1659
  br i1 %cmp.n1665, label %.split1095.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2, %middle.block1664
  %.05.i.i.i.i.i.i.i.i.i.i514.us.2.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.preheader.us.2 ], [ %n.vec1658, %middle.block1664 ] ; 3 uses
  br i1 %lcmp.mod2112.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol
  %.05.i.i.i.i.i.i.i.i.i.i514.us.2.prol = phi i64 [ %i.azf, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader ] ; 3 uses
  %prol.iter2113 = phi i64 [ %prol.iter2113.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader ]
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2.prol
  %i.azb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2.prol, %i.aus
  %i.azc = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %i.azb
  %i.azd = load double, ptr %i.azc, align 8, !tbaa !80
  %i.aze = fptrunc double %i.azd to float
  store float %i.aze, ptr %i.aza, align 4, !tbaa !57
  %i.azf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2.prol, 1 ; 2 uses
  %prol.iter2113.next = add i64 %prol.iter2113, 1 ; 2 uses
  %prol.iter2113.cmp.not = icmp eq i64 %prol.iter2113.next, %xtraiter2111
  br i1 %prol.iter2113.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol, !llvm.loop !809

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader
  %.05.i.i.i.i.i.i.i.i.i.i514.us.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i514.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.preheader ], [ %i.azf, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol ]
  %i.azg = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2.ph, %i.aur
  %i.azh = icmp ugt i64 %i.azg, -4
  br i1 %i.azh, label %.split1095.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2
  %.05.i.i.i.i.i.i.i.i.i.i514.us.2 = phi i64 [ %i.baf, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i514.us.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit ] ; 6 uses
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2
  %i.azj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2, %i.aus
  %i.azk = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %i.azj
  %i.azl = load double, ptr %i.azk, align 8, !tbaa !80
  %i.azm = fptrunc double %i.azl to float
  store float %i.azm, ptr %i.azi, align 4, !tbaa !57
  %i.azn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2, 1 ; 2 uses
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.azn
  %i.azp = mul nsw i64 %i.azn, %i.aus
  %i.azq = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %i.azp
  %i.azr = load double, ptr %i.azq, align 8, !tbaa !80
  %i.azs = fptrunc double %i.azr to float
  store float %i.azs, ptr %i.azo, align 4, !tbaa !57
  %i.azt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2, 2 ; 2 uses
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.azt
  %i.azv = mul nsw i64 %i.azt, %i.aus
  %i.azw = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %i.azv
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !80
  %i.azy = fptrunc double %i.azx to float
  store float %i.azy, ptr %i.azu, align 4, !tbaa !57
  %i.azz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2, 3 ; 2 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.azz
  %i.bab = mul nsw i64 %i.azz, %i.aus
  %i.bac = getelementptr inbounds [8 x i8], ptr %.sroa.0963.0.us.2, i64 %i.bab
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !80
  %i.bae = fptrunc double %i.bad to float
  store float %i.bae, ptr %i.baa, align 4, !tbaa !57
  %i.baf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i514.us.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.2.3 = icmp eq i64 %i.baf, %i.aur
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i515.us.2.3, label %.split1095.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2, !llvm.loop !810

._crit_edge:                                      ; preds = %.split1095.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit512
  br i1 %2, label %bb.bw, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531

.split1095.us:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i513.us.2, %middle.block1664, %.preheader1064
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 1 ; 2 uses
  %11 = icmp sgt i64 %i.aun, %indvars.iv.next1154
  br i1 %11, label %.preheader1064, label %._crit_edge, !llvm.loop !811

bb.bw:                                            ; preds = %._crit_edge
  %i.bag = load ptr, ptr %i.auh, align 8, !tbaa !662 ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bai = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !688
  %i.bak = load i64, ptr %i.bah, align 8, !tbaa !666
  %i.bal = mul nsw i64 %i.bak, %i.baj             ; 5 uses
  %i.bam = sdiv i64 %i.bal, 4                     ; 2 uses
  %i.ban = shl nsw i64 %i.bam, 2                  ; 5 uses
  %i.bao = icmp sgt i64 %i.bal, 3
  br i1 %i.bao, label %.lr.ph.i.i.i.i.i.i.i.i528, label %._crit_edge.i.i.i.i.i.i.i.i524

._crit_edge.i.i.i.i.i.i.i.i524:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i528, %bb.bw
  %i.bap = icmp slt i64 %i.ban, %i.bal
  br i1 %i.bap, label %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531

.lr.ph.i.i.i.i.i.i.i.i.i525.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i524
  %i.baq = shl nsw i64 %i.bam, 2
  %i.bar = sub i64 %i.bal, %i.baq                 ; 3 uses
  %min.iters.check1696 = icmp ult i64 %i.bar, 8
  br i1 %min.iters.check1696, label %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader2034, label %vector.ph1697

vector.ph1697:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader
  %n.vec1698 = and i64 %i.bar, -8                 ; 3 uses
  %i.bas = add i64 %i.ban, %n.vec1698
  %i.bat = getelementptr [4 x i8], ptr %i.bag, i64 %i.ban
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1697
  %index1700 = phi i64 [ 0, %vector.ph1697 ], [ %index.next1703, %vector.body1699 ] ; 2 uses
  %i.bau = getelementptr [4 x i8], ptr %i.bat, i64 %index1700 ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 16 ; 2 uses
  %wide.load1701 = load <4 x float>, ptr %i.bau, align 4, !tbaa !57
  %wide.load1702 = load <4 x float>, ptr %i.bav, align 4, !tbaa !57
  %i.baw = fneg <4 x float> %wide.load1701
  %i.bax = fneg <4 x float> %wide.load1702
  store <4 x float> %i.baw, ptr %i.bau, align 4, !tbaa !57
  store <4 x float> %i.bax, ptr %i.bav, align 4, !tbaa !57
  %index.next1703 = add nuw i64 %index1700, 8     ; 2 uses
  %i.bay = icmp eq i64 %index.next1703, %n.vec1698
  br i1 %i.bay, label %middle.block1704, label %vector.body1699, !llvm.loop !812

middle.block1704:                                 ; preds = %vector.body1699
  %cmp.n1705 = icmp eq i64 %i.bar, %n.vec1698
  br i1 %cmp.n1705, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531, label %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader2034

.lr.ph.i.i.i.i.i.i.i.i.i525.preheader2034:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader, %middle.block1704
  %.05.i.i.i.i.i.i.i.i.i526.ph = phi i64 [ %i.ban, %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader ], [ %i.bas, %middle.block1704 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i525

.lr.ph.i.i.i.i.i.i.i.i.i525:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader2034, %.lr.ph.i.i.i.i.i.i.i.i.i525
  %.05.i.i.i.i.i.i.i.i.i526 = phi i64 [ %i.bbc, %.lr.ph.i.i.i.i.i.i.i.i.i525 ], [ %.05.i.i.i.i.i.i.i.i.i526.ph, %.lr.ph.i.i.i.i.i.i.i.i.i525.preheader2034 ] ; 2 uses
  %i.baz = getelementptr inbounds [4 x i8], ptr %i.bag, i64 %.05.i.i.i.i.i.i.i.i.i526 ; 2 uses
  %i.bba = load float, ptr %i.baz, align 4, !tbaa !57
  %i.bbb = fneg float %i.bba
  store float %i.bbb, ptr %i.baz, align 4, !tbaa !57
  %i.bbc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i526, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i527 = icmp eq i64 %i.bbc, %i.bal
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i527, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531, label %.lr.ph.i.i.i.i.i.i.i.i.i525, !llvm.loop !813

.lr.ph.i.i.i.i.i.i.i.i528:                        ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i.i528
  %.011.i.i.i.i.i.i.i.i529 = phi i64 [ %i.bbg, %.lr.ph.i.i.i.i.i.i.i.i528 ], [ 0, %bb.bw ] ; 2 uses
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %.011.i.i.i.i.i.i.i.i529 ; 2 uses
  %i.bbe = load <4 x float>, ptr %i.bbd, align 16, !tbaa !70
  %i.bbf = fneg <4 x float> %i.bbe
  store <4 x float> %i.bbf, ptr %i.bbd, align 16, !tbaa !70
  %i.bbg = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i529, 4 ; 2 uses
  %i.bbh = icmp slt i64 %i.bbg, %i.ban
  br i1 %i.bbh, label %.lr.ph.i.i.i.i.i.i.i.i528, label %._crit_edge.i.i.i.i.i.i.i.i524, !llvm.loop !698

_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i525, %middle.block1704, %._crit_edge.i.i.i.i.i.i.i.i524, %._crit_edge, %"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_0clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE.exit511"
  %i.bbi = load i32, ptr %i.s, align 8, !tbaa !687
  %i.bbj = and i32 %i.bbi, 128
  %.not315 = icmp eq i32 %i.bbj, 0
  br i1 %.not315, label %.loopexit1063, label %bb.bx

bb.bx:                                            ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531
  %i.bbk = getelementptr inbounds nuw i8, ptr %3, i64 728 ; 2 uses
  %i.bbl = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.bbm = icmp sgt i64 %i.bbl, 3074457345618258602
  br i1 %i.bbm, label %bb.by, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit532

bb.by:                                            ; preds = %bb.bx
  %i.bbn = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bbn, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.bbn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit532: ; preds = %bb.bx
  %i.bbo = mul nsw i64 %i.bbl, 3
  tail call void @_ZN5Eigen12DenseStorageIjLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.bbk, i64 noundef %i.bbo, i64 noundef %i.bbl, i64 noundef 3)
  %i.bbp = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.bbq = icmp sgt i64 %i.bbp, 0
  br i1 %i.bbq, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536.lr.ph, label %.loopexit1063

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536.lr.ph: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit532
  %i.bbr = load ptr, ptr %i.bbk, align 8, !tbaa !667, !noalias !814
  %i.bbs = getelementptr inbounds nuw i8, ptr %3, i64 744
  %i.bbt = load i64, ptr %i.bbs, align 8, !tbaa !709, !noalias !814 ; 4 uses
  %i.bbu = icmp eq i64 %i.bbt, 1                  ; 4 uses
  %.sroa.5932.0 = zext i1 %i.bbu to i64           ; 2 uses
  %not.1057 = xor i1 %i.bbu, true
  %i.bbv = zext i1 %not.1057 to i64
  %i.bbw = select i1 %i.bbu, i64 1, i64 2         ; 2 uses
  %i.bbx = icmp eq i64 %i.bbw, %i.bbt             ; 2 uses
  %i.bby = select i1 %i.bbu, i64 2, i64 1
  %i.bbz = select i1 %i.bbx, i64 0, i64 %i.bbw
  %i.bca = select i1 %i.bbx, i64 %i.bby, i64 %.sroa.5932.0
  %i.bcb = mul nsw i64 %i.bca, %i.bbt
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536.lr.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536 ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536.lr.ph ] ; 3 uses
  %i.bcc = mul nsw i64 %i.bbt, %indvars.iv1157
  %i.bcd = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bcc ; 3 uses
  %i.bce = trunc nuw i64 %indvars.iv1157 to i32
  %i.bcf = mul i32 %i.bce, 3                      ; 3 uses
  store i32 %i.bcf, ptr %i.bcd, align 4, !tbaa !120, !noalias !817
  %i.bcg = add i32 %i.bcf, 1
  %i.bch = getelementptr [4 x i8], ptr %i.bcd, i64 %i.bbv
  %i.bci = getelementptr [4 x i8], ptr %i.bch, i64 %.sroa.5932.0
  store i32 %i.bcg, ptr %i.bci, align 4, !tbaa !120
  %i.bcj = add i32 %i.bcf, 2
  %i.bck = getelementptr [4 x i8], ptr %i.bcd, i64 %i.bbz
  %i.bcl = getelementptr [4 x i8], ptr %i.bck, i64 %i.bcb
  store i32 %i.bcj, ptr %i.bcl, align 4, !tbaa !120
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1 ; 2 uses
  %i.bcm = and i64 %indvars.iv.next1158, 4294967295
  %i.bcn = icmp samesign ugt i64 %i.bbp, %i.bcm
  br i1 %i.bcn, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536, label %.loopexit1063, !llvm.loop !820

.loopexit1063:                                    ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEcmERKj.exit536, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIjLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit532, %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit531
  %i.bco = load i32, ptr %i.s, align 8, !tbaa !687
  %i.bcp = and i32 %i.bco, 2
  %.not316 = icmp eq i32 %i.bcp, 0
  br i1 %.not316, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449, label %bb.bz

bb.bz:                                            ; preds = %.loopexit1063
  %i.bcq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bcr = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.bcs = load i64, ptr %i.bcr, align 8, !tbaa !77
  %i.bct = icmp sgt i64 %i.bcs, 0
  br i1 %i.bct, label %bb.ca, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449

bb.ca:                                            ; preds = %bb.bz
  %i.bcu = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.bcv = load i64, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.bcw = icmp sgt i64 %i.bcv, 1537228672809129301
  br i1 %i.bcw, label %bb.cb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit541

bb.cb:                                            ; preds = %bb.ca
  %i.bcx = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bcx, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.bcx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit541: ; preds = %bb.ca
  %i.bcy = mul nsw i64 %i.bcv, 3
  %i.bcz = mul nsw i64 %i.bcv, 6
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.bcu, i64 noundef %i.bcz, i64 noundef %i.bcy, i64 noundef 2)
  %i.bda = load i64, ptr %i.i, align 8, !tbaa !115 ; 4 uses
  %i.bdb = icmp sgt i64 %i.bda, 0
  br i1 %i.bdb, label %.preheader.lr.ph, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit541
  %i.bdc = load ptr, ptr %i.bcq, align 8, !tbaa !59, !noalias !821 ; 3 uses
  %i.bdd = load ptr, ptr %i.bcu, align 8, !tbaa !662, !noalias !824 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bdf = load i64, ptr %i.bde, align 8, !tbaa !666, !noalias !824 ; 22 uses
  %i.bdg = load i64, ptr %i.bcr, align 8, !tbaa !77 ; 18 uses
  %i.bdh = icmp sgt i64 %i.bdf, 0
  %.idx1318 = shl i64 %i.bda, 3
  %spec.select1339 = select i1 %i.k, ptr %i.e, ptr %i.h
  %min.iters.check1759 = icmp ugt i64 %i.bdf, 3
  %ident.check1757.not = icmp eq i64 %i.bdg, 1
  %or.cond1999 = select i1 %min.iters.check1759, i1 %ident.check1757.not, i1 false
  %n.vec1761 = and i64 %i.bdf, 9223372036854775804 ; 3 uses
  %cmp.n1768 = icmp eq i64 %i.bdf, %n.vec1761
  %xtraiter2114 = and i64 %i.bdf, 3               ; 2 uses
  %lcmp.mod2115.not = icmp eq i64 %xtraiter2114, 0
  %min.iters.check1745 = icmp ugt i64 %i.bdf, 3
  %ident.check1743.not = icmp eq i64 %i.bdg, 1
  %or.cond2000 = select i1 %min.iters.check1745, i1 %ident.check1743.not, i1 false
  %n.vec1747 = and i64 %i.bdf, 9223372036854775804 ; 3 uses
  %cmp.n1754 = icmp eq i64 %i.bdf, %n.vec1747
  %xtraiter2123 = and i64 %i.bdf, 3               ; 2 uses
  %lcmp.mod2124.not = icmp eq i64 %xtraiter2123, 0
  %min.iters.check1731 = icmp ugt i64 %i.bdf, 3
  %ident.check1729.not = icmp eq i64 %i.bdg, 1
  %or.cond2001 = select i1 %min.iters.check1731, i1 %ident.check1729.not, i1 false
  %n.vec1733 = and i64 %i.bdf, 9223372036854775804 ; 3 uses
  %cmp.n1740 = icmp eq i64 %i.bdf, %n.vec1733
  %xtraiter2126 = and i64 %i.bdf, 3               ; 2 uses
  %lcmp.mod2127.not = icmp eq i64 %xtraiter2126, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split1102.us
  %indvars.iv1165 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next1166, %.split1102.us ] ; 6 uses
  %i.bdi = trunc nuw i64 %indvars.iv1165 to i32
end_hunk_1
begin_hunk_2_@_ZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLE:bb.a
bb.cc:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us
  %i.bfd = load i64, ptr %i.f, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1:     ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us, %bb.cc
  %.sink1341.in = phi ptr [ %i.e, %bb.cc ], [ %i.h, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us ]
  %.sink1340 = phi i64 [ %i.bfd, %bb.cc ], [ %i.bda, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us ]
  %.sink1341 = load ptr, ptr %.sink1341.in, align 8, !tbaa !61
  %i.bfe = getelementptr [4 x i8], ptr %.sink1341, i64 %indvars.iv1165
  %i.bff = getelementptr [4 x i8], ptr %i.bfe, i64 %.sink1340
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !120
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds [8 x i8], ptr %i.bdc, i64 %i.bfh ; 6 uses
  %i.bfj = add i32 %i.bdj, 1
  %i.bfk = zext i32 %i.bfj to i64
  %i.bfl = mul nuw nsw i64 %i.bdf, %i.bfk
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.bfl ; 6 uses
  br i1 %or.cond2000, label %vector.body1748, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader

vector.body1748:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1, %vector.body1748
  %index1749 = phi i64 [ %index.next1752, %vector.body1748 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1 ] ; 3 uses
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %index1749 ; 2 uses
  %i.bfo = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %index1749 ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16
  %wide.load1750 = load <2 x double>, ptr %i.bfo, align 8, !tbaa !80
  %wide.load1751 = load <2 x double>, ptr %i.bfp, align 8, !tbaa !80
  %i.bfq = fptrunc <2 x double> %wide.load1750 to <2 x float>
  %i.bfr = fptrunc <2 x double> %wide.load1751 to <2 x float>
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  store <2 x float> %i.bfq, ptr %i.bfn, align 4, !tbaa !57
  store <2 x float> %i.bfr, ptr %i.bfs, align 4, !tbaa !57
  %index.next1752 = add nuw i64 %index1749, 4     ; 2 uses
  %i.bft = icmp eq i64 %index.next1752, %n.vec1747
  br i1 %i.bft, label %middle.block1753, label %vector.body1748, !llvm.loop !830

middle.block1753:                                 ; preds = %vector.body1748
  br i1 %cmp.n1754, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1, %middle.block1753
  %.05.i.i.i.i.i.i.i.i.i.i543.us.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.1 ], [ %n.vec1747, %middle.block1753 ] ; 3 uses
  br i1 %lcmp.mod2124.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol
  %.05.i.i.i.i.i.i.i.i.i.i543.us.1.prol = phi i64 [ %i.bfz, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i543.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader ] ; 3 uses
  %prol.iter2125 = phi i64 [ %prol.iter2125.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader ]
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1.prol
  %i.bfv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1.prol, %i.bdg
  %i.bfw = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.bfv
  %i.bfx = load double, ptr %i.bfw, align 8, !tbaa !80
  %i.bfy = fptrunc double %i.bfx to float
  store float %i.bfy, ptr %i.bfu, align 4, !tbaa !57
  %i.bfz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1.prol, 1 ; 2 uses
  %prol.iter2125.next = add i64 %prol.iter2125, 1 ; 2 uses
  %prol.iter2125.cmp.not = icmp eq i64 %prol.iter2125.next, %xtraiter2123
  br i1 %prol.iter2125.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol, !llvm.loop !831

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader
  %.05.i.i.i.i.i.i.i.i.i.i543.us.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i543.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.preheader ], [ %i.bfz, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol ]
  %i.bga = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1.ph, %i.bdf
  %i.bgb = icmp ugt i64 %i.bga, -4
  br i1 %i.bgb, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1
  %.05.i.i.i.i.i.i.i.i.i.i543.us.1 = phi i64 [ %i.bgz, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i543.us.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit ] ; 6 uses
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1
  %i.bgd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1, %i.bdg
  %i.bge = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.bgd
  %i.bgf = load double, ptr %i.bge, align 8, !tbaa !80
  %i.bgg = fptrunc double %i.bgf to float
  store float %i.bgg, ptr %i.bgc, align 4, !tbaa !57
  %i.bgh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1, 1 ; 2 uses
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.bgh
  %i.bgj = mul nsw i64 %i.bgh, %i.bdg
  %i.bgk = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.bgj
  %i.bgl = load double, ptr %i.bgk, align 8, !tbaa !80
  %i.bgm = fptrunc double %i.bgl to float
  store float %i.bgm, ptr %i.bgi, align 4, !tbaa !57
  %i.bgn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1, 2 ; 2 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.bgn
  %i.bgp = mul nsw i64 %i.bgn, %i.bdg
  %i.bgq = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.bgp
  %i.bgr = load double, ptr %i.bgq, align 8, !tbaa !80
  %i.bgs = fptrunc double %i.bgr to float
  store float %i.bgs, ptr %i.bgo, align 4, !tbaa !57
  %i.bgt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1, 3 ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.bgt
  %i.bgv = mul nsw i64 %i.bgt, %i.bdg
  %i.bgw = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.bgv
  %i.bgx = load double, ptr %i.bgw, align 8, !tbaa !80
  %i.bgy = fptrunc double %i.bgx to float
  store float %i.bgy, ptr %i.bgu, align 4, !tbaa !57
  %i.bgz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i544.us.1.3 = icmp eq i64 %i.bgz, %i.bdf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i544.us.1.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1, !llvm.loop !832

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.1, %middle.block1753
  br i1 %i.k, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1
  %i.bha = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.bhb = getelementptr [4 x i8], ptr %i.bha, i64 %indvars.iv1165
  %i.bhc = getelementptr i8, ptr %i.bhb, i64 %.idx1318
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2

bb.ce:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit545.loopexit.us.1
  %i.bhd = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.bhe = load i64, ptr %i.f, align 8, !tbaa !115
  %i.bhf = getelementptr [4 x i8], ptr %i.bhd, i64 %indvars.iv1165
  %.idx1319 = shl i64 %i.bhe, 3
  %i.bhg = getelementptr i8, ptr %i.bhf, i64 %.idx1319
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2:     ; preds = %bb.ce, %bb.cd
  %.in339.us.2 = phi ptr [ %i.bhg, %bb.ce ], [ %i.bhc, %bb.cd ]
  %i.bhh = load i32, ptr %.in339.us.2, align 4, !tbaa !120
  %i.bhi = sext i32 %i.bhh to i64
  %i.bhj = getelementptr inbounds [8 x i8], ptr %i.bdc, i64 %i.bhi ; 6 uses
  %i.bhk = add i32 %i.bdj, 2
  %i.bhl = zext i32 %i.bhk to i64
  %i.bhm = mul nuw nsw i64 %i.bdf, %i.bhl
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.bhm ; 6 uses
  br i1 %or.cond2001, label %vector.body1734, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader

vector.body1734:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2, %vector.body1734
  %index1735 = phi i64 [ %index.next1738, %vector.body1734 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2 ] ; 3 uses
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %index1735 ; 2 uses
  %i.bhp = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %index1735 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 16
  %wide.load1736 = load <2 x double>, ptr %i.bhp, align 8, !tbaa !80
  %wide.load1737 = load <2 x double>, ptr %i.bhq, align 8, !tbaa !80
  %i.bhr = fptrunc <2 x double> %wide.load1736 to <2 x float>
  %i.bhs = fptrunc <2 x double> %wide.load1737 to <2 x float>
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bho, i64 8
  store <2 x float> %i.bhr, ptr %i.bho, align 4, !tbaa !57
  store <2 x float> %i.bhs, ptr %i.bht, align 4, !tbaa !57
  %index.next1738 = add nuw i64 %index1735, 4     ; 2 uses
  %i.bhu = icmp eq i64 %index.next1738, %n.vec1733
  br i1 %i.bhu, label %middle.block1739, label %vector.body1734, !llvm.loop !833

middle.block1739:                                 ; preds = %vector.body1734
  br i1 %cmp.n1740, label %.split1102.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2, %middle.block1739
  %.05.i.i.i.i.i.i.i.i.i.i543.us.2.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.preheader.us.2 ], [ %n.vec1733, %middle.block1739 ] ; 3 uses
  br i1 %lcmp.mod2127.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol
  %.05.i.i.i.i.i.i.i.i.i.i543.us.2.prol = phi i64 [ %i.bia, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i543.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader ] ; 3 uses
  %prol.iter2128 = phi i64 [ %prol.iter2128.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader ]
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2.prol
  %i.bhw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2.prol, %i.bdg
  %i.bhx = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %i.bhw
  %i.bhy = load double, ptr %i.bhx, align 8, !tbaa !80
  %i.bhz = fptrunc double %i.bhy to float
  store float %i.bhz, ptr %i.bhv, align 4, !tbaa !57
  %i.bia = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2.prol, 1 ; 2 uses
  %prol.iter2128.next = add i64 %prol.iter2128, 1 ; 2 uses
  %prol.iter2128.cmp.not = icmp eq i64 %prol.iter2128.next, %xtraiter2126
  br i1 %prol.iter2128.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol, !llvm.loop !834

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader
  %.05.i.i.i.i.i.i.i.i.i.i543.us.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i543.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.preheader ], [ %i.bia, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol ]
  %i.bib = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2.ph, %i.bdf
  %i.bic = icmp ugt i64 %i.bib, -4
  br i1 %i.bic, label %.split1102.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2
  %.05.i.i.i.i.i.i.i.i.i.i543.us.2 = phi i64 [ %i.bja, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i543.us.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit ] ; 6 uses
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2
  %i.bie = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2, %i.bdg
  %i.bif = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %i.bie
  %i.big = load double, ptr %i.bif, align 8, !tbaa !80
  %i.bih = fptrunc double %i.big to float
  store float %i.bih, ptr %i.bid, align 4, !tbaa !57
  %i.bii = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2, 1 ; 2 uses
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bii
  %i.bik = mul nsw i64 %i.bii, %i.bdg
  %i.bil = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %i.bik
  %i.bim = load double, ptr %i.bil, align 8, !tbaa !80
  %i.bin = fptrunc double %i.bim to float
  store float %i.bin, ptr %i.bij, align 4, !tbaa !57
  %i.bio = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2, 2 ; 2 uses
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bio
  %i.biq = mul nsw i64 %i.bio, %i.bdg
  %i.bir = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %i.biq
  %i.bis = load double, ptr %i.bir, align 8, !tbaa !80
  %i.bit = fptrunc double %i.bis to float
  store float %i.bit, ptr %i.bip, align 4, !tbaa !57
  %i.biu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2, 3 ; 2 uses
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.biu
  %i.biw = mul nsw i64 %i.biu, %i.bdg
  %i.bix = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %i.biw
  %i.biy = load double, ptr %i.bix, align 8, !tbaa !80
  %i.biz = fptrunc double %i.biy to float
  store float %i.biz, ptr %i.biv, align 4, !tbaa !57
  %i.bja = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i543.us.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i544.us.2.3 = icmp eq i64 %i.bja, %i.bdf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i544.us.2.3, label %.split1102.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2, !llvm.loop !835

.split1102.us:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i542.us.2, %middle.block1739, %.preheader
  %indvars.iv.next1166 = add nuw nsw i64 %indvars.iv1165, 1 ; 2 uses
  %12 = icmp sgt i64 %i.bda, %indvars.iv.next1166
  br i1 %12, label %.preheader, label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449, !llvm.loop !836

_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449: ; preds = %._crit_edge.i.i.i.i.i.i.i.i446, %.split.us, %.split1102.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit472, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit541, %bb.ah, %.loopexit1063, %bb.bz, %_ZN5Eigen6MatrixIjLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIijEEKNS0_IiLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, %bb.az, %.loopexit1067
  %i.bjb = load i32, ptr %i.s, align 8, !tbaa !687
  %i.bjc = and i32 %i.bjb, 64
  %.not317 = icmp eq i32 %i.bjc, 0
  br i1 %.not317, label %.loopexit1062, label %bb.cf

bb.cf:                                            ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449
  %i.bjd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bje = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.bjf = load i64, ptr %i.bje, align 8, !tbaa !175 ; 2 uses
  %i.bjg = trunc i64 %i.bjf to i32
  %i.bjh = getelementptr inbounds nuw i8, ptr %3, i64 692
  store i32 %i.bjg, ptr %i.bjh, align 4, !tbaa !837
  %i.bji = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.bjj = load i64, ptr %i.bji, align 8, !tbaa !176 ; 2 uses
  %i.bjk = trunc i64 %i.bjj to i32
  %i.bjl = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i32 %i.bjk, ptr %i.bjl, align 8, !tbaa !838
  %i.bjm = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 6 uses
  %i.bjn = mul nsw i64 %i.bjj, %i.bjf             ; 3 uses
  %i.bjo = shl nsw i64 %i.bjn, 2                  ; 3 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %3, i64 720 ; 2 uses
  %i.bjq = load i64, ptr %i.bjp, align 8, !tbaa !839
  %.not.i.i = icmp eq i64 %i.bjo, %i.bjq
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIcLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bjr = load ptr, ptr %i.bjm, align 8, !tbaa !840
  tail call void @free(ptr noundef %i.bjr) #25
  %i.bjs = icmp sgt i64 %i.bjn, 0
  br i1 %i.bjs, label %bb.ch, label %.sink.split.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.bjt = tail call noalias ptr @malloc(i64 noundef %i.bjo) #27 ; 2 uses
  %i.bju = icmp eq ptr %i.bjt, null
  br i1 %i.bju, label %bb.ci, label %.sink.split.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.bjv = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bjv, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.bjv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split.i.i:                                  ; preds = %bb.ch, %bb.cg
  %.sink.i.i = phi ptr [ %i.bjt, %bb.ch ], [ null, %bb.cg ]
  store ptr %.sink.i.i, ptr %i.bjm, align 8, !tbaa !840
  %.pre1189 = load i64, ptr %i.bje, align 8, !tbaa !175
  %.pre1190 = load i64, ptr %i.bji, align 8, !tbaa !176
  %.pre1193 = mul nsw i64 %.pre1190, %.pre1189
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIcLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIcLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.cf, %.sink.split.i.i
  %.pre-phi = phi i64 [ %i.bjn, %bb.cf ], [ %.pre1193, %.sink.split.i.i ]
  store i64 %i.bjo, ptr %i.bjp, align 8, !tbaa !839
  %i.bjw = icmp sgt i64 %.pre-phi, 0
  br i1 %i.bjw, label %.lr.ph, label %.loopexit1062

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIcLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.bjx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bjy = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bjz = getelementptr inbounds nuw i8, ptr %1, i64 360
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph, %bb.cj
  %i.bka = phi i64 [ 0, %.lr.ph ], [ %i.ble, %bb.cj ] ; 4 uses
  %.02671106 = phi i32 [ 0, %.lr.ph ], [ %i.bld, %bb.cj ] ; 2 uses
  %i.bkb = load ptr, ptr %i.bjd, align 8, !tbaa !60
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 %i.bka
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !70
  %i.bke = shl i32 %.02671106, 2                  ; 4 uses
  %i.bkf = zext i32 %i.bke to i64
  %i.bkg = load ptr, ptr %i.bjm, align 8, !tbaa !840
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 %i.bkf
  store i8 %i.bkd, ptr %i.bkh, align 1, !tbaa !70
  %i.bki = load ptr, ptr %i.bjx, align 8, !tbaa !60
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bka
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !70
  %i.bkl = or disjoint i32 %i.bke, 1
  %i.bkm = zext i32 %i.bkl to i64
  %i.bkn = load ptr, ptr %i.bjm, align 8, !tbaa !840
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 %i.bkm
  store i8 %i.bkk, ptr %i.bko, align 1, !tbaa !70
  %i.bkp = load ptr, ptr %i.bjy, align 8, !tbaa !60
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 %i.bka
  %i.bkr = load i8, ptr %i.bkq, align 1, !tbaa !70
  %i.bks = or disjoint i32 %i.bke, 2
  %i.bkt = zext i32 %i.bks to i64
  %i.bku = load ptr, ptr %i.bjm, align 8, !tbaa !840
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 %i.bkt
  store i8 %i.bkr, ptr %i.bkv, align 1, !tbaa !70
  %i.bkw = load ptr, ptr %i.bjz, align 8, !tbaa !60
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 %i.bka
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !70
  %i.bkz = or disjoint i32 %i.bke, 3
  %i.bla = zext i32 %i.bkz to i64
  %i.blb = load ptr, ptr %i.bjm, align 8, !tbaa !840
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.bla
  store i8 %i.bky, ptr %i.blc, align 1, !tbaa !70
  %i.bld = add i32 %.02671106, 1                  ; 2 uses
  %i.ble = zext i32 %i.bld to i64                 ; 2 uses
  %i.blf = load i64, ptr %i.bje, align 8, !tbaa !175
  %i.blg = load i64, ptr %i.bji, align 8, !tbaa !176
  %i.blh = mul nsw i64 %i.blg, %i.blf
  %i.bli = icmp sgt i64 %i.blh, %i.ble
  br i1 %i.bli, label %bb.cj, label %.loopexit1062, !llvm.loop !841

.loopexit1062:                                    ; preds = %bb.cj, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIcLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit449
  %i.blj = load i32, ptr %i.s, align 8, !tbaa !687
  %i.blk = and i32 %i.blj, 256
  %.not318 = icmp eq i32 %i.blk, 0
  br i1 %.not318, label %.loopexit1061, label %bb.ck

bb.ck:                                            ; preds = %.loopexit1062
  %i.bll = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bln = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.blo = load i64, ptr %i.bln, align 8, !tbaa !77 ; 3 uses
  %i.blp = icmp sgt i64 %i.blo, 1537228672809129301
  br i1 %i.blp, label %bb.cl, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit546

bb.cl:                                            ; preds = %bb.ck
  %i.blq = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.blq, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.blq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit546: ; preds = %bb.ck
  %i.blr = shl nsw i64 %i.blo, 1
  %i.bls = mul nsw i64 %i.blo, 6
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.bll, i64 noundef %i.bls, i64 noundef %i.blr, i64 noundef 3)
  %i.blt = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.blu = load i64, ptr %i.bln, align 8, !tbaa !77 ; 3 uses
  %i.blv = icmp sgt i64 %i.blu, 1537228672809129301
  br i1 %i.blv, label %bb.cm, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit547

bb.cm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit546
  %i.blw = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.blw, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.blw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit547: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit546
  %i.blx = shl nsw i64 %i.blu, 1
  %i.bly = mul nsw i64 %i.blu, 6
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.blt, i64 noundef %i.bly, i64 noundef %i.blx, i64 noundef 3)
  %i.blz = getelementptr inbounds nuw i8, ptr %3, i64 752 ; 2 uses
  %i.bma = load i64, ptr %i.bln, align 8, !tbaa !77
  %i.bmb = shl nsw i64 %i.bma, 1                  ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIjLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.blz, i64 noundef %i.bmb, i64 noundef %i.bmb, i64 noundef 1)
  %i.bmc = load i64, ptr %i.bln, align 8, !tbaa !77 ; 28 uses
  %i.bmd = icmp sgt i64 %i.bmc, 0
  br i1 %i.bmd, label %.lr.ph1108, label %.loopexit1061

.lr.ph1108:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit547
  %i.bme = load ptr, ptr %i.blm, align 8, !tbaa !59, !noalias !842
  %i.bmf = load ptr, ptr %i.bll, align 8, !tbaa !662, !noalias !845 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.bmh = load i64, ptr %i.bmg, align 8, !tbaa !666, !noalias !845 ; 15 uses
  %i.bmi = icmp sgt i64 %i.bmh, 0
  %.idx = mul nuw nsw i64 %i.bmc, 24
  %.idx1058 = mul nuw nsw i64 %i.bmc, 48
  %i.bmj = load ptr, ptr %i.blt, align 8, !tbaa !662, !noalias !848 ; 2 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.bml = load i64, ptr %i.bmk, align 8, !tbaa !666, !noalias !848 ; 15 uses
  %i.bmm = icmp sgt i64 %i.bml, 0
  %i.bmn = load ptr, ptr %i.blz, align 8, !tbaa !667 ; 2 uses
  %min.iters.check1815 = icmp ugt i64 %i.bmh, 3
  %ident.check1813.not = icmp eq i64 %i.bmc, 1
  %or.cond2002 = and i1 %min.iters.check1815, %ident.check1813.not
  %n.vec1817 = and i64 %i.bmh, 9223372036854775804 ; 3 uses
  %cmp.n1824 = icmp eq i64 %i.bmh, %n.vec1817
  %xtraiter2129 = and i64 %i.bmh, 3               ; 2 uses
  %lcmp.mod2130.not = icmp eq i64 %xtraiter2129, 0
  %min.iters.check1801 = icmp ugt i64 %i.bmh, 3
  %ident.check1799.not = icmp eq i64 %i.bmc, 1
  %or.cond2003 = and i1 %min.iters.check1801, %ident.check1799.not
  %n.vec1803 = and i64 %i.bmh, 9223372036854775804 ; 3 uses
  %cmp.n1810 = icmp eq i64 %i.bmh, %n.vec1803
  %xtraiter2132 = and i64 %i.bmh, 3               ; 2 uses
  %lcmp.mod2133.not = icmp eq i64 %xtraiter2132, 0
  %min.iters.check1787 = icmp ugt i64 %i.bml, 3
  %ident.check1785.not = icmp eq i64 %i.bmc, 1
  %or.cond2004 = and i1 %min.iters.check1787, %ident.check1785.not
  %n.vec1789 = and i64 %i.bml, 9223372036854775804 ; 3 uses
  %cmp.n1796 = icmp eq i64 %i.bml, %n.vec1789
  %xtraiter2135 = and i64 %i.bml, 3               ; 2 uses
  %lcmp.mod2136.not = icmp eq i64 %xtraiter2135, 0
  %min.iters.check1773 = icmp ugt i64 %i.bml, 3
  %ident.check1771.not = icmp eq i64 %i.bmc, 1
  %or.cond2005 = and i1 %min.iters.check1773, %ident.check1771.not
  %n.vec1775 = and i64 %i.bml, 9223372036854775804 ; 3 uses
  %cmp.n1782 = icmp eq i64 %i.bml, %n.vec1775
  %xtraiter2138 = and i64 %i.bml, 3               ; 2 uses
  %lcmp.mod2139.not = icmp eq i64 %xtraiter2138, 0
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1108, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELi3ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit563
  %indvars.iv1169 = phi i64 [ 0, %.lr.ph1108 ], [ %indvars.iv.next1170, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELi3ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit563 ] ; 3 uses
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.bme, i64 %indvars.iv1169 ; 8 uses
end_hunk_2
begin_hunk_3_@"_ZZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLEENK3$_1clERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS8_IfLin1ELin1ELi1ELin1ELin1EEE":bb.a
  %i.az = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bb = mul nsw i64 %i.az, %i.u
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !80
  %i.be = fptrunc double %i.bd to float
  store float %i.be, ptr %i.ba, align 4, !tbaa !57
  %i.bf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bh = mul nsw i64 %i.bf, %i.u
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !80
  %i.bk = fptrunc double %i.bj to float
  store float %i.bk, ptr %i.bg, align 4, !tbaa !57
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bn = mul nsw i64 %i.bl, %i.u
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !80
  %i.bq = fptrunc double %i.bp to float
  store float %i.bq, ptr %i.bm, align 4, !tbaa !57
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.br, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !958

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us, %middle.block47
  %i.bs = getelementptr [4 x i8], ptr %i.w, i64 %i.m
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !120
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bu ; 6 uses
  %i.bw = add i32 %i.y, 1
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw nsw i64 %i.s, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by ; 6 uses
  br i1 %or.cond50, label %vector.body28, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader

vector.body28:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index29 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %index29 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load30 = load <2 x double>, ptr %i.cb, align 8, !tbaa !80
  %wide.load31 = load <2 x double>, ptr %i.cc, align 8, !tbaa !80
  %i.cd = fptrunc <2 x double> %wide.load30 to <2 x float>
  %i.ce = fptrunc <2 x double> %wide.load31 to <2 x float>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store <2 x float> %i.cd, ptr %i.ca, align 4, !tbaa !57
  store <2 x float> %i.ce, ptr %i.cf, align 4, !tbaa !57
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.cg = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.cg, label %middle.block33, label %vector.body28, !llvm.loop !959

middle.block33:                                   ; preds = %vector.body28
  br i1 %cmp.n34, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader:        ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us, %middle.block33
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us ], [ %n.vec27, %middle.block33 ] ; 3 uses
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol
  %i.ci = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol, %i.u
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !80
  %i.cl = fptrunc double %i.ck to float
  store float %i.cl, ptr %i.ch, align 4, !tbaa !57
  %i.cm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol, !llvm.loop !960

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol ]
  %i.cn = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1.ph, %i.s
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1
  %.05.i.i.i.i.i.i.i.i.i.i.us.1 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1
  %i.cq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, %i.u
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !80
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cp, align 4, !tbaa !57
  %i.cu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cu
  %i.cw = mul nsw i64 %i.cu, %i.u
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !80
  %i.cz = fptrunc double %i.cy to float
  store float %i.cz, ptr %i.cv, align 4, !tbaa !57
  %i.da = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.da
  %i.dc = mul nsw i64 %i.da, %i.u
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !80
  %i.df = fptrunc double %i.de to float
  store float %i.df, ptr %i.db, align 4, !tbaa !57
  %i.dg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dg
  %i.di = mul nsw i64 %i.dg, %i.u
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !80
  %i.dl = fptrunc double %i.dk to float
  store float %i.dl, ptr %i.dh, align 4, !tbaa !57
  %i.dm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.3 = icmp eq i64 %i.dm, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.1.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1, !llvm.loop !961

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.1, %middle.block33
  %i.dn = getelementptr i8, ptr %i.w, i64 %.idx
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !120
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dp ; 6 uses
  %i.dr = add i32 %i.y, 2
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw nsw i64 %i.s, %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dt ; 6 uses
  br i1 %or.cond51, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader

vector.body:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !80
  %wide.load21 = load <2 x double>, ptr %i.dx, align 8, !tbaa !80
  %i.dy = fptrunc <2 x double> %wide.load to <2 x float>
  %i.dz = fptrunc <2 x double> %wide.load21 to <2 x float>
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store <2 x float> %i.dy, ptr %i.dv, align 4, !tbaa !57
  store <2 x float> %i.dz, ptr %i.ea, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !962

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader:        ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph = phi i64 [ 0, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.1 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ] ; 3 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol
  %i.ed = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol, %i.u
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !80
  %i.eg = fptrunc double %i.ef to float
  store float %i.eg, ptr %i.ec, align 4, !tbaa !57
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.prol, 1 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol, !llvm.loop !963

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol ]
  %i.ei = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2.ph, %i.s
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2
  %.05.i.i.i.i.i.i.i.i.i.i.us.2 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2
  %i.el = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, %i.u
  %i.em = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !80
  %i.eo = fptrunc double %i.en to float
  store float %i.eo, ptr %i.ek, align 4, !tbaa !57
  %i.ep = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ep
  %i.er = mul nsw i64 %i.ep, %i.u
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !80
  %i.eu = fptrunc double %i.et to float
  store float %i.eu, ptr %i.eq, align 4, !tbaa !57
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ev
  %i.ex = mul nsw i64 %i.ev, %i.u
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !80
  %i.fa = fptrunc double %i.ez to float
  store float %i.fa, ptr %i.ew, align 4, !tbaa !57
  %i.fb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fb
  %i.fd = mul nsw i64 %i.fb, %i.u
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !80
  %i.fg = fptrunc double %i.ff to float
  store float %i.fg, ptr %i.fc, align 4, !tbaa !57
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.3 = icmp eq i64 %i.fh, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.2.3, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2, !llvm.loop !964

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.2, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fi = icmp sgt i64 %i.m, %indvars.iv.next
  br i1 %i.fi, label %.preheader.us, label %._crit_edge, !llvm.loop !965

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.2, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !966, !nonnull !75, !align !970 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !76   ; 4 uses
  %i.g = icmp eq i64 %i.d, 0
  %i.h = icmp eq i64 %i.f, 0
  %or.cond.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv i64 9223372036854775807, %i.f
  %i.j = icmp sgt i64 %i.d, %i.i
  br i1 %i.j, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.k = mul nsw i64 %i.f, %i.d
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.d, i64 noundef %i.f)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !221 ; 7 uses
  %.sroa.3.8.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.m, i64 0
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !966, !nonnull !75, !align !970 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 8 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  %.not.i.i.i.i.i = icmp eq i64 %i.v, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.x, %i.t
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit
  %i.y = icmp eq i64 %i.r, 0
  %i.z = icmp eq i64 %i.t, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.y, %i.z
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = sdiv i64 9223372036854775807, %i.t
  %i.ab = icmp sgt i64 %i.r, %i.aa
  br i1 %i.ab, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i.i.i.i.cont unwind label %bb.f

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ad = mul nsw i64 %i.t, %i.r
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef %i.r, i64 noundef %i.t)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !77
  %.pre21.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit
  %i.ae = phi i64 [ %.pre21.i.i.i.i, %.noexc6 ], [ %i.t, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.af = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.r, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !59    ; 8 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = mul nsw i64 %i.af, %i.ae                ; 7 uses
  %i.aj = sdiv i64 %i.ai, 2                       ; 2 uses
  %i.ak = shl nsw i64 %i.aj, 1                    ; 5 uses
  %i.al = icmp sgt i64 %i.ai, 1
  br i1 %i.al, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.e
  %i.am = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %i.an = icmp slt i64 %i.ak, %i.ai
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.ao = shl nsw i64 %i.aj, 1
  %i.ap = sub i64 %i.ai, %i.ao                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 6
  %i.aq = sub i64 %i.p, %i.ah
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %i.ar = add i64 %i.ak, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %i.ak, %index                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !80
  %wide.load13 = load <2 x double>, ptr %i.av, align 8, !tbaa !80
  %i.aw = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ax = fmul <2 x double> %broadcast.splat, %wide.load13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x double> %i.aw, ptr %i.at, align 8, !tbaa !80
  store <2 x double> %i.ax, ptr %i.ay, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.preheader14:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ] ; 4 uses
  %i.ba = sub i64 %i.ai, %.05.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader14 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.prol
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !80
  %i.be = fmul double %i.m, %i.bd
  store double %i.be, ptr %i.bb, align 8, !tbaa !80
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !972

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader14
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bg = sub i64 %.05.i.i.i.i.i.i.ph, %i.ai
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !80
  %i.bl = fmul double %i.m, %i.bk
  store double %i.bl, ptr %i.bi, align 8, !tbaa !80
  %i.bm = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bm
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !80
  %i.bq = fmul double %i.m, %i.bp
  store double %i.bq, ptr %i.bn, align 8, !tbaa !80
  %i.br = add nsw i64 %.05.i.i.i.i.i.i, 2         ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !80
  %i.bv = fmul double %i.m, %i.bu
end_hunk_3
