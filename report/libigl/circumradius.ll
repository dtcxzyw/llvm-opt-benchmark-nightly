Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEESA_EENS_9TransposeISA_EENS_10DenseShapeESG_Li8EE13scaleAndAddToINS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRT_RKSD_RKSF_RKd:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.ec, ptr %i.ik, align 8, !tbaa !200
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.n, ptr %i.il, align 8, !tbaa !201
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.d, ptr %i.im, align 8, !tbaa !202
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef nonnull align 8 dereferenceable(8) %i.il, i64 noundef 1)
  %i.in = load i64, ptr %i.ik, align 8, !tbaa !200
  %i.io = load i64, ptr %i.im, align 8, !tbaa !202 ; 2 uses
  %i.ip = mul nsw i64 %i.io, %i.in
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !204
  %i.ir = load i64, ptr %i.il, align 8, !tbaa !201
  %i.is = mul nsw i64 %i.ir, %i.io
  %i.it = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.is, ptr %i.it, align 8, !tbaa !205
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !289, !nonnull !59, !align !60
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !90
  %i.ix = load ptr, ptr %2, align 8, !tbaa !291, !nonnull !59, !align !60
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !90 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %bb.y, label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS5_EENS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.jb = load i64, ptr %i.j, align 8, !tbaa !90
  br label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS5_EENS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS5_EENS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.jb, %bb.y ], [ %i.iz, %bb.x ]
  %i.jc = load i64, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.je = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !88
  %i.jh = load ptr, ptr %0, align 8, !tbaa !33
  %i.ji = load i64, ptr %i.eb, align 8, !tbaa !34
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.iw, i64 noundef %.0.i.i, i64 noundef %i.jc, ptr noundef nonnull %i.jd, i64 noundef %i.jc, ptr noundef nonnull %i.je, i64 noundef %i.jg, ptr noundef nonnull %i.jh, i64 noundef 1, i64 noundef %i.ji, double noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.z

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS5_EENS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.jj = load ptr, ptr %10, align 8, !tbaa !206
  call void @free(ptr noundef %i.jj) #20
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !207
  call void @free(ptr noundef %i.jl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEESB_EELi1ELin1ELb1EEENS_9TransposeISB_EENS_10DenseShapeESK_Li7EE13scaleAndAddToINS2_INS9_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEvRT_RSH_RKSJ_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEESB_EELi1ELin1ELb1EEENS_9TransposeISB_EENS_10DenseShapeESK_Li7EE13scaleAndAddToINS2_INS9_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEvRT_RSH_RKSJ_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS3_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEESB_EELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeISB_EELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS3_6traitsIT_E6ScalarENS4_IdST_EEE10ReturnTypeERKNS0_ISR_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit, %_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEESA_EEKNS_5BlockIKNS_9TransposeISA_EELin1ELi1ELb1EEENS_10DenseShapeESK_Li7EE13scaleAndAddToINSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEvRT_RKSD_RSJ_RKd.exit
  ret void

bb.z:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKS5_EENS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = load ptr, ptr %10, align 8, !tbaa !206
  call void @free(ptr noundef %i.jn) #20
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !207
  call void @free(ptr noundef %i.jp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  resume { ptr, i32 } %i.jm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_7ProductINS2_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSE_EELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !51 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1594, !nonnull !59, !align !60 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !90   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !90   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %.not.i = icmp eq i64 %i.o, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.not8.i = icmp eq i64 %i.q, %i.m
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.k, 0
  %i.s = icmp eq i64 %i.m, 0
  %or.cond.i.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sdiv i64 9223372036854775807, %i.m
  %i.u = icmp sgt i64 %i.k, %i.t
  br i1 %i.u, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.w = mul nsw i64 %i.m, %i.k
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef %i.k, i64 noundef %i.m)
  %.pr = load i64, ptr %i.p, align 8, !tbaa !29
  %.pre = load i64, ptr %i.n, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.x = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.k, %bb.a ] ; 17 uses
  %i.y = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.m, %bb.a ] ; 6 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !33     ; 6 uses
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = icmp sgt i64 %i.x, 0
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS_7ProductINS4_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSH_EELi1EEEEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSR_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !89, !noalias !1595 ; 7 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !88, !noalias !1595 ; 5 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !89, !noalias !1596 ; 4 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !88, !noalias !1596 ; 14 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = sdiv i64 %i.af, 4
  %i.ai = shl nsw i64 %i.ah, 2                    ; 4 uses
  %i.aj = sdiv i64 %i.af, 2
  %i.ak = shl nsw i64 %i.aj, 1                    ; 6 uses
  %i.al = icmp sgt i64 %i.af, 3
  %i.am = icmp samesign ugt i64 %i.af, 7
  %i.an = icmp sgt i64 %i.ak, %i.ai
  %i.ao = icmp slt i64 %i.ak, %i.af
  %i.ap = fmul double %i.b, 0.000000e+00          ; 2 uses
  br i1 %i.ag, label %.preheader.i.us.preheader, label %.preheader.lr.ph.split.i.split

.preheader.i.us.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %min.iters.check61 = icmp ult i64 %i.x, 4
  %n.vec63 = and i64 %i.x, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n70 = icmp eq i64 %i.x, %n.vec63
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge.i.split.us.us
  %.0812.i.us = phi i64 [ %i.av, %._crit_edge.i.split.us.us ], [ 0, %.preheader.i.us.preheader ] ; 2 uses
  %i.aq = mul nuw nsw i64 %.0812.i.us, %i.x
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.z, i64 %i.aq ; 2 uses
  br i1 %min.iters.check61, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.preheader, label %vector.body66

vector.body66:                                    ; preds = %.preheader.i.us, %vector.body66
  %index67 = phi i64 [ %index.next68, %vector.body66 ], [ 0, %.preheader.i.us ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %index67 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store <2 x double> %broadcast.splat65, ptr %i.ar, align 8, !tbaa !38
  store <2 x double> %broadcast.splat65, ptr %i.as, align 8, !tbaa !38
  %index.next68 = add nuw i64 %index67, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.at, label %middle.block69, label %vector.body66, !llvm.loop !1580

middle.block69:                                   ; preds = %vector.body66
  br i1 %cmp.n70, label %._crit_edge.i.split.us.us, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.preheader: ; preds = %.preheader.i.us, %middle.block69
  %.011.i.us.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec63, %middle.block69 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us
  %.011.i.us.us = phi i64 [ %i.au, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us ], [ %.011.i.us.us.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.preheader ] ; 2 uses
  %gep.i.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.011.i.us.us
  store double %i.ap, ptr %gep.i.us.us, align 8, !tbaa !38
  %i.au = add nuw nsw i64 %.011.i.us.us, 1        ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %i.au, %i.x
  br i1 %exitcond.not.i.us.us, label %._crit_edge.i.split.us.us, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us, !llvm.loop !1581

._crit_edge.i.split.us.us:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us, %middle.block69
  %i.av = add nuw nsw i64 %.0812.i.us, 1          ; 2 uses
  %exitcond16.not.i.us = icmp eq i64 %i.av, %i.y
  br i1 %exitcond16.not.i.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS_7ProductINS4_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSH_EELi1EEEEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSR_.exit, label %.preheader.i.us, !llvm.loop !1582

.preheader.lr.ph.split.i.split:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i.i = add i64 %i.af, 1
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i, label %.preheader.i.us23.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i.split
  %i.aw = sub i64 %i.af, %i.ak
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ax = sub i64 %i.ak, %i.af
  %i.ay = icmp ugt i64 %i.ax, -4
  br label %.preheader.i

.preheader.i.us23.preheader:                      ; preds = %.preheader.lr.ph.split.i.split
  %i.az = mul i64 %i.y, %i.x
  %i.ba = shl i64 %i.az, 3
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ba ; 2 uses
  %i.bb = shl i64 %i.x, 3                         ; 2 uses
  %scevgep50 = getelementptr i8, ptr %i.ac, i64 %i.bb
  %i.bc = add nuw i64 %i.y, 2305843009213693951
  %i.bd = mul i64 %i.af, %i.bc
  %i.be = shl i64 %i.bd, 3
  %i.bf = getelementptr i8, ptr %i.ae, i64 %i.be
  %scevgep51 = getelementptr i8, ptr %i.bf, i64 8
  %min.iters.check = icmp ugt i64 %i.x, 7
  %ident.check.not = icmp eq i64 %i.ad, 1
  %or.cond72 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.z, %scevgep50
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.z, %scevgep51
  %bound153 = icmp ult ptr %i.ae, %scevgep
  %found.conflict54 = and i1 %bound052, %bound153
  %stride.check55 = icmp slt i64 %i.bb, 0
  %i.bg = or i1 %found.conflict54, %stride.check55
  %.mask = and i64 %i.af, 1152921504606846976
  %stride.check56 = icmp ne i64 %.mask, 0
  %i.bh = or i1 %i.bg, %stride.check56
  %conflict.rdx = or i1 %found.conflict, %i.bh
  %n.vec = and i64 %i.x, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  %xtraiter77 = and i64 %i.x, 1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br label %.preheader.i.us23

.preheader.i.us23:                                ; preds = %.preheader.i.us23.preheader, %._crit_edge.i.split.split.us.us
  %.0812.i.us24 = phi i64 [ %i.cr, %._crit_edge.i.split.split.us.us ], [ 0, %.preheader.i.us23.preheader ] ; 3 uses
  %i.bi = mul nuw nsw i64 %.0812.i.us24, %i.x
  %invariant.gep.i.us25 = getelementptr [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %i.bj = mul nsw i64 %i.af, %.0812.i.us24
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bj ; 4 uses
  %or.cond72.not = xor i1 %or.cond72, true
  %brmerge = select i1 %or.cond72.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.us23
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !38, !alias.scope !1597
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <2 x double>, ptr %i.bm, align 8, !tbaa !38, !alias.scope !1598
  %wide.load57 = load <2 x double>, ptr %i.bn, align 8, !tbaa !38, !alias.scope !1598
  %i.bo = fmul <2 x double> %wide.load, %broadcast.splat59
  %i.bp = fmul <2 x double> %wide.load57, %broadcast.splat59
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep.i.us25, i64 %index ; 2 uses
  %i.br = fmul <2 x double> %broadcast.splat, %i.bo
  %i.bs = fmul <2 x double> %broadcast.splat, %i.bp
  %i.bt = getelementptr i8, ptr %i.bq, i64 16
  store <2 x double> %i.br, ptr %i.bq, align 8, !tbaa !38, !alias.scope !1599, !noalias !1600
  store <2 x double> %i.bs, ptr %i.bt, align 8, !tbaa !38, !alias.scope !1599, !noalias !1600
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1587

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.split.split.us.us, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader: ; preds = %.preheader.i.us23, %middle.block
  %.011.i.us18.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.us23 ] ; 5 uses
  %.neg = or disjoint i64 %.011.i.us18.us.ph, 1
  br i1 %lcmp.mod78.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader
  %i.bv = mul nsw i64 %.011.i.us18.us.ph, %i.ad
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !38
  %i.by = load double, ptr %i.bk, align 8, !tbaa !38
  %i.bz = fmul double %i.bx, %i.by
  %gep.i.us21.us.prol = getelementptr [8 x i8], ptr %invariant.gep.i.us25, i64 %.011.i.us18.us.ph
  %i.ca = fmul double %i.b, %i.bz
  store double %i.ca, ptr %gep.i.us21.us.prol, align 8, !tbaa !38
  %i.cb = or disjoint i64 %.011.i.us18.us.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader
  %.011.i.us18.us.unr = phi i64 [ %.011.i.us18.us.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.preheader ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol ]
  %i.cc = icmp eq i64 %i.x, %.neg
  br i1 %i.cc, label %._crit_edge.i.split.split.us.us, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us
  %.011.i.us18.us = phi i64 [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us ], [ %.011.i.us18.us.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit ] ; 4 uses
  %i.cd = mul nsw i64 %.011.i.us18.us, %i.ad
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !38
  %i.cg = load double, ptr %i.bk, align 8, !tbaa !38
  %i.ch = fmul double %i.cf, %i.cg
  %gep.i.us21.us = getelementptr [8 x i8], ptr %invariant.gep.i.us25, i64 %.011.i.us18.us
  %i.ci = fmul double %i.b, %i.ch
  store double %i.ci, ptr %gep.i.us21.us, align 8, !tbaa !38
  %i.cj = add nuw nsw i64 %.011.i.us18.us, 1      ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.ad
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !38
  %i.cn = load double, ptr %i.bk, align 8, !tbaa !38
  %i.co = fmul double %i.cm, %i.cn
  %gep.i.us21.us.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us25, i64 %i.cj
  %i.cp = fmul double %i.b, %i.co
  store double %i.cp, ptr %gep.i.us21.us.1, align 8, !tbaa !38
  %i.cq = add nuw nsw i64 %.011.i.us18.us, 2      ; 2 uses
  %exitcond.not.i.us22.us.1 = icmp eq i64 %i.cq, %i.x
  br i1 %exitcond.not.i.us22.us.1, label %._crit_edge.i.split.split.us.us, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us, !llvm.loop !1588

._crit_edge.i.split.split.us.us:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us19.us, %middle.block
  %i.cr = add nuw nsw i64 %.0812.i.us24, 1        ; 2 uses
  %exitcond16.not.i.us26 = icmp eq i64 %i.cr, %i.y
  br i1 %exitcond16.not.i.us26, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS_7ProductINS4_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSH_EELi1EEEEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSR_.exit, label %.preheader.i.us23, !llvm.loop !1582

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i.split.split
  %.0812.i = phi i64 [ %i.cx, %._crit_edge.i.split.split ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.cs = mul nuw nsw i64 %.0812.i, %i.x
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.z, i64 %i.cs
  %i.ct = mul nsw i64 %i.af, %.0812.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ct ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ai
  br label %bb.e

._crit_edge.i.split.split:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %i.cx = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond16.not.i = icmp eq i64 %i.cx, %i.y
  br i1 %exitcond16.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS_7ProductINS4_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSH_EELi1EEEEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSR_.exit, label %.preheader.i, !llvm.loop !1582

bb.e:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %.preheader.i
  %.011.i = phi i64 [ 0, %.preheader.i ], [ %i.fm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ] ; 3 uses
  %i.cy = mul nsw i64 %.011.i, %i.ad
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cy ; 10 uses
  %i.da = load <2 x double>, ptr %i.cz, align 1, !tbaa !71
  %i.db = load <2 x double>, ptr %i.cu, align 1, !tbaa !71
  %i.dc = fmul <2 x double> %i.da, %i.db          ; 3 uses
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = load <2 x double>, ptr %i.dd, align 1, !tbaa !71
  %i.df = load <2 x double>, ptr %i.cv, align 1, !tbaa !71
  %i.dg = fmul <2 x double> %i.de, %i.df          ; 2 uses
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f
  %.075.lcssa.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dg, %bb.f ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.f ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dh = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ 4, %bb.f ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.f ]
  %.07278.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dc, %bb.f ]
  %.07577.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dg, %bb.f ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05480.i.i.i.i.i.i.i.i
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !71
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05480.i.i.i.i.i.i.i.i
  %i.dl = load <2 x double>, ptr %i.dk, align 1, !tbaa !71
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i, %i.dm ; 2 uses
  %i.do = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.do
  %i.dq = load <2 x double>, ptr %i.dp, align 1, !tbaa !71
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.ds = load <2 x double>, ptr %i.dr, align 1, !tbaa !71
  %i.dt = fmul <2 x double> %i.dq, %i.ds
  %i.du = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i, %i.dt ; 2 uses
  %.054.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dv = icmp slt i64 %.054.i.i.i.i.i.i.i.i, %i.ai
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !1589

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ai
  %i.dx = load <2 x double>, ptr %i.dw, align 1, !tbaa !71
  %i.dy = load <2 x double>, ptr %i.cw, align 1, !tbaa !71
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  %i.ea = fadd <2 x double> %i.dh, %i.dz
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %.274.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.e ], [ %i.ea, %bb.g ], [ %i.dh, %._crit_edge.i.i.i.i.i.i.i.i ]
  %i.eb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.ao, label %.lr.ph85.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS3_IdLin1ELin1ELi1ELin1ELin1EEENS_9TransposeIKSG_EELi1EEEEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

.lr.ph85.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.h
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph85.i.i.i.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.i.prol = phi double [ %i.eh, %.lr.ph85.i.i.i.i.i.i.i.i.prol ], [ %i.eb, %.lr.ph85.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.preheader ]
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i.i.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi4ELi4ELi0ELi4ELi4EEEEEKNS_7ProductINS3_IdLi4ELi3ELi0ELi4ELi3EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dl = fmul <2 x double> %i.n, %i.cw
  %i.dm = fmul <2 x double> %i.t, %i.db
  %i.dn = fadd <2 x double> %i.dl, %i.dm
  %i.do = fmul <2 x double> %i.z, %i.dh
  %i.dp = fadd <2 x double> %i.dn, %i.do
  store <2 x double> %i.dp, ptr %i.dk, align 16, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i)
  %i.dq = load ptr, ptr %0, align 8, !tbaa !150   ; 7 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = and i64 %i.dr, 7
  %.not.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !44 ; 5 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.preheader.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.preheader.lr.ph.i.i.i.i.i:                       ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !44 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %.preheader.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.lr.ph.i.i.i.i.i
  %i.dz = shl nuw i64 %i.dx, 3                    ; 3 uses
  %xtraiter = and i64 %i.du, 1
  %i.ea = icmp eq i64 %i.du, 1
  br i1 %i.ea, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.du, 9223372036854775806
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.ee, %.preheader.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i, 40
  %i.eb = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i
  %.idx.i4.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i, 5
  %invariant.gep.i.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eb, ptr align 16 %invariant.gep.i.i.i.i.i, i64 %i.dz, i1 false), !tbaa !38
  %i.ec = or disjoint i64 %.0810.i.i.i.i.i, 1     ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul i64 %i.ec, 40
  %i.ed = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.1
  %.idx.i4.i.i.i.i.i.i.i.1 = shl i64 %i.ec, 5
  %invariant.gep.i.i.i.i.i.1 = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ed, ptr align 16 %invariant.gep.i.i.i.i.i.1, i64 %i.dz, i1 false), !tbaa !38
  %i.ee = add nuw nsw i64 %.0810.i.i.i.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, label %.preheader.i.i.i.i.i, !llvm.loop !2053

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i: ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !44 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !44 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph58.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph58.i.i.i.i:                                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i
  %i.ek = lshr exact i64 %i.dr, 3
  %i.el = and i64 %i.ek, 1
  %i.em = tail call i64 @llvm.smin.i64(i64 %i.el, i64 %i.eg)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph58.i.i.i.i
  %.03457.i.i.i.i = phi i64 [ 0, %.lr.ph58.i.i.i.i ], [ %i.fl, %._crit_edge.i.i.i.i ] ; 7 uses
  %.03556.i.i.i.i = phi i64 [ %i.em, %.lr.ph58.i.i.i.i ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i.i.i.i ] ; 8 uses
  %i.en = sub i64 %i.eg, %.03556.i.i.i.i          ; 4 uses
  %i.eo = and i64 %i.en, -2
  %i.ep = add i64 %i.eo, %.03556.i.i.i.i          ; 2 uses
  %i.eq = icmp sgt i64 %.03556.i.i.i.i, 0
  br i1 %i.eq, label %.preheader47.loopexit.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.loopexit.i.i.i.i:                    ; preds = %bb.c
  %.idx.i4.i.i.i.i.i.i = shl i64 %.03457.i.i.i.i, 5
  %invariant.gep.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i = mul i64 %.03457.i.i.i.i, 40
  %i.er = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i
  %i.es = load double, ptr %invariant.gep.i.i.i.i, align 16, !tbaa !38
  store double %i.es, ptr %i.er, align 8, !tbaa !38
  br label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %.preheader47.loopexit.i.i.i.i, %bb.c
  %i.et = icmp sgt i64 %i.en, 1
  br i1 %i.et, label %.lr.ph51.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader47.i.i.i.i
  %.idx.i.i.i37.i.i.i.i = mul i64 %.03457.i.i.i.i, 40
  %.idx.i4.i.i38.i.i.i.i = shl nuw nsw i64 %.03457.i.i.i.i, 5
  %i.eu = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37.i.i.i.i
  %invariant.gep.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i38.i.i.i.i
  %i.ev = shl i64 %.03556.i.i.i.i, 3              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.ev
  %scevgep5 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.ev
  %i.ew = add nsw i64 %.03556.i.i.i.i, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ep, i64 %i.ew)
  %i.ex = xor i64 %.03556.i.i.i.i, -1
  %i.ey = add i64 %smax, %i.ex
  %i.ez = shl i64 %i.ey, 3
  %i.fa = and i64 %i.ez, -16
  %i.fb = add i64 %i.fa, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 8 %scevgep5, i64 %i.fb, i1 false), !tbaa !71
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph51.i.i.i.i, %.preheader47.i.i.i.i
  %i.fc = icmp slt i64 %i.ep, %i.eg
  br i1 %i.fc, label %.lr.ph53.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %.idx.i.i.i39.i.i.i.i = mul i64 %.03457.i.i.i.i, 40
  %i.fd = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i39.i.i.i.i
  %.idx.i4.i.i40.i.i.i.i = shl i64 %.03457.i.i.i.i, 5
  %invariant.gep54.i.i.i.i = getelementptr i8, ptr %4, i64 %.idx.i4.i.i40.i.i.i.i
  %i.fe = and i64 %i.en, 2305843009213693950
  %i.ff = add i64 %.03556.i.i.i.i, %i.fe
  %i.fg = shl i64 %i.ff, 3                        ; 2 uses
  %scevgep6 = getelementptr i8, ptr %i.fd, i64 %i.fg
  %scevgep7 = getelementptr i8, ptr %invariant.gep54.i.i.i.i, i64 %i.fg
  %i.fh = shl i64 %i.en, 3
  %i.fi = and i64 %i.fh, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep6, ptr align 8 %scevgep7, i64 %i.fi, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph53.i.i.i.i, %.preheader.i.i.i.i
  %i.fj = add nsw i64 %.03556.i.i.i.i, 1
  %i.fk = srem i64 %i.fj, 2
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.eg, i64 %i.fk)
  %i.fl = add nuw nsw i64 %.03457.i.i.i.i, 1      ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.fl, %i.ei
  br i1 %exitcond61.not.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %bb.c, !llvm.loop !2054

_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa: ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.ee, %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i64 %i.du to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %.idx.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.epil.init, 40
  %i.fm = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.epil
  %.idx.i4.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.epil.init, 5
  %invariant.gep.i.i.i.i.i.epil = getelementptr i8, ptr %4, i64 %.idx.i4.i.i.i.i.i.i.i.epil
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fm, ptr align 16 %invariant.gep.i.i.i.i.i.epil, i64 %i.dz, i1 false), !tbaa !38
  br label %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.preheader.i.i.i.i.i.epil.preheader, %_ZN5Eigen8internal24call_assignment_no_aliasINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS3_IdLi4ELi4ELi0ELi4ELi4EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.loopexit13.unr-lcssa, %._crit_edge.i.i.i.i, %bb.b, %.preheader.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.5597", align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.5543", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.698", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.5543", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !71 ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !71 ; 2 uses
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = fadd <2 x double> %i.e, %i.h             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x double>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !71 ; 2 uses
  %i.n = fmul <2 x double> %i.m, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !71 ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p
  %i.r = fadd <2 x double> %i.n, %i.q             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load double, ptr %i.s, align 8, !tbaa !38
  %i.u = shufflevector <2 x double> %i.i, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.i, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.w = fadd <2 x double> %i.u, %i.v
  %i.x = insertelement <2 x double> %i.k, double %i.t, i64 1 ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.x
  %i.z = fadd <2 x double> %i.y, %i.w
  %i.aa = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.z) ; 2 uses
  store <2 x double> %i.aa, ptr %i.c, align 8, !tbaa !38
  store <2 x double> %i.aa, ptr %i.b, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load <2 x double>, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x double>, ptr %i.ae, align 8, !tbaa !71 ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af
  %i.ah = fadd <2 x double> %i.ad, %i.ag          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %5 = load double, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !71 ; 2 uses
  %i.an = fmul <2 x double> %i.am, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !71 ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.ap
  %i.ar = fadd <2 x double> %i.an, %i.aq          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load double, ptr %i.as, align 8, !tbaa !38
  %i.au = shufflevector <2 x double> %i.ah, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.ah, <2 x double> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.aw = fadd <2 x double> %i.au, %i.av
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %i.ax = insertelement <2 x double> %6, double %i.at, i64 1 ; 2 uses
  %i.ay = fmul <2 x double> %i.ax, %i.ax
  %i.az = fadd <2 x double> %i.ay, %i.aw
  %i.ba = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.az) ; 2 uses
  store <2 x double> %i.ba, ptr %i.aj, align 8, !tbaa !38
  store <2 x double> %i.ba, ptr %i.ak, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bc = load <2 x double>, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !71 ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = fadd <2 x double> %i.bd, %i.bg          ; 2 uses
  %shift = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bh, %shift
  %i.bi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %i.bl, %i.bi
  %.scalar.i.4 = tail call noundef double @llvm.sqrt.f64(double %i.bm) ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %.scalar.i.4, ptr %i.bn, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376
  store double %.scalar.i.4, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.b, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bu = load <2 x double>, ptr %i.bt, align 8, !tbaa !71
  %i.bv = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs, <2 x double> %i.bu) #23, !srcloc !237 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.bw = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.bx = select i1 %i.bw, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 2 uses
  %i.by = fcmp olt double %i.bx, %.scalar.i.4
  %i.bz = select i1 %i.by, double %.scalar.i.4, double %i.bx
  %i.ca = fmul double %i.bz, f0x3CB0000000000000  ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  %i.cc = fdiv double %i.cb, 5.000000e+00
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  store i64 5, ptr %i.cd, align 8, !tbaa !366
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store double 0.000000e+00, ptr %i.ce, align 8, !tbaa !2074
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.cx, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 4, ptr %i.cy, align 8, !tbaa !36
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !218
  %i.da = shl i64 %i.cz, 32
  %i.db = ashr exact i64 %i.da, 30
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36
  store i32 %i.dd, ptr %i.cx, align 8, !tbaa !36
  store i32 0, ptr %i.dc, align 4, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.df = load i64, ptr %i.de, align 8, !tbaa !218
  %i.dg = shl i64 %i.df, 32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.di = ashr exact i64 %i.dg, 30
  %i.dj = getelementptr inbounds i8, ptr %i.cx, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !36
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !36
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !36
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !218
  %i.do = shl i64 %i.dn, 32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dq = ashr exact i64 %i.do, 30
  %i.dr = getelementptr inbounds i8, ptr %i.cx, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dp, align 8, !tbaa !36
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !36
  store i32 %i.dt, ptr %i.dp, align 8, !tbaa !36
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !218
  %i.dw = shl i64 %i.dv, 32
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.dy = ashr exact i64 %i.dw, 30
  %i.dz = getelementptr inbounds i8, ptr %i.cx, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !36
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !36
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !36
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !218
  %i.ee = shl i64 %i.ed, 32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.eg = ashr exact i64 %i.ee, 30
  %i.eh = getelementptr inbounds i8, ptr %i.cx, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 8, !tbaa !36
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !36
  store i32 %i.ej, ptr %i.ef, align 8, !tbaa !36
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !36
  %i.ek = and i64 %.1, 1
  %.not = icmp eq i64 %i.ek, 0
  %i.el = select i1 %.not, i64 1, i64 -1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.el, ptr %i.em, align 8, !tbaa !2075
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 1, ptr %i.en, align 8, !tbaa !178
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.073152 = phi i64 [ 0, %bb.a ], [ %i.gv, %._crit_edge ] ; 24 uses
  %.075151 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.eo = sub nsw i64 4, %.073152                 ; 2 uses
  %i.ep = and i64 %i.eo, -2
  %i.eq = and i64 %i.eo, 1                        ; 2 uses
  %i.er = add i64 %.073152, %i.ep
  %i.es = sub nsw i64 4, %.073152                 ; 3 uses
  %i.et = sub nuw nsw i64 5, %.073152             ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073152 ; 6 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !38 ; 5 uses
  %.not146 = icmp eq i64 %.073152, 4
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.es, 1
  %i.ew = icmp eq i64 %.073152, 3
  br i1 %i.ew, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.es, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi double [ %i.ev, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.fe, %.preheader.i.i.i.i ] ; 4 uses
  %.promoted2829.i.i.i.i = phi double [ %i.ev, %.preheader.i.i.i.i.preheader.new ], [ %.promoted27.i.i.i.i.1, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.ex = getelementptr [8 x i8], ptr %i.eu, i64 %.02030.i.i.i.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !38 ; 3 uses
  %i.ez = fcmp ogt double %i.ey, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.ez, double %i.ey, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.ez, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.ez, double %i.ey, double %.promoted2829.i.i.i.i ; 2 uses
  %i.fa = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %i.eu, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !38 ; 3 uses
  %i.fd = fcmp ogt double %i.fc, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.fd, double %i.fc, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.fd, i64 %i.fa, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.fd, double %i.fc, double %.promoted27.i.i.i.i ; 2 uses
  %i.fe = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !2063

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi double [ %i.ev, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02030.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.fe, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.promoted2829.i.i.i.i.epil.init = phi double [ %i.ev, %.preheader.i.i.i.i.preheader ], [ %.promoted27.i.i.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.es to i1
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.ff = getelementptr [8 x i8], ptr %i.eu, i64 %.02030.i.i.i.i.epil.init
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !38 ; 2 uses
  %i.fh = fcmp ogt double %i.fg, %.promoted2829.i.i.i.i.epil.init ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.fh, double %i.fg, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.fh, i64 %.02030.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.ev, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
end_hunk_1
