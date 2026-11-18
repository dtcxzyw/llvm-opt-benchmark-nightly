Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd:bb.a
  %i.fz = add nsw i64 %.05283.i.i.i.i.i.i33, 2    ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !42
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fz
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !42
  %i.ge = fmul double %i.gb, %i.gd
  %i.gf = fadd double %i.fy, %i.ge
  %i.gg = add nsw i64 %.05283.i.i.i.i.i.i33, 3    ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !42
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gg
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !42
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = fadd double %i.gf, %i.gl                ; 2 uses
  %i.gn = add nsw i64 %.05283.i.i.i.i.i.i33, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i35.3 = icmp eq i64 %i.gn, %i.do
  br i1 %exitcond.not.i.i.i.i.i.i35.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i32, !llvm.loop !702

bb.v:                                             ; preds = %bb.q
  %i.go = load double, ptr %i.dj, align 8, !tbaa !42
  %i.gp = load double, ptr %i.dm, align 8, !tbaa !42
  %i.gq = fmul double %i.go, %i.gp
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, %.lr.ph85.i.i.i.i.i.i32, %bb.v, %bb.u, %bb.p
  %.0.i.i.i.i31 = phi double [ 0.000000e+00, %bb.p ], [ %i.fa, %bb.u ], [ %i.gq, %bb.v ], [ %.lcssa96.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ], [ %i.gm, %.lr.ph85.i.i.i.i.i.i32 ]
  %i.gr = load double, ptr %i.di, align 8, !tbaa !42
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.dl, double %.0.i.i.i.i31, double %i.gr)
  store double %i.gs, ptr %i.di, align 8, !tbaa !42
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.w:                                             ; preds = %bb.o
  %i.gt = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.dj, ptr %6, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.c, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gt, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %.sroa.949.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.di, ptr %4, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.754.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.956.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIKNS4_IS6_EELi1ELin1ELb1EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.n
  %i.gu = load double, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.dg, ptr %i.gv, align 8, !tbaa !139
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.gw, align 8, !tbaa !142
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.gx, align 8, !tbaa !138
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i64 noundef 1)
  %i.gy = load i64, ptr %i.gv, align 8, !tbaa !139
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !138 ; 2 uses
  %i.ha = mul nsw i64 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !141
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !142
  %i.hd = mul nsw i64 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !143
  %i.hf = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !39
  %i.hi = load i64, ptr %i.h, align 8, !tbaa !39
  %i.hj = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.hl = load ptr, ptr %2, align 8, !tbaa !40
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !38
  %i.ho = load ptr, ptr %0, align 8, !tbaa !40
  %i.hp = load i64, ptr %i.df, align 8, !tbaa !38
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.hh, i64 noundef %i.hi, i64 noundef %i.hj, ptr noundef nonnull %i.hk, i64 noundef %i.hj, ptr noundef nonnull %i.hl, i64 noundef %i.hn, ptr noundef nonnull %i.ho, i64 noundef 1, i64 noundef %i.hp, double noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.x

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !144
  call void @free(ptr noundef %i.hq) #26
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !145
  call void @free(ptr noundef %i.hs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit
  ret void

bb.x:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = load ptr, ptr %10, align 8, !tbaa !144
  call void @free(ptr noundef %i.hu) #26
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !145
  call void @free(ptr noundef %i.hw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.ht
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !729, !nonnull !88, !align !89 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.l, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not8.i = icmp eq i64 %i.n, %i.j
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sdiv i64 9223372036854775807, %i.j
  %i.q = icmp sgt i64 %i.h, %i.p
  br i1 %i.q, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.s = mul nsw i64 %i.j, %i.h
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.h, i64 noundef %i.j)
  %.pr = load i64, ptr %i.m, align 8, !tbaa !39
  %.pre = load i64, ptr %i.k, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.t = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.h, %bb.a ] ; 30 uses
  %i.u = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.j, %bb.a ] ; 13 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !40     ; 13 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = icmp sgt i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !40, !noalias !730 ; 11 uses
  %i.z = load i64, ptr %i.f, align 8, !tbaa !38, !noalias !730 ; 33 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sdiv i64 %i.z, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 12 uses
  %i.ad = sdiv i64 %i.z, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 22 uses
  %i.af = icmp sgt i64 %i.z, 3
  %i.ag = icmp samesign ugt i64 %i.z, 7
  %i.ah = icmp sgt i64 %i.ae, %i.ac               ; 4 uses
  %i.ai = icmp slt i64 %i.ae, %i.z                ; 3 uses
  br i1 %i.aa, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.i
  %i.aj = mul i64 %i.u, %i.t
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ak, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i = add i64 %i.z, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !731 ; 16 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !731 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us20.i.preheader, label %.preheader.i.preheader

.preheader.us20.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %3 = shl i64 %i.t, 3                            ; 2 uses
  %i.an = add nuw i64 %i.u, 2305843009213693951
  %i.ao = mul i64 %i.z, %i.an
  %i.ap = shl i64 %i.ao, 3
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %scevgep140 = getelementptr i8, ptr %i.al, i64 %3
  %i.ar = mul i64 %i.u, %i.t
  %i.as = shl i64 %i.ar, 3
  %scevgep141 = getelementptr i8, ptr %i.v, i64 %i.as ; 2 uses
  %min.iters.check = icmp ugt i64 %i.t, 9
  %ident.check.not = icmp eq i64 %i.am, 1
  %or.cond147 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.v, %scevgep140
  %bound1 = icmp ult ptr %i.al, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %3, 0
  %i.at = or i1 %found.conflict, %stride.check
  %bound0142 = icmp ult ptr %i.v, %scevgep
  %bound1143 = icmp ult ptr %i.y, %scevgep141
  %found.conflict144 = and i1 %bound0142, %bound1143
  %.mask = and i64 %i.z, 1152921504606846976
  %stride.check145 = icmp ne i64 %.mask, 0
  %i.au = or i1 %found.conflict144, %stride.check145
  %conflict.rdx = or i1 %i.at, %i.au
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter182 = and i64 %i.t, 1
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br label %.preheader.us20.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  br i1 %i.af, label %.preheader.i.preheader.split.us, label %.preheader.i.preheader.split

.preheader.i.preheader.split.us:                  ; preds = %.preheader.i.preheader
  br i1 %i.ag, label %.preheader.i.preheader.split.us.split.us, label %.preheader.i.preheader.split.us.split

.preheader.i.preheader.split.us.split.us:         ; preds = %.preheader.i.preheader.split.us
  br i1 %i.ai, label %.preheader.i.preheader.split.us.split.us.split.us, label %.preheader.i.us.us

.preheader.i.preheader.split.us.split.us.split.us: ; preds = %.preheader.i.preheader.split.us.split.us
  br i1 %i.ah, label %.preheader.i.us.us.us.us.preheader, label %.preheader.i.us.us.us.preheader

.preheader.i.us.us.us.preheader:                  ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.av = sub nsw i64 %i.z, %i.ae
  %xtraiter176 = and i64 %i.av, 3                 ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %i.aw = sub nsw i64 %i.ae, %i.z
  %i.ax = icmp ugt i64 %i.aw, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.ay = sub nsw i64 %i.z, %i.ae
  %xtraiter179 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  %i.az = sub nsw i64 %i.ae, %i.z
  %i.ba = icmp ugt i64 %i.az, -4
  br label %.preheader.i.us.us.us.us

.preheader.i.us.us.us.us:                         ; preds = %.preheader.i.us.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us
  %.0816.i.us.us.us.us = phi i64 [ %i.du, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us.us.us.preheader ] ; 3 uses
  %i.bb = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.z
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bb ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ac
  %i.bf = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.t
  %invariant.gep.i.us.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.bf
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, %.preheader.i.us.us.us.us
  %.011.i.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us.us ], [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bg = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us.us.us
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bg ; 10 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 1, !tbaa !24
  %i.bj = load <2 x double>, ptr %i.bc, align 1, !tbaa !24
  %i.bk = fmul <2 x double> %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load <2 x double>, ptr %i.bl, align 1, !tbaa !24
  %i.bn = load <2 x double>, ptr %i.bd, align 1, !tbaa !24
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bq = load <2 x double>, ptr %i.bp, align 1, !tbaa !24
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bs = load <2 x double>, ptr %i.br, align 1, !tbaa !24
  %i.bt = fmul <2 x double> %i.bq, %i.bs
  %i.bu = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bt ; 2 uses
  %i.bv = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 6 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bv
  %i.bx = load <2 x double>, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bv
  %i.bz = load <2 x double>, ptr %i.by, align 1, !tbaa !24
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ca ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.cc = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ac
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, !llvm.loop !713

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cd = fadd <2 x double> %i.cb, %i.bu
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ac
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !24
  %i.cg = load <2 x double>, ptr %i.be, align 1, !tbaa !24
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %i.ci = fadd <2 x double> %i.cd, %i.ch
  %i.cj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ci) ; 2 uses
  br i1 %lcmp.mod180.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.co ; 3 uses
  %i.cq = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !714

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa150.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi double [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  br i1 %i.ba, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %i.ds, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi double [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cv
  %i.cx = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cx
  %i.db = load double, ptr %i.da, align 8, !tbaa !42
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cw, %i.dc
  %i.de = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.de
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dd, %i.dj
  %i.dl = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dl
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fadd double %i.dk, %i.dq                ; 2 uses
  %i.ds = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %i.ds, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, !llvm.loop !715

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit
  %.lcssa150 = phi double [ %.lcssa150.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa150, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !42
  %i.dt = add nuw nsw i64 %.011.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.us.us = icmp eq i64 %i.dt, %i.t
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us, !llvm.loop !716

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us
  %i.du = add nuw nsw i64 %.0816.i.us.us.us.us, 1 ; 2 uses
  %exitcond27.not.i.us.us.us.us = icmp eq i64 %i.du, %i.u
  br i1 %exitcond27.not.i.us.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us.us, !llvm.loop !717

.preheader.i.us.us.us:                            ; preds = %.preheader.i.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split
  %.0816.i.us.us.us = phi i64 [ %i.gi, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %.preheader.i.us.us.us.preheader ] ; 3 uses
  %i.dv = mul nuw nsw i64 %.0816.i.us.us.us, %i.z
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.dv ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = mul nuw nsw i64 %.0816.i.us.us.us, %i.t
  %invariant.gep.i.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.dy
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, %.preheader.i.us.us.us
  %.011.i.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us ], [ %i.gh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %i.dz = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dz ; 9 uses
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !24
  %i.ec = load <2 x double>, ptr %i.dw, align 1, !tbaa !24
  %i.ed = fmul <2 x double> %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !24
  %i.eg = load <2 x double>, ptr %i.dx, align 1, !tbaa !24
  %i.eh = fmul <2 x double> %i.ef, %i.eg
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !759

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us201.us, %bb.p
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp256, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !780
  %i.b = sdiv i64 %3, 2
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = icmp sgt i64 %3, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = srem i64 %4, 4
  %i.g = sub nsw i64 %4, %i.f                     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph166.preheader, label %._crit_edge167

.lr.ph166.preheader:                              ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep232 = getelementptr i8, ptr %1, i64 16
  %scevgep234 = getelementptr i8, ptr %1, i64 24
  %i.i = shl i64 %3, 3                            ; 4 uses
  %i.j = shl i64 %3, 5
  %scevgep260 = getelementptr i8, ptr %1, i64 %i.j
  br label %.lr.ph166

.preheader.lr.ph.split:                           ; preds = %._crit_edge167.1
  %i.k = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.e, align 8, !tbaa !183  ; 3 uses
  %i.n = mul i64 %i.m, -8
  %i.o = mul i64 %.1133.lcssa.1, %i.m
  %i.p = shl i64 %i.o, 3
  %i.q = add i64 %i.p, %i.l
  %i.r = sub i64 %i.a, %i.q
  %min.iters.check331 = icmp ult i64 %3, 4
  %n.vec334 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n341 = icmp eq i64 %3, %n.vec334
  %xtraiter359 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br label %.preheader

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %._crit_edge160
  %indvar = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %._crit_edge160 ] ; 2 uses
  %.1164 = phi i64 [ 0, %.lr.ph166.preheader ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %.1133162 = phi i64 [ 0, %.lr.ph166.preheader ], [ %i.fc, %._crit_edge160 ] ; 9 uses
  br i1 %i.d, label %.preheader140.us.preheader, label %.preheader141

.preheader140.us.preheader:                       ; preds = %.lr.ph166
  %i.s = or disjoint i64 %.1133162, 1
  %i.t = or disjoint i64 %.1133162, 2
  %i.u = or disjoint i64 %.1133162, 3
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %.preheader140.us
  %.2146.us = phi i64 [ %i.av, %.preheader140.us ], [ %.1164, %.preheader140.us.preheader ] ; 2 uses
  %.0128145.us = phi i64 [ %i.aw, %.preheader140.us ], [ 0, %.preheader140.us.preheader ] ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us ; 4 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !182
  %i.x = load i64, ptr %i.e, align 8, !tbaa !183  ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %.0128145.us ; 2 uses
  %i.z = mul nsw i64 %i.x, %.1133162
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !24 ; 2 uses
  %i.ac = mul nsw i64 %i.x, %i.s
  %i.ad = getelementptr [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !24 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ag, ptr %i.v, align 16, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <2 x double> %i.af, ptr %i.ah, align 16, !tbaa !24
  %i.ai = load ptr, ptr %2, align 8, !tbaa !182
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %i.t
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !24 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.u
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !24 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.as, ptr %i.at, align 16, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <2 x double> %i.ar, ptr %i.au, align 16, !tbaa !24
  %i.av = add nsw i64 %.2146.us, 8                ; 2 uses
  %i.aw = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.c
  br i1 %i.ax, label %.preheader140.us, label %.preheader141, !llvm.loop !760

.preheader141:                                    ; preds = %.preheader140.us, %.lr.ph166
  %.0128.lcssa = phi i64 [ 0, %.lr.ph166 ], [ %i.aw, %.preheader140.us ] ; 10 uses
  %.2.lcssa = phi i64 [ %.1164, %.lr.ph166 ], [ %i.av, %.preheader140.us ] ; 8 uses
  %i.ay = icmp slt i64 %.0128.lcssa, %3
  br i1 %i.ay, label %.preheader139.preheader, label %._crit_edge160

.preheader139.preheader:                          ; preds = %.preheader141
  %i.az = load ptr, ptr %2, align 8, !tbaa !182   ; 12 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !183 ; 8 uses
  %i.bb = mul nsw i64 %i.ba, %.1133162            ; 4 uses
  %i.bc = or disjoint i64 %.1133162, 1
  %i.bd = mul nsw i64 %i.ba, %i.bc                ; 4 uses
  %i.be = or disjoint i64 %.1133162, 2
  %i.bf = mul nsw i64 %i.ba, %i.be                ; 4 uses
  %i.bg = or disjoint i64 %.1133162, 3
  %i.bh = mul nsw i64 %i.ba, %i.bg                ; 4 uses
  %i.bi = sub i64 %3, %.0128.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 68
  br i1 %min.iters.check, label %.loopexit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.preheader
  %i.bj = xor i64 %.0128.lcssa, -1
  %i.bk = add i64 %3, %i.bj                       ; 2 uses
  %i.bl = shl i64 %.2.lcssa, 3                    ; 3 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.bl ; 2 uses
  %mul.result = shl i64 %i.bk, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bk, 576460752303423487
  %i.bm = getelementptr i8, ptr %scevgep231, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %scevgep231
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.bl ; 2 uses
  %i.bo = getelementptr i8, ptr %scevgep233, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep233
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.bl ; 2 uses
  %i.bq = getelementptr i8, ptr %scevgep235, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %scevgep235
  %i.bs = or i1 %i.br, %mul.overflow
  %i.bt = or i1 %i.bp, %i.bn
  %i.bu = or i1 %i.bt, %i.bs
  br i1 %i.bu, label %.loopexit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bv = shl i64 %.2.lcssa, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv     ; 4 uses
  %i.bx = shl i64 %.0128.lcssa, 5
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %scevgep260, i64 %i.by ; 4 uses
  %i.ca = shl i64 %indvar, 5                      ; 4 uses
  %i.cb = or disjoint i64 %i.ca, 24
  %i.cc = mul i64 %i.ba, %i.cb                    ; 2 uses
  %i.cd = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.i
  %i.ci = or disjoint i64 %i.ca, 16
  %i.cj = mul i64 %i.ba, %i.ci                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.i
  %7 = or disjoint i64 %i.ca, 8
  %8 = mul i64 %i.ba, %7                          ; 2 uses
  %9 = getelementptr i8, ptr %i.az, i64 %8
  %10 = getelementptr i8, ptr %9, i64 %i.cd
  %11 = getelementptr i8, ptr %i.az, i64 %8
  %12 = getelementptr i8, ptr %11, i64 %i.i
  %i.co = mul i64 %i.ba, %i.ca                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cd
  %i.cr = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.i
  %bound0.a = icmp ult ptr %i.bw, %i.ch
  %bound1.a = icmp ult ptr %i.cf, %i.bz
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0261 = icmp ult ptr %i.bw, %i.cn
  %bound1262 = icmp ult ptr %i.cl, %i.bz
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict263
  %bound0264 = icmp ult ptr %i.bw, %12
  %bound1265 = icmp ult ptr %10, %i.bz
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx, %found.conflict266
  %bound0268 = icmp ult ptr %i.bw, %i.cs
  %bound1269 = icmp ult ptr %i.cq, %i.bz
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.ct = shl i64 %n.vec, 2
  %i.cu = add i64 %.2.lcssa, %i.ct                ; 2 uses
  %i.cv = add i64 %.0128.lcssa, %n.vec
  %i.cw = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.cx = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %index ; 4 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.cz, align 8, !tbaa !42, !alias.scope !781
  %i.da = getelementptr [8 x i8], ptr %i.cy, i64 %i.bd
  %wide.load272 = load <2 x double>, ptr %i.da, align 8, !tbaa !42, !alias.scope !782
  %i.db = getelementptr [8 x i8], ptr %i.cy, i64 %i.bf
  %wide.load273 = load <2 x double>, ptr %i.db, align 8, !tbaa !42, !alias.scope !783
  %i.dc = getelementptr [8 x i8], ptr %i.cy, i64 %i.bh
  %wide.load274 = load <2 x double>, ptr %i.dc, align 8, !tbaa !42, !alias.scope !784
  %.idx = shl i64 %index, 5
  %i.dd = getelementptr i8, ptr %i.cx, i64 %.idx
  %i.de = shufflevector <2 x double> %wide.load, <2 x double> %wide.load272, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.df = shufflevector <2 x double> %wide.load273, <2 x double> %wide.load274, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.de, <4 x double> %i.df, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dd, align 8, !tbaa !42, !alias.scope !785, !noalias !786
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.cu, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.cv, %middle.block ] ; 5 uses
  %i.dh = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.di = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.dj = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.di, i64 %i.bb
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = getelementptr [8 x i8], ptr %i.di, i64 %i.bd
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr [8 x i8], ptr %i.di, i64 %i.bf
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr [8 x i8], ptr %i.di, i64 %i.bh
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dl, ptr %i.ds, align 8, !tbaa !42
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store double %i.dn, ptr %i.dt, align 8, !tbaa !42
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  store double %i.dp, ptr %i.du, align 8, !tbaa !42
  %i.dv = getelementptr i8, ptr %i.ds, i64 24
  store double %i.dr, ptr %i.dv, align 8, !tbaa !42
  %i.dw = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa352.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.dj, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.dj, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.dw, %.loopexit.prol ]
  %i.dx = icmp eq i64 %3, %.neg
  br i1 %i.dx, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.en, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fb, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.dy = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.bb
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !42
  %i.eb = getelementptr [8 x i8], ptr %i.dy, i64 %i.bd
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !42
  %i.ed = getelementptr [8 x i8], ptr %i.dy, i64 %i.bf
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !42
  %i.ef = getelementptr [8 x i8], ptr %i.dy, i64 %i.bh
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !42
  %i.eh = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.ea, ptr %i.eh, align 8, !tbaa !42
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  store double %i.ec, ptr %i.ei, align 8, !tbaa !42
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  store double %i.ee, ptr %i.ej, align 8, !tbaa !42
  %i.ek = getelementptr i8, ptr %i.eh, i64 24
  store double %i.eg, ptr %i.ek, align 8, !tbaa !42
  %i.el = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.em = getelementptr i8, ptr %i.el, i64 8      ; 4 uses
  %i.en = add nsw i64 %.4159, 8                   ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.em, i64 %i.bb
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !42
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.bd
  %i.er = load double, ptr %i.eq, align 8, !tbaa !42
  %i.es = getelementptr [8 x i8], ptr %i.em, i64 %i.bf
  %i.et = load double, ptr %i.es, align 8, !tbaa !42
  %i.eu = getelementptr [8 x i8], ptr %i.em, i64 %i.bh
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !42
  %i.ew = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  store double %i.ep, ptr %i.ex, align 8, !tbaa !42
  %i.ey = getelementptr i8, ptr %i.ew, i64 40
  store double %i.er, ptr %i.ey, align 8, !tbaa !42
  %i.ez = getelementptr i8, ptr %i.ew, i64 48
  store double %i.et, ptr %i.ez, align 8, !tbaa !42
  %i.fa = getelementptr i8, ptr %i.ew, i64 56
  store double %i.ev, ptr %i.fa, align 8, !tbaa !42
  %i.fb = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fb, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !768

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.cu, %middle.block ], [ %.lcssa352.unr, %.loopexit.prol.loopexit ], [ %i.en, %.loopexit ] ; 2 uses
  %i.fc = add i64 %.1133162, 4                    ; 3 uses
  %i.fd = icmp slt i64 %i.fc, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fd, label %.lr.ph166, label %._crit_edge167, !llvm.loop !769

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fc, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fe = sub i64 %4, %.1133.lcssa
  %i.ff = srem i64 %i.fe, 2
  %i.fg = sub i64 %4, %i.ff                       ; 2 uses
  %i.fh = icmp slt i64 %.1133.lcssa, %i.fg
  br i1 %i.fh, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep277 = getelementptr i8, ptr %1, i64 8
  %i.fi = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %i.fj = shl i64 %3, 3                           ; 2 uses
  %i.fk = add i64 %i.fi, 8
  %i.fl = shl i64 %3, 4
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.fl
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar300 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next301, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.iu, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fm = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.ga, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.gb, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fo = load ptr, ptr %2, align 8, !tbaa !182
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %i.fo, i64 %.0128145.us.1 ; 2 uses
  %i.fr = mul nsw i64 %i.fp, %.1133162.1
  %i.fs = getelementptr [8 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !24 ; 2 uses
  %i.fu = mul nsw i64 %i.fp, %i.fm
  %i.fv = getelementptr [8 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load <2 x double>, ptr %i.fv, align 1, !tbaa !24 ; 2 uses
  %i.fx = shufflevector <2 x double> %i.ft, <2 x double> %i.fw, <2 x i32> <i32 1, i32 3>
  %i.fy = shufflevector <2 x double> %i.ft, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.fy, ptr %i.fn, align 16, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x double> %i.fx, ptr %i.fz, align 16, !tbaa !24
  %i.ga = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.gb = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gc = icmp slt i64 %i.gb, %i.c
  br i1 %i.gc, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !760

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.gb, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.ga, %.preheader140.us.1 ] ; 8 uses
  %i.gd = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gd, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.ge = load ptr, ptr %2, align 8, !tbaa !182   ; 8 uses
  %i.gf = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gg = mul nsw i64 %i.gf, %.1133162.1          ; 4 uses
  %i.gh = add nsw i64 %.1133162.1, 1
  %i.gi = mul nsw i64 %i.gf, %i.gh                ; 4 uses
  %i.gj = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check304 = icmp ult i64 %i.gj, 42
  br i1 %min.iters.check304, label %.loopexit.1.preheader, label %vector.scevcheck276

vector.scevcheck276:                              ; preds = %.preheader139.preheader.1
  %i.gk = xor i64 %.0128.lcssa.1, -1
  %i.gl = add i64 %3, %i.gk                       ; 2 uses
  %i.gm = shl i64 %.2.lcssa.1, 3
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.gm ; 2 uses
  %mul.result280 = shl i64 %i.gl, 4
  %mul.overflow281 = icmp ugt i64 %i.gl, 1152921504606846975
  %i.gn = getelementptr i8, ptr %scevgep278, i64 %mul.result280
  %i.go = icmp ult ptr %i.gn, %scevgep278
  %i.gp = or i1 %i.go, %mul.overflow281
  br i1 %i.gp, label %.loopexit.1.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %vector.scevcheck276
  %i.gq = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gr = getelementptr i8, ptr %1, i64 %i.gq     ; 2 uses
  %i.gs = shl i64 %.0128.lcssa.1, 4
  %i.gt = sub i64 %i.gq, %i.gs
  %i.gu = getelementptr i8, ptr %scevgep302, i64 %i.gt ; 2 uses
  %i.gv = shl i64 %indvar300, 4                   ; 2 uses
  %i.gw = add i64 %i.fk, %i.gv
  %i.gx = mul i64 %i.gf, %i.gw                    ; 2 uses
  %i.gy = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ge, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ge, i64 %i.gx
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.fj
  %13 = add i64 %i.fi, %i.gv
  %14 = mul i64 %i.gf, %13                        ; 2 uses
  %15 = getelementptr i8, ptr %i.ge, i64 %14
  %16 = getelementptr i8, ptr %15, i64 %i.gy
  %17 = getelementptr i8, ptr %i.ge, i64 %14
  %i.hd = getelementptr i8, ptr %17, i64 %i.fj
  %bound0306 = icmp ult ptr %i.gr, %i.hc
  %bound1307 = icmp ult ptr %i.ha, %i.gu
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.gr, %i.hd
  %bound1310 = icmp ult ptr %16, %i.gu
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.loopexit.1.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck305
  %n.vec314 = and i64 %i.gj, -2                   ; 4 uses
  %i.he = shl i64 %n.vec314, 1
  %i.hf = add i64 %.2.lcssa.1, %i.he              ; 2 uses
  %i.hg = add i64 %.0128.lcssa.1, %n.vec314
  %i.hh = getelementptr [8 x i8], ptr %i.ge, i64 %.0128.lcssa.1
  %i.hi = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next320, %vector.body315 ] ; 3 uses
  %i.hj = getelementptr [8 x i8], ptr %i.hh, i64 %index316 ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %i.gg
  %wide.load317 = load <2 x double>, ptr %i.hk, align 8, !tbaa !42, !alias.scope !787
  %.idx344 = shl i64 %index316, 4
  %i.hl = getelementptr i8, ptr %i.hi, i64 %.idx344
  %i.hm = getelementptr [8 x i8], ptr %i.hj, i64 %i.gi
  %wide.load318 = load <2 x double>, ptr %i.hm, align 8, !tbaa !42, !alias.scope !788
  %interleaved.vec319 = shufflevector <2 x double> %wide.load317, <2 x double> %wide.load318, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec319, ptr %i.hl, align 8, !tbaa !42, !alias.scope !789, !noalias !790
  %index.next320 = add nuw i64 %index316, 2       ; 2 uses
  %i.hn = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.hn, label %middle.block321, label %vector.body315, !llvm.loop !774

middle.block321:                                  ; preds = %vector.body315
  %cmp.n322 = icmp eq i64 %i.gj, %n.vec314
  br i1 %cmp.n322, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck305, %vector.scevcheck276, %.preheader139.preheader.1, %middle.block321
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck305 ], [ %.2.lcssa.1, %vector.scevcheck276 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hf, %middle.block321 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck305 ], [ %.0128.lcssa.1, %vector.scevcheck276 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.hg, %middle.block321 ] ; 5 uses
  %i.ho = sub i64 %3, %.2130157.1.ph
  %.neg361 = add i64 %.2130157.1.ph, 1
  %xtraiter357 = and i64 %i.ho, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.hp = getelementptr [8 x i8], ptr %i.ge, i64 %.2130157.1.ph ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %i.gg
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !42
  %i.hs = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.hr, ptr %i.hs, align 8, !tbaa !42
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %i.gi
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !42
  %i.hv = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  store double %i.hu, ptr %i.hx, align 8, !tbaa !42
  %i.hy = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa348.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.hv, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.hv, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.hy, %.loopexit.1.prol ]
  %i.hz = icmp eq i64 %3, %.neg361
  br i1 %i.hz, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.iq, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.it, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.ia = getelementptr [8 x i8], ptr %i.ge, i64 %.2130157.1 ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.gg
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !42
  %i.id = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.ic, ptr %i.id, align 8, !tbaa !42
  %i.ie = getelementptr [8 x i8], ptr %i.ia, i64 %i.gi
  %i.if = load double, ptr %i.ie, align 8, !tbaa !42
  %i.ig = add i64 %.4159.1, 2                     ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  store double %i.if, ptr %i.ii, align 8, !tbaa !42
  %i.ij = getelementptr [8 x i8], ptr %i.ge, i64 %.2130157.1
  %i.ik = getelementptr i8, ptr %i.ij, i64 8      ; 2 uses
  %i.il = getelementptr [8 x i8], ptr %i.ik, i64 %i.gg
  %i.im = load double, ptr %i.il, align 8, !tbaa !42
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ig
  store double %i.im, ptr %i.in, align 8, !tbaa !42
  %i.io = getelementptr [8 x i8], ptr %i.ik, i64 %i.gi
  %i.ip = load double, ptr %i.io, align 8, !tbaa !42
  %i.iq = add i64 %.4159.1, 4                     ; 2 uses
  %i.ir = getelementptr [8 x i8], ptr %1, i64 %i.ig
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  store double %i.ip, ptr %i.is, align 8, !tbaa !42
  %i.it = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.it, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !775

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block321, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hf, %middle.block321 ], [ %.lcssa348.unr, %.loopexit.1.prol.loopexit ], [ %i.iq, %.loopexit.1 ] ; 2 uses
  %i.iu = add i64 %.1133162.1, 2                  ; 3 uses
  %i.iv = icmp slt i64 %i.iu, %i.fg
  %indvar.next301 = add i64 %indvar300, 1
  br i1 %i.iv, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !769

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.iu, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.iw = icmp slt i64 %.1133.lcssa.1, %4
  %i.ix = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.iw, %i.ix
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar328 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next329, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.jr, %._crit_edge176 ] ; 2 uses
  %i.iy = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.iy ; 6 uses
  br i1 %min.iters.check331, label %scalar.ph330.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.preheader
  %i.iz = mul i64 %indvar328, %i.n
  %i.ja = add i64 %i.r, %i.iz
  %i.jb = shl i64 %.8179, 3
  %i.jc = add i64 %i.ja, %i.jb
  %i.jd = add i64 %i.jc, -1
  %diff.check = icmp ult i64 %i.jd, 31
  br i1 %diff.check, label %scalar.ph330.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck332
  %i.je = add i64 %.8179, %n.vec334               ; 2 uses
  %i.jf = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index336 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %wide.load337 = load <2 x double>, ptr %i.jg, align 8, !tbaa !42
  %wide.load338 = load <2 x double>, ptr %i.jh, align 8, !tbaa !42
  %i.ji = getelementptr [8 x i8], ptr %i.jf, i64 %index336 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <2 x double> %wide.load337, ptr %i.ji, align 8, !tbaa !42
  store <2 x double> %wide.load338, ptr %i.jj, align 8, !tbaa !42
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.jk, label %middle.block340, label %vector.body335, !llvm.loop !776

middle.block340:                                  ; preds = %vector.body335
  br i1 %cmp.n341, label %._crit_edge176, label %scalar.ph330.preheader

scalar.ph330.preheader:                           ; preds = %vector.memcheck332, %.preheader, %middle.block340
  %.0174.ph = phi i64 [ 0, %vector.memcheck332 ], [ 0, %.preheader ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck332 ], [ %.8179, %.preheader ], [ %i.je, %middle.block340 ] ; 2 uses
  br i1 %lcmp.mod360.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol

scalar.ph330.prol:                                ; preds = %scalar.ph330.preheader, %scalar.ph330.prol
  %.0174.prol = phi i64 [ %i.jo, %scalar.ph330.prol ], [ %.0174.ph, %scalar.ph330.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jm, %scalar.ph330.prol ], [ %.9173.ph, %scalar.ph330.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph330.prol ], [ 0, %scalar.ph330.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jl = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jm = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jl, ptr %i.jn, align 8, !tbaa !42
  %i.jo = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359
  br i1 %prol.iter.cmp.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol, !llvm.loop !777

scalar.ph330.prol.loopexit:                       ; preds = %scalar.ph330.prol, %scalar.ph330.preheader
  %.lcssa345.unr = phi i64 [ poison, %scalar.ph330.preheader ], [ %i.jm, %scalar.ph330.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph330.preheader ], [ %i.jo, %scalar.ph330.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph330.preheader ], [ %i.jm, %scalar.ph330.prol ]
  %i.jp = sub nsw i64 %.0174.ph, %3
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %._crit_edge176, label %scalar.ph330

._crit_edge176:                                   ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330, %middle.block340
  %.lcssa = phi i64 [ %i.je, %middle.block340 ], [ %.lcssa345.unr, %scalar.ph330.prol.loopexit ], [ %i.ke, %scalar.ph330 ]
  %i.jr = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.jr, %4
  %indvar.next329 = add i64 %indvar328, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !778

scalar.ph330:                                     ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330
  %.0174 = phi i64 [ %i.kh, %scalar.ph330 ], [ %.0174.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.ke, %scalar.ph330 ], [ %.9173.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.js = load double, ptr %gep, align 8, !tbaa !42
  %i.jt = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.js, ptr %i.jt, align 8, !tbaa !42
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.ju, i64 8
  %i.jv = load double, ptr %gep.1, align 8, !tbaa !42
  %i.jw = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  store double %i.jv, ptr %i.jx, align 8, !tbaa !42
  %i.jy = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.jy, i64 16
  %i.jz = load double, ptr %gep.2, align 8, !tbaa !42
  %i.ka = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  store double %i.jz, ptr %i.kb, align 8, !tbaa !42
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE6evalToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_:bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 1
  br i1 %i.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.c, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241, !nonnull !88, !align !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.x = load ptr, ptr %0, align 8, !tbaa !58, !noalias !1422
  store ptr %i.x, ptr %3, align 8, !tbaa !253, !alias.scope !1422
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.y, align 8, !tbaa !91, !alias.scope !1422
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.z, align 8, !tbaa !93, !alias.scope !1422
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !91, !alias.scope !1422
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.e, ptr %i.ab, align 8, !tbaa !257, !alias.scope !1422
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1423
  store ptr %i.ac, ptr %4, align 8, !tbaa !129, !alias.scope !1423
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !91, !alias.scope !1423
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.ae, align 8, !tbaa !85, !alias.scope !1423
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.ag, align 8, !tbaa !131, !alias.scope !1423
  call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1731", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_Li1EEELi8ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !259, !nonnull !88, !align !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i64 %i.i, %i.c
  %.not8.i = icmp eq i64 %i.g, 1
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i64 %i.g, %i.c                   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  call void @free(ptr noundef %i.k) #26
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.d
  %i.n = shl nuw i64 %i.j, 3
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #30 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.invoke, label %.sink.split.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %.sink.i.i.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !58
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !58     ; 7 uses
  %i.s = and i64 %i.c, -2                         ; 8 uses
  %i.t = icmp sgt i64 %i.c, 1
  br i1 %i.t, label %.lr.ph53.i.preheader, label %.preheader.i

.lr.ph53.i.preheader:                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %.lr.ph53.i

.preheader.i:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, %bb.e
  %.not.i13 = icmp eq i64 %i.s, %i.c
  br i1 %.not.i13, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.preheader.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !40, !noalias !1437 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1438, !nonnull !88, !align !89 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !1439 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38, !noalias !1439 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, label %.lr.ph55.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i: ; preds = %.lr.ph55.i
  %i.af = shl i64 %i.c, 3                         ; 2 uses
  %i.ag = and i64 %i.af, -16                      ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.r, i64 %i.ag
  %i.ah = or i64 %i.af, 8
  %i.ai = sub i64 %i.ah, %i.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit

.lr.ph55.split.i:                                 ; preds = %.lr.ph55.i
  %i.aj = icmp sgt i64 %i.ad, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38 ; 5 uses
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader

.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader:    ; preds = %.lr.ph55.split.i
  %i.am = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.an = add nsw i64 %i.ad, -2
  %xtraiter48 = and i64 %i.am, 3                  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  %unroll_iter52 = and i64 %i.am, -4
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  br label %.lr.ph.i.i.i.i.i.i35.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader: ; preds = %.lr.ph55.split.i
  %i.ap = or i64 %i.c, 1                          ; 2 uses
  %i.aq = sub i64 %i.ap, %i.s                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 18
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %.054.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader ], [ %i.ay, %vector.body ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %i.ar = shl i64 %i.c, 3
  %i.as = and i64 %i.ar, -16                      ; 2 uses
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as   ; 2 uses
  %i.au = shl i64 %i.ap, 3                        ; 2 uses
  %i.av = getelementptr i8, ptr %i.r, i64 %i.au   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.y, i64 %i.as
  %i.ax = getelementptr i8, ptr %i.y, i64 %i.au
  %4 = getelementptr i8, ptr %i.ab, i64 8
  %bound0.a = icmp ult ptr %i.at, %i.ax
  %bound1 = icmp ult ptr %i.aw, %i.av
  %found.conflict = and i1 %bound0.a, %bound1
  %bound039 = icmp ult ptr %i.at, %4
  %bound140 = icmp ult ptr %i.ab, %i.av
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -4                      ; 2 uses
  %i.ay = add i64 %i.s, %n.vec
  %i.az = load double, ptr %i.ab, align 8, !tbaa !42, !alias.scope !1440
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.az, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = add i64 %i.s, %index                    ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x double>, ptr %i.bb, align 8, !tbaa !42, !alias.scope !1441
  %wide.load42 = load <2 x double>, ptr %i.bc, align 8, !tbaa !42, !alias.scope !1441
  %i.bd = fmul <2 x double> %wide.load, %broadcast.splat
  %i.be = fmul <2 x double> %wide.load42, %broadcast.splat
  %i.bf = getelementptr [8 x i8], ptr %i.r, i64 %i.ba ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store <2 x double> %i.bd, ptr %i.bf, align 8, !tbaa !42, !alias.scope !1442, !noalias !1443
  store <2 x double> %i.be, ptr %i.bg, align 8, !tbaa !42, !alias.scope !1442, !noalias !1443
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.body, !llvm.loop !1432

.lr.ph.i.i.i.i.i.i35.preheader.us.i:              ; preds = %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i
  %.054.us56.i = phi i64 [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.054.us56.i ; 6 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !42
  %i.bk = load double, ptr %i.ab, align 8, !tbaa !42
  %i.bl = fmul double %i.bj, %i.bk                ; 2 uses
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i35.us.i

.lr.ph.i.i.i.i.i.i35.us.i:                        ; preds = %.lr.ph.i.i.i.i.i.i35.preheader.us.i, %.lr.ph.i.i.i.i.i.i35.us.i
  %.010.i.i.i.i.i.i36.us.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i35.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ] ; 6 uses
  %.089.i.i.i.i.i.i37.us.i = phi double [ %i.cq, %.lr.ph.i.i.i.i.i.i35.us.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ]
  %niter53 = phi i64 [ %niter53.next.3, %.lr.ph.i.i.i.i.i.i35.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ]
  %i.bm = mul nsw i64 %.010.i.i.i.i.i.i36.us.i, %i.al
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.010.i.i.i.i.i.i36.us.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !42
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %.089.i.i.i.i.i.i37.us.i, %i.br
  %i.bt = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 1 ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.al
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bt
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = fmul double %i.bw, %i.by
  %i.ca = fadd double %i.bs, %i.bz
  %i.cb = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 2 ; 2 uses
  %i.cc = mul nsw i64 %i.cb, %i.al
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cb
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !42
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %i.ca, %i.ch
  %i.cj = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 3 ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.al
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cj
  %i.co = load double, ptr %i.cn, align 8, !tbaa !42
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %i.ci, %i.cp                ; 3 uses
  %i.cr = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 4 ; 2 uses
  %niter53.next.3 = add i64 %niter53, 4           ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.us.i, !llvm.loop !4

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.us.i
  br i1 %lcmp.mod49.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader:         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.preheader.us.i
  %.010.i.i.i.i.i.i36.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ], [ %i.cr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ]
  %.089.i.i.i.i.i.i37.us.i.epil.init = phi double [ %i.bl, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ], [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i.i.i.i.i.i35.us.i.epil

.lr.ph.i.i.i.i.i.i35.us.i.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i35.us.i.epil, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader
  %.010.i.i.i.i.i.i36.us.i.epil = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ %.010.i.i.i.i.i.i36.us.i.epil.init, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i37.us.i.epil = phi double [ %i.cy, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ %.089.i.i.i.i.i.i37.us.i.epil.init, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ]
  %i.cs = mul nsw i64 %.010.i.i.i.i.i.i36.us.i.epil, %i.al
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.010.i.i.i.i.i.i36.us.i.epil
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = fadd double %.089.i.i.i.i.i.i37.us.i.epil, %i.cx ; 2 uses
  %i.cz = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i35.us.i.epil, !llvm.loop !1433

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i35.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa
  %.lcssa = phi double [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ], [ %i.cy, %.lr.ph.i.i.i.i.i.i35.us.i.epil ]
  %i.da = getelementptr [8 x i8], ptr %i.r, i64 %.054.us56.i
  store double %.lcssa, ptr %i.da, align 8, !tbaa !42
  %i.db = add nsw i64 %.054.us56.i, 1             ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.c
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i35.preheader.us.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit, !llvm.loop !1434

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i
  %.02952.i = phi i64 [ %i.em, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i ], [ 0, %.lr.ph53.i.preheader ] ; 3 uses
  %i.dd = load i64, ptr %i.u, align 8, !tbaa !261 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph53.i
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !158
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.02952.i ; 3 uses
  %i.dh = load i64, ptr %i.x, align 8, !tbaa !148 ; 3 uses
  %i.di = load ptr, ptr %i.v, align 8, !tbaa !158 ; 3 uses
  %xtraiter = and i64 %i.dd, 1
  %i.dj = icmp eq i64 %i.dd, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.dd, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.new
  %i.dk = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.new ], [ %i.eb, %bb.f ]
  %.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ec, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.dl = mul nsw i64 %.012.i.i.i.i.i, %i.dh
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dl
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !24
  %gep.i.i.i.i = getelementptr [8 x i8], ptr %i.di, i64 %.012.i.i.i.i.i
  %i.do = load double, ptr %gep.i.i.i.i, align 8, !tbaa !42
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dn, %i.dq
  %i.ds = fadd <2 x double> %i.dk, %i.dr
  %i.dt = or disjoint i64 %.012.i.i.i.i.i, 1      ; 2 uses
  %i.du = mul nsw i64 %i.dt, %i.dh
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.du
  %i.dw = load <2 x double>, ptr %i.dv, align 1, !tbaa !24
  %gep.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.di, i64 %i.dt
  %i.dx = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !42
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dw, %i.dz
  %i.eb = fadd <2 x double> %i.ds, %i.ea          ; 3 uses
  %i.ec = add nuw nsw i64 %.012.i.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i ], [ %i.eb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ec, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i64 %i.dd to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.ed = mul nsw i64 %.012.i.i.i.i.i.epil.init, %i.dh
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ed
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !24
  %gep.i.i.i.i.epil = getelementptr [8 x i8], ptr %i.di, i64 %.012.i.i.i.i.i.epil.init
  %i.eg = load double, ptr %gep.i.i.i.i.epil, align 8, !tbaa !42
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %i.ef, %i.ei
  %i.ek = fadd <2 x double> %.epil.init, %i.ej
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph53.i
  %.0.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph53.i ], [ %i.eb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ], [ %i.ek, %.epil.preheader ]
  %i.el = getelementptr [8 x i8], ptr %i.r, i64 %.02952.i
  store <2 x double> %.0.i.i.i.i, ptr %i.el, align 16, !tbaa !24
  %i.em = add nuw nsw i64 %.02952.i, 2            ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.s
  br i1 %i.en, label %.lr.ph53.i, label %.preheader.i, !llvm.loop !1435

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i
  %.054.i = phi i64 [ %i.et, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ], [ %.054.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43 ] ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.054.i
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !42
  %i.eq = load double, ptr %i.ab, align 8, !tbaa !42
  %i.er = fmul double %i.ep, %i.eq
  %i.es = getelementptr [8 x i8], ptr %i.r, i64 %.054.i
  store double %i.er, ptr %i.es, align 8, !tbaa !42
  %i.et = add nsw i64 %.054.i, 1                  ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.c
  br i1 %i.eu, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit, !llvm.loop !1436

_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, %.preheader.i
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE6evalToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_:bb.a
  br i1 %or.cond.i, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.x = load ptr, ptr %0, align 8, !tbaa !58, !noalias !1462
  store ptr %i.x, ptr %3, align 8, !tbaa !253, !alias.scope !1462
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.y, align 8, !tbaa !91, !alias.scope !1462
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.z, align 8, !tbaa !93, !alias.scope !1462
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !91, !alias.scope !1462
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.e, ptr %i.ab, align 8, !tbaa !257, !alias.scope !1462
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1463
  store ptr %i.ac, ptr %4, align 8, !tbaa !129, !alias.scope !1463
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !91, !alias.scope !1463
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.ae, align 8, !tbaa !85, !alias.scope !1463
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.ag, align 8, !tbaa !131, !alias.scope !1463
  call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEEKNS_5BlockIKS5_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEEvRT_RKS7_RSB_RKd(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES6_Li0EEES6_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.362", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit unwind label %.body.i.i

common.resume:                                    ; preds = %bb.g, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.a, %.body.i.i ], [ %i.fi, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %4, align 8, !tbaa !40
  call void @free(ptr noundef %i.b) #26
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173, !nonnull !88, !align !89 ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  store ptr %i.g, ptr %i.f, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  store ptr %i.l, ptr %i.k, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174, !nonnull !88, !align !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  store i64 %i.t, ptr %i.p, align 8, !tbaa !176
  %i.u = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39   ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.not.i = icmp eq i64 %i.aa, %i.w
  %.not8.i = icmp eq i64 %i.y, 1
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit
  %i.ab = mul nsw i64 %i.y, %i.w                  ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.ab, %i.aa
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %0, align 8, !tbaa !58
  call void @free(ptr noundef %i.ac) #26
  %i.ad = icmp sgt i64 %i.ab, 0
  br i1 %i.ad, label %bb.d, label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp samesign ugt i64 %i.ab, 2305843009213693951
  br i1 %i.ae, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.d
  %i.af = shl nuw i64 %i.ab, 3
  %i.ag = call noalias ptr @malloc(i64 noundef %i.af) #30 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke, label %.sink.split.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ag, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !58
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  store i64 %i.w, ptr %i.z, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !58    ; 7 uses
  %i.ak = and i64 %i.w, -2                        ; 8 uses
  %i.al = icmp sgt i64 %i.w, 1
  br i1 %i.al, label %.lr.ph53.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, %bb.e
  %.not.i13 = icmp eq i64 %i.ak, %i.w
  br i1 %.not.i13, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.preheader.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !40, !noalias !1477 ; 5 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !180, !nonnull !88, !align !89 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40, !noalias !1478 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38, !noalias !1478 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, label %.lr.ph55.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i: ; preds = %.lr.ph55.i
  %i.as = shl i64 %i.w, 3                         ; 2 uses
  %i.at = and i64 %i.as, -16                      ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.aj, i64 %i.at
  %i.au = or i64 %i.as, 8
  %i.av = sub i64 %i.au, %i.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.av, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit

.lr.ph55.split.i:                                 ; preds = %.lr.ph55.i
  %i.aw = icmp sgt i64 %i.aq, 1
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !38  ; 5 uses
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader

.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader:    ; preds = %.lr.ph55.split.i
  %i.ay = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.az = add nsw i64 %i.aq, -2
  %xtraiter48 = and i64 %i.ay, 3                  ; 3 uses
  %i.ba = icmp ult i64 %i.az, 3
  %unroll_iter52 = and i64 %i.ay, -4
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  br label %.lr.ph.i.i.i.i.i.i35.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader: ; preds = %.lr.ph55.split.i
  %i.bb = or i64 %i.w, 1                          ; 2 uses
  %i.bc = sub i64 %i.bb, %i.ak                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 18
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %.054.i.ph = phi i64 [ %i.ak, %vector.memcheck ], [ %i.ak, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader ], [ %i.bk, %vector.body ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %i.bd = shl i64 %i.w, 3
  %i.be = and i64 %i.bd, -16                      ; 2 uses
  %i.bf = getelementptr i8, ptr %i.aj, i64 %i.be  ; 2 uses
  %i.bg = shl i64 %i.bb, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aj, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.be
  %i.bj = getelementptr i8, ptr %i.am, i64 %i.bg
  %5 = getelementptr i8, ptr %i.ao, i64 8
  %bound0.a = icmp ult ptr %i.bf, %i.bj
  %bound1 = icmp ult ptr %i.bi, %i.bh
  %found.conflict = and i1 %bound0.a, %bound1
  %bound039 = icmp ult ptr %i.bf, %5
  %bound140 = icmp ult ptr %i.ao, %i.bh
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, -4                      ; 2 uses
  %i.bk = add i64 %i.ak, %n.vec
  %i.bl = load double, ptr %i.ao, align 8, !tbaa !42, !alias.scope !1479
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add i64 %i.ak, %index                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !42, !alias.scope !1480
  %wide.load42 = load <2 x double>, ptr %i.bo, align 8, !tbaa !42, !alias.scope !1480
  %i.bp = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bq = fmul <2 x double> %wide.load42, %broadcast.splat
  %i.br = getelementptr [8 x i8], ptr %i.aj, i64 %i.bm ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store <2 x double> %i.bp, ptr %i.br, align 8, !tbaa !42, !alias.scope !1481, !noalias !1482
  store <2 x double> %i.bq, ptr %i.bs, align 8, !tbaa !42, !alias.scope !1481, !noalias !1482
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, label %vector.body, !llvm.loop !1472

.lr.ph.i.i.i.i.i.i35.preheader.us.i:              ; preds = %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i
  %.054.us56.i = phi i64 [ %i.dn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i35.preheader.us.i.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.054.us56.i ; 6 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !42
  %i.bw = load double, ptr %i.ao, align 8, !tbaa !42
  %i.bx = fmul double %i.bv, %i.bw                ; 2 uses
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i35.us.i

.lr.ph.i.i.i.i.i.i35.us.i:                        ; preds = %.lr.ph.i.i.i.i.i.i35.preheader.us.i, %.lr.ph.i.i.i.i.i.i35.us.i
  %.010.i.i.i.i.i.i36.us.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i35.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ] ; 6 uses
  %.089.i.i.i.i.i.i37.us.i = phi double [ %i.dc, %.lr.ph.i.i.i.i.i.i35.us.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ]
  %niter53 = phi i64 [ %niter53.next.3, %.lr.ph.i.i.i.i.i.i35.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ]
  %i.by = mul nsw i64 %.010.i.i.i.i.i.i36.us.i, %i.ax
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.010.i.i.i.i.i.i36.us.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %.089.i.i.i.i.i.i37.us.i, %i.cd
  %i.cf = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 1 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ax
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cf
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = fadd double %i.ce, %i.cl
  %i.cn = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 2 ; 2 uses
  %i.co = mul nsw i64 %i.cn, %i.ax
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cn
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = fmul double %i.cq, %i.cs
  %i.cu = fadd double %i.cm, %i.ct
  %i.cv = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 3 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %i.ax
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cv
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = fmul double %i.cy, %i.da
  %i.dc = fadd double %i.cu, %i.db                ; 3 uses
  %i.dd = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i, 4 ; 2 uses
  %niter53.next.3 = add i64 %niter53, 4           ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.us.i, !llvm.loop !4

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.us.i
  br i1 %lcmp.mod49.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader:         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.preheader.us.i
  %.010.i.i.i.i.i.i36.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ], [ %i.dd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ]
  %.089.i.i.i.i.i.i37.us.i.epil.init = phi double [ %i.bx, %.lr.ph.i.i.i.i.i.i35.preheader.us.i ], [ %i.dc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i.i.i.i.i.i35.us.i.epil

.lr.ph.i.i.i.i.i.i35.us.i.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i35.us.i.epil, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader
  %.010.i.i.i.i.i.i36.us.i.epil = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ %.010.i.i.i.i.i.i36.us.i.epil.init, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i37.us.i.epil = phi double [ %i.dk, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ %.089.i.i.i.i.i.i37.us.i.epil.init, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i35.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.us.i.epil.preheader ]
  %i.de = mul nsw i64 %.010.i.i.i.i.i.i36.us.i.epil, %i.ax
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.010.i.i.i.i.i.i36.us.i.epil
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %.089.i.i.i.i.i.i37.us.i.epil, %i.dj ; 2 uses
  %i.dl = add nuw nsw i64 %.010.i.i.i.i.i.i36.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i35.us.i.epil, !llvm.loop !1473

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i35.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa
  %.lcssa = phi double [ %i.dc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i.unr-lcssa ], [ %i.dk, %.lr.ph.i.i.i.i.i.i35.us.i.epil ]
  %i.dm = getelementptr [8 x i8], ptr %i.aj, i64 %.054.us56.i
  store double %.lcssa, ptr %i.dm, align 8, !tbaa !42
  %i.dn = add nsw i64 %.054.us56.i, 1             ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.w
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i35.preheader.us.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit, !llvm.loop !1474

.lr.ph53.i:                                       ; preds = %bb.e, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i
  %.02952.i = phi i64 [ %i.ey, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i ], [ 0, %bb.e ] ; 3 uses
  %i.dp = load i64, ptr %i.p, align 8, !tbaa !176 ; 5 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph53.i
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.02952.i ; 3 uses
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !148 ; 3 uses
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !158 ; 3 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dv = icmp eq i64 %i.dp, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.dp, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.new
  %i.dw = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.new ], [ %i.en, %bb.f ]
  %.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.eo, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.dx = mul nsw i64 %.012.i.i.i.i.i, %i.dt
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 1, !tbaa !24
  %gep.i.i.i.i = getelementptr [8 x i8], ptr %i.du, i64 %.012.i.i.i.i.i
  %i.ea = load double, ptr %gep.i.i.i.i, align 8, !tbaa !42
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.dz, %i.ec
  %i.ee = fadd <2 x double> %i.dw, %i.ed
  %i.ef = or disjoint i64 %.012.i.i.i.i.i, 1      ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %i.dt
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.eg
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !24
  %gep.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.du, i64 %i.ef
  %i.ej = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !42
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.ei, %i.el
  %i.en = fadd <2 x double> %i.ee, %i.em          ; 3 uses
  %i.eo = add nuw nsw i64 %.012.i.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i ], [ %i.en, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.eo, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.ep = mul nsw i64 %.012.i.i.i.i.i.epil.init, %i.dt
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ep
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !24
  %gep.i.i.i.i.epil = getelementptr [8 x i8], ptr %i.du, i64 %.012.i.i.i.i.i.epil.init
  %i.es = load double, ptr %gep.i.i.i.i.epil, align 8, !tbaa !42
  %i.et = insertelement <2 x double> poison, double %i.es, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.er, %i.eu
  %i.ew = fadd <2 x double> %.epil.init, %i.ev
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph53.i
  %.0.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph53.i ], [ %i.en, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ], [ %i.ew, %.epil.preheader ]
  %i.ex = getelementptr [8 x i8], ptr %i.aj, i64 %.02952.i
  store <2 x double> %.0.i.i.i.i, ptr %i.ex, align 16, !tbaa !24
  %i.ey = add nuw nsw i64 %.02952.i, 2            ; 2 uses
  %i.ez = icmp slt i64 %i.ey, %i.ak
  br i1 %i.ez, label %.lr.ph53.i, label %.preheader.i, !llvm.loop !1475

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i
  %.054.i = phi i64 [ %i.ff, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ], [ %.054.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader43 ] ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.054.i
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !42
  %i.fc = load double, ptr %i.ao, align 8, !tbaa !42
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = getelementptr [8 x i8], ptr %i.aj, i64 %.054.i
  store double %i.fd, ptr %i.fe, align 8, !tbaa !42
  %i.ff = add nsw i64 %.054.i, 1                  ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.w
  br i1 %i.fg, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit, !llvm.loop !1476

_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.us.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, %.preheader.i
end_hunk_3
