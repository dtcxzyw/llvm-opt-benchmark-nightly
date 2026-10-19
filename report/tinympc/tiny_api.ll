Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd:bb.a
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
  %i.an = mul i64 %i.u, %i.t
  %i.ao = shl i64 %i.an, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ao ; 2 uses
  %i.ap = shl i64 %i.t, 3                         ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.aq = add nuw i64 %i.u, 2305843009213693951
  %i.ar = mul i64 %i.z, %i.aq
  %i.as = shl i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.y, i64 %i.as
  %scevgep135 = getelementptr i8, ptr %i.at, i64 8
  %min.iters.check = icmp ugt i64 %i.t, 9
  %ident.check.not = icmp eq i64 %i.am, 1
  %or.cond142 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.v, %scevgep134
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %i.v, %scevgep135
  %bound1137 = icmp ult ptr %i.y, %scevgep
  %found.conflict138 = and i1 %bound0136, %bound1137
  %stride.check139 = icmp slt i64 %i.ap, 0
  %3 = or i1 %found.conflict138, %stride.check139
  %.mask = and i64 %i.z, 1152921504606846976
  %stride.check140 = icmp ne i64 %.mask, 0
  %i.au = or i1 %3, %stride.check140
  %conflict.rdx = or i1 %found.conflict, %i.au
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter177 = and i64 %i.t, 1
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
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
  %xtraiter171 = and i64 %i.av, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  %i.aw = sub nsw i64 %i.ae, %i.z
  %i.ax = icmp ugt i64 %i.aw, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.ay = sub nsw i64 %i.z, %i.ae
  %xtraiter174 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
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
  br i1 %lcmp.mod175.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.co ; 3 uses
  %i.cq = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !714

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa145.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
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
  %.lcssa145 = phi double [ %.lcssa145.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa145, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !42
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
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.en, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ej = load <2 x double>, ptr %i.ei, align 1, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !24
  %i.em = fmul <2 x double> %i.ej, %i.el
  %i.en = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.em ; 2 uses
  %i.eo = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 6 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eo
  %i.eq = load <2 x double>, ptr %i.ep, align 1, !tbaa !24
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eo
  %i.es = load <2 x double>, ptr %i.er, align 1, !tbaa !24
  %i.et = fmul <2 x double> %i.eq, %i.es
  %i.eu = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.et ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %i.ev = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.ac
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, !llvm.loop !713
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.hp = getelementptr [8 x i8], ptr %i.fz, i64 %.2130157.1 ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %i.gb
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !42
  %i.hs = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.hr, ptr %i.hs, align 8, !tbaa !42
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %i.gd
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !42
  %i.hv = add i64 %.4159.1, 2                     ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  store double %i.hu, ptr %i.hx, align 8, !tbaa !42
  %i.hy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130157.1
  %i.hz = getelementptr i8, ptr %i.hy, i64 8      ; 2 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hz, i64 %i.gb
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !42
  %i.ic = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hv
  store double %i.ib, ptr %i.ic, align 8, !tbaa !42
  %i.id = getelementptr [8 x i8], ptr %i.hz, i64 %i.gd
  %i.ie = load double, ptr %i.id, align 8, !tbaa !42
  %i.if = add i64 %.4159.1, 4                     ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %1, i64 %i.hv
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store double %i.ie, ptr %i.ih, align 8, !tbaa !42
  %i.ii = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.ii, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !775

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block298, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.gu, %middle.block298 ], [ %.lcssa322.unr, %.loopexit.1.prol.loopexit ], [ %i.if, %.loopexit.1 ] ; 2 uses
  %i.ij = add i64 %.1133162.1, 2                  ; 3 uses
  %i.ik = icmp slt i64 %i.ij, %i.ey
  %indvar.next275 = add i64 %indvar274, 1
  br i1 %i.ik, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !769

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.ij, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.il = icmp slt i64 %.1133.lcssa.1, %4
  %i.im = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.il, %i.im
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar303 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next304, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.jg, %._crit_edge176 ] ; 2 uses
  %i.in = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.in ; 6 uses
  br i1 %min.iters.check306, label %scalar.ph305.preheader, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.preheader
  %i.io = mul i64 %i.r, %indvar303
  %i.ip = add i64 %i.q, %i.io
  %i.iq = shl i64 %.8179, 3
  %i.ir = add i64 %i.ip, %i.iq
  %i.is = add i64 %i.ir, -1
  %diff.check = icmp ult i64 %i.is, 31
  br i1 %diff.check, label %scalar.ph305.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck302
  %i.it = add i64 %.8179, %n.vec308               ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body309 ] ; 3 uses
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep, i64 %index310 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %wide.load311 = load <2 x double>, ptr %i.iv, align 8, !tbaa !42
  %wide.load312 = load <2 x double>, ptr %i.iw, align 8, !tbaa !42
  %i.ix = getelementptr [8 x i8], ptr %i.iu, i64 %index310 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <2 x double> %wide.load311, ptr %i.ix, align 8, !tbaa !42
  store <2 x double> %wide.load312, ptr %i.iy, align 8, !tbaa !42
  %index.next313 = add nuw i64 %index310, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.iz, label %middle.block314, label %vector.body309, !llvm.loop !776

middle.block314:                                  ; preds = %vector.body309
  br i1 %cmp.n315, label %._crit_edge176, label %scalar.ph305.preheader

scalar.ph305.preheader:                           ; preds = %vector.memcheck302, %.preheader, %middle.block314
  %.0174.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.preheader ], [ %n.vec308, %middle.block314 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck302 ], [ %.8179, %.preheader ], [ %i.it, %middle.block314 ] ; 2 uses
  br i1 %lcmp.mod334.not, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol

scalar.ph305.prol:                                ; preds = %scalar.ph305.preheader, %scalar.ph305.prol
  %.0174.prol = phi i64 [ %i.jd, %scalar.ph305.prol ], [ %.0174.ph, %scalar.ph305.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jb, %scalar.ph305.prol ], [ %.9173.ph, %scalar.ph305.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph305.prol ], [ 0, %scalar.ph305.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.ja = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jb = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.ja, ptr %i.jc, align 8, !tbaa !42
  %i.jd = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter333
  br i1 %prol.iter.cmp.not, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol, !llvm.loop !777

scalar.ph305.prol.loopexit:                       ; preds = %scalar.ph305.prol, %scalar.ph305.preheader
  %.lcssa319.unr = phi i64 [ poison, %scalar.ph305.preheader ], [ %i.jb, %scalar.ph305.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph305.preheader ], [ %i.jd, %scalar.ph305.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph305.preheader ], [ %i.jb, %scalar.ph305.prol ]
  %i.je = sub nsw i64 %.0174.ph, %3
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %._crit_edge176, label %scalar.ph305

._crit_edge176:                                   ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305, %middle.block314
  %.lcssa = phi i64 [ %i.it, %middle.block314 ], [ %.lcssa319.unr, %scalar.ph305.prol.loopexit ], [ %i.jt, %scalar.ph305 ]
  %i.jg = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.jg, %4
  %indvar.next304 = add i64 %indvar303, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !778

scalar.ph305:                                     ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305
  %.0174 = phi i64 [ %i.jw, %scalar.ph305 ], [ %.0174.unr, %scalar.ph305.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.jt, %scalar.ph305 ], [ %.9173.unr, %scalar.ph305.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.jh = load double, ptr %gep, align 8, !tbaa !42
  %i.ji = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.jh, ptr %i.ji, align 8, !tbaa !42
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.jj, i64 8
  %i.jk = load double, ptr %gep.1, align 8, !tbaa !42
  %i.jl = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  store double %i.jk, ptr %i.jm, align 8, !tbaa !42
  %i.jn = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.jn, i64 16
  %i.jo = load double, ptr %gep.2, align 8, !tbaa !42
  %i.jp = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  store double %i.jo, ptr %i.jq, align 8, !tbaa !42
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.jr, i64 24
  %i.js = load double, ptr %gep.3, align 8, !tbaa !42
  %i.jt = add nsw i64 %.9173, 4                   ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  store double %i.js, ptr %i.jv, align 8, !tbaa !42
  %i.jw = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jw, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph305, !llvm.loop !779

._crit_edge180.split:                             ; preds = %._crit_edge176, %._crit_edge167.1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !185    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !186  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !42, !alias.scope !804
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !42, !alias.scope !805
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !42, !alias.scope !806
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !42, !alias.scope !807
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !42, !alias.scope !808, !noalias !809
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !42
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !42
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !42
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !42
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !42
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !42
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !42
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !42
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !42
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !42
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !799

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !185   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !186 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !23
  %.pre = load i64, ptr %1, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !23    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !23
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !23
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !195    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %i.r = shl i64 %6, 5
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = add i64 %6, %3
  %i.t = shl i64 %i.s, 5
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = mul i64 %i.h, 24
  %scevgep108 = getelementptr i8, ptr %i.f, i64 %i.u
  %smax109 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.v = add nsw i64 %smax109, -4                 ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = shl i64 %i.v, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 24
  %i.z = mul i64 %i.h, %i.y
  %i.aa = shl i64 %3, 3                           ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ac = shl i64 %i.h, 4
  %scevgep111 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = or disjoint i64 %i.x, 16
  %i.ae = mul i64 %i.h, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ae
  %scevgep112 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ag = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ah = or disjoint i64 %i.x, 8
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %scevgep114 = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ak = mul i64 %i.h, %i.w
  %i.al = shl i64 %i.ak, 5
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep115 = getelementptr i8, ptr %i.am, i64 %i.aa
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep110, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep114, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep115, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep108, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep113, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check119 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ee, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ed, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.bs
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bs
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep105, i64 0
  %i.bu = shufflevector <4 x ptr> %i.bt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bv = icmp ult <4 x ptr> %i.bu, %i.aq
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep107, i64 0
  %i.bx = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.by = icmp ult <4 x ptr> %i.au, %i.bx
  %i.bz = and <4 x i1> %i.bv, %i.by
  %i.ca = bitcast <4 x i1> %i.bz to i4
  %i.cb = icmp ne i4 %i.ca, 0
  %op.rdx = or i1 %i.cb, %stride.check119
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !42, !alias.scope !1084
  %.idx = shl i64 %index, 5
  %i.cf = getelementptr i8, ptr %i.cd, i64 %.idx
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load130 = load <2 x double>, ptr %i.cg, align 8, !tbaa !42, !alias.scope !1085
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load131 = load <2 x double>, ptr %i.ch, align 8, !tbaa !42, !alias.scope !1086
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load132 = load <2 x double>, ptr %i.ci, align 8, !tbaa !42, !alias.scope !1087
  %i.cj = shufflevector <2 x double> %wide.load, <2 x double> %wide.load130, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = shufflevector <2 x double> %wide.load131, <2 x double> %wide.load132, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cj, <4 x double> %i.ck, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cf, align 8, !tbaa !42, !alias.scope !1088, !noalias !1089
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1077

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.cc, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !42
  %i.cy = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cz = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa149.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cy, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cy, %scalar.ph.prol ]
  %i.da = icmp eq i64 %3, %.neg
  br i1 %i.da, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ec, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.eb, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !42
  %i.dd = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.dc, ptr %i.dd, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !42
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  store double %i.df, ptr %i.dg, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr i8, ptr %i.dd, i64 16
  store double %i.di, ptr %i.dj, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = getelementptr i8, ptr %i.dd, i64 24
  store double %i.dl, ptr %i.dm, align 8, !tbaa !42
  %i.dn = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 32
  store double %i.dp, ptr %i.dr, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dn
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !42
  %i.du = getelementptr i8, ptr %i.dq, i64 40
  store double %i.dt, ptr %i.du, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dn
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr i8, ptr %i.dq, i64 48
  store double %i.dw, ptr %i.dx, align 8, !tbaa !42
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dn
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dq, i64 56
  store double %i.dz, ptr %i.ea, align 8, !tbaa !42
  %i.eb = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ec = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1078

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.cc, %middle.block ], [ %.lcssa149.unr, %scalar.ph.prol.loopexit ], [ %i.eb, %scalar.ph ]
  %i.ed = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.ee = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.c
  br i1 %i.ef, label %.lr.ph.us, label %.preheader, !llvm.loop !1079

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.eg = add nsw i64 %smax, -4
  %i.eh = lshr exact i64 %i.eg, 2
  %i.ei = mul i64 %i.eh, %invariant.op
  %i.ej = shl i64 %5, 2
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = shl i64 %3, 2
  %i.em = sub i64 %i.ek, %i.el
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.em, %.lr.ph78.split ], [ %i.ed, %._crit_edge.us ]
  %i.en = icmp slt i64 %i.c, %4
  br i1 %i.en, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eo = load ptr, ptr %2, align 8, !tbaa !195   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !196 ; 3 uses
  %i.er = icmp sgt i64 %3, 0
  %i.es = add i64 %3, %6
  %i.et = sub i64 %5, %i.es
  br i1 %i.er, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.eu = ptrtoaddr ptr %i.eo to i64
  %i.ev = mul i64 %i.eq, %i.b
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd:bb.a
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i32, !llvm.loop !1104

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i32
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, label %.lr.ph.i.i.i.i.i.i32.epil.preheader

.lr.ph.i.i.i.i.i.i32.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i32.preheader
  %.010.i.i.i.i.i.i33.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.dx, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.i.i.i.i34.epil.init = phi double [ %i.cn, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.dw, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.i.i.i.i32.epil

.lr.ph.i.i.i.i.i.i32.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i32.epil, %.lr.ph.i.i.i.i.i.i32.epil.preheader
  %.010.i.i.i.i.i.i33.epil = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i32.epil ], [ %.010.i.i.i.i.i.i33.epil.init, %.lr.ph.i.i.i.i.i.i32.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i34.epil = phi double [ %i.ee, %.lr.ph.i.i.i.i.i.i32.epil ], [ %.089.i.i.i.i.i.i34.epil.init, %.lr.ph.i.i.i.i.i.i32.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i32.epil ], [ 0, %.lr.ph.i.i.i.i.i.i32.epil.preheader ]
  %i.dy = mul nsw i64 %.010.i.i.i.i.i.i33.epil, %i.ck
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !42
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.010.i.i.i.i.i.i33.epil
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !42
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %.089.i.i.i.i.i.i34.epil, %i.ed ; 2 uses
  %i.ef = add nuw nsw i64 %.010.i.i.i.i.i.i33.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, label %.lr.ph.i.i.i.i.i.i32.epil, !llvm.loop !1105

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i32.epil, %bb.l, %bb.k
  %.0.i.i.i.i31 = phi double [ 0.000000e+00, %bb.k ], [ %i.cn, %bb.l ], [ %i.dw, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ], [ %i.ee, %.lr.ph.i.i.i.i.i.i32.epil ]
  %i.eg = load double, ptr %i.cb, align 8, !tbaa !42
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ce, double %.0.i.i.i.i31, double %i.eg)
  store double %i.eh, ptr %i.cb, align 8, !tbaa !42
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.cc, ptr %6, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.cb, ptr %4, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.946.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS4_IKNS_5BlockISB_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.ei = load double, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bz, ptr %i.ej, align 8, !tbaa !139
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.ek, align 8, !tbaa !142
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.el, align 8, !tbaa !138
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i64 noundef 1)
  %i.em = load i64, ptr %i.ej, align 8, !tbaa !139
  %i.en = load i64, ptr %i.el, align 8, !tbaa !138 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !141
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !142
  %i.er = mul nsw i64 %i.eq, %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.er, ptr %i.es, align 8, !tbaa !143
  %i.et = load i64, ptr %i.d, align 8, !tbaa !91
  %i.eu = load i64, ptr %i.g, align 8, !tbaa !91
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !91
  %i.ew = load ptr, ptr %1, align 8, !tbaa !217
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !91
  %i.ez = load ptr, ptr %2, align 8, !tbaa !217
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !91
  %i.fc = load ptr, ptr %0, align 8, !tbaa !217
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !91
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.et, i64 noundef %i.eu, i64 noundef %i.ev, ptr noundef nonnull %i.ew, i64 noundef %i.ey, ptr noundef nonnull %i.ez, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef %i.fe, double noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.n

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ff = load ptr, ptr %9, align 8, !tbaa !144
  call void @free(ptr noundef %i.ff) #26
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !145
  call void @free(ptr noundef %i.fh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS8_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.n:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !144
  call void @free(ptr noundef %i.fj) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !145
  call void @free(ptr noundef %i.fl) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %i.fi
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1141, !nonnull !88, !align !89 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91   ; 10 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !88, !align !89 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !88, !align !89 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !220  ; 5 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !91   ; 4 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !1142, !nonnull !88, !align !89 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !217, !noalias !1143 ; 7 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !1144, !nonnull !88, !align !89 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !217, !noalias !1145 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91, !noalias !1145 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !91, !noalias !1145 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %i.ab = icmp sgt i64 %i.z, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !91 ; 5 uses
  br i1 %i.ab, label %.preheader.us17.i.preheader, label %.preheader.i.preheader

.preheader.us17.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.ae = add nsw i64 %i.z, -1                    ; 2 uses
  %i.af = add nsw i64 %i.z, -2
  %xtraiter119 = and i64 %i.ae, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 3
  %unroll_iter = and i64 %i.ae, -4
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  %lcmp.mod122 = icmp ne i64 %xtraiter119, 0
  br label %.preheader.us17.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  %i.ah = add nsw i64 %i.g, -1                    ; 2 uses
  %i.ai = mul i64 %i.r, %i.ah
  %i.aj = shl i64 %i.j, 3
  %i.ak = add i64 %i.ai, %i.j
  %i.al = shl i64 %i.ak, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %scevgep103 = getelementptr i8, ptr %i.t, i64 %i.aj
  %i.am = mul i64 %i.x, %i.ah
  %i.an = shl i64 %i.am, 3
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep104 = getelementptr i8, ptr %i.ao, i64 8
  %min.iters.check = icmp ult i64 %i.j, 6
  %bound0 = icmp ult ptr %i.q, %scevgep103
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0105 = icmp ult ptr %i.q, %scevgep104
  %bound1106.a = icmp ult ptr %i.v, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106.a
  %1 = or i64 %i.x, %i.r
  %i.ap = and i64 %1, 1152921504606846976
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %found.conflict107, %i.aq
  %conflict.rdx = or i1 %found.conflict, %i.ar
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.us17.i:                                ; preds = %.preheader.us17.i.preheader, %._crit_edge.split.split.us.us.i
  %.0813.us18.i = phi i64 [ %i.cs, %._crit_edge.split.split.us.us.i ], [ 0, %.preheader.us17.i.preheader ] ; 3 uses
  %i.as = mul nsw i64 %.0813.us18.i, %i.x
  %i.at = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.as ; 6 uses
  %i.au = mul nsw i64 %.0813.us18.i, %i.r
  %i.av = getelementptr [8 x i8], ptr %i.q, i64 %i.au
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i

.lr.ph.i.i.i.i.i.i.preheader.us.us.i:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, %.preheader.us17.i
  %.09.us10.us.i = phi i64 [ 0, %.preheader.us17.i ], [ %i.cr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.us10.us.i ; 6 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !42
  %i.ay = load double, ptr %i.at, align 8, !tbaa !42
  %i.az = fmul double %i.ax, %i.ay                ; 2 uses
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.i.us.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, %.lr.ph.i.i.i.i.i.i.us.us.i
  %.010.i.i.i.i.i.i.us.us.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ] ; 6 uses
  %.089.i.i.i.i.i.i.us.us.i = phi double [ %i.ce, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %i.ba = mul nsw i64 %.010.i.i.i.i.i.i.us.us.i, %i.ad
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.010.i.i.i.i.i.i.us.us.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fadd double %.089.i.i.i.i.i.i.us.us.i, %i.bf
  %i.bh = add nuw nsw i64 %.010.i.i.i.i.i.i.us.us.i, 1 ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.ad
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bh
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !42
  %i.bn = fmul double %i.bk, %i.bm
  %i.bo = fadd double %i.bg, %i.bn
  %i.bp = add nuw nsw i64 %.010.i.i.i.i.i.i.us.us.i, 2 ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %i.ad
  %i.br = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bp
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !42
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = fadd double %i.bo, %i.bv
  %i.bx = add nuw nsw i64 %.010.i.i.i.i.i.i.us.us.i, 3 ; 2 uses
  %i.by = mul nsw i64 %i.bx, %i.ad
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bx
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %i.bw, %i.cd                ; 3 uses
  %i.cf = add nuw nsw i64 %.010.i.i.i.i.i.i.us.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i, !llvm.loop !1116

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i
  br i1 %lcmp.mod120.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i
  %.010.i.i.i.i.i.i.us.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.cf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  %.089.i.i.i.i.i.i.us.us.i.epil.init = phi double [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader
  %.010.i.i.i.i.i.i.us.us.i.epil = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.010.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.us.us.i.epil = phi double [ %i.cm, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.089.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %i.cg = mul nsw i64 %.010.i.i.i.i.i.i.us.us.i.epil, %i.ad
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.010.i.i.i.i.i.i.us.us.i.epil
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = fadd double %.089.i.i.i.i.i.i.us.us.i.epil, %i.cl ; 2 uses
  %i.cn = add nuw nsw i64 %.010.i.i.i.i.i.i.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter119
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil, !llvm.loop !1117

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa
  %.lcssa117 = phi double [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ]
  %i.co = getelementptr [8 x i8], ptr %i.av, i64 %.09.us10.us.i ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !42
  %i.cq = fsub double %i.cp, %.lcssa117
  store double %i.cq, ptr %i.co, align 8, !tbaa !42
  %i.cr = add nuw nsw i64 %.09.us10.us.i, 1       ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.cr, %i.j
  br i1 %exitcond22.not.i, label %._crit_edge.split.split.us.us.i, label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, !llvm.loop !1118

._crit_edge.split.split.us.us.i:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i
  %i.cs = add nuw nsw i64 %.0813.us18.i, 1        ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.cs, %i.g
  br i1 %exitcond23.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us17.i, !llvm.loop !1119

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.split.i
  %.0813.i = phi i64 [ %i.dq, %._crit_edge.split.split.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.ct = mul nsw i64 %.0813.i, %i.x
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ct ; 4 uses
  %i.cv = mul nsw i64 %.0813.i, %i.r
  %i.cw = getelementptr [8 x i8], ptr %i.q, i64 %i.cv ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.cx = load double, ptr %i.cu, align 8, !tbaa !42, !alias.scope !1146
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <2 x double>, ptr %i.cy, align 8, !tbaa !42, !alias.scope !1147
  %wide.load110.a = load <2 x double>, ptr %i.cz, align 8, !tbaa !42, !alias.scope !1147
  %i.da = fmul <2 x double> %wide.load, %broadcast.splat
  %i.db = fmul <2 x double> %wide.load110.a, %broadcast.splat
  %i.dc = getelementptr [8 x i8], ptr %i.cw, i64 %index ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %wide.load111.a = load <2 x double>, ptr %i.dc, align 8, !tbaa !42, !alias.scope !1148, !noalias !1149
  %wide.load112 = load <2 x double>, ptr %i.dd, align 8, !tbaa !42, !alias.scope !1148, !noalias !1149
  %i.de = fsub <2 x double> %wide.load111.a, %i.da
  %i.df = fsub <2 x double> %wide.load112, %i.db
  store <2 x double> %i.de, ptr %i.dc, align 8, !tbaa !42, !alias.scope !1148, !noalias !1149
  store <2 x double> %i.df, ptr %i.dd, align 8, !tbaa !42, !alias.scope !1148, !noalias !1149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !1124

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader: ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = load double, ptr %i.cu, align 8, !tbaa !42
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = getelementptr [8 x i8], ptr %i.cw, i64 %.09.i.ph ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !42
  %i.dn = fsub double %i.dm, %i.dk
  store double %i.dn, ptr %i.dl, align 8, !tbaa !42
  %i.do = or disjoint i64 %.09.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader ], [ %i.do, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol ]
  %i.dp = icmp eq i64 %i.j, %.neg
  br i1 %i.dp, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %middle.block
  %i.dq = add nuw nsw i64 %.0813.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.dq, %i.g
  br i1 %exitcond21.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.i, !llvm.loop !1119

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %.09.i = phi i64 [ %i.eg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ], [ %.09.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = load double, ptr %i.cu, align 8, !tbaa !42
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.cw, i64 %.09.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = fsub double %i.dw, %i.du
  store double %i.dx, ptr %i.dv, align 8, !tbaa !42
  %i.dy = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !42
  %i.eb = load double, ptr %i.cu, align 8, !tbaa !42
  %i.ec = fmul double %i.ea, %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.cw, i64 %i.dy ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !42
  %i.ef = fsub double %i.ee, %i.ec
  store double %i.ef, ptr %i.ed, align 8, !tbaa !42
  %i.eg = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eg, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, !llvm.loop !1125

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !91 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !91 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !91
  %i.en = and i64 %i.em, 1
  %i.eo = icmp sgt i64 %i.ek, 0
  br i1 %i.eo, label %.lr.ph65, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit
end_hunk_3
begin_hunk_4_@_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_7ProductINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS1_INS2_20scalar_difference_opIddEEKS9_KNS7_IS9_S9_Li0EEEEELin1ELi1ELb1EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_:bb.a
  %i.bo = fadd double %i.bb, %i.bn                ; 3 uses
  %i.bp = add nuw nsw i64 %.010.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1401

_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.bp, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.089.i.epil.init = phi double [ %i.ak, %.lr.ph.i.preheader ], [ %i.bo, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.ao to i1
  call void @llvm.assume(i1 %lcmp.mod4)
  %i.bq = add i64 %.010.i.epil.init, %i.r
  %i.br = mul nsw i64 %i.bq, %i.u
  %i.bs = getelementptr [8 x i8], ptr %i.w, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !42
  %i.bu = add nsw i64 %.010.i.epil.init, %i.aa    ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bu
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !42
  %i.by = load double, ptr %i.bw, align 8, !tbaa !42
  %i.bz = fsub double %i.bx, %i.by
  %i.ca = fmul double %i.bt, %i.bz
  %i.cb = fadd double %.089.i.epil.init, %i.ca
  br label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit

_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa, %_ZN5Eigen8internal15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_7ProductINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS2_INS0_20scalar_difference_opIddEEKS9_KNS7_IS9_S9_Li0EEEEELin1ELi1ELb1EEEEEEC2ERKSS_.exit
  %.08.lcssa.i = phi double [ %i.ak, %_ZN5Eigen8internal15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_7ProductINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS2_INS0_20scalar_difference_opIddEEKS9_KNS7_IS9_S9_Li0EEEEELin1ELi1ELb1EEEEEEC2ERKSS_.exit ], [ %i.bo, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_7ProductINS8_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS5_INS0_20scalar_difference_opIddEEKSC_KNSA_ISC_SC_Li0EEEEELin1ELi1ELb1EEEEEEELi1ELi0EE3runISV_EEdRKSW_RKS3_RKT_.exit.loopexit.unr-lcssa ], [ %i.cb, %.lr.ph.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  call void @free(ptr noundef %i.cd) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  call void @free(ptr noundef %i.cf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret double %.08.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS_7ProductIS3_S3_Li0EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1719", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !245, !nonnull !88, !align !89 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  store ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 -1, ptr %i.i, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !240, !nonnull !88, !align !89 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241, !nonnull !88, !align !89 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sdiv i64 9223372036854775807, %i.q
  %i.t = icmp sgt i64 %i.m, %i.s
  br i1 %i.t, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.u = mul nsw i64 %i.q, %i.m                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.not.i13 = icmp eq i64 %i.u, 0
  br i1 %.not.i13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.x = icmp sgt i64 %i.u, 0
  br i1 %i.x, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.y = icmp samesign ugt i64 %i.u, 2305843009213693951
  br i1 %i.y, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.z = shl nuw i64 %i.u, 3
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #30 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %.body.i.i.i.i.i.i.i.i.i

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.c
  %.sink.i = phi ptr [ %i.aa, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.m, ptr %i.v, align 8, !tbaa !38
  store i64 %i.q, ptr %i.w, align 8, !tbaa !39
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !147
  store i64 %i.m, ptr %i.i, align 8, !tbaa !148
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_10DenseShapeES4_Li8EE6evalToIS3_EEvRT_RKS3_SA_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit unwind label %.body.i.i.i.i.i.i.i.i.i

common.resume:                                    ; preds = %bb.j, %.body.i.i.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %.body.i.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.j ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %.invoke, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !40
  call void @free(ptr noundef %i.af) #26
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !241, !nonnull !88, !align !89
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39 ; 5 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.an, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %.not8.i = icmp eq i64 %i.ap, %i.al
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit
  %i.aq = icmp eq i64 %i.al, 0
  br i1 %i.aq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = sdiv i64 9223372036854775807, %i.al
  %i.as = icmp sgt i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.h:                                             ; preds = %bb.g
  %i.at = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.g, %bb.f
  %i.au = mul nsw i64 %i.al, %i.ai
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.au, i64 noundef %i.ai, i64 noundef %i.al)
          to label %thread-pre-split unwind label %bb.j

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.ao, align 8, !tbaa !39
  %.pre = load i64, ptr %i.am, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit
  %i.av = phi i64 [ %.pre, %thread-pre-split ], [ %i.ai, %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit ] ; 11 uses
  %i.aw = phi i64 [ %.pr, %thread-pre-split ], [ %i.al, %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS7_S7_Li0EEEEEEEEC2ERKSE_.exit ] ; 4 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !40    ; 4 uses
  %i.ay = icmp sgt i64 %i.aw, 0
  %i.az = icmp sgt i64 %i.av, 0
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS5_KNS_7ProductIS5_S5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSL_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.i
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !158 ; 3 uses
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !148 ; 4 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !158 ; 3 uses
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !148 ; 4 uses
  %i.be = mul i64 %i.aw, %i.av
  %i.bf = shl i64 %i.be, 3
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bg = add nuw i64 %i.aw, %i.av
  %i.bh = shl i64 %i.bg, 3
  %i.bi = add i64 %i.bh, -8                       ; 2 uses
  %scevgep24 = getelementptr i8, ptr %i.ba, i64 %i.bi
  %scevgep25 = getelementptr i8, ptr %i.bc, i64 %i.bi
  %min.iters.check = icmp ult i64 %i.av, 12
  %ident.check = icmp ne i64 %i.bb, 1
  %ident.check23 = icmp ne i64 %i.bd, 1
  %i.bj = or i1 %ident.check, %ident.check23
  %bound0 = icmp ult ptr %i.ax, %scevgep24
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %i.ax, %scevgep25
  %bound127 = icmp ult ptr %i.bc, %scevgep
  %found.conflict28 = and i1 %bound026, %bound127
  %.mask = and i64 %i.av, 1152921504606846976
  %stride.check29 = icmp ne i64 %.mask, 0
  %4 = or i1 %found.conflict28, %stride.check29
  %conflict.rdx = or i1 %found.conflict, %4
  %n.vec = and i64 %i.av, 8070450532247928828     ; 3 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.cf, %._crit_edge.i ] ; 4 uses
  %i.bk = mul nuw nsw i64 %.0810.i, %i.av
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ax, i64 %i.bk ; 4 uses
  %i.bl = getelementptr [8 x i8], ptr %i.ba, i64 %.0810.i ; 4 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bc, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bj
  %brmerge33 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge33, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !42, !alias.scope !1409
  %wide.load30.a = load <2 x double>, ptr %i.bq, align 8, !tbaa !42, !alias.scope !1409
  %i.br = getelementptr i8, ptr %i.bp, i64 16
  %wide.load31.a = load <2 x double>, ptr %i.bp, align 8, !tbaa !42, !alias.scope !1410
  %wide.load32 = load <2 x double>, ptr %i.br, align 8, !tbaa !42, !alias.scope !1410
  %i.bs = fsub <2 x double> %wide.load, %wide.load31.a
  %i.bt = fsub <2 x double> %wide.load30.a, %wide.load32
  %i.bu = getelementptr i8, ptr %i.bn, i64 16
  store <2 x double> %i.bs, ptr %i.bn, align 8, !tbaa !42, !alias.scope !1411, !noalias !1412
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !42, !alias.scope !1411, !noalias !1412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1406

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.ph
  %i.bw = mul nsw i64 %.09.i.ph, %i.bb
  %i.bx = getelementptr [8 x i8], ptr %i.bl, i64 %i.bw
  %i.by = mul nsw i64 %.09.i.ph, %i.bd
  %i.bz = getelementptr [8 x i8], ptr %i.bm, i64 %i.by
  %i.ca = load double, ptr %i.bx, align 8, !tbaa !42
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !42
  %i.cc = fsub double %i.ca, %i.cb
  store double %i.cc, ptr %gep.i.prol, align 8, !tbaa !42
  %i.cd = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %i.av, %.neg
  br i1 %i.ce, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cf = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.cf, %i.aw
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS5_KNS_7ProductIS5_S5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSL_.exit, label %.preheader.i, !llvm.loop !1407

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.cv, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.cg = mul nsw i64 %.09.i, %i.bb
  %i.ch = getelementptr [8 x i8], ptr %i.bl, i64 %i.cg
  %i.ci = mul nsw i64 %.09.i, %i.bd
  %i.cj = getelementptr [8 x i8], ptr %i.bm, i64 %i.ci
  %i.ck = load double, ptr %i.ch, align 8, !tbaa !42
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cm = fsub double %i.ck, %i.cl
  store double %i.cm, ptr %gep.i, align 8, !tbaa !42
  %i.cn = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cn
  %i.co = mul nsw i64 %i.cn, %i.bb
  %i.cp = getelementptr [8 x i8], ptr %i.bl, i64 %i.co
  %i.cq = mul nsw i64 %i.cn, %i.bd
  %i.cr = getelementptr [8 x i8], ptr %i.bm, i64 %i.cq
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !42
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !42
  %i.cu = fsub double %i.cs, %i.ct
  store double %i.cu, ptr %gep.i.1, align 8, !tbaa !42
  %i.cv = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cv, %i.av
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1408

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS5_KNS_7ProductIS5_S5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSL_.exit: ; preds = %._crit_edge.i, %bb.i
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !40
  call void @free(ptr noundef %i.cw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !40
  call void @free(ptr noundef %i.cy) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1414 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i64 %i.i, %i.c
  %.not11 = icmp eq i64 %i.g, 1
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i64 %i.g, %i.c                   ; 4 uses
  %.not.i.i = icmp eq i64 %i.j, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.k) #26
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %bb.e, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.d
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !58
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !1414
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %.sink.split.i.i
  %.pre = phi ptr [ %i.e, %bb.b ], [ %.pre.pre, %.sink.split.i.i ]
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.s = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit ]
  tail call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE6evalToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE6evalToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1737", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::Block.403", align 8  ; 8 uses
  %5 = alloca %"class.Eigen::Product.1724", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.f = add nsw i64 %i.e, %i.c
  %i.g = icmp slt i64 %i.f, 19
  %i.h = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.i, align 8, !tbaa !85, !alias.scope !1421
  call void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
end_hunk_4
