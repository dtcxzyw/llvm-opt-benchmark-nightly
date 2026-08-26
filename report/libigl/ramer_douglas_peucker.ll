Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ramer_douglas_peucker?download=true
inline.NumInlined: 3863
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZZN3igl21ramer_douglas_peuckerIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EEENKUliiE_clEii:bb.a
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %.05.i.i.i.i.i.i.i.i50.prol
  %i.hr = mul nsw i64 %.05.i.i.i.i.i.i.i.i50.prol, %i.hf
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !19
  store double %i.ht, ptr %i.hq, align 8, !tbaa !19
  %i.hu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50.prol, 1 ; 2 uses
  %prol.iter231.next = add i64 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i64 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i49.prol, !llvm.loop !289

.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol, %.lr.ph.i.i.i.i.i.i.i.i49.preheader212
  %.05.i.i.i.i.i.i.i.i50.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i.i.i.i49.preheader212 ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i49.prol ]
  %i.hv = sub nsw i64 %.05.i.i.i.i.i.i.i.i50.ph, %.pr.i.i.i.i.i.i.i47
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54, label %.lr.ph.i.i.i.i.i.i.i.i49

.lr.ph.i.i.i.i.i.i.i.i49:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i49
  %.05.i.i.i.i.i.i.i.i50 = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i49 ], [ %.05.i.i.i.i.i.i.i.i50.unr, %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %.05.i.i.i.i.i.i.i.i50
  %i.hy = mul nsw i64 %.05.i.i.i.i.i.i.i.i50, %i.hf
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !19
  store double %i.ia, ptr %i.hx, align 8, !tbaa !19
  %i.ib = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.ib
  %i.id = mul nsw i64 %i.ib, %i.hf
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !19
  store double %i.if, ptr %i.ic, align 8, !tbaa !19
  %i.ig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.ig
  %i.ii = mul nsw i64 %i.ig, %i.hf
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !19
  store double %i.ik, ptr %i.ih, align 8, !tbaa !19
  %i.il = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 3 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.il
  %i.in = mul nsw i64 %i.il, %i.hf
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !19
  store double %i.ip, ptr %i.im, align 8, !tbaa !19
  %i.iq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i51.3 = icmp eq i64 %i.iq, %.pr.i.i.i.i.i.i.i47
  br i1 %exitcond.not.i.i.i.i.i.i.i.i51.3, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54, label %.lr.ph.i.i.i.i.i.i.i.i49, !llvm.loop !290

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i46
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body52

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54: ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i49, %middle.block208, %bb.l, %.loopexit
  invoke void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54
  %i.is = load ptr, ptr %7, align 8, !tbaa !278
  call void @free(ptr noundef %i.is) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.it = load ptr, ptr %6, align 8, !tbaa !278
  call void @free(ptr noundef %i.it) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.iu = load ptr, ptr %5, align 8, !tbaa !16
  call void @free(ptr noundef %i.iu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre151 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %.pre152.pre = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.o:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.body52:                                          ; preds = %bb.m, %bb.o
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.o ], [ %i.ir, %bb.m ]
  %i.iw = load ptr, ptr %7, align 8, !tbaa !278
  call void @free(ptr noundef %i.iw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ix = load ptr, ptr %6, align 8, !tbaa !278
  call void @free(ptr noundef %i.ix) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !16
  br label %.body

.body:                                            ; preds = %bb.k, %.body52
  %i.iy = phi ptr [ %.pre, %.body52 ], [ null, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body52 ], [ %i.gw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @free(ptr noundef %i.iy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.f, %bb.n
  %.pre152 = phi ptr [ %i.bz, %bb.f ], [ %.pre152.pre, %bb.n ] ; 2 uses
  %i.iz = phi i64 [ %i.by, %bb.f ], [ %.pre151, %bb.n ] ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.jb = phi i64 [ %i.iz, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.by, %middle.block ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.pre152167 = phi ptr [ %.pre152, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.bz, %middle.block ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jc = load double, ptr %.pre152167, align 8, !tbaa !19 ; 5 uses
  %i.jd = icmp sgt i64 %i.jb, 1
  br i1 %i.jd, label %.lr.ph.i.i.i.i55.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

.lr.ph.i.i.i.i55.preheader:                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread
  %i.je = add nsw i64 %i.jb, -1                   ; 3 uses
  %xtraiter232 = and i64 %i.je, 1
  %i.jf = icmp eq i64 %i.jb, 2
  br i1 %i.jf, label %.lr.ph.i.i.i.i55.epil.preheader, label %.lr.ph.i.i.i.i55.preheader.new

.lr.ph.i.i.i.i55.preheader.new:                   ; preds = %.lr.ph.i.i.i.i55.preheader
  %unroll_iter237 = and i64 %i.je, -2
  br label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %.lr.ph.i.i.i.i55, %.lr.ph.i.i.i.i55.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i55 ]
  %.sroa.7.0.i.i = phi double [ %i.jc, %.lr.ph.i.i.i.i55.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i55 ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i55.preheader.new ], [ %i.jq, %.lr.ph.i.i.i.i55 ] ; 4 uses
  %i.jg = phi double [ %i.jc, %.lr.ph.i.i.i.i55.preheader.new ], [ %i.jp, %.lr.ph.i.i.i.i55 ] ; 2 uses
  %niter238 = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader.new ], [ %niter238.next.1, %.lr.ph.i.i.i.i55 ]
  %i.jh = getelementptr [8 x i8], ptr %.pre152167, i64 %.02123.i.i.i.i
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !19 ; 3 uses
  %i.jj = fcmp ogt double %i.ji, %i.jg            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.jj, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.jj, double %i.ji, double %.sroa.7.0.i.i
  %i.jk = select i1 %i.jj, double %i.ji, double %i.jg ; 2 uses
  %i.jl = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.jm = getelementptr [8 x i8], ptr %.pre152167, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !19 ; 3 uses
  %i.jo = fcmp ogt double %i.jn, %i.jk            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.jo, i64 %i.jl, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.jo, double %i.jn, double %.sroa.7.1.i.i ; 3 uses
  %i.jp = select i1 %i.jo, double %i.jn, double %i.jk ; 2 uses
  %i.jq = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter238.next.1 = add nuw i64 %niter238, 2     ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i55, !llvm.loop !291

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i55
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, label %.lr.ph.i.i.i.i55.epil.preheader

.lr.ph.i.i.i.i55.epil.preheader:                  ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i55.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.jc, %.lr.ph.i.i.i.i55.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i55.preheader ], [ %i.jq, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.jc, %.lr.ph.i.i.i.i55.preheader ], [ %i.jp, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod236 = trunc i64 %i.je to i1
  call void @llvm.assume(i1 %lcmp.mod236)
  %i.jr = getelementptr [8 x i8], ptr %.pre152167, i64 %.02123.i.i.i.i.epil.init
  %i.js = load double, ptr %i.jr, align 8, !tbaa !19 ; 2 uses
  %i.jt = fcmp ogt double %i.js, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.jt, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.jt, double %i.js, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i55.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i55.epil.preheader ]
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i55.epil.preheader ]
  %i.ju = trunc i64 %.sroa.0.1.i.i.lcssa to i32
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre152168 = phi ptr [ %.pre152, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %.pre152167, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.pre152167, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.0.2.i.i = phi i32 [ -1, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %i.ju, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.7.2.i.i = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.jc, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.sroa.7.1.i.i.lcssa, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @free(ptr noundef %.pre152168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.jv = add i32 %i.az, %.sroa.0.2.i.i
  br label %bb.q

bb.p:                                             ; preds = %.body, %bb.h, %bb.g
  %.pn37 = phi { ptr, i32 } [ %i.fb, %bb.g ], [ %i.fc, %bb.h ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.jw = load ptr, ptr %3, align 8, !tbaa !16
  call void @free(ptr noundef %i.jw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn37

bb.q:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, %bb.a
  %.0 = phi i32 [ %i.jv, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ -1, %bb.a ] ; 2 uses
  %.030 = phi double [ %.sroa.7.2.i.i, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ 0.000000e+00, %bb.a ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !292, !nonnull !60, !align !61
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !19
  %i.ka = fcmp ugt double %.030, %i.jz
  br i1 %i.ka, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kb = add nsw i32 %2, -1
  %.not = icmp eq i32 %1, %i.kb
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.kc = load ptr, ptr %0, align 8, !tbaa !293, !nonnull !60, !align !61
  %i.kd = xor i32 %1, -1
  %i.ke = add i32 %2, %i.kd
  %i.kf = sext i32 %i.ke to i64                   ; 3 uses
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !110, !noalias !294
  %i.kh = sext i32 %1 to i64
  %i.ki = getelementptr i8, ptr %i.kg, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 1      ; 4 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = sub i64 0, %i.kk
  %i.km = and i64 %i.kl, 15
  %i.kn = call noundef i64 @llvm.smin.i64(i64 %i.km, i64 %i.kf) ; 7 uses
  %i.ko = sub nsw i64 %i.kf, %i.kn                ; 3 uses
  %i.kp = and i64 %i.ko, -16
  %i.kq = add i64 %i.kp, %i.kn                    ; 3 uses
  %i.kr = icmp sgt i64 %i.kn, 0
  br i1 %i.kr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.kj, i8 0, i64 %i.kn, i1 false), !tbaa !114
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  %i.ks = icmp sgt i64 %i.ko, 15
  br i1 %i.ks, label %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %scevgep = getelementptr i8, ptr %i.kj, i64 %i.kn
  %i.kt = add nsw i64 %i.kn, 16
  %smax = call i64 @llvm.smax.i64(i64 %i.kq, i64 %i.kt)
  %i.ku = xor i64 %i.kn, -1
  %i.kv = add i64 %smax, %i.ku
  %i.kw = and i64 %i.kv, -16
  %i.kx = add i64 %i.kw, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.kx, i1 false), !tbaa !86
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %i.ky = icmp slt i64 %i.kq, %i.kf
  br i1 %i.ky, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.kj, i64 %i.kq
  %i.kz = and i64 %i.ko, 15
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.kz, i1 false), !tbaa !114
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

bb.s:                                             ; preds = %bb.q
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !297, !nonnull !60, !align !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !49
  store i32 %.0, ptr %i.d, align 4, !tbaa !49
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !124
  %.not.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i, label %bb.t, label %_ZNKSt8functionIFviiEEclEii.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %bb.s
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !202
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(32) %i.lb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !297, !nonnull !60, !align !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.0, ptr %i.a, align 4, !tbaa !49
  store i32 %2, ptr %i.b, align 4, !tbaa !49
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !124
  %.not.i.i57 = icmp eq ptr %i.li, null
  br i1 %.not.i.i57, label %bb.u, label %_ZNKSt8functionIFviiEEclEii.exit58

bb.u:                                             ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit58:               ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !202
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(32) %i.lg, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %_ZNKSt8functionIFviiEEclEii.exit58
  ret void
}

declare noundef double @_ZN3igl3EPSIdEET_v() local_unnamed_addr #3

declare void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !16
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !276
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !278
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !278
  br label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !276
  ret void
}

; Function Attrs: nobuiltin nounwind
end_hunk_0
begin_hunk_1_@_ZZN3igl21ramer_douglas_peuckerIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EEENKUliiE_clEii:bb.a
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i
  %i.do = getelementptr [8 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = load double, ptr %i.as, align 8, !tbaa !19
  %i.dr = fsub double %i.dp, %i.dq                ; 2 uses
  %i.ds = fmul double %i.dr, %i.dr
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.do, i64 %i.ay
  %i.dt = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.du = load double, ptr %i.bb, align 8, !tbaa !19
  %i.dv = fsub double %i.dt, %i.du                ; 2 uses
  %i.dw = fmul double %i.dv, %i.dv
  %i.dx = fadd double %i.ds, %i.dw
  store double %i.dx, ptr %i.dn, align 8, !tbaa !19
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.ab, i64 %i.dy ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19
  %i.ec = load double, ptr %i.as, align 8, !tbaa !19
  %i.ed = fsub double %i.eb, %i.ec                ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.ea, i64 %i.ay
  %i.ef = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !19
  %i.eg = load double, ptr %i.bb, align 8, !tbaa !19
  %i.eh = fsub double %i.ef, %i.eg                ; 2 uses
  %i.ei = fmul double %i.eh, %i.eh
  %i.ej = fadd double %i.ee, %i.ei
  store double %i.ej, ptr %i.dz, align 8, !tbaa !19
  %i.ek = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ek, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !375

bb.f:                                             ; preds = %bb.b
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !347, !nonnull !60 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !149, !noalias !376 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !147, !noalias !379 ; 2 uses
  %i.es = load double, ptr %i.ep, align 8, !tbaa !19, !noalias !379
  store double %i.es, ptr %6, align 16, !tbaa !19, !alias.scope !379
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.er
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !19, !noalias !379
  store double %i.ev, ptr %i.et, align 8, !tbaa !19, !alias.scope !379
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19, !noalias !382
  store double %i.ex, ptr %7, align 16, !tbaa !19, !alias.scope !382
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.er
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19, !noalias !382
  store double %i.fa, ptr %i.ey, align 8, !tbaa !19, !alias.scope !382
  invoke void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IdLi1ELi2ELi1ELi1ELi2EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fb = load ptr, ptr %5, align 8, !tbaa !16
  call void @free(ptr noundef %i.fb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %.pre119.pre = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fd = load ptr, ptr %5, align 8, !tbaa !16
  call void @free(ptr noundef %i.fd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.e, %bb.i
  %.pre119 = phi ptr [ %.pre119.pre, %bb.i ], [ %i.aw, %bb.e ] ; 2 uses
  %i.fe = phi i64 [ %.pre, %bb.i ], [ %i.av, %bb.e ] ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.fg = phi i64 [ %i.fe, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.pre119129 = phi ptr [ %.pre119, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.aw, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fh = load double, ptr %.pre119129, align 8, !tbaa !19 ; 5 uses
  %i.fi = icmp sgt i64 %i.fg, 1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread
  %i.fj = add nsw i64 %i.fg, -1                   ; 3 uses
  %xtraiter154 = and i64 %i.fj, 1
  %i.fk = icmp eq i64 %i.fg, 2
  br i1 %i.fk, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.fj, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.fh, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.fv, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.fl = phi double [ %i.fh, %.lr.ph.i.i.i.i.preheader.new ], [ %i.fu, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.fm = getelementptr [8 x i8], ptr %.pre119129, i64 %.02123.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !19 ; 3 uses
  %i.fo = fcmp ogt double %i.fn, %i.fl            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.fo, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.fo, double %i.fn, double %.sroa.7.0.i.i
  %i.fp = select i1 %i.fo, double %i.fn, double %i.fl ; 2 uses
  %i.fq = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.fr = getelementptr [8 x i8], ptr %.pre119129, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !19 ; 3 uses
  %i.ft = fcmp ogt double %i.fs, %i.fp            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ft, i64 %i.fq, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ft, double %i.fs, double %.sroa.7.1.i.i ; 3 uses
  %i.fu = select i1 %i.ft, double %i.fs, double %i.fp ; 2 uses
  %i.fv = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !291

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.fv, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %i.fu, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %i.fj to i1
  call void @llvm.assume(i1 %lcmp.mod158)
  %i.fw = getelementptr [8 x i8], ptr %.pre119129, i64 %.02123.i.i.i.i.epil.init
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !19 ; 2 uses
  %i.fy = fcmp ogt double %i.fx, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.fy, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.fy, double %i.fx, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.fz = trunc i64 %.sroa.0.1.i.i.lcssa to i32
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre119130 = phi ptr [ %.pre119, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %.pre119129, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.pre119129, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.0.2.i.i = phi i32 [ -1, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %i.fz, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.7.2.i.i = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.fh, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.sroa.7.1.i.i.lcssa, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @free(ptr noundef %.pre119130) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ga = add i32 %i.v, %.sroa.0.2.i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.f
  %.pn35 = phi { ptr, i32 } [ %i.el, %bb.f ], [ %i.em, %bb.g ], [ %i.fc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.gb = load ptr, ptr %3, align 8, !tbaa !16
  call void @free(ptr noundef %i.gb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn35

bb.l:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, %bb.a
  %.0 = phi i32 [ %i.ga, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ -1, %bb.a ] ; 2 uses
  %.029 = phi double [ %.sroa.7.2.i.i, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ 0.000000e+00, %bb.a ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !385, !nonnull !60, !align !61
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !19
  %i.gf = fcmp ugt double %.029, %i.ge
  br i1 %i.gf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gg = add nsw i32 %2, -1
  %.not = icmp eq i32 %1, %i.gg
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.gh = load ptr, ptr %0, align 8, !tbaa !386, !nonnull !60, !align !61
  %i.gi = xor i32 %1, -1
  %i.gj = add i32 %2, %i.gi
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !110, !noalias !387
  %i.gm = sext i32 %1 to i64
  %i.gn = getelementptr i8, ptr %i.gl, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 1      ; 4 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 0, %i.gp
  %i.gr = and i64 %i.gq, 15
  %i.gs = call noundef i64 @llvm.smin.i64(i64 %i.gr, i64 %i.gk) ; 7 uses
  %i.gt = sub nsw i64 %i.gk, %i.gs                ; 3 uses
  %i.gu = and i64 %i.gt, -16
  %i.gv = add i64 %i.gu, %i.gs                    ; 3 uses
  %i.gw = icmp sgt i64 %i.gs, 0
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 0, i64 %i.gs, i1 false), !tbaa !114
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = icmp sgt i64 %i.gt, 15
  br i1 %i.gx, label %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %scevgep = getelementptr i8, ptr %i.go, i64 %i.gs
  %i.gy = add nsw i64 %i.gs, 16
  %smax = call i64 @llvm.smax.i64(i64 %i.gv, i64 %i.gy)
  %i.gz = xor i64 %i.gs, -1
  %i.ha = add i64 %smax, %i.gz
  %i.hb = and i64 %i.ha, -16
  %i.hc = add i64 %i.hb, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.hc, i1 false), !tbaa !86
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %i.hd = icmp slt i64 %i.gv, %i.gk
  br i1 %i.hd, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.go, i64 %i.gv
  %i.he = and i64 %i.gt, 15
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.he, i1 false), !tbaa !114
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

bb.n:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !390, !nonnull !60, !align !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !49
  store i32 %.0, ptr %i.d, align 4, !tbaa !49
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !124
  %.not.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i, label %bb.o, label %_ZNKSt8functionIFviiEEclEii.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %bb.n
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !202
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !390, !nonnull !60, !align !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.0, ptr %i.a, align 4, !tbaa !49
  store i32 %2, ptr %i.b, align 4, !tbaa !49
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !124
  %.not.i.i38 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i38, label %bb.p, label %_ZNKSt8functionIFviiEEclEii.exit39

bb.p:                                             ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit39:               ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !202
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZNKSt8functionIFviiEEclEii.exit39
  ret void
}

declare void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IdLi1ELi2ELi1ELi1ELi2EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391, !nonnull !60, !align !61 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !60, !align !61 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.41.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.52.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.63.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.o = load ptr, ptr %0, align 8, !nonnull !60, !align !61 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.r = load i64, ptr %i.p, align 8, !tbaa !32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.u, %._crit_edge.i ] ; 2 uses
  %i.s = mul nsw i64 %.0810.i, %i.r
  %i.t = getelementptr [8 x i8], ptr %i.q, i64 %i.s
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.u = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.u, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !393

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.09.i = phi i64 [ 0, %.preheader.i ], [ %i.ap, %bb.c ] ; 6 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.09.i
  %.sroa.2.8.copyload.i.i.i.i.i.i = load ptr, ptr %i.n, align 8 ; 2 uses
  %.sroa.41.8.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.41.8..sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.52.8.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.52.8..sroa_idx.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.63.8.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.41.8.copyload.i.i.i.i.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.63.8.copyload.i.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !147
  %i.aa = getelementptr [8 x i8], ptr %.sroa.2.8.copyload.i.i.i.i.i.i, i64 %.09.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr [8 x i8], ptr %.sroa.52.8.copyload.i.i.i.i.i.i, i64 %.09.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !19
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %.sroa.2.8.copyload.i.i.i.i.i.i, i64 %i.x
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr [8 x i8], ptr %.sroa.52.8.copyload.i.i.i.i.i.i, i64 %i.z
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.09.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !19
  %i.am = fsub double %i.ai, %i.al                ; 2 uses
  %i.an = fmul double %i.am, %i.am
  %i.ao = fadd double %i.af, %i.an
  %.scalar.i.i.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ao)
  store double %.scalar.i.i.i.i.i, ptr %i.v, align 8, !tbaa !19
  %i.ap = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !394

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !306, !nonnull !60, !align !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.at, 0
  br i1 %i.az, label %.lr.ph60, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph60:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ba = lshr exact i64 %i.d, 3
  %i.bb = and i64 %i.ba, 1
  %i.bc = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.ar)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph60, %._crit_edge
  %.03459 = phi i64 [ 0, %.lr.ph60 ], [ %i.du, %._crit_edge ] ; 4 uses
  %.03558 = phi i64 [ %i.bc, %.lr.ph60 ], [ %.sroa.speculated, %._crit_edge ] ; 5 uses
  %i.be = sub nsw i64 %i.ar, %.03558              ; 2 uses
  %i.bf = and i64 %i.be, -2
  %i.bg = add nsw i64 %i.bf, %.03558              ; 3 uses
  %i.bh = icmp sgt i64 %.03558, 0
  br i1 %i.bh, label %.preheader51.loopexit, label %.preheader51

.preheader51.loopexit:                            ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !395, !nonnull !60, !align !61 ; 4 uses
  %.sroa.63.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.sroa.52.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %.sroa.41.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %0, align 8, !tbaa !396, !nonnull !60, !align !61 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = mul nsw i64 %i.bn, %.03459
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  %.sroa.2.8.copyload.i.i.i.i.i = load ptr, ptr %i.bj, align 8 ; 2 uses
  %.sroa.41.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.41.8..sroa_idx.i.i.i.i.i, align 8
  %.sroa.52.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.52.8..sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.63.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.41.8.copyload.i.i.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !147
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.63.8.copyload.i.i.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !147
  %i.bu = load double, ptr %.sroa.2.8.copyload.i.i.i.i.i, align 8, !tbaa !19
  %i.bv = load double, ptr %.sroa.52.8.copyload.i.i.i.i.i, align 8, !tbaa !19
  %i.bw = fsub double %i.bu, %i.bv                ; 2 uses
end_hunk_1
