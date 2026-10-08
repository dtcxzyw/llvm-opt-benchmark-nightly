Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ramer_douglas_peucker?download=true
inline.NumInlined: 3863
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZZN3igl21ramer_douglas_peuckerIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EEENKUliiE_clEii:bb.a
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %.05.i.i.i.i.i.i.i.i50.prol
  %i.hu = mul nsw i64 %.05.i.i.i.i.i.i.i.i50.prol, %i.hi
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !28
  store double %i.hw, ptr %i.ht, align 8, !tbaa !28
  %i.hx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50.prol, 1 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i49.prol, !llvm.loop !275

.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol, %.lr.ph.i.i.i.i.i.i.i.i49.preheader215
  %.05.i.i.i.i.i.i.i.i50.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i.i.i.i49.preheader215 ], [ %i.hx, %.lr.ph.i.i.i.i.i.i.i.i49.prol ]
  %i.hy = sub nsw i64 %.05.i.i.i.i.i.i.i.i50.ph, %.pr.i.i.i.i.i.i.i47
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54, label %.lr.ph.i.i.i.i.i.i.i.i49

.lr.ph.i.i.i.i.i.i.i.i49:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i49
  %.05.i.i.i.i.i.i.i.i50 = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i49 ], [ %.05.i.i.i.i.i.i.i.i50.unr, %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %.05.i.i.i.i.i.i.i.i50
  %i.ib = mul nsw i64 %.05.i.i.i.i.i.i.i.i50, %i.hi
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !28
  store double %i.id, ptr %i.ia, align 8, !tbaa !28
  %i.ie = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.ie
  %i.ig = mul nsw i64 %i.ie, %i.hi
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !28
  store double %i.ii, ptr %i.if, align 8, !tbaa !28
  %i.ij = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 2 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.ij
  %i.il = mul nsw i64 %i.ij, %i.hi
  %i.im = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !28
  store double %i.in, ptr %i.ik, align 8, !tbaa !28
  %i.io = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 3 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i48, i64 %i.io
  %i.iq = mul nsw i64 %i.io, %i.hi
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !28
  store double %i.is, ptr %i.ip, align 8, !tbaa !28
  %i.it = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i50, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i51.3 = icmp eq i64 %i.it, %.pr.i.i.i.i.i.i.i47
  br i1 %exitcond.not.i.i.i.i.i.i.i.i51.3, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54, label %.lr.ph.i.i.i.i.i.i.i.i49, !llvm.loop !276

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i46
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body52

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54: ; preds = %.lr.ph.i.i.i.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i49, %middle.block211, %bb.l, %.loopexit
  invoke void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54
  %i.iv = load ptr, ptr %7, align 8, !tbaa !106
  call void @free(ptr noundef %i.iv) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.iw = load ptr, ptr %6, align 8, !tbaa !106
  call void @free(ptr noundef %i.iw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ix = load ptr, ptr %5, align 8, !tbaa !25
  call void @free(ptr noundef %i.ix) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre151 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.pre152.pre = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.o:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv.exit54
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.body52:                                          ; preds = %bb.m, %bb.o
  %.pn = phi { ptr, i32 } [ %i.iy, %bb.o ], [ %i.iu, %bb.m ]
  %i.iz = load ptr, ptr %7, align 8, !tbaa !106
  call void @free(ptr noundef %i.iz) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ja = load ptr, ptr %6, align 8, !tbaa !106
  call void @free(ptr noundef %i.ja) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !25
  br label %.body

.body:                                            ; preds = %bb.k, %.body52
  %i.jb = phi ptr [ %.pre, %.body52 ], [ null, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body52 ], [ %i.gz, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @free(ptr noundef %i.jb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.f, %bb.n
  %.pre152 = phi ptr [ %i.bz, %bb.f ], [ %.pre152.pre, %bb.n ] ; 2 uses
  %i.jc = phi i64 [ %i.by, %bb.f ], [ %.pre151, %bb.n ] ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.je = phi i64 [ %i.jc, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.by, %middle.block ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.pre152167 = phi ptr [ %.pre152, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.bz, %middle.block ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSD_ISF_Li1ELin1ELb0EEELin1ELi1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jf = load double, ptr %.pre152167, align 8, !tbaa !28 ; 5 uses
  %i.jg = icmp sgt i64 %i.je, 1
  br i1 %i.jg, label %.lr.ph.i.i.i.i55.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

.lr.ph.i.i.i.i55.preheader:                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread
  %i.jh = add nsw i64 %i.je, -1                   ; 3 uses
  %xtraiter235 = and i64 %i.jh, 1
  %i.ji = icmp eq i64 %i.je, 2
  br i1 %i.ji, label %.lr.ph.i.i.i.i55.epil.preheader, label %.lr.ph.i.i.i.i55.preheader.new

.lr.ph.i.i.i.i55.preheader.new:                   ; preds = %.lr.ph.i.i.i.i55.preheader
  %unroll_iter240 = and i64 %i.jh, -2
  br label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %.lr.ph.i.i.i.i55, %.lr.ph.i.i.i.i55.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i55 ]
  %.sroa.7.0.i.i = phi double [ %i.jf, %.lr.ph.i.i.i.i55.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i55 ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i55.preheader.new ], [ %i.jt, %.lr.ph.i.i.i.i55 ] ; 4 uses
  %i.jj = phi double [ %i.jf, %.lr.ph.i.i.i.i55.preheader.new ], [ %i.js, %.lr.ph.i.i.i.i55 ] ; 2 uses
  %niter241 = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader.new ], [ %niter241.next.1, %.lr.ph.i.i.i.i55 ]
  %i.jk = getelementptr [8 x i8], ptr %.pre152167, i64 %.02123.i.i.i.i
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !28 ; 3 uses
  %i.jm = fcmp ogt double %i.jl, %i.jj            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.jm, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.jm, double %i.jl, double %.sroa.7.0.i.i
  %i.jn = select i1 %i.jm, double %i.jl, double %i.jj ; 2 uses
  %i.jo = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.pre152167, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !28 ; 3 uses
  %i.jr = fcmp ogt double %i.jq, %i.jn            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.jr, i64 %i.jo, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.jr, double %i.jq, double %.sroa.7.1.i.i ; 3 uses
  %i.js = select i1 %i.jr, double %i.jq, double %i.jn ; 2 uses
  %i.jt = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter241.next.1 = add nuw i64 %niter241, 2     ; 2 uses
  %niter241.ncmp.1 = icmp eq i64 %niter241.next.1, %unroll_iter240
  br i1 %niter241.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i55, !llvm.loop !7

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i55
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, label %.lr.ph.i.i.i.i55.epil.preheader

.lr.ph.i.i.i.i55.epil.preheader:                  ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i55.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i55.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.jf, %.lr.ph.i.i.i.i55.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i55.preheader ], [ %i.jt, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.jf, %.lr.ph.i.i.i.i55.preheader ], [ %i.js, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod239 = trunc i64 %i.jh to i1
  call void @llvm.assume(i1 %lcmp.mod239)
  %i.ju = getelementptr [8 x i8], ptr %.pre152167, i64 %.02123.i.i.i.i.epil.init
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !28 ; 2 uses
  %i.jw = fcmp ogt double %i.jv, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.jw, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.jw, double %i.jv, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i55.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i55.epil.preheader ]
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i55.epil.preheader ]
  %i.jx = trunc i64 %.sroa.0.1.i.i.lcssa to i32
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre152168 = phi ptr [ %.pre152, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %.pre152167, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.pre152167, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.0.2.i.i = phi i32 [ -1, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %i.jx, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.7.2.i.i = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.jf, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELin1ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.sroa.7.1.i.i.lcssa, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @free(ptr noundef %.pre152168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.jy = add i32 %i.az, %.sroa.0.2.i.i
  br label %bb.q

bb.p:                                             ; preds = %.body, %bb.h, %bb.g
  %.pn37 = phi { ptr, i32 } [ %i.fe, %bb.g ], [ %i.ff, %bb.h ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.jz = load ptr, ptr %3, align 8, !tbaa !25
  call void @free(ptr noundef %i.jz) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn37

bb.q:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, %bb.a
  %.0 = phi i32 [ %i.jy, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ -1, %bb.a ] ; 2 uses
  %.030 = phi double [ %.sroa.7.2.i.i, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ 0.000000e+00, %bb.a ]
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !297, !nonnull !61, !align !62
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !28
  %i.kd = fcmp ugt double %.030, %i.kc
  br i1 %i.kd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ke = add nsw i32 %2, -1
  %.not = icmp eq i32 %1, %i.ke
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.kf = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !61, !align !62
  %i.kg = xor i32 %1, -1
  %i.kh = add i32 %2, %i.kg
  %i.ki = sext i32 %i.kh to i64                   ; 3 uses
  %i.kj = load ptr, ptr %i.kf, align 8, !tbaa !72, !noalias !299
  %i.kk = sext i32 %1 to i64
  %i.kl = getelementptr i8, ptr %i.kj, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 1      ; 4 uses
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 0, %i.kn
  %i.kp = and i64 %i.ko, 15
  %i.kq = call noundef i64 @llvm.smin.i64(i64 %i.kp, i64 %i.ki) ; 7 uses
  %i.kr = sub nsw i64 %i.ki, %i.kq                ; 3 uses
  %i.ks = and i64 %i.kr, -16
  %i.kt = add i64 %i.ks, %i.kq                    ; 3 uses
  %i.ku = icmp sgt i64 %i.kq, 0
  br i1 %i.ku, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.km, i8 0, i64 %i.kq, i1 false), !tbaa !75
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  %i.kv = icmp sgt i64 %i.kr, 15
  br i1 %i.kv, label %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %scevgep = getelementptr i8, ptr %i.km, i64 %i.kq
  %i.kw = add nsw i64 %i.kq, 16
  %smax = call i64 @llvm.smax.i64(i64 %i.kt, i64 %i.kw)
  %i.kx = xor i64 %i.kq, -1
  %i.ky = add i64 %smax, %i.kx
  %i.kz = and i64 %i.ky, -16
  %i.la = add i64 %i.kz, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.la, i1 false), !tbaa !69
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %i.lb = icmp slt i64 %i.kt, %i.ki
  br i1 %i.lb, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.km, i64 %i.kt
  %i.lc = and i64 %i.kr, 15
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.lc, i1 false), !tbaa !75
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

bb.s:                                             ; preds = %bb.q
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !300, !nonnull !61, !align !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !50
  store i32 %.0, ptr %i.d, align 4, !tbaa !50
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !85
  %.not.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i, label %bb.t, label %_ZNKSt8functionIFviiEEclEii.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %bb.s
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !99
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(32) %i.le, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.lj = load ptr, ptr %i.ld, align 8, !tbaa !300, !nonnull !61, !align !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.0, ptr %i.a, align 4, !tbaa !50
  store i32 %2, ptr %i.b, align 4, !tbaa !50
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !85
  %.not.i.i57 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i57, label %bb.u, label %_ZNKSt8functionIFviiEEclEii.exit58

bb.u:                                             ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit58:               ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !99
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(32) %i.lj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !6
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !25
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !26
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !105
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !106
  br label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !105
  ret void
}

; Function Attrs: nobuiltin nounwind
end_hunk_0
begin_hunk_1_@_ZZN3igl21ramer_douglas_peuckerIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EEENKUliiE_clEii:bb.a
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i
  %i.ds = getelementptr [8 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !28
  %i.du = load double, ptr %i.as, align 8, !tbaa !28
  %i.dv = fsub double %i.dt, %i.du                ; 2 uses
  %i.dw = fmul double %i.dv, %i.dv
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ds, i64 %i.ay
  %i.dx = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.dy = load double, ptr %i.bb, align 8, !tbaa !28
  %i.dz = fsub double %i.dx, %i.dy                ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = fadd double %i.dw, %i.ea
  store double %i.eb, ptr %i.dr, align 8, !tbaa !28
  %i.ec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.ab, i64 %i.ec ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !28
  %i.eg = load double, ptr %i.as, align 8, !tbaa !28
  %i.eh = fsub double %i.ef, %i.eg                ; 2 uses
  %i.ei = fmul double %i.eh, %i.eh
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.ee, i64 %i.ay
  %i.ej = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.ek = load double, ptr %i.bb, align 8, !tbaa !28
  %i.el = fsub double %i.ej, %i.ek                ; 2 uses
  %i.em = fmul double %i.el, %i.el
  %i.en = fadd double %i.ei, %i.em
  store double %i.en, ptr %i.ed, align 8, !tbaa !28
  %i.eo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.eo, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !362

bb.f:                                             ; preds = %bb.b
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !372, !nonnull !61 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !91, !noalias !386 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !90, !noalias !387 ; 2 uses
  %i.ew = load double, ptr %i.et, align 8, !tbaa !28, !noalias !387
  store double %i.ew, ptr %6, align 16, !tbaa !28, !alias.scope !387
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ev
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !28, !noalias !387
  store double %i.ez, ptr %i.ex, align 8, !tbaa !28, !alias.scope !387
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !28, !noalias !388
  store double %i.fb, ptr %7, align 16, !tbaa !28, !alias.scope !388
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ev
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !28, !noalias !388
  store double %i.fe, ptr %i.fc, align 8, !tbaa !28, !alias.scope !388
  invoke void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IdLi1ELi2ELi1ELi1ELi2EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ff = load ptr, ptr %5, align 8, !tbaa !25
  call void @free(ptr noundef %i.ff) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.pre119.pre = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fh = load ptr, ptr %5, align 8, !tbaa !25
  call void @free(ptr noundef %i.fh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.e, %bb.i
  %.pre119 = phi ptr [ %.pre119.pre, %bb.i ], [ %i.aw, %bb.e ] ; 2 uses
  %i.fi = phi i64 [ %.pre, %bb.i ], [ %i.av, %bb.e ] ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.fk = phi i64 [ %i.fi, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.pre119129 = phi ptr [ %.pre119, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.aw, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fl = load double, ptr %.pre119129, align 8, !tbaa !28 ; 5 uses
  %i.fm = icmp sgt i64 %i.fk, 1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread
  %i.fn = add nsw i64 %i.fk, -1                   ; 3 uses
  %xtraiter165 = and i64 %i.fn, 1
  %i.fo = icmp eq i64 %i.fk, 2
  br i1 %i.fo, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.fn, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.fl, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.fz, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.fp = phi double [ %i.fl, %.lr.ph.i.i.i.i.preheader.new ], [ %i.fy, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.fq = getelementptr [8 x i8], ptr %.pre119129, i64 %.02123.i.i.i.i
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !28 ; 3 uses
  %i.fs = fcmp ogt double %i.fr, %i.fp            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.fs, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.fs, double %i.fr, double %.sroa.7.0.i.i
  %i.ft = select i1 %i.fs, double %i.fr, double %i.fp ; 2 uses
  %i.fu = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.fv = getelementptr [8 x i8], ptr %.pre119129, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !28 ; 3 uses
  %i.fx = fcmp ogt double %i.fw, %i.ft            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.fx, i64 %i.fu, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.fx, double %i.fw, double %.sroa.7.1.i.i ; 3 uses
  %i.fy = select i1 %i.fx, double %i.fw, double %i.ft ; 2 uses
  %i.fz = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.fl, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.fz, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.fl, %.lr.ph.i.i.i.i.preheader ], [ %i.fy, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.fn to i1
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.ga = getelementptr [8 x i8], ptr %.pre119129, i64 %.02123.i.i.i.i.epil.init
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !28 ; 2 uses
  %i.gc = fcmp ogt double %i.gb, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.gc, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.gc, double %i.gb, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.gd = trunc i64 %.sroa.0.1.i.i.lcssa to i32
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre119130 = phi ptr [ %.pre119, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %.pre119129, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.pre119129, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.0.2.i.i = phi i32 [ -1, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %i.gd, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  %.sroa.7.2.i.i = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ %i.fl, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS5_20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEKNS_9ReplicateINSB_ISD_Li1ELi2ELb0EEELin1ELi1EEEEEEENS5_10member_sumIddEELi1EEEEERS1_RKNS_9DenseBaseIT_EE.exit.thread ], [ %.sroa.7.1.i.i.lcssa, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @free(ptr noundef %.pre119130) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ge = add i32 %i.v, %.sroa.0.2.i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.f
  %.pn35 = phi { ptr, i32 } [ %i.ep, %bb.f ], [ %i.eq, %bb.g ], [ %i.fg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.gf = load ptr, ptr %3, align 8, !tbaa !25
  call void @free(ptr noundef %i.gf) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn35

bb.l:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit, %bb.a
  %.0 = phi i32 [ %i.ge, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ -1, %bb.a ] ; 2 uses
  %.029 = phi double [ %.sroa.7.2.i.i, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffIlEEdPT_.exit ], [ 0.000000e+00, %bb.a ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !389, !nonnull !61, !align !62
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !28
  %i.gj = fcmp ugt double %.029, %i.gi
  br i1 %i.gj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gk = add nsw i32 %2, -1
  %.not = icmp eq i32 %1, %i.gk
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.gl = load ptr, ptr %0, align 8, !tbaa !390, !nonnull !61, !align !62
  %i.gm = xor i32 %1, -1
  %i.gn = add i32 %2, %i.gm
  %i.go = sext i32 %i.gn to i64                   ; 3 uses
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !72, !noalias !391
  %i.gq = sext i32 %1 to i64
  %i.gr = getelementptr i8, ptr %i.gp, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 1      ; 4 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 0, %i.gt
  %i.gv = and i64 %i.gu, 15
  %i.gw = call noundef i64 @llvm.smin.i64(i64 %i.gv, i64 %i.go) ; 7 uses
  %i.gx = sub nsw i64 %i.go, %i.gw                ; 3 uses
  %i.gy = and i64 %i.gx, -16
  %i.gz = add i64 %i.gy, %i.gw                    ; 3 uses
  %i.ha = icmp sgt i64 %i.gw, 0
  br i1 %i.ha, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 0, i64 %i.gw, i1 false), !tbaa !75
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i
  %i.hb = icmp sgt i64 %i.gx, 15
  br i1 %i.hb, label %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %scevgep = getelementptr i8, ptr %i.gs, i64 %i.gw
  %i.hc = add nsw i64 %i.gw, 16
  %smax = call i64 @llvm.smax.i64(i64 %i.gz, i64 %i.hc)
  %i.hd = xor i64 %i.gw, -1
  %i.he = add i64 %smax, %i.hd
  %i.hf = and i64 %i.he, -16
  %i.hg = add i64 %i.hf, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.hg, i1 false), !tbaa !69
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph46.i.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = icmp slt i64 %i.gz, %i.go
  br i1 %i.hh, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gs, i64 %i.gz
  %i.hi = and i64 %i.gx, 15
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.hi, i1 false), !tbaa !75
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE11setConstantERKb.exit

bb.n:                                             ; preds = %bb.l
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !392, !nonnull !61, !align !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !50
  store i32 %.0, ptr %i.d, align 4, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !85
  %.not.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i, label %bb.o, label %_ZNKSt8functionIFviiEEclEii.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %bb.n
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !99
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !392, !nonnull !61, !align !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.0, ptr %i.a, align 4, !tbaa !50
  store i32 %2, ptr %i.b, align 4, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !85
  %.not.i.i38 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i38, label %bb.p, label %_ZNKSt8functionIFviiEEclEii.exit39

bb.p:                                             ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviiEEclEii.exit39:               ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !99
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(32) %i.hp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !6
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !399, !nonnull !61, !align !62 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !61, !align !62 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.41.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.52.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.63.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_IKNS5_IdLin1ELi2ELi0ELin1ELi2EEELin1ELi2ELb0EEESL_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.o = load ptr, ptr %0, align 8, !nonnull !61, !align !62 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
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
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.63.8.copyload.i.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !90
  %i.aa = getelementptr [8 x i8], ptr %.sroa.2.8.copyload.i.i.i.i.i.i, i64 %.09.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr [8 x i8], ptr %.sroa.52.8.copyload.i.i.i.i.i.i, i64 %.09.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !28
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %.sroa.2.8.copyload.i.i.i.i.i.i, i64 %i.x
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !28
  %i.aj = getelementptr [8 x i8], ptr %.sroa.52.8.copyload.i.i.i.i.i.i, i64 %i.z
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.09.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !28
  %i.am = fsub double %i.ai, %i.al                ; 2 uses
  %i.an = fmul double %i.am, %i.am
  %i.ao = fadd double %i.af, %i.an
  %.scalar.i.i.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ao)
  store double %.scalar.i.i.i.i.i, ptr %i.v, align 8, !tbaa !28
  %i.ap = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !394

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !34 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !34 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !107, !nonnull !61, !align !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
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
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !400, !nonnull !61, !align !62 ; 4 uses
  %.sroa.63.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.sroa.52.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %.sroa.41.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %0, align 8, !tbaa !401, !nonnull !61, !align !62 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bo = mul nsw i64 %i.bn, %.03459
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  %.sroa.2.8.copyload.i.i.i.i.i = load ptr, ptr %i.bj, align 8 ; 2 uses
  %.sroa.41.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.41.8..sroa_idx.i.i.i.i.i, align 8
  %.sroa.52.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.52.8..sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.63.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.41.8.copyload.i.i.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !90
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.63.8.copyload.i.i.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !90
  %i.bu = load double, ptr %.sroa.2.8.copyload.i.i.i.i.i, align 8, !tbaa !28
  %i.bv = load double, ptr %.sroa.52.8.copyload.i.i.i.i.i, align 8, !tbaa !28
  %i.bw = fsub double %i.bu, %i.bv                ; 2 uses
end_hunk_1
