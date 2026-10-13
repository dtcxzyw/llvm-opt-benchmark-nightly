Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi2ELi1ELi0ELi2ELi1EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us.split, %bb.o, %.preheader.split.split, %bb.p, %.critedge.thread
  %. = phi i32 [ 2, %.critedge.thread ], [ 0, %bb.p ], [ 0, %.preheader.split.split ], [ 0, %bb.o ], [ 0, %.preheader.split.us.split ]
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.Eigen::Block.129", align 8  ; 11 uses
  %3 = alloca %"class.Eigen::Block.185", align 8  ; 8 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.Eigen::VectorBlock.200", align 8 ; 8 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %5 = alloca %"class.Eigen::VectorBlock", align 8 ; 12 uses
  %6 = alloca %"class.Eigen::Product", align 8    ; 21 uses
  %7 = alloca %"class.Eigen::VectorBlock.184", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 80
  %.sroa.8174.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  %.sroa.10176.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 104
  %.sroa.12178.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.sroa.13179.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.15181.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 144
  %.sroa.16182.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %.sroa.18184.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.w = ptrtoint ptr %1 to i64
  %i.x = lshr exact i64 %i.w, 2
  %i.y = sub nsw i64 0, %i.x
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext i1 %i.aa to i64                    ; 2 uses
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.ac = select i1 %i.aa, i64 4, i64 0           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.e, ptr %5, align 8, !tbaa !52, !alias.scope !181
  store i64 1, ptr %i.f, align 8, !tbaa !53, !alias.scope !181
  store ptr %0, ptr %i.g, align 8
  store ptr %0, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.8210.0..sroa_idx, align 8
  store i64 1, ptr %i.h, align 8, !tbaa !53, !alias.scope !181
  store i64 2, ptr %i.i, align 8, !tbaa !189, !alias.scope !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.j, ptr %4, align 8, !tbaa !57
  store i64 0, ptr %i.k, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false)
  store i64 1, ptr %i.m, align 8, !tbaa !53
  store i64 2, ptr %i.n, align 8, !tbaa !194
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ae = load float, ptr %i.d, align 4, !tbaa !17
  store ptr %i.o, ptr %6, align 8
  store i64 1, ptr %.sroa.4193.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5194.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6195.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7196.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8197.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.9198.0..sroa_idx, align 8
  store i64 1, ptr %i.p, align 8, !alias.scope !195
  store float %i.ae, ptr %i.q, align 4, !tbaa !59, !alias.scope !195
  store ptr %i.e, ptr %i.r, align 8
  store i64 1, ptr %.sroa.8174.24..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10176.24..sroa_idx, align 8
  store ptr %0, ptr %.sroa.12178.24..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13179.24..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.15181.24..sroa_idx, align 8
  store i64 1, ptr %.sroa.16182.24..sroa_idx, align 8
  store i64 2, ptr %.sroa.18184.24..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %1, ptr %7, align 8, !tbaa !61, !alias.scope !196
  store i64 1, ptr %i.s, align 8, !tbaa !53, !alias.scope !196
  store ptr %1, ptr %i.t, align 8, !tbaa !38, !alias.scope !196
  store i64 0, ptr %i.u, align 8, !tbaa !53, !alias.scope !196
  store i64 1, ptr %i.v, align 8, !tbaa !199, !alias.scope !196
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi1ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi1ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 0, i64 %i.ac, i1 false), !tbaa !17
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = xor i64 %i.ac, 4
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %1, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !17
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi1ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  call void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS3_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKf(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull align 8 dereferenceable(121) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ag = load float, ptr %i.d, align 4, !tbaa !17
  %i.ah = fmul float %i.ag, -5.000000e-01
  %i.ai = load float, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.aj = load float, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = fmul float %i.ah, %i.ak                 ; 2 uses
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.am = fmul float %i.al, %i.aj
  %i.an = fadd float %i.am, %i.ai
  store float %i.an, ptr %1, align 4, !tbaa !17
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ab
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = fmul float %i.al, %i.aq
  %i.as = load float, ptr %i.ao, align 4, !tbaa !17
  %i.at = fadd float %i.ar, %i.as
  store float %i.at, ptr %i.ao, align 4, !tbaa !17
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.1273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.e, ptr %2, align 8
  store i64 1, ptr %.sroa.467.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.771.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.872.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.1273.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %1, ptr %3, align 8
  store i64 1, ptr %.sroa.455.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.557.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.658.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.760.0..sroa_idx, align 8
  call void @_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf(ptr noundef nonnull %i.o, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.au = load float, ptr %i.c, align 4, !tbaa !17
  store float %i.au, ptr %i.e, align 4, !tbaa !17
  %i.av = load float, ptr %i.d, align 4, !tbaa !17
  store float %i.av, ptr %1, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 10 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %4 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 28 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.c, 8
  %i.g = shl nsw i64 %i.f, 3                      ; 3 uses
  %i.h = sdiv i64 %i.c, 4
  %i.i = shl nsw i64 %i.h, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.b, 2
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <4 x float>, ptr %i.e, align 1, !tbaa !44 ; 2 uses
  %i.k = fmul <4 x float> %i.j, %i.j              ; 3 uses
  %i.l = icmp sgt i64 %i.b, 8
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.n = load <4 x float>, ptr %i.m, align 1, !tbaa !44 ; 2 uses
  %i.o = fmul <4 x float> %i.n, %i.n              ; 2 uses
  %i.p = icmp samesign ugt i64 %i.b, 16
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <4 x float> [ %i.o, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <4 x float> [ %i.k, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.q = fadd <4 x float> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.r = icmp sgt i64 %i.i, %i.g
  br i1 %i.r, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <4 x float> [ %i.v, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ]
  %.07577.i.i.i.i = phi <4 x float> [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.o, %bb.d ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.05480.i.i.i.i
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !44 ; 2 uses
  %i.u = fmul <4 x float> %i.t, %i.t
  %i.v = fadd <4 x float> %.07278.i.i.i.i, %i.u   ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.054.in79.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !44 ; 2 uses
  %i.z = fmul <4 x float> %i.y, %i.y
  %i.aa = fadd <4 x float> %.07577.i.i.i.i, %i.z  ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 8 ; 2 uses
  %i.ab = icmp slt i64 %.054.i.i.i.i, %i.g
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !200

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !44 ; 2 uses
  %i.ae = fmul <4 x float> %i.ad, %i.ad
  %i.af = fadd <4 x float> %i.q, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <4 x float> [ %i.k, %bb.c ], [ %i.af, %bb.e ], [ %i.q, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ag = shufflevector <4 x float> %.274.i.i.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ah = fadd <4 x float> %.274.i.i.i.i, %i.ag   ; 2 uses
  %shift = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ah, %shift
  %i.ai = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.aj = icmp slt i64 %i.i, %i.c
  br i1 %i.aj, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ak = add i64 %i.b, 3
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.i
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.i, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi float [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ai, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.05283.i.i.i.i.prol
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = fadd float %.182.i.i.i.i.prol, %i.ap    ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !201

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa69.unr = phi float [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi float [ %i.ai, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi float [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = fadd float %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [4 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !17 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fadd float %i.aw, %i.ba
  %i.bc = getelementptr [4 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fadd float %i.bb, %i.bf
  %i.bh = getelementptr [4 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = fadd float %i.bg, %i.bk                 ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !202

bb.g:                                             ; preds = %bb.b
  %i.bn = load float, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  %i.bo = fmul float %i.bn, %i.bn                 ; 3 uses
  %i.bp = icmp sgt i64 %i.b, 2
  br i1 %i.bp, label %.lr.ph90.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph90.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.bq = add nsw i64 %i.b, -2                    ; 2 uses
  %i.br = add nsw i64 %i.b, -3
  %xtraiter72 = and i64 %i.bq, 3                  ; 3 uses
  %i.bs = icmp ult i64 %i.br, 3
  br i1 %i.bs, label %.lr.ph90.i.i.i.i.epil.preheader, label %.lr.ph90.i.i.i.i.preheader.new

.lr.ph90.i.i.i.i.preheader.new:                   ; preds = %.lr.ph90.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, -4
  br label %.lr.ph90.i.i.i.i

.lr.ph90.i.i.i.i:                                 ; preds = %.lr.ph90.i.i.i.i, %.lr.ph90.i.i.i.i.preheader.new
  %.088.i.i.i.i = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.cm, %.lr.ph90.i.i.i.i ] ; 5 uses
  %.287.i.i.i.i = phi float [ %i.bo, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.cl, %.lr.ph90.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph90.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph90.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.088.i.i.i.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = fadd float %.287.i.i.i.i, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.088.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !17 ; 2 uses
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = fadd float %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.088.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !17 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = fadd float %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.088.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = fadd float %i.cg, %i.ck                 ; 3 uses
  %i.cm = add nuw nsw i64 %.088.i.i.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph90.i.i.i.i, !llvm.loop !203

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %i.cn = load float, ptr %i.d, align 4, !tbaa !17
  br label %bb.h

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph90.i.i.i.i
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil.preheader

.lr.ph90.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.preheader
  %.088.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader ], [ %i.cm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.287.i.i.i.i.epil.init = phi float [ %i.bo, %.lr.ph90.i.i.i.i.preheader ], [ %i.cl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter72, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph90.i.i.i.i.epil

.lr.ph90.i.i.i.i.epil:                            ; preds = %.lr.ph90.i.i.i.i.epil, %.lr.ph90.i.i.i.i.epil.preheader
  %.088.i.i.i.i.epil = phi i64 [ %i.cs, %.lr.ph90.i.i.i.i.epil ], [ %.088.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ] ; 2 uses
  %.287.i.i.i.i.epil = phi float [ %i.cr, %.lr.ph90.i.i.i.i.epil ], [ %.287.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph90.i.i.i.i.epil ], [ 0, %.lr.ph90.i.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.088.i.i.i.i.epil
  %i.cp = load float, ptr %i.co, align 4, !tbaa !17 ; 2 uses
  %i.cq = fmul float %i.cp, %i.cp
  %i.cr = fadd float %.287.i.i.i.i.epil, %i.cq    ; 2 uses
  %i.cs = add nuw nsw i64 %.088.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter72
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil, !llvm.loop !204

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.epil, %bb.g, %bb.f
  %i.ct = phi float [ %i.ai, %bb.f ], [ %i.cr, %.lr.ph90.i.i.i.i.epil ], [ %i.bo, %bb.g ], [ %i.cl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %.lcssa69.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.cu = load float, ptr %i.d, align 4, !tbaa !17 ; 6 uses
  %i.cv = fcmp ugt float %i.ct, f0x00800000
  br i1 %i.cv, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.cw = phi float [ %i.cn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.cu, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store float 0.000000e+00, ptr %2, align 4, !tbaa !17
  store float %i.cw, ptr %3, align 4, !tbaa !17
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %1, align 8, !tbaa !57    ; 4 uses
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !53 ; 4 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dc = lshr exact i64 %i.da, 2
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = and i64 %i.dd, 3
  %i.df = tail call i64 @llvm.smin.i64(i64 %i.de, i64 %i.cz)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %bb.i ], [ %i.cz, %bb.h ] ; 8 uses
  %i.dg = sub i64 %i.cz, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.dh = sdiv i64 %i.dg, 4                       ; 2 uses
  %i.di = shl nsw i64 %i.dh, 2                    ; 2 uses
  %i.dj = add i64 %i.di, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cy, i8 0, i64 %i.dl, i1 false), !tbaa !17
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = icmp sgt i64 %i.dg, 3
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %i.cy, i64 %i.dn
  %i.do = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.dj, i64 %i.do)
  %i.dp = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dq = add i64 %smax.i, %i.dp
  %i.dr = shl i64 %i.dq, 2
  %i.ds = and i64 %i.dr, -16
  %i.dt = add i64 %i.ds, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.dt, i1 false), !tbaa !44
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.du = icmp slt i64 %i.dj, %i.cz
  br i1 %i.du, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = shl i64 %i.dh, 4
  %i.dw = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.dx = getelementptr i8, ptr %i.cy, i64 %i.dv
  %scevgep1.i = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = sub i64 %i.dg, %i.di
  %i.dz = shl nuw i64 %i.dy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.dz, i1 false), !tbaa !17
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.ea = fmul float %i.cu, %i.cu
  %i.eb = fadd float %i.ct, %i.ea
  %i.ec = tail call noundef float @sqrtf(float noundef %i.eb) #26 ; 2 uses
  %i.ed = fcmp ult float %i.cu, 0.000000e+00
  %i.ee = fneg float %i.ec
  %spec.select = select i1 %i.ed, float %i.ec, float %i.ee ; 2 uses
  store float %spec.select, ptr %3, align 4, !tbaa !17
  %i.ef = fsub float %i.cu, %spec.select          ; 13 uses
  %i.eg = load ptr, ptr %1, align 8, !tbaa !57    ; 14 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !53 ; 8 uses
  %i.ej = ptrtoint ptr %i.eg to i64               ; 4 uses
  %i.ek = and i64 %i.ej, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.el = lshr exact i64 %i.ej, 2
  %i.em = sub nsw i64 0, %i.el
  %i.en = and i64 %i.em, 3
  %i.eo = tail call i64 @llvm.smin.i64(i64 %i.en, i64 %i.ei)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eo, %bb.j ], [ %i.ei, %.critedge ] ; 11 uses
  %i.ep = sub nsw i64 %i.ei, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eq = sdiv i64 %i.ep, 4
  %i.er = shl nsw i64 %i.eq, 2                    ; 2 uses
  %i.es = add nsw i64 %i.er, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.et = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.eu = sub i64 %i.ej, %4
  %i.ev = add i64 %i.eu, -5
  %diff.check = icmp ult i64 %i.ev, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !17
  %wide.load48 = load <4 x float>, ptr %i.ey, align 4, !tbaa !17
  %i.ez = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.fa = fdiv <4 x float> %wide.load48, %broadcast.splat
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <4 x float> %i.ez, ptr %i.ew, align 4, !tbaa !17
  store <4 x float> %i.fa, ptr %i.fb, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter76 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !17
  %i.fg = fdiv float %i.ff, %i.ef
  store float %i.fg, ptr %i.fd, align 4, !tbaa !17
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !206

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fi = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !17
  %i.fn = fdiv float %i.fm, %i.ef
  store float %i.fn, ptr %i.fk, align 4, !tbaa !17
  %i.fo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fo
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !17
  %i.fs = fdiv float %i.fr, %i.ef
  store float %i.fs, ptr %i.fp, align 4, !tbaa !17
  %i.ft = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ft
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !17
  %i.fx = fdiv float %i.fw, %i.ef
  store float %i.fx, ptr %i.fu, align 4, !tbaa !17
  %i.fy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fy
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !17
  %i.gc = fdiv float %i.gb, %i.ef
  store float %i.gc, ptr %i.fz, align 4, !tbaa !17
  %i.gd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gd, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !207

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ge = icmp sgt i64 %i.ep, 3
  br i1 %i.ge, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.gf = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.gh = icmp slt i64 %i.es, %i.ei
  br i1 %i.gh, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gi = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.er
  %i.gj = sub i64 %i.ei, %i.gi                    ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.gj, 8
  br i1 %min.iters.check52, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gk = sub i64 %i.ej, %4
  %i.gl = add i64 %i.gk, -5
  %diff.check50 = icmp ult i64 %i.gl, 31
  br i1 %diff.check50, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck49
  %n.vec54 = and i64 %i.gj, -8                    ; 3 uses
  %i.gm = add i64 %i.es, %n.vec54
  %broadcast.splatinsert55 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat56 = shufflevector <4 x float> %broadcast.splatinsert55, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph53
  %index58 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body57 ] ; 2 uses
  %i.gn = add i64 %i.es, %index58                 ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gn ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load59 = load <4 x float>, ptr %i.gp, align 4, !tbaa !17
  %wide.load60 = load <4 x float>, ptr %i.gq, align 4, !tbaa !17
  %i.gr = fdiv <4 x float> %wide.load59, %broadcast.splat56
  %i.gs = fdiv <4 x float> %wide.load60, %broadcast.splat56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <4 x float> %i.gr, ptr %i.go, align 4, !tbaa !17
  store <4 x float> %i.gs, ptr %i.gt, align 4, !tbaa !17
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.gu = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.gu, label %middle.block62, label %vector.body57, !llvm.loop !208

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %i.gj, %n.vec54
  br i1 %cmp.n63, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66:       ; preds = %vector.memcheck49, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block62
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.es, %vector.memcheck49 ], [ %i.es, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gm, %middle.block62 ] ; 4 uses
  %i.gv = sub i64 %i.ei, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter79 = and i64 %i.gv, 3                  ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ha, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ]
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !17
  %i.gz = fdiv float %i.gy, %i.ef
  store float %i.gz, ptr %i.gw, align 4, !tbaa !17
  %i.ha = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !209

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ], [ %i.ha, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hb = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.ei
  %i.hc = icmp ugt i64 %i.hb, -4
  br i1 %i.hc, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.he = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = fdiv float %i.hf, %i.ef
  store float %i.hg, ptr %i.hd, align 4, !tbaa !17
  %i.hh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hh
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !17
  %i.hl = fdiv float %i.hk, %i.ef
  store float %i.hl, ptr %i.hi, align 4, !tbaa !17
  %i.hm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hm
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hm
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !17
  %i.hq = fdiv float %i.hp, %i.ef
  store float %i.hq, ptr %i.hn, align 4, !tbaa !17
  %i.hr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hr
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hr
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !17
  %i.hv = fdiv float %i.hu, %i.ef
  store float %i.hv, ptr %i.hs, align 4, !tbaa !17
  %i.hw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hw, %i.ei
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !210

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.hz = load <4 x float>, ptr %i.hy, align 1, !tbaa !44
  %i.ia = fdiv <4 x float> %i.hz, %i.gg
  store <4 x float> %i.ia, ptr %i.hx, align 16, !tbaa !44
  %i.ib = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ic = icmp slt i64 %i.ib, %i.es
  br i1 %i.ic, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !211

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block62, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.id = load float, ptr %3, align 4, !tbaa !17  ; 2 uses
  %i.ie = fsub float %i.id, %i.cu
  %i.if = fdiv float %i.ie, %i.id
  store float %i.if, ptr %2, align 4, !tbaa !17
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS3_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKf(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(121) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load float, ptr %3, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !59
  %i.e = fmul float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.h = icmp ugt i64 %i.g, 4611686018427387903
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39
  %i.k = shl nuw i64 %i.g, 2                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 32769
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #29 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 32768        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !53   ; 4 uses
  %i.w = icmp ugt i64 %i.v, 4611686018427387903
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.z = shl nuw i64 %i.v, 2                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 32769
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #29 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc43 unwind label %bb.q
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockIKNS5_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_:bb.a
  %i.fa = fadd float %.182.i.i.i.i.i.us, %i.ez
  %i.fb = add nuw nsw i64 %.05283.i.i.i.i.i.us, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !17
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fb
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !17
  %i.fg = fmul float %i.fd, %i.ff
  %i.fh = fadd float %i.fa, %i.fg
  %i.fi = add nuw nsw i64 %.05283.i.i.i.i.i.us, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !17
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fi
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !17
  %i.fn = fmul float %i.fk, %i.fm
  %i.fo = fadd float %i.fh, %i.fn
  %i.fp = add nuw nsw i64 %.05283.i.i.i.i.i.us, 3 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !17
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fp
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !17
  %i.fu = fmul float %i.fr, %i.ft
  %i.fv = fadd float %i.fo, %i.fu                 ; 2 uses
  %i.fw = add nuw nsw i64 %.05283.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.3 = icmp eq i64 %i.fw, %i.n
  br i1 %exitcond.not.i.i.i.i.i.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us16, label %.lr.ph85.i.i.i.i.i.us, !llvm.loop !481

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us16: ; preds = %.lr.ph85.i.i.i.i.i.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.us, %bb.c
  %.0.i.i.i.us17 = phi float [ %i.en, %bb.c ], [ %.lcssa86.unr, %.lr.ph85.i.i.i.i.i.us.prol.loopexit ], [ %i.fv, %.lr.ph85.i.i.i.i.i.us ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.us14
  store float %.0.i.i.i.us17, ptr %i.fx, align 4, !tbaa !17
  %i.fy = add nuw nsw i64 %.09.us14, 1            ; 2 uses
  %exitcond39.not = icmp eq i64 %i.fy, %i.d
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !477

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.y, label %.lr.ph85.i.i.i.i.i.preheader.us20.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader: ; preds = %.lr.ph.split.split.split
  %xtraiter = and i64 %i.d, 1
  %i.fz = icmp eq i64 %i.d, 1
  br i1 %i.fz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit

.lr.ph85.i.i.i.i.i.preheader.us20.preheader:      ; preds = %.lr.ph.split.split.split
  %xtraiter91 = and i64 %i.n, 3                   ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %i.ga = sub i64 %i.s, %i.n
  %i.gb = icmp ugt i64 %i.ga, -4
  br label %.lr.ph85.i.i.i.i.i.preheader.us20

.lr.ph85.i.i.i.i.i.preheader.us20:                ; preds = %.lr.ph85.i.i.i.i.i.preheader.us20.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25
  %.09.us18 = phi i64 [ %i.ht, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25 ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us20.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us19 = shl nuw nsw i64 %.09.us18, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.us19 ; 6 uses
  %i.gd = load <4 x float>, ptr %i.j, align 1, !tbaa !44
  %i.ge = load <4 x float>, ptr %i.gc, align 1, !tbaa !44
  %i.gf = fmul <4 x float> %i.gd, %i.ge           ; 2 uses
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gh = fadd <4 x float> %i.gf, %i.gg           ; 2 uses
  %shift75 = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop76 = fadd <4 x float> %i.gh, %shift75
  %i.gi = extractelement <4 x float> %foldExtExtBinop76, i64 0 ; 2 uses
  br i1 %lcmp.mod92.not, label %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us21.prol

.lr.ph85.i.i.i.i.i.us21.prol:                     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us20, %.lr.ph85.i.i.i.i.i.us21.prol
  %.05283.i.i.i.i.i.us22.prol = phi i64 [ %i.gp, %.lr.ph85.i.i.i.i.i.us21.prol ], [ %i.s, %.lr.ph85.i.i.i.i.i.preheader.us20 ] ; 3 uses
  %.182.i.i.i.i.i.us23.prol = phi float [ %i.go, %.lr.ph85.i.i.i.i.i.us21.prol ], [ %i.gi, %.lr.ph85.i.i.i.i.i.preheader.us20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us21.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us20 ]
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05283.i.i.i.i.i.us22.prol
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !17
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %.05283.i.i.i.i.i.us22.prol
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !17
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = fadd float %.182.i.i.i.i.i.us23.prol, %i.gn ; 3 uses
  %i.gp = add nsw i64 %.05283.i.i.i.i.i.us22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us21.prol, !llvm.loop !482

.lr.ph85.i.i.i.i.i.us21.prol.loopexit:            ; preds = %.lr.ph85.i.i.i.i.i.us21.prol, %.lr.ph85.i.i.i.i.i.preheader.us20
  %.lcssa88.unr = phi float [ poison, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.go, %.lr.ph85.i.i.i.i.i.us21.prol ]
  %.05283.i.i.i.i.i.us22.unr = phi i64 [ %i.s, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.gp, %.lr.ph85.i.i.i.i.i.us21.prol ]
  %.182.i.i.i.i.i.us23.unr = phi float [ %i.gi, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.go, %.lr.ph85.i.i.i.i.i.us21.prol ]
  br i1 %i.gb, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, label %.lr.ph85.i.i.i.i.i.us21

.lr.ph85.i.i.i.i.i.us21:                          ; preds = %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, %.lr.ph85.i.i.i.i.i.us21
  %.05283.i.i.i.i.i.us22 = phi i64 [ %i.hr, %.lr.ph85.i.i.i.i.i.us21 ], [ %.05283.i.i.i.i.i.us22.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us23 = phi float [ %i.hq, %.lr.ph85.i.i.i.i.i.us21 ], [ %.182.i.i.i.i.i.us23.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ]
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05283.i.i.i.i.i.us22
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !17
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %.05283.i.i.i.i.i.us22
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !17
  %i.gu = fmul float %i.gr, %i.gt
  %i.gv = fadd float %.182.i.i.i.i.i.us23, %i.gu
  %i.gw = add nsw i64 %.05283.i.i.i.i.i.us22, 1   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !17
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gw
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hb = fmul float %i.gy, %i.ha
  %i.hc = fadd float %i.gv, %i.hb
  %i.hd = add nsw i64 %.05283.i.i.i.i.i.us22, 2   ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.hd
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !17
  %i.hi = fmul float %i.hf, %i.hh
  %i.hj = fadd float %i.hc, %i.hi
  %i.hk = add nsw i64 %.05283.i.i.i.i.i.us22, 3   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !17
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.hk
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !17
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = fadd float %i.hj, %i.hp                 ; 2 uses
  %i.hr = add nsw i64 %.05283.i.i.i.i.i.us22, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.us24.3 = icmp eq i64 %i.hr, %i.n
  br i1 %exitcond.not.i.i.i.i.i.us24.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, label %.lr.ph85.i.i.i.i.i.us21, !llvm.loop !481

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25: ; preds = %.lr.ph85.i.i.i.i.i.us21, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit
  %.lcssa88 = phi float [ %.lcssa88.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ], [ %i.hq, %.lr.ph85.i.i.i.i.i.us21 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.us18
  store float %.lcssa88, ptr %i.hs, align 4, !tbaa !17
  %i.ht = add nuw nsw i64 %.09.us18, 1            ; 2 uses
  %exitcond38.not = icmp eq i64 %i.ht, %i.d
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i.preheader.us20, !llvm.loop !477

._crit_edge.loopexit89.unr-lcssa:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader: ; preds = %._crit_edge.loopexit89.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader
  %.09.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader ], [ %i.it, %._crit_edge.loopexit89.unr-lcssa ] ; 2 uses
  %lcmp.mod90 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %.idx.i.i.i.i.i.i.epil = shl nuw nsw i64 %.09.epil.init, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.epil
  %i.hv = load <4 x float>, ptr %i.j, align 1, !tbaa !44
  %i.hw = load <4 x float>, ptr %i.hu, align 1, !tbaa !44
  %i.hx = fmul <4 x float> %i.hv, %i.hw           ; 2 uses
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.hz = fadd <4 x float> %i.hx, %i.hy           ; 2 uses
  %shift78.epil = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop79.epil = fadd <4 x float> %i.hz, %shift78.epil
  %i.ia = extractelement <4 x float> %foldExtExtBinop79.epil, i64 0
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.epil.init
  store float %i.ia, ptr %i.ib, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader, %._crit_edge.loopexit89.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us16, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader, %bb.a
  ret void

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new
  %.09 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %i.it, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.09, 3
  %i.ic = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i
  %i.id = load <4 x float>, ptr %i.j, align 1, !tbaa !44
  %i.ie = load <4 x float>, ptr %i.ic, align 1, !tbaa !44
  %i.if = fmul <4 x float> %i.id, %i.ie           ; 2 uses
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ih = fadd <4 x float> %i.if, %i.ig           ; 2 uses
  %shift78 = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop79 = fadd <4 x float> %i.ih, %shift78
  %i.ii = extractelement <4 x float> %foldExtExtBinop79, i64 0
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09
  store float %i.ii, ptr %i.ij, align 4, !tbaa !17
  %i.ik = or disjoint i64 %.09, 1                 ; 2 uses
  %.idx.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.ik, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.1
  %i.im = load <4 x float>, ptr %i.j, align 1, !tbaa !44
  %i.in = load <4 x float>, ptr %i.il, align 1, !tbaa !44
  %i.io = fmul <4 x float> %i.im, %i.in           ; 2 uses
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iq = fadd <4 x float> %i.io, %i.ip           ; 2 uses
  %shift78.1 = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop79.1 = fadd <4 x float> %i.iq, %shift78.1
  %i.ir = extractelement <4 x float> %foldExtExtBinop79.1, i64 0
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ik
  store float %i.ir, ptr %i.is, align 4, !tbaa !17
  %i.it = add nuw nsw i64 %.09, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit89.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, !llvm.loop !477
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.Eigen::internal::gemm_blocking_space", align 16 ; 10 uses
  %5 = alloca %"class.Eigen::Matrix.1477", align 8 ; 6 uses
  %6 = alloca %"class.Eigen::Matrix.1477", align 8 ; 9 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.Eigen::internal::gemm_blocking_space", align 16 ; 10 uses
  %8 = alloca %"class.Eigen::Matrix.968", align 8 ; 16 uses
  %9 = alloca %"class.Eigen::Matrix.981", align 16 ; 25 uses
  %10 = ptrtoaddr ptr %9 to i64                   ; 2 uses
  %11 = alloca %"class.Eigen::Product.1019", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.b

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv i64 9223372036854775807, %i.e
  %i.j = icmp sgt i64 %i.e, %i.i
  br i1 %i.j, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = mul nsw i64 %i.e, %i.e                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = icmp samesign ugt i64 %i.k, 4611686018427387903
  br i1 %i.n, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.c
  %i.o = shl nuw i64 %i.k, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #29 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.c, %bb.b
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  store ptr %i.p, ptr %8, align 8, !tbaa !118
  br label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.x, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn.pn.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %8, align 8, !tbaa !118
  tail call void @free(ptr noundef %i.t) #26
  br label %common.resume

_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, %.sink.split.i
  %i.u = phi ptr [ %i.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.m, %.sink.split.i ]
  %i.v = phi ptr [ %i.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.l, %.sink.split.i ] ; 2 uses
  store i64 %i.e, ptr %i.v, align 8, !tbaa !119
  store i64 %i.e, ptr %i.u, align 8, !tbaa !120
  br i1 %3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.058.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.659.0.copyload = load i64, ptr %.sroa.659.0..sroa_idx, align 8 ; 3 uses
  %.sroa.860.0.copyload = load i64, ptr %i.d, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %.sroa.856.56.copyload = load ptr, ptr %0, align 8
  %.sroa.1057.56..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.1057.56.copyload = load i64, ptr %.sroa.1057.56..sroa_idx, align 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store i64 %.sroa.860.0.copyload, ptr %i.x, align 16, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  store i64 %.sroa.1057.56.copyload, ptr %i.y, align 8, !tbaa !123
  %i.z = mul nsw i64 %.sroa.1057.56.copyload, %.sroa.860.0.copyload ; 2 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.h
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 dereferenceable(32) %9, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !17
  %.sroa.speculated47.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %.sroa.659.0.copyload, i64 %.sroa.860.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 2, ptr %i.ab, align 16, !tbaa !125
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 2, ptr %i.ac, align 8, !tbaa !126
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2, ptr %i.ad, align 16, !tbaa !127
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ae, ptr %7, align 16, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !129
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.1057.56.copyload, i64 noundef %.sroa.659.0.copyload, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull %.sroa.856.56.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 noundef 1, i64 noundef %.sroa.860.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %3, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !119 ; 6 uses
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !123 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %i.ai, 0        ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not11.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sdiv i64 9223372036854775807, %i.ai
  %i.am = icmp sgt i64 %i.ah, %i.al
  br i1 %i.am, label %.invoke80, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.an = mul nsw i64 %i.ai, %i.ah                ; 5 uses
  %.not.i37 = icmp eq i64 %i.an, 0
  br i1 %.not.i37, label %.thread, label %bb.m

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !131
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !132
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.n, label %.thread78

.thread78:                                        ; preds = %bb.m
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !131
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !132
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp samesign ugt i64 %i.an, 4611686018427387903
  br i1 %i.ap, label %.invoke80, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40: ; preds = %bb.n
  %i.aq = shl nuw i64 %i.an, 2
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #29 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.invoke80, label %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i

.invoke80:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40, %bb.n, %bb.l
  %i.at = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont81 unwind label %bb.o

.cont81:                                          ; preds = %.invoke80
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40
  store ptr %i.ar, ptr %6, align 8, !tbaa !133
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !131
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !132
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35 = shl nuw nsw i64 %i.an, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35, i1 false), !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.thread78, %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !17
  invoke void @_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IfLin1ELin1ELi0ELi2ELi2EEELb0EE3runINS2_IfLin1ELin1ELi0ELin1ELi2EEEEEvRT_RKS3_RKS4_RKNS8_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

bb.o:                                             ; preds = %.invoke80, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %6, align 8, !tbaa !133
  call void @free(ptr noundef %i.av) #26
  br label %.body

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aw = load ptr, ptr %6, align 8, !tbaa !133   ; 9 uses
  %12 = ptrtoaddr ptr %i.aw to i64
  %i.ax = load i64, ptr %i.aj, align 8, !tbaa !131 ; 3 uses
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !132 ; 3 uses
  %i.az = load i64, ptr %i.x, align 16, !tbaa !122
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, %i.ax
  %i.ba = load i64, ptr %i.y, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, %i.ay
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc
  store i64 %i.ax, ptr %i.x, align 16, !tbaa !122
  store i64 %i.ay, ptr %i.y, align 8, !tbaa !123
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %.noexc
  %i.bb = mul nsw i64 %i.ay, %i.ax                ; 7 uses
  %i.bc = sdiv i64 %i.bb, 4
  %i.bd = shl nsw i64 %i.bc, 2                    ; 6 uses
  %i.be = icmp sgt i64 %i.bb, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.bf = icmp slt i64 %i.bd, %i.bb
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bg = sub i64 %i.bb, %i.bd                    ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.bg, 8
  %i.bh = sub i64 %12, %10
  %diff.check84 = icmp ugt i64 %i.bh, -32
  %or.cond = select i1 %min.iters.check86, i1 true, i1 %diff.check84
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec88 = and i64 %i.bg, -8                    ; 3 uses
  %i.bi = add i64 %i.bd, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.bj = add i64 %i.bd, %index90                 ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bl, align 4, !tbaa !17
  %wide.load92 = load <4 x float>, ptr %i.bm, align 4, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x float> %wide.load91, ptr %i.bk, align 16, !tbaa !17
  store <4 x float> %wide.load92, ptr %i.bn, align 16, !tbaa !17
  %index.next93 = add nuw i64 %index90, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.bo, label %middle.block94, label %vector.body89, !llvm.loop !493

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %i.bg, %n.vec88
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98

.lr.ph.i.i.i.i.i.i.i.i.i.preheader98:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block94
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block94 ] ; 4 uses
  %i.bp = sub i64 %i.bb, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter100 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.br = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.bs = load float, ptr %i.br, align 4, !tbaa !17
  store float %i.bs, ptr %i.bq, align 4, !tbaa !17
  %i.bt = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !494

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bu = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bb
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !17
  store float %i.by, ptr %i.bw, align 4, !tbaa !17
  %i.bz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bz
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !17
  store float %i.cc, ptr %i.ca, align 4, !tbaa !17
  %i.cd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cd
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !17
  store float %i.cg, ptr %i.ce, align 4, !tbaa !17
  %i.ch = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ch
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !17
  store float %i.ck, ptr %i.ci, align 4, !tbaa !17
  %i.cl = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cl, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !495

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.011.i.i.i.i.i.i.i.i
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !44
  store <4 x float> %i.co, ptr %i.cm, align 16, !tbaa !44
  %i.cp = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.bd
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !496

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block94, %._crit_edge.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.u

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %8, ptr %11, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELi2EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IfLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  %i.ct = load ptr, ptr %5, align 8, !tbaa !133   ; 9 uses
  %13 = ptrtoaddr ptr %i.ct to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !131 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !132 ; 3 uses
  %i.cy = load i64, ptr %i.x, align 16, !tbaa !122
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.cy, %i.cv
  %i.cz = load i64, ptr %i.y, align 8
  %.not8.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.cz, %i.cx
  %or.cond.i.i.i.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i.i.i.i21, i1 %.not8.i.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, label %bb.s

bb.s:                                             ; preds = %.noexc31
  store i64 %i.cv, ptr %i.x, align 16, !tbaa !122
  store i64 %i.cx, ptr %i.y, align 8, !tbaa !123
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc31
  %i.da = mul nsw i64 %i.cx, %i.cv                ; 7 uses
  %i.db = sdiv i64 %i.da, 4
  %i.dc = shl nsw i64 %i.db, 2                    ; 6 uses
  %i.dd = icmp sgt i64 %i.da, 3
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25

._crit_edge.i.i.i.i.i.i.i.i25:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i29, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.de = icmp slt i64 %i.dc, %i.da
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, label %.loopexit63

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i25
  %i.df = sub i64 %i.da, %i.dc                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 8
  %i.dg = sub i64 %13, %10
  %diff.check = icmp ugt i64 %i.dg, -32
  %or.cond97 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.df, -8                      ; 3 uses
  %i.dh = add i64 %i.dc, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = add i64 %i.dc, %index                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %9, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x float>, ptr %i.dk, align 4, !tbaa !17
  %wide.load82 = load <4 x float>, ptr %i.dl, align 4, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x float> %wide.load, ptr %i.dj, align 16, !tbaa !17
  store <4 x float> %wide.load82, ptr %i.dm, align 16, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dh, %middle.block ] ; 4 uses
  %i.do = sub i64 %i.da, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !17
  store float %i.dr, ptr %i.dp, align 4, !tbaa !17
  %i.ds = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !498

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dt = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.da
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !17
  store float %i.dx, ptr %i.dv, align 4, !tbaa !17
  %i.dy = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dy
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !17
  store float %i.eb, ptr %i.dz, align 4, !tbaa !17
  %i.ec = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ec
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ec
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !17
  store float %i.ef, ptr %i.ed, align 4, !tbaa !17
  %i.eg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !17
  store float %i.ej, ptr %i.eh, align 4, !tbaa !17
  %i.ek = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.ek, %i.da
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !499

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.011.i.i.i.i.i.i.i.i30
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !44
  store <4 x float> %i.en, ptr %i.el, align 16, !tbaa !44
  %i.eo = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 4 ; 2 uses
  %i.ep = icmp slt i64 %i.eo, %i.dc
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !496

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.ct) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !17
  %i.er = load i64, ptr %i.y, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %i.es, align 16, !tbaa !125
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.et, align 8, !tbaa !126
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.eu, align 16, !tbaa !127
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ev, ptr %4, align 16, !tbaa !128
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !129
  %i.ey = load i64, ptr %i.x, align 16, !tbaa !122
  %i.ez = load ptr, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.er, i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 noundef %i.ey, ptr noundef nonnull %i.ez, i64 noundef 1, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fa = load ptr, ptr %8, align 8, !tbaa !118
  call void @free(ptr noundef %i.fa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.w ], [ %i.cr, %bb.q ], [ %i.eq, %bb.t ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.w, %bb.f ]
  %i.fc = load ptr, ptr %8, align 8, !tbaa !118
  call void @free(ptr noundef %i.fc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !66, !noalias !520 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %.047186, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !521
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !118, !noalias !522
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !120, !noalias !522 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nuw nsw i64 %i.s, %i.aq             ; 4 uses
  %i.as = lshr i64 %i.ar, 2                       ; 2 uses
  %i.at = and i64 %i.ar, 9223372036854775804      ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !17
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !44
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
end_hunk_1
