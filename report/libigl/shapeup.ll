inline.NumInlined: 5991
inline.NumDeleted: 2888
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3igl31shapeup_regular_face_projectionERKN5Eigen10MatrixBaseINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKNS1_INS2_IiLin1ELi1ELi0ELin1ELi1EEEEERKNS1_INS2_IiLin1ELin1ELi0ELin1ELin1EEEEERNS0_15PlainObjectBaseIS3_EE:bb.a
  %i.vo = getelementptr [8 x i8], ptr %i.ts, i64 %i.vn
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !35
  %i.vq = getelementptr [8 x i8], ptr %i.um, i64 %i.vm
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !35
  %i.vs = fmul double %i.vp, %i.vr
  %i.vt = fadd double %i.vl, %i.vs
  %i.vu = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.vv = mul nsw i64 %i.vu, %i.up
  %i.vw = getelementptr [8 x i8], ptr %i.ts, i64 %i.vv
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !35
  %i.vy = getelementptr [8 x i8], ptr %i.um, i64 %i.vu
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !35
  %i.wa = fmul double %i.vx, %i.vz
  %i.wb = fadd double %i.vt, %i.wa                ; 3 uses
  %i.wc = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter689.next.3 = add i64 %niter689, 4         ; 2 uses
  %niter689.ncmp.3 = icmp eq i64 %niter689.next.3, %unroll_iter688
  br i1 %niter689.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !124

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wc, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.us, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod687 = icmp ne i64 %xtraiter684, 0
  call void @llvm.assume(i1 %lcmp.mod687)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.wk, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.wj, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.wd = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.i.epil, %i.up
  %i.we = getelementptr [8 x i8], ptr %i.ts, i64 %i.wd
  %i.wf = load double, ptr %i.we, align 8, !tbaa !35
  %i.wg = getelementptr [8 x i8], ptr %i.um, i64 %.01724.i.i.i.i.i.i.i.i.i.epil
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !35
  %i.wi = fmul double %i.wf, %i.wh
  %i.wj = fadd double %.02223.i.i.i.i.i.i.i.i.i.epil, %i.wi ; 2 uses
  %i.wk = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter684
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !125

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.ao ], [ %i.us, %bb.ap ], [ %i.wb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.wj, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ]
  %i.wl = load double, ptr %i.uh, align 8, !tbaa !35
  %i.wm = fadd double %.0.i.i.i.i.i.i.i, %i.wl
  store double %i.wm, ptr %i.uh, align 8, !tbaa !35
  br label %.preheader.lr.ph.split.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.ts, ptr %6, align 8
  store i64 %i.tt, ptr %.sroa.7179.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.8180.0..sroa_idx, align 8
  store i64 %indvars.iv455, ptr %.sroa.10181.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.11182.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.12183.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.cy, ptr %4, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %16, ptr %5, align 8
  invoke void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS6_Li1ELin1ELb0EEEEENS4_INS5_IdLi1ELin1ELi1ELi1ELin1EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc.i157 unwind label %bb.ar

.noexc.i157:                                      ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !128
  %.pre463 = load ptr, ptr %i.cy, align 8, !tbaa !120
  br label %.preheader.lr.ph.split.i.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.body158

.preheader.lr.ph.split.i.i.i.i.i.i.i.i.i.i:       ; preds = %.noexc.i157, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i
  %i.wo = phi ptr [ %.pre463, %.noexc.i157 ], [ %i.uh, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i ]
  %i.wp = phi ptr [ %.pre, %.noexc.i157 ], [ %i.uh, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKS3_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store double %i.tj, ptr %i.da, align 8, !tbaa !130
  %i.wq = load i64, ptr %i.cw, align 8, !tbaa !34 ; 2 uses
  %i.wr = load double, ptr %i.wp, align 8, !tbaa !35
  %i.ws = fmul double %i.tj, %i.wr
  store double %i.ws, ptr %i.tz, align 8, !tbaa !35
  %i.wt = getelementptr [8 x i8], ptr %i.tz, i64 %i.wq
  %i.wu = getelementptr i8, ptr %i.wp, i64 8
  %i.wv = load double, ptr %i.da, align 8, !tbaa !130
  %i.ww = load double, ptr %i.wu, align 8, !tbaa !35
  %i.wx = fmul double %i.wv, %i.ww
  store double %i.wx, ptr %i.wt, align 8, !tbaa !35
  %.idx509 = shl i64 %i.wq, 4
  %i.wy = getelementptr i8, ptr %i.tz, i64 %.idx509
  %i.wz = getelementptr i8, ptr %i.wp, i64 16
  %i.xa = load double, ptr %i.da, align 8, !tbaa !130
  %i.xb = load double, ptr %i.wz, align 8, !tbaa !35
  %i.xc = fmul double %i.xa, %i.xb
  store double %i.xc, ptr %i.wy, align 8, !tbaa !35
  call void @free(ptr noundef %i.wo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !132

.body158:                                         ; preds = %bb.ar, %bb.an
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.uk, %bb.an ], [ %i.wn, %bb.ar ]
  %i.xd = load ptr, ptr %i.cy, align 8, !tbaa !120
  call void @free(ptr noundef %i.xd) #27
  call void @free(ptr noundef %.sroa.0338.0529) #27
  br label %.body118

.body118:                                         ; preds = %bb.ab, %.body158
  %.sroa.0332.0347 = phi ptr [ %.sroa.0332.0346526, %.body158 ], [ %i.mt, %bb.ab ]
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %.body158 ], [ %i.na, %bb.ab ]
  call void @free(ptr noundef %.sroa.0332.0347) #27
  br label %.body107

.body107:                                         ; preds = %.body118, %bb.z, %bb.w
  %.pn71.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.w ], [ %.pn71.pn.pn.pn, %.body118 ], [ %i.mw, %bb.z ]
  %i.xe = load ptr, ptr %16, align 8, !tbaa !28
  call void @free(ptr noundef %i.xe) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.as

bb.as:                                            ; preds = %.body107, %bb.ac
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn, %.body107 ], [ %i.nq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.xf = load ptr, ptr %12, align 8, !tbaa !28
  call void @free(ptr noundef %i.xf) #27
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.body102
  %.pn71.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn.pn, %bb.as ], [ %lpad.phi366, %.body102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.body93

.body93:                                          ; preds = %bb.o, %bb.at
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn.pn.pn, %bb.at ], [ %i.fn, %bb.o ]
  %i.xg = load ptr, ptr %11, align 8, !tbaa !28
  call void @free(ptr noundef %i.xg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body

.body:                                            ; preds = %bb.m, %.body93
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn, %.body93 ], [ %i.fi, %bb.m ]
  %i.xh = load ptr, ptr %10, align 8, !tbaa !28
  call void @free(ptr noundef %i.xh) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.xi = load ptr, ptr %9, align 8, !tbaa !58
  call void @free(ptr noundef %i.xi) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl13shapeup_solveIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKSt8functionIFbSA_RKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIS7_EEEESA_RKNS_11ShapeupDataEbSM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(3008) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.323", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.238", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.986", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"class.Eigen::Matrix.77", align 8 ; 16 uses
  %11 = alloca %"class.Eigen::Matrix.77", align 8 ; 12 uses
  %12 = alloca %"class.Eigen::Matrix.77", align 8 ; 10 uses
  %13 = alloca %"class.Eigen::Matrix.77", align 8 ; 12 uses
  %14 = alloca %"class.Eigen::Block.48", align 8  ; 11 uses
  %15 = alloca %"class.Eigen::Matrix.77", align 8 ; 9 uses
  %16 = alloca %"class.Eigen::Product.195", align 8 ; 9 uses
  %17 = alloca %"class.Eigen::Matrix.77", align 8 ; 10 uses
  %18 = alloca %"class.Eigen::Matrix.77", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b
  %19 = mul nsw i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.b, ptr %i.d, align 8, !tbaa !34
  store i64 3, ptr %i.e, align 8, !tbaa !63
  br label %bb.f

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %bb.d, label %.thread321

.thread321:                                       ; preds = %bb.c
  store i64 %i.b, ptr %i.d, align 8, !tbaa !34
  store i64 3, ptr %i.e, align 8, !tbaa !63
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %19, 2305843009213693951
  br i1 %i.g, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.h = mul i64 %i.b, 24
  %i.i = call noalias ptr @malloc(i64 noundef %i.h) #29 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.i, ptr %13, align 8, !tbaa !28
  store i64 %i.b, ptr %i.d, align 8, !tbaa !34
  store i64 3, ptr %i.e, align 8, !tbaa !63
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.b, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.thread321, %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i
  %.pre320 = phi ptr [ null, %.thread ], [ null, %.thread321 ], [ %i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !133  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds [8 x i8], ptr %.pre320, i64 %i.n ; 2 uses
  store ptr %i.q, ptr %14, align 8, !tbaa !138, !alias.scope !141
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !144, !alias.scope !141
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 3, ptr %i.s, align 8, !tbaa !144, !alias.scope !141
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %13, ptr %i.t, align 8, !tbaa !145, !alias.scope !141
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.n, ptr %i.u, align 8, !tbaa !144, !alias.scope !141
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !144, !alias.scope !141
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.b, ptr %i.w, align 8, !tbaa !147, !alias.scope !141
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.x = load ptr, ptr %0, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  store ptr %i.x, ptr %6, align 8, !tbaa !150
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.q, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.b, ptr %i.ab, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %7, ptr %8, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.ac, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %i.ad, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %14, ptr %i.ae, align 8, !tbaa !162
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br i1 %4, label %_ZNSolsEPFRSoS_E.exit86, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !133
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ag)
          to label %_ZNSolsEl.exit unwind label %bb.n ; 2 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.3, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %_ZNSolsEl.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %i.an = mul nsw i64 %i.am, %i.ak
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.an)
          to label %_ZNSolsEl.exit84 unwind label %bb.n ; 3 uses

_ZNSolsEl.exit84:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.invoke330, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEl.exit84
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !179
  %.not.i1.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
          to label %.noexc145 unwind label %bb.n

.noexc145:                                        ; preds = %bb.j
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.n, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc145, %bb.i
  %.0.i.i.i = phi i8 [ %i.ay, %bb.i ], [ %i.bc, %.noexc145 ]
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i8 noundef signext %.0.i.i.i)
          to label %.noexc147 unwind label %bb.n

.noexc147:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.n ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc147
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 94)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !54
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i149 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i149, label %.invoke330, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150

.invoke330:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNSolsEl.exit84
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont331 unwind label %bb.n

.cont331:                                         ; preds = %.invoke330
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !179
  %.not.i1.i.i151 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i151, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc155 unwind label %bb.n

.noexc155:                                        ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152 unwind label %bb.n, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152: ; preds = %.noexc155, %bb.k
  %.0.i.i.i153 = phi i8 [ %i.bp, %bb.k ], [ %i.bt, %.noexc155 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i153)
          to label %.noexc157 unwind label %bb.n

.noexc157:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit86 unwind label %bb.n ; 0 uses

bb.m:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !303
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !18
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.d
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !18
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !304 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !363 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us: ; preds = %.lr.ph71, %._crit_edge.us
  %.03370.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.755.069.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !18
  %i.bk = add nsw i64 %.sroa.755.069.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !378

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.069.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.069.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.069.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !18
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !18
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !18
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !18
  %i.co = add nsw i64 %.sroa.755.069.us, 4        ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond85.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !379

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us
  %i.cp = add nuw nsw i64 %.03370.us, 1           ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond86.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us, !llvm.loop !380

._crit_edge72:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge76

bb.f:                                             ; preds = %._crit_edge72
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter114 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph75

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit: ; preds = %.lr.ph71, %._crit_edge
  %.03370 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03370
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit
  %i.de = add nuw nsw i64 %.03370, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit, !llvm.loop !380

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit, %.lr.ph
  %.sroa.755.069 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !18
  %i.dl = add nsw i64 %.sroa.755.069, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !379

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %.lr.ph75
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge76, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.03174.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %i.gm, %._crit_edge76.loopexit.unr-lcssa ] ; 2 uses
  %.03273.epil.init = phi i32 [ 0, %.lr.ph75.preheader ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %.03273.epil.init, ptr %i.dn, align 4, !tbaa !18
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174.epil.init
  store i32 %.03273.epil.init, ptr %i.dp, align 4, !tbaa !18
  %i.dq = add nsw i32 %i.do, %.03273.epil.init
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph75.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %._crit_edge72
  %.sroa.049.0107 = phi ptr [ null, %._crit_edge72 ], [ %i.cs, %._crit_edge76.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph75.epil.preheader ] ; 6 uses
  %.032.lcssa = phi i32 [ 0, %._crit_edge72 ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph75.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.032.lcssa, ptr %i.dr, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.032.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %._crit_edge76
  %i.du = load i64, ptr %i.a, align 8, !tbaa !303 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph81, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !381
  br label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !364 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !365 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !304 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !363 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us: ; preds = %.lr.ph81, %._crit_edge79.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge79.us ], [ 0, %.lr.ph81 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv91 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !18 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph78.us.preheader, label %._crit_edge79.us

.lr.ph78.us.preheader:                            ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter118 = and i64 %i.eq, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph78.us.prol.loopexit, label %.lr.ph78.us.prol

.lr.ph78.us.prol:                                 ; preds = %.lr.ph78.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !18
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !18
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !35
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph78.us.prol.loopexit

.lr.ph78.us.prol.loopexit:                        ; preds = %.lr.ph78.us.prol, %.lr.ph78.us.preheader
  %.sroa.8.077.us.unr = phi i64 [ %i.eo, %.lr.ph78.us.preheader ], [ %i.fc, %.lr.ph78.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge79.us, label %.lr.ph78.us

.lr.ph78.us:                                      ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us
  %.sroa.8.077.us = phi i64 [ %i.gc, %.lr.ph78.us ], [ %.sroa.8.077.us.unr, %.lr.ph78.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !18 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !18
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !18
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !35
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !35
  %i.fq = add nsw i64 %.sroa.8.077.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !18
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !18
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !35
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !35
  %i.gc = add nsw i64 %.sroa.8.077.us, 2          ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond90.not.1, label %._crit_edge79.us, label %.lr.ph78.us, !llvm.loop !382

._crit_edge79.us:                                 ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %i.du
  br i1 %exitcond94.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us, !llvm.loop !383

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %.03174 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %i.gm, %.lr.ph75 ] ; 4 uses
  %.03273 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %i.gl, %.lr.ph75 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.1, %.lr.ph75 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !18
  store i32 %.03273, ptr %i.gd, align 4, !tbaa !18
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174
  store i32 %.03273, ptr %i.gf, align 4, !tbaa !18
  %i.gg = add nsw i32 %i.ge, %.03273              ; 3 uses
  %i.gh = or disjoint i64 %.03174, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !18
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !18
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !18
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03174, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !384

._crit_edge82:                                    ; preds = %._crit_edge79, %._crit_edge79.us, %.preheader.._crit_edge82_crit_edge
  %i.gn = phi ptr [ %.pre, %.preheader.._crit_edge82_crit_edge ], [ %i.eg, %._crit_edge79.us ], [ %i.eg, %._crit_edge79 ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gq = load <2 x i64>, ptr %i.e, align 8, !tbaa !385
  %i.gr = load <2 x i64>, ptr %i.gp, align 8, !tbaa !385
  store <2 x i64> %i.gq, ptr %i.gp, align 8, !tbaa !385
  store <2 x i64> %i.gr, ptr %i.e, align 8, !tbaa !385
  %i.gs = load <2 x ptr>, ptr %i.h, align 8, !tbaa !381
  %i.gt = load <2 x ptr>, ptr %i.go, align 8, !tbaa !381
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !381
  store <2 x ptr> %i.gs, ptr %i.go, align 8, !tbaa !381
  store <2 x ptr> %i.gt, ptr %i.h, align 8, !tbaa !381
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.ds, align 8, !tbaa !386
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gz = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !387
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !386
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !381
  store <2 x ptr> %i.gz, ptr %i.ds, align 8, !tbaa !387
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hb = load <2 x i64>, ptr %i.g, align 8, !tbaa !385
  %i.hc = load <2 x i64>, ptr %i.ha, align 8, !tbaa !385
  store <2 x i64> %i.hb, ptr %i.ha, align 8, !tbaa !385
  store <2 x i64> %i.hc, ptr %i.g, align 8, !tbaa !385
  call void @free(ptr noundef %.sroa.049.0107) #27
  call void @free(ptr noundef %i.gu) #27
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !363
  call void @free(ptr noundef %i.hd) #27
  %i.he = load ptr, ptr %i.ds, align 8, !tbaa !364 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge82
  call void @_ZdaPv(ptr noundef nonnull %i.he) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge82
  %i.hg = load ptr, ptr %i.gy, align 8, !tbaa !365 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #32
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

bb.k:                                             ; preds = %._crit_edge76
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.049.0107) #27
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45: ; preds = %.lr.ph81, %._crit_edge79
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge79 ], [ 0, %.lr.ph81 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !18
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !18 ; 2 uses
  %4 = sext i32 %i.hn to i64
  %i.ho = add nsw i64 %4, %i.hl
  %i.hp = icmp sgt i32 %i.hn, 0
  br i1 %i.hp, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph78

._crit_edge79:                                    ; preds = %.lr.ph78, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond89.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45, !llvm.loop !383

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %.sroa.8.077 = phi i64 [ %i.ic, %.lr.ph78 ], [ %i.hl, %.lr.ph78.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !18
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18 ; 2 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !18
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hx
  store i32 %i.hq, ptr %i.hy, align 4, !tbaa !18
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !35
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hx
  store double %i.ia, ptr %i.ib, align 8, !tbaa !35
  %i.ic = add nsw i64 %.sroa.8.077, 1             ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.ho
  br i1 %i.id, label %.lr.ph78, label %._crit_edge79, !llvm.loop !382

.body42:                                          ; preds = %bb.k, %bb.g
  %.pn39 = phi { ptr, i32 } [ %i.hi, %bb.k ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body42
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body42 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_7ProductIS1_S1_Li2EEES1_EERS1_RKNS3_IT_T0_Li2EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !392, !align !393
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !394, !nonnull !392, !align !393 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !303  ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !302
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %i.j, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.m = shl i64 %i.h, 2
  %i.n = add i64 %i.m, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.n) ; 2 uses
  store ptr %calloc, ptr %i.l, align 8, !tbaa !304
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.an, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.q) #27
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit:        ; preds = %bb.a
  store i64 %i.h, ptr %i.i, align 8, !tbaa !303
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEES4_NS_11SparseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_S6_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEES4_NS_11SparseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit unwind label %bb.g

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEES4_NS_11SparseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.i, align 8, !tbaa !385
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !385
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !385
  store <2 x i64> %i.w, ptr %i.i, align 8, !tbaa !385
  %i.x = load <2 x ptr>, ptr %i.l, align 8, !tbaa !381
  %i.y = load <2 x ptr>, ptr %i.t, align 8, !tbaa !381
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !381
  store <2 x ptr> %i.x, ptr %i.t, align 8, !tbaa !381
  store <2 x ptr> %i.y, ptr %i.l, align 8, !tbaa !381
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !387
  %i.ae = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !387
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !387
  store <2 x ptr> %i.ae, ptr %i.ab, align 8, !tbaa !387
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.k, align 8, !tbaa !385
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !385
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !385
  store <2 x i64> %i.ah, ptr %i.k, align 8, !tbaa !385
  call void @free(ptr noundef %i.z) #27
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !363
  call void @free(ptr noundef %i.ai) #27
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !364 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEES4_NS_11SparseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEES4_NS_11SparseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !365 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.al) #32
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

bb.g:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume
}

declare noundef zeroext i1 @_ZN3igl30min_quad_with_fixed_precomputeIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS1_12SparseMatrixIT_Li0EiEERKNS1_10MatrixBaseIT0_EES8_bRNS_24min_quad_with_fixed_dataIS5_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(2384)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !364  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #32
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !397
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !303  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !303
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !18
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.d
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !18
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !738 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !741 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !18
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !773

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !18
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !18
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !18
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !18
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !774

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !775

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !775

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !18
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !774

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !18
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !18
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.a, align 8, !tbaa !771 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !381
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !364 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !365 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !738 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !741 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !18 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !18
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !18
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !35
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !18 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !18
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !18
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !35
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !35
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !18
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !18
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !35
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !35
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !776

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !777

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !18
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !18
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !18
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !18
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !18
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !18
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !778

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.gn = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gq = load <2 x i64>, ptr %i.e, align 8, !tbaa !385
  %i.gr = load <2 x i64>, ptr %i.gp, align 8, !tbaa !385
  store <2 x i64> %i.gq, ptr %i.gp, align 8, !tbaa !385
  store <2 x i64> %i.gr, ptr %i.e, align 8, !tbaa !385
  %i.gs = load <2 x ptr>, ptr %i.h, align 8, !tbaa !381
  %i.gt = load <2 x ptr>, ptr %i.go, align 8, !tbaa !381
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !381
  store <2 x ptr> %i.gs, ptr %i.go, align 8, !tbaa !381
  store <2 x ptr> %i.gt, ptr %i.h, align 8, !tbaa !381
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.ds, align 8, !tbaa !386
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gz = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !387
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !386
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !381
  store <2 x ptr> %i.gz, ptr %i.ds, align 8, !tbaa !387
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hb = load <2 x i64>, ptr %i.g, align 8, !tbaa !385
  %i.hc = load <2 x i64>, ptr %i.ha, align 8, !tbaa !385
  store <2 x i64> %i.hb, ptr %i.ha, align 8, !tbaa !385
  store <2 x i64> %i.hc, ptr %i.g, align 8, !tbaa !385
  call void @free(ptr noundef %.sroa.052.0106) #27
  call void @free(ptr noundef %i.gu) #27
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !363
  call void @free(ptr noundef %i.hd) #27
  %i.he = load ptr, ptr %i.ds, align 8, !tbaa !364 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.he) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge81
  %i.hg = load ptr, ptr %i.gy, align 8, !tbaa !365 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #32
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

bb.k:                                             ; preds = %._crit_edge75
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #27
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !18
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !18 ; 2 uses
  %4 = sext i32 %i.hn to i64
  %i.ho = add nsw i64 %4, %i.hl
  %i.hp = icmp sgt i32 %i.hn, 0
  br i1 %i.hp, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !777

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.ic, %.lr.ph77 ], [ %i.hl, %.lr.ph77.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !18
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18 ; 2 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !18
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hx
  store i32 %i.hq, ptr %i.hy, align 4, !tbaa !18
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !35
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hx
  store double %i.ia, ptr %i.ib, align 8, !tbaa !35
  %i.ic = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.ho
  br i1 %i.id, label %.lr.ph77, label %._crit_edge78, !llvm.loop !776

.body45:                                          ; preds = %bb.k, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.hi, %bb.k ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !364  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #32
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !729
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #31 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #31
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !385
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !386 ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !381
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #32
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !386
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !381
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !729
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #32
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #32
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !397
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !779

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !385  ; 2 uses
  %i.j = load i64, ptr %0, align 8, !tbaa !385
  store i64 %i.j, ptr %i.h, align 8, !tbaa !385
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = sdiv i64 %i.n, 2
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.r, align 8, !tbaa !385
  %i.v = load i64, ptr %i.t, align 8, !tbaa !385
  %i.w = icmp slt i64 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !385
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !385
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !780

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !385
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !385
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !385 ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !385
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !781

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.aq, align 8, !tbaa !385
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !782

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !385 ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !385 ; 5 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !385 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8, !tbaa !385
  store i64 %i.ay, ptr %0, align 8, !tbaa !385
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8, !tbaa !385   ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8, !tbaa !385
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8, !tbaa !385
  store i64 %i.be, ptr %i.e, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8, !tbaa !385
  store i64 %i.ax, ptr %0, align 8, !tbaa !385
  store i64 %i.bg, ptr %i.e, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8, !tbaa !385   ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8, !tbaa !385
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8, !tbaa !385
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8, !tbaa !385   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.1.i.i, align 8, !tbaa !385 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !783

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.114.i.i, align 8, !tbaa !385 ; 2 uses
  %i.bo = icmp slt i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !784

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.1.i.i, align 8, !tbaa !385
  store i64 %i.bk, ptr %.114.i.i, align 8, !tbaa !385
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !785

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !779

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i64, ptr %.019.i.ptr, align 8, !tbaa !385 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !385    ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !786

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !385
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.pn18.i, align 8, !tbaa !385 ; 2 uses
  %i.k = icmp slt i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i64 %i.l, ptr %.0912.i.i, align 8, !tbaa !385
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.0.i.i, align 8, !tbaa !385 ; 2 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !787

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !385
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !788

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_2
begin_hunk_3_@_ZN5Eigen12SparseMatrixIdLi1EiEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !771
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.b)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.b, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.b, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !18
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.b
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !18
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.d, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !304 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !363 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !18
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !791

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !18
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !18
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !18
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !18
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !792

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.d
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !793

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.b, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.b, 1
  %i.cu = icmp eq i64 %i.b, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.b, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.d
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !793

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !18
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !792

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !18
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !18
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.b
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.c, align 8, !tbaa !303 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !381
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !364 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !365 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !304 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !363 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !18 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !18
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !18
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !35
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !18 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !18
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !18
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !35
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !35
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !18
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !18
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !35
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !35
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !794

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !795

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !18
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !18
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !18
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !18
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !18
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !18
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !796

bb.h:                                             ; preds = %._crit_edge75
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #27
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !18
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !18 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !795

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.hh, %.lr.ph77 ], [ %i.gq, %.lr.ph77.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !18
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !18 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !18
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !18
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.hf = load double, ptr %i.he, align 8, !tbaa !35
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !35
  %i.hh = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph77, label %._crit_edge78, !llvm.loop !794

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !385
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !385
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !385
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !385
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !381
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !381
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !381
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !381
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !381
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !386
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !387
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !386
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !381
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !387
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !385
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !385
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !385
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !385
  call void @free(ptr noundef %.sroa.052.0106) #27
  call void @free(ptr noundef %i.hq) #27
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !741
  call void @free(ptr noundef %i.hz) #27
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !364 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge81
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !365 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #32
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

.body45:                                          ; preds = %bb.h, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !397  ; 2 uses
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !729
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #31 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #31
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.c) ; 3 uses
  %i.o = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !386 ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !381
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !365  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.q, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #32
  resume { ptr, i32 } %i.r

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.s = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.q, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !386
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.t, align 8, !tbaa !381
  store i64 %i.c, ptr %i.d, align 8, !tbaa !729
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #32
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.v = icmp eq ptr %.pre.i, null
  br i1 %i.v, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #32
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !303  ; 14 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !302, !range !671, !noundef !392
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !397
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !303
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !363  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !tbaa !303
  %i.q = shl i64 %i.p, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.q, i1 false)
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge168, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !302
  %i.gy = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ae unwind label %bb.ai     ; 0 uses

bb.ae:                                            ; preds = %.loopexit
  %i.gz = load ptr, ptr %i.dh, align 8, !tbaa !304
  call void @free(ptr noundef %i.gz) #27
  %i.ha = load ptr, ptr %i.dn, align 8, !tbaa !363
  call void @free(ptr noundef %i.ha) #27
  %i.hb = load ptr, ptr %i.dq, align 8, !tbaa !364 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.hb) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !365 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.he) #32
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.ai:                                            ; preds = %.loopexit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85:                                          ; preds = %.loopexit139, %.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88, %bb.t, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.eb, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.hg, %bb.ai ], [ %i.ey, %bb.t ], [ %i.gq, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %lpad.loopexit, %.loopexit139 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block271, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cs, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge30.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !303  ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.f, label %.preheader.lr.ph.split, label %._crit_edge30.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge25.split.us.us
  %.028.us = phi i64 [ %i.bj, %._crit_edge25.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.t = mul nsw i64 %i.i, %.028.us
  %invariant.gep26.us = getelementptr [8 x i8], ptr %i.g, i64 %i.t
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us: ; preds = %._crit_edge.us.us, %.preheader.us
  %.01623.us.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %._crit_edge.us.us ] ; 3 uses
  %i.u = load double, ptr %3, align 8, !tbaa !35
  %gep27.us.us = getelementptr [8 x i8], ptr %invariant.gep26.us, i64 %.01623.us.us
  %i.v = load double, ptr %gep27.us.us, align 8, !tbaa !35
  %i.w = fmul double %i.u, %i.v                   ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.01623.us.us ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18   ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp slt i32 %i.y, %i.aa
  br i1 %i.ac, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph.us.us.new
  %.sroa.8.022.us.us = phi i64 [ %i.as, %.lr.ph.us.us.new ], [ %.sroa.8.022.us.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.8.022.us.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.8.022.us.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  %i.ah = sext i32 %i.ag to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ah ; 2 uses
  %i.ai = load double, ptr %gep.us.us, align 8, !tbaa !35
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ai)
  store double %i.aj, ptr %gep.us.us, align 8, !tbaa !35
  %i.ak = add nsw i64 %.sroa.8.022.us.us, 1       ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = sext i32 %i.ao to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ap ; 2 uses
  %i.aq = load double, ptr %gep.us.us.1, align 8, !tbaa !35
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.am, double %i.w, double %i.aq)
  store double %i.ar, ptr %gep.us.us.1, align 8, !tbaa !35
  %i.as = add nsw i64 %.sroa.8.022.us.us, 2       ; 2 uses
  %exitcond35.not.1 = icmp eq i64 %i.as, %i.ab
  br i1 %exitcond35.not.1, label %._crit_edge.us.us, label %.lr.ph.us.us.new, !llvm.loop !805

._crit_edge.us.us:                                ; preds = %.prol.loopexit, %.lr.ph.us.us.new, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %i.at = add nuw nsw i64 %.01623.us.us, 1        ; 2 uses
  %exitcond36.not = icmp eq i64 %i.at, %i.e
  br i1 %exitcond36.not, label %._crit_edge25.split.us.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us, !llvm.loop !806

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %i.au = sext i32 %i.y to i64                    ; 6 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !28
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !34
  %i.ax = mul nsw i64 %i.aw, %.028.us
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %i.av, i64 %i.ax ; 3 uses
  %i.ay = sub nsw i64 %i.ab, %i.au
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.au
  %i.ba = load double, ptr %i.az, align 8, !tbaa !35
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = sext i32 %i.bc to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.bd ; 2 uses
  %i.be = load double, ptr %gep.us.us.prol, align 8, !tbaa !35
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.w, double %i.be)
  store double %i.bf, ptr %gep.us.us.prol, align 8, !tbaa !35
  %i.bg = add nsw i64 %i.au, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %.sroa.8.022.us.us.unr = phi i64 [ %i.au, %.lr.ph.us.us ], [ %i.bg, %.prol.loopexit.unr-lcssa ]
  %i.bh = add nsw i64 %i.ab, -1
  %i.bi = icmp eq i64 %i.bh, %i.au
  br i1 %i.bi, label %._crit_edge.us.us, label %.lr.ph.us.us.new

._crit_edge25.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bj = add nuw nsw i64 %.028.us, 1             ; 2 uses
  %exitcond37.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond37.not, label %._crit_edge30.split, label %.preheader.us, !llvm.loop !807

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge25.split
  %.028 = phi i64 [ %i.bl, %._crit_edge25.split ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.bk = mul nsw i64 %i.i, %.028
  %invariant.gep26 = getelementptr [8 x i8], ptr %i.g, i64 %i.bk
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

._crit_edge30.split:                              ; preds = %._crit_edge25.split, %._crit_edge25.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge25.split:                              ; preds = %._crit_edge
  %i.bl = add nuw nsw i64 %.028, 1                ; 2 uses
  %exitcond34.not = icmp eq i64 %i.bl, %i.b
  br i1 %exitcond34.not, label %._crit_edge30.split, label %.preheader, !llvm.loop !807

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.preheader, %._crit_edge
  %.01623 = phi i64 [ 0, %.preheader ], [ %i.bz, %._crit_edge ] ; 4 uses
  %i.bm = load double, ptr %3, align 8, !tbaa !35
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %.01623
  %i.bn = load double, ptr %gep27, align 8, !tbaa !35
  %i.bo = fmul double %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.01623
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !18
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.01623
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !18 ; 2 uses
  %4 = sext i32 %i.bt to i64
  %i.bu = add nsw i64 %4, %i.br
  %i.bv = icmp sgt i32 %i.bt, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bw = load ptr, ptr %2, align 8, !tbaa !28
  %i.bx = load i64, ptr %i.r, align 8, !tbaa !34
  %i.by = mul nsw i64 %i.bx, %.028
  %invariant.gep = getelementptr [8 x i8], ptr %i.bw, i64 %i.by
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bz = add nuw nsw i64 %.01623, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.e
  br i1 %exitcond.not, label %._crit_edge25.split, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !806

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.8.022 = phi i64 [ %i.br, %.lr.ph ], [ %i.ch, %bb.b ] ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.8.022
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !35
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.8.022
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = sext i32 %i.cd to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ce ; 2 uses
  %i.cf = load double, ptr %gep, align 8, !tbaa !35
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bo, double %i.cf)
  store double %i.cg, ptr %gep, align 8, !tbaa !35
  %i.ch = add nsw i64 %.sroa.8.022, 1             ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.bu
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !805
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.i) #27
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #29 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !14
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.f) #27
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  store i64 %3, ptr %i.c, align 8, !tbaa !53
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef align 1 dead_on_return %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix.999", align 8 ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.171", align 8 ; 9 uses
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !303
  store i8 0, ptr %4, align 8, !tbaa !736
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !772
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc41 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc41, ptr %i.g, align 8, !tbaa !738
  %.not6.i = icmp eq ptr %calloc41, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn.pn, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #27
  br label %common.resume
end_hunk_4
