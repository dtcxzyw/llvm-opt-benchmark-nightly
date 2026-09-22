Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN3igl4slim17compute_jacobiansERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE:bb.a
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1226, %vector.body1222 ] ; 2 uses
  %i.cak = add i64 %i.byy, %index1223             ; 2 uses
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cak ; 2 uses
  %i.cam = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cak ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 16
  %wide.load1224 = load <2 x double>, ptr %i.cam, align 8, !tbaa !40
  %wide.load1225 = load <2 x double>, ptr %i.can, align 8, !tbaa !40
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cal, i64 16
  store <2 x double> %wide.load1224, ptr %i.cal, align 8, !tbaa !40
  store <2 x double> %wide.load1225, ptr %i.cao, align 8, !tbaa !40
  %index.next1226 = add nuw i64 %index1223, 4     ; 2 uses
  %i.cap = icmp eq i64 %index.next1226, %n.vec1221
  br i1 %i.cap, label %middle.block1227, label %vector.body1222, !llvm.loop !317

middle.block1227:                                 ; preds = %vector.body1222
  %cmp.n1228 = icmp eq i64 %i.cag, %n.vec1221
  br i1 %cmp.n1228, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357:  ; preds = %vector.memcheck1216, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader, %middle.block1227
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph = phi i64 [ %i.byy, %vector.memcheck1216 ], [ %i.byy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader ], [ %i.caj, %middle.block1227 ] ; 4 uses
  %i.caq = sub i64 %i.bvu, %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph
  %xtraiter1458 = and i64 %i.caq, 3               ; 2 uses
  %lcmp.mod1459.not = icmp eq i64 %xtraiter1458, 0
  br i1 %lcmp.mod1459.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol = phi i64 [ %i.cau, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ] ; 3 uses
  %prol.iter1460 = phi i64 [ %prol.iter1460.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ]
  %i.car = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol
  %i.cas = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol
  %i.cat = load double, ptr %i.cas, align 8, !tbaa !40
  store double %i.cat, ptr %i.car, align 8, !tbaa !40
  %i.cau = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol, 1 ; 2 uses
  %prol.iter1460.next = add i64 %prol.iter1460, 1 ; 2 uses
  %prol.iter1460.cmp.not = icmp eq i64 %prol.iter1460.next, %xtraiter1458
  br i1 %prol.iter1460.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol, !llvm.loop !318

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ], [ %i.cau, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ]
  %i.cav = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %i.bvu
  %i.caw = icmp ugt i64 %i.cav, -4
  br i1 %i.caw, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199
  %.05.i18.i.i.i.i.i.i.i.i.i.i200 = phi i64 [ %i.cbm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit ] ; 6 uses
  %i.cax = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200
  %i.cay = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200
  %i.caz = load double, ptr %i.cay, align 8, !tbaa !40
  store double %i.caz, ptr %i.cax, align 8, !tbaa !40
  %i.cba = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 1 ; 2 uses
  %i.cbb = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cba
  %i.cbc = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cba
  %i.cbd = load double, ptr %i.cbc, align 8, !tbaa !40
  store double %i.cbd, ptr %i.cbb, align 8, !tbaa !40
  %i.cbe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 2 ; 2 uses
  %i.cbf = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cbe
  %i.cbg = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cbe
  %i.cbh = load double, ptr %i.cbg, align 8, !tbaa !40
  store double %i.cbh, ptr %i.cbf, align 8, !tbaa !40
  %i.cbi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 3 ; 2 uses
  %i.cbj = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cbi
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cbi
  %i.cbl = load double, ptr %i.cbk, align 8, !tbaa !40
  store double %i.cbl, ptr %i.cbj, align 8, !tbaa !40
  %i.cbm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i201.3 = icmp eq i64 %i.cbm, %i.bvu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i201.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199, !llvm.loop !319

.lr.ph.i.i.i.i.i.i.i.i.i.i202:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197, %.lr.ph.i.i.i.i.i.i.i.i.i.i202
  %.021.i.i.i.i.i.i.i.i.i.i203 = phi i64 [ %i.cbq, %.lr.ph.i.i.i.i.i.i.i.i.i.i202 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i196, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197 ] ; 3 uses
  %i.cbn = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.021.i.i.i.i.i.i.i.i.i.i203
  %i.cbo = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.021.i.i.i.i.i.i.i.i.i.i203
  %i.cbp = load <2 x double>, ptr %i.cbo, align 1, !tbaa !47
  store <2 x double> %i.cbp, ptr %i.cbn, align 16, !tbaa !47
  %i.cbq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i203, 2 ; 2 uses
  %i.cbr = icmp slt i64 %i.cbq, %i.byy
  br i1 %i.cbr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i202, label %._crit_edge.i.i.i.i.i.i.i.i.i.i198, !llvm.loop !203

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199, %middle.block1227, %._crit_edge.i.i.i.i.i.i.i.i.i.i198
  %i.cbs = load ptr, ptr %2, align 8, !tbaa !38
  call void @free(ptr noundef %i.cbs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit81
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl4slim36update_weights_and_closest_rotationsERNS_8SLIMDataERN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZN3igl4slim17compute_jacobiansERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load double, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.c, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix.293", align 16 ; 9 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %14 = alloca %"class.Eigen::Matrix.293", align 8 ; 13 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %19 = alloca %"class.Eigen::Matrix.293", align 8 ; 13 uses
  %20 = alloca %"class.Eigen::Matrix.181", align 16 ; 7 uses
  %21 = alloca %"class.Eigen::Matrix.181", align 16 ; 13 uses
  %i.a = ptrtoaddr ptr %21 to i64
  %22 = alloca %"class.Eigen::Matrix.181", align 16 ; 3 uses
  %23 = alloca %"class.Eigen::Matrix.181", align 16 ; 6 uses
  %24 = alloca %"class.Eigen::Matrix.181", align 16 ; 5 uses
  %25 = alloca %"class.Eigen::Matrix.191", align 16 ; 4 uses
  %26 = alloca %"class.Eigen::Matrix.201", align 16 ; 10 uses
  %27 = alloca %"class.Eigen::Matrix.246", align 8 ; 12 uses
  %28 = alloca %"class.Eigen::Matrix.246", align 8 ; 20 uses
  %i.b = ptrtoaddr ptr %28 to i64
  %29 = alloca %"class.Eigen::Matrix.246", align 8 ; 3 uses
  %30 = alloca %"class.Eigen::Matrix.246", align 16 ; 13 uses
  %31 = alloca %"class.Eigen::Matrix.246", align 8 ; 6 uses
  %32 = alloca %"class.Eigen::Matrix.256", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::Matrix.293", align 16 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph786, label %.loopexit

.lr.ph786:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph786, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349
  %indvars.iv788 = phi i64 [ 0, %.lr.ph786 ], [ %indvars.iv.next789, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349 ] ; 5 uses
  %i.u = phi i64 [ %i.g, %.lr.ph786 ], [ %i.iy, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349 ] ; 3 uses
  %i.v = shl i64 %indvars.iv788, 3
  %i.w = sub i64 %i.v, %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.x = load ptr, ptr %0, align 8, !tbaa !27
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv788 ; 4 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !40
  store double %i.z, ptr %20, align 16, !tbaa !40
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.u
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !40
  store double %i.ab, ptr %i.i, align 16, !tbaa !40
  %.idx782 = shl i64 %i.u, 4
  %i.ac = getelementptr i8, ptr %i.y, i64 %.idx782
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  store double %i.ad, ptr %i.j, align 8, !tbaa !40
  %.idx783 = mul i64 %i.u, 24
  %i.ae = getelementptr i8, ptr %i.y, i64 %.idx783
  %i.af = load double, ptr %i.ae, align 8, !tbaa !40
  store double %i.af, ptr %i.k, align 8, !tbaa !40
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 16 dereferenceable(32) %21, ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %23, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(32) %24)
  %i.ag = load <2 x double>, ptr %25, align 16, !tbaa !40 ; 22 uses
  switch i32 %1, label %bb.k [
    i32 5, label %bb.j
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %34 = extractelement <2 x double> %i.ag, i64 0  ; 2 uses
  %i.ah = call double @pow(double noundef %34, double noundef -3.000000e+00) #28
  %35 = extractelement <2 x double> %i.ag, i64 1  ; 4 uses
  %i.ai = call double @pow(double noundef %35, double noundef -3.000000e+00) #28
  %i.aj = fsub double %35, %i.ai
  %i.ak = fmul double %i.aj, 2.000000e+00
  %i.al = fcmp oeq double %34, 1.000000e+00
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ah, i64 0
  %i.ao = fsub <2 x double> %i.am, %i.an
  %i.ap = fmul <2 x double> %i.ao, splat (double 2.000000e+00) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = extractelement <2 x double> %i.ap, i64 1
  %i.as = fdiv double %i.aq, %i.ar
  %i.at = call double @sqrt(double noundef %i.as) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi double [ %i.at, %bb.d ], [ 4.000000e+00, %bb.c ] ; 2 uses
  %i.av = fcmp oeq double %35, 1.000000e+00
  br i1 %i.av, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = fadd double %35, -1.000000e+00
  %i.ax = fmul double %i.aw, 2.000000e+00
  %i.ay = fdiv double %i.ak, %i.ax
  %i.az = call double @sqrt(double noundef %i.ay) #28
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %36 = extractelement <2 x double> %i.ag, i64 0
  %i.ba = call double @log(double noundef %36) #28
  %37 = extractelement <2 x double> %i.ag, i64 1
  %38 = call double @log(double noundef %37) #28
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %38, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.ag
  %i.be = fmul <2 x double> %i.bd, splat (double 2.000000e+00)
  %39 = fadd <2 x double> %i.ag, splat (double -1.000000e+00)
  %i.bf = fmul <2 x double> %39, splat (double 2.000000e+00)
  %i.bg = fdiv <2 x double> %i.be, %i.bf          ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = call double @sqrt(double noundef %i.bh) #28
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = call double @sqrt(double noundef %i.bj) #28
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %40 = extractelement <2 x double> %i.ag, i64 0  ; 2 uses
  %i.bl = call double @pow(double noundef %40, double noundef 2.000000e+00) #28
  %41 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.bm = insertelement <2 x double> %41, double %i.bl, i64 1
  %i.bn = fmul <2 x double> %i.bm, splat (double 2.000000e+00)
  %42 = shufflevector <2 x double> %41, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.bo = fdiv <2 x double> %42, %i.bn            ; 2 uses
  %43 = extractelement <2 x double> %i.ag, i64 1  ; 2 uses
  %i.bp = call double @pow(double noundef %43, double noundef 2.000000e+00) #28
  %i.bq = insertelement <2 x double> %i.ag, double %i.bp, i64 1
  %i.br = fmul <2 x double> %i.bq, splat (double 2.000000e+00)
  %i.bs = shufflevector <2 x double> %i.ag, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.bt = fdiv <2 x double> %i.bs, %i.br          ; 2 uses
  %i.bu = fmul double %40, %43
  %i.bv = call double @sqrt(double noundef %i.bu) #28
  %i.bw = shufflevector <2 x double> %i.bo, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.bx = shufflevector <2 x double> %i.bo, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.by = fsub <2 x double> %i.bw, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = fsub <2 x double> %i.ag, %i.ca
  %i.cc = fmul <2 x double> %i.cb, splat (double 2.000000e+00)
  %i.cd = fdiv <2 x double> %i.by, %i.cc          ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = call double @sqrt(double noundef %i.ce) #28
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = call double @sqrt(double noundef %i.cg) #28
  %i.ci = load <2 x double>, ptr %24, align 16, !tbaa !40 ; 2 uses
  %i.cj = load <2 x double>, ptr %23, align 16, !tbaa !40
  %i.ck = fmul <2 x double> %i.ca, %i.cj          ; 2 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = load <2 x double>, ptr %i.m, align 16, !tbaa !40 ; 2 uses
  %i.cn = load <2 x double>, ptr %i.l, align 16, !tbaa !40
  %i.co = fmul <2 x double> %i.ca, %i.cn          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = fmul <2 x double> %i.ci, %i.cl
  %i.cr = fmul <2 x double> %i.cm, %i.cp
  %i.cs = fadd <2 x double> %i.cq, %i.cr
  %i.ct = fmul <2 x double> %i.ci, %i.ck
  %i.cu = fmul <2 x double> %i.cm, %i.co
  %i.cv = fadd <2 x double> %i.ct, %i.cu          ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  store double %i.cw, ptr %21, align 16, !tbaa !40
  store <2 x double> %i.cs, ptr %i.n, align 8, !tbaa !40
  %i.cx = extractelement <2 x double> %i.cv, i64 1
  store double %i.cx, ptr %i.o, align 8, !tbaa !40
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %44 = extractelement <2 x double> %i.ag, i64 0  ; 3 uses
  %i.cy = call double @pow(double noundef %44, double noundef -3.000000e+00) #28
  %45 = extractelement <2 x double> %i.ag, i64 1  ; 3 uses
  %i.cz = call double @pow(double noundef %45, double noundef -3.000000e+00) #28
  %i.da = call double @pow(double noundef %44, double noundef 2.000000e+00) #28
  %i.db = call double @pow(double noundef %45, double noundef 2.000000e+00) #28
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fmul double %44, 2.000000e+00
  %i.de = fmul double %i.dd, %45
  %i.df = fdiv double %i.dc, %i.de
  %i.dg = fmul double %2, %i.df
  %i.dh = call double @exp(double noundef %i.dg) #28
  %i.di = fmul double %2, %i.dh
  %i.dj = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cy, i64 0
  %i.dl = fsub <2 x double> %i.dj, %i.dk
  %i.dm = fmul <2 x double> %i.dl, splat (double 2.000000e+00) ; 2 uses
  %i.dn = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.do = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cz, i64 0
  %i.dp = fsub <2 x double> %i.dn, %i.do
  %i.dq = fmul <2 x double> %i.dp, splat (double 2.000000e+00) ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dm, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.ds = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dr, %i.dt
  %i.dv = shufflevector <2 x double> %i.dm, <2 x double> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.dw = fdiv <2 x double> %i.du, %i.dv          ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = call double @sqrt(double noundef %i.dx) #28
  %i.dz = extractelement <2 x double> %i.dw, i64 1
  %i.ea = call double @sqrt(double noundef %i.dz) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %46 = extractelement <2 x double> %i.ag, i64 0  ; 3 uses
  %i.eb = call double @pow(double noundef %46, double noundef -3.000000e+00) #28
  %47 = extractelement <2 x double> %i.ag, i64 1  ; 3 uses
  %i.ec = call double @pow(double noundef %47, double noundef -3.000000e+00) #28
  %i.ed = call double @pow(double noundef %46, double noundef 2.000000e+00) #28
  %i.ee = call double @pow(double noundef %46, double noundef -2.000000e+00) #28
  %i.ef = fadd double %i.ed, %i.ee
  %i.eg = call double @pow(double noundef %47, double noundef 2.000000e+00) #28
  %i.eh = fadd double %i.ef, %i.eg
  %i.ei = call double @pow(double noundef %47, double noundef -2.000000e+00) #28
  %i.ej = fadd double %i.eh, %i.ei
  %i.ek = fmul double %2, %i.ej
  %i.el = call double @exp(double noundef %i.ek) #28
  %i.em = fmul double %2, %i.el
  %i.en = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.eb, i64 0
  %i.ep = fsub <2 x double> %i.en, %i.eo
  %i.eq = fmul <2 x double> %i.ep, splat (double 2.000000e+00) ; 2 uses
  %i.er = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ec, i64 0
  %i.et = fsub <2 x double> %i.er, %i.es
  %i.eu = fmul <2 x double> %i.et, splat (double 2.000000e+00) ; 2 uses
  %i.ev = shufflevector <2 x double> %i.eq, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.ew = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.ev, %i.ex
  %i.ez = shufflevector <2 x double> %i.eq, <2 x double> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fa = fdiv <2 x double> %i.ey, %i.ez          ; 2 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0
  %i.fc = call double @sqrt(double noundef %i.fb) #28
  %i.fd = extractelement <2 x double> %i.fa, i64 1
  %i.fe = call double @sqrt(double noundef %i.fd) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.10796.0 = phi double [ 4.000000e+00, %bb.e ], [ %i.fe, %bb.j ], [ 1.000000e+00, %bb.b ], [ %i.bk, %bb.g ], [ %i.ch, %bb.h ], [ %i.ea, %bb.i ], [ %i.az, %bb.f ]
  %.sroa.0795.0 = phi double [ %i.au, %bb.e ], [ %i.fc, %bb.j ], [ 1.000000e+00, %bb.b ], [ %i.bi, %bb.g ], [ %i.cf, %bb.h ], [ %i.dy, %bb.i ], [ %i.au, %bb.f ]
  %i.ff = fadd <2 x double> %i.ag, splat (double -1.000000e+00)
  %i.fg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ff)
  %i.fh = fcmp olt <2 x double> %i.fg, splat (double 1.000000e-08)
  %i.fi = insertelement <2 x double> poison, double %.sroa.0795.0, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %.sroa.10796.0, i64 1
  %i.fk = select <2 x i1> %i.fh, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fj ; 2 uses
  %48 = load <2 x double>, ptr %23, align 16, !tbaa !40 ; 4 uses
  %49 = load <2 x double>, ptr %i.l, align 16, !tbaa !40 ; 4 uses
  %i.fl = shufflevector <2 x double> %48, <2 x double> %49, <2 x i32> <i32 0, i32 2>
  %i.fm = fmul <2 x double> %i.fl, %i.fk          ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x double> %48, %i.fn
  %i.fp = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %49, %i.fp
  %i.fr = fadd <2 x double> %i.fo, %i.fq
  %i.fs = shufflevector <2 x double> %48, <2 x double> %49, <2 x i32> <i32 1, i32 3>
  %i.ft = fmul <2 x double> %i.fk, %i.fs          ; 2 uses
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x double> %48, %i.fu
  %i.fw = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = fmul <2 x double> %49, %i.fw
  %i.fy = fadd <2 x double> %i.fv, %i.fx
  store <2 x double> %i.fr, ptr %26, align 16, !tbaa !47
  store <2 x double> %i.fy, ptr %i.p, align 16, !tbaa !47
  %i.fz = load ptr, ptr %3, align 8, !tbaa !27, !noalias !366
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv788 ; 6 uses
  %i.gb = load i64, ptr %i.q, align 8, !tbaa !66, !noalias !366 ; 7 uses
  %i.gc = load i64, ptr %i.r, align 8, !tbaa !29  ; 6 uses
  %i.gd = icmp sgt i64 %i.gb, 0
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.k
  %min.iters.check840 = icmp ugt i64 %i.gb, 3
  %ident.check838.not = icmp eq i64 %i.gc, 1
  %or.cond = select i1 %min.iters.check840, i1 %ident.check838.not, i1 false
  br i1 %or.cond, label %vector.ph841, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859

vector.ph841:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec842 = and i64 %i.gb, 9223372036854775804  ; 3 uses
  br label %vector.body843

vector.body843:                                   ; preds = %vector.body843, %vector.ph841
  %index844 = phi i64 [ 0, %vector.ph841 ], [ %index.next847, %vector.body843 ] ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %index844 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %index844 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load845 = load <2 x double>, ptr %i.gf, align 16, !tbaa !40
  %wide.load846 = load <2 x double>, ptr %i.gg, align 16, !tbaa !40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x double> %wide.load845, ptr %i.ge, align 8, !tbaa !40
  store <2 x double> %wide.load846, ptr %i.gh, align 8, !tbaa !40
  %index.next847 = add nuw i64 %index844, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next847, %n.vec842
  br i1 %i.gi, label %middle.block848, label %vector.body843, !llvm.loop !344

middle.block848:                                  ; preds = %vector.body843
  %cmp.n849 = icmp eq i64 %i.gb, %n.vec842
  br i1 %cmp.n849, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block848
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec842, %middle.block848 ] ; 3 uses
  %xtraiter865 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod866.not = icmp eq i64 %xtraiter865, 0
  br i1 %lcmp.mod866.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ] ; 3 uses
  %prol.iter867 = phi i64 [ %prol.iter867.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ]
  %i.gj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.gc
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !40
  store double %i.gm, ptr %i.gk, align 8, !tbaa !40
  %i.gn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter867.next = add i64 %prol.iter867, 1   ; 2 uses
  %prol.iter867.cmp.not = icmp eq i64 %prol.iter867.next, %xtraiter865
  br i1 %prol.iter867.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.go = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.gb
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gc
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !40
  store double %i.gt, ptr %i.gr, align 8, !tbaa !40
  %i.gu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gv = mul nsw i64 %i.gu, %i.gc
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.gu
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !40
  store double %i.gy, ptr %i.gw, align 8, !tbaa !40
  %i.gz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ha = mul nsw i64 %i.gz, %i.gc
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.gz
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !40
  store double %i.hd, ptr %i.hb, align 8, !tbaa !40
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hf = mul nsw i64 %i.he, %i.gc
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.he
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !40
  store double %i.hi, ptr %i.hg, align 8, !tbaa !40
  %i.hj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hj, %i.gb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !346

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block848, %bb.k
  %i.hk = load ptr, ptr %4, align 8, !tbaa !27, !noalias !367 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv788 ; 6 uses
  %i.hn = load i64, ptr %i.s, align 8, !tbaa !66, !noalias !367 ; 7 uses
  %i.ho = load i64, ptr %i.t, align 8, !tbaa !29  ; 6 uses
  %i.hp = icmp sgt i64 %i.hn, 0
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %min.iters.check826 = icmp ugt i64 %i.hn, 5
  %ident.check822.not = icmp eq i64 %i.ho, 1
  %or.cond851 = select i1 %min.iters.check826, i1 %ident.check822.not, i1 false
  br i1 %or.cond851, label %vector.memcheck823, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

vector.memcheck823:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader
  %i.hq = add i64 %i.w, %i.hl
  %i.hr = add i64 %i.hq, -1
  %diff.check824 = icmp ult i64 %i.hr, 31
  br i1 %diff.check824, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, label %vector.ph827

vector.ph827:                                     ; preds = %vector.memcheck823
  %n.vec828 = and i64 %i.hn, 9223372036854775804  ; 3 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next833, %vector.body829 ] ; 3 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %index830 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index830 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load831 = load <2 x double>, ptr %i.ht, align 16, !tbaa !40
  %wide.load832 = load <2 x double>, ptr %i.hu, align 16, !tbaa !40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x double> %wide.load831, ptr %i.hs, align 8, !tbaa !40
  store <2 x double> %wide.load832, ptr %i.hv, align 8, !tbaa !40
  %index.next833 = add nuw i64 %index830, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next833, %n.vec828
  br i1 %i.hw, label %middle.block834, label %vector.body829, !llvm.loop !349

middle.block834:                                  ; preds = %vector.body829
  %cmp.n835 = icmp eq i64 %i.hn, %n.vec828
  br i1 %cmp.n835, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858:       ; preds = %vector.memcheck823, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, %middle.block834
  %.05.i.i.i.i.i.i.i.i.i.i347.ph = phi i64 [ 0, %vector.memcheck823 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader ], [ %n.vec828, %middle.block834 ] ; 3 uses
  %xtraiter868 = and i64 %i.hn, 3                 ; 2 uses
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  br i1 %lcmp.mod869.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol
  %.05.i.i.i.i.i.i.i.i.i.i347.prol = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ] ; 3 uses
  %prol.iter870 = phi i64 [ %prol.iter870.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ]
  %i.hx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, %i.ho
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !40
  store double %i.ia, ptr %i.hy, align 8, !tbaa !40
  %i.ib = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, 1 ; 2 uses
  %prol.iter870.next = add i64 %prol.iter870, 1   ; 2 uses
  %prol.iter870.cmp.not = icmp eq i64 %prol.iter870.next, %xtraiter868
  br i1 %prol.iter870.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, !llvm.loop !350

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858
  %.05.i.i.i.i.i.i.i.i.i.i347.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ]
  %i.ic = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.ph, %i.hn
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i.i.i.i.i346:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i346
  %.05.i.i.i.i.i.i.i.i.i.i347 = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i.i.i.i.i346 ], [ %.05.i.i.i.i.i.i.i.i.i.i347.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit ] ; 6 uses
  %i.ie = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, %i.ho
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !40
  store double %i.ih, ptr %i.if, align 8, !tbaa !40
  %i.ii = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 1 ; 2 uses
  %i.ij = mul nsw i64 %i.ii, %i.ho
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.ii
  %i.im = load double, ptr %i.il, align 8, !tbaa !40
  store double %i.im, ptr %i.ik, align 8, !tbaa !40
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 2 ; 2 uses
  %i.io = mul nsw i64 %i.in, %i.ho
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.in
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !40
  store double %i.ir, ptr %i.ip, align 8, !tbaa !40
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 3 ; 2 uses
  %i.it = mul nsw i64 %i.is, %i.ho
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.it
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.is
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !40
  store double %i.iw, ptr %i.iu, align 8, !tbaa !40
  %i.ix = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i348.3 = icmp eq i64 %i.ix, %i.hn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i348.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346, !llvm.loop !351

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i346, %middle.block834, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1 ; 2 uses
  %i.iy = load i64, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.iz = icmp sgt i64 %i.iy, %indvars.iv.next789
end_hunk_0
