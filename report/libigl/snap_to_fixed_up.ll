Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0

$_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKNS5_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSN_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKNS5_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_ = comdat any

$_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b = comdat any

$_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE = comdat any

$_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_ = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdS3_Lb0ELi1EE3runEllRKS3_S6_Pdld = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll = comdat any

$_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll = comdat any

$_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll = comdat any

$_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IdLin1ELin1ELi0ELi2ELi3EEELb0EE3runINS2_IdLin1ELin1ELi0ELin1ELi3EEEEEvRT_RKS3_RKS4_RKNS8_6ScalarE = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi2ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_ = comdat any

$_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELi3EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IdLin1ELin1ELi0ELi2ELi3EEELi0EEEEERKT_ = comdat any

$_ZN5Eigen8internal23triangular_product_implILi1ELb1EKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELb0ENS3_IdLin1ELin1ELi0ELi2ELi3EEELb0EE3runINS3_IdLin1ELin1ELi0ELin1ELi3EEEEEvRT_RS7_RKS8_RKNSC_6ScalarE = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

$_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global %"struct.Eigen::internal::CacheSizes" zeroinitializer, comdat, align 8
@_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global i64 0, comdat, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16snap_to_fixed_upIfEEvRKN5Eigen10QuaternionIT_Li0EEERS4_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 4     ; 6 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %4 = alloca %"class.Eigen::Quaternion", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load float, ptr %0, align 16, !tbaa !12, !noalias !445 ; 4 uses
  %i.b = fmul float %i.a, 2.000000e+00            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !12, !noalias !445 ; 3 uses
  %i.e = fmul float %i.d, 2.000000e+00            ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 8, !tbaa !12, !noalias !445 ; 2 uses
  %i.h = fmul float %i.g, 2.000000e+00            ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !12, !noalias !445 ; 3 uses
  %i.k = fmul float %i.b, %i.j                    ; 2 uses
  %i.l = fmul float %i.e, %i.j                    ; 2 uses
  %i.m = fmul float %i.h, %i.j                    ; 2 uses
  %i.n = fmul float %i.a, %i.b                    ; 2 uses
  %i.o = fmul float %i.a, %i.e                    ; 2 uses
  %i.p = fmul float %i.a, %i.h                    ; 2 uses
  %i.q = fmul float %i.d, %i.e                    ; 2 uses
  %i.r = fmul float %i.d, %i.h                    ; 2 uses
  %i.s = fmul float %i.g, %i.h                    ; 2 uses
  %i.t = fadd float %i.q, %i.s
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = fsub float %i.o, %i.m
  %i.w = fadd float %i.p, %i.l
  %i.x = fadd float %i.o, %i.m
  %i.y = fadd float %i.n, %i.s
  %i.z = fsub float 1.000000e+00, %i.y
  %i.aa = fsub float %i.r, %i.k
  %i.ab = fsub float %i.p, %i.l
  %i.ac = fadd float %i.r, %i.k
  %i.ad = fadd float %i.n, %i.q
  %i.ae = fsub float 1.000000e+00, %i.ad
  %i.af = fmul float %i.u, 0.000000e+00
  %i.ag = fmul float %i.w, 0.000000e+00
  %i.ah = fadd float %i.v, %i.ag
  %i.ai = fadd float %i.af, %i.ah
  store float %i.ai, ptr %2, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = fmul float %i.x, 0.000000e+00
  %i.al = fmul float %i.aa, 0.000000e+00
  %i.am = fadd float %i.z, %i.al
  %i.an = fadd float %i.ak, %i.am                 ; 5 uses
  store float %i.an, ptr %i.aj, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = fmul float %i.ab, 0.000000e+00
  %i.aq = fmul float %i.ae, 0.000000e+00
  %i.ar = fadd float %i.ac, %i.aq
  %i.as = fadd float %i.ap, %i.ar                 ; 5 uses
  store float %i.as, ptr %i.ao, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store float 0.000000e+00, ptr %3, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %i.an, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float %i.as, ptr %i.au, align 8, !tbaa !12
  %i.av = fmul float %i.an, %i.an
  %i.aw = fmul float %i.as, %i.as
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = fcmp oeq float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.at, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = phi float [ 0.000000e+00, %bb.b ], [ %i.as, %bb.a ] ; 3 uses
  %i.ba = phi float [ 1.000000e+00, %bb.b ], [ %i.an, %bb.a ] ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fadd float %i.bb, %i.bc                 ; 2 uses
  %i.be = fcmp ogt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.bf = tail call float @llvm.sqrt.f32(float %i.bd) ; 2 uses
  %i.bg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ba, i64 1
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x float> %i.bg, %i.bi
  store <2 x float> %i.bj, ptr %3, align 8, !tbaa !12
  %i.bk = fdiv float %i.az, %i.bf
  store float %i.bk, ptr %i.au, align 8, !tbaa !12
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bl = call noundef nonnull align 16 dereferenceable(16) ptr @_ZN5Eigen14QuaternionBaseINS_10QuaternionIfLi0EEEE17setFromTwoVectorsINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEES6_EERS2_RKNS_10MatrixBaseIT_EERKNS8_IT0_EE(ptr noundef nonnull align 16 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.sroa.03.0.copyload = load <4 x float>, ptr %4, align 16, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bm = load <4 x float>, ptr %0, align 16, !tbaa !13, !noalias !446 ; 4 uses
  %i.bn = shufflevector <4 x float> %.sroa.03.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.bp = fmul <4 x float> %i.bn, %i.bo
  %i.bq = shufflevector <4 x float> %.sroa.03.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.br = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bs = fmul <4 x float> %i.bq, %i.br
  %i.bt = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bu = fmul <4 x float> %.sroa.03.0.copyload, %i.bt
  %i.bv = shufflevector <4 x float> %.sroa.03.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.bw = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.bx = fmul <4 x float> %i.bv, %i.bw
  %i.by = fsub <4 x float> %i.bu, %i.bx
  %i.bz = fadd <4 x float> %i.bp, %i.bs
  %i.ca = bitcast <4 x float> %i.bz to <4 x i32>
  %i.cb = xor <4 x i32> %i.ca, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.cc = bitcast <4 x i32> %i.cb to <4 x float>
  %i.cd = fadd <4 x float> %i.by, %i.cc
  store <4 x float> %i.cd, ptr %1, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16snap_to_fixed_upIdEEvRKN5Eigen10QuaternionIT_Li0EEERS4_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit:
  %2 = alloca %"class.Eigen::Matrix.2436", align 16 ; 8 uses
  %3 = alloca %"class.Eigen::JacobiSVD.2455", align 16 ; 11 uses
  %.sroa.0 = alloca [3 x double], align 16        ; 5 uses
  %i.a = load double, ptr %0, align 16, !tbaa !15, !noalias !459 ; 4 uses
  %i.b = fmul double %i.a, 2.000000e+00           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !15, !noalias !459 ; 3 uses
  %i.e = fmul double %i.d, 2.000000e+00           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = fmul double %i.a, %i.e                   ; 2 uses
  %i.i = fmul double %i.d, %i.e                   ; 2 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !15, !noalias !459 ; 3 uses
  %i.k = load double, ptr %i.f, align 16, !tbaa !15, !noalias !459 ; 2 uses
  %i.l = fmul double %i.b, %i.j                   ; 2 uses
  %i.m = fmul double %i.e, %i.j                   ; 2 uses
  %i.n = fmul double %i.a, %i.b                   ; 2 uses
  %i.o = fmul double %i.k, 2.000000e+00           ; 4 uses
  %i.p = fmul double %i.a, %i.o                   ; 2 uses
  %i.q = fmul double %i.d, %i.o                   ; 2 uses
  %i.r = fmul double %i.k, %i.o                   ; 2 uses
  %i.s = fadd double %i.i, %i.r
  %i.t = fsub double 1.000000e+00, %i.s
  %.sroa.041.0.vec.insert = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = fadd double %i.n, %i.r
  %i.v = fmul double %i.o, %i.j                   ; 2 uses
  %i.w = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.h, i64 0
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.u, i64 1
  %i.z = fsub <2 x double> %i.w, %i.y
  %i.aa = fadd double %i.p, %i.m
  %.sroa.10.48.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ab = fadd double %i.h, %i.v
  %.sroa.041.8.vec.insert = insertelement <2 x double> %.sroa.041.0.vec.insert, double %i.ab, i64 1
  %i.ac = fsub double %i.q, %i.l
  %.sroa.10.56.vec.insert = insertelement <2 x double> %.sroa.10.48.vec.insert, double %i.ac, i64 1
  %i.ad = fsub double %i.p, %i.m
  %i.ae = fadd double %i.q, %i.l
  %i.af = fadd double %i.n, %i.i
  %i.ag = fsub double 1.000000e+00, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %.sroa.0, align 16, !tbaa !15
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double 0.000000e+00, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !15
  %i.ah = fmul <2 x double> %.sroa.041.8.vec.insert, zeroinitializer
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 3 uses
  %i.ai = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.z, %i.ai
  %i.ak = fadd <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %.sroa.10.56.vec.insert, %i.al
  %i.an = fadd <2 x double> %i.am, %i.ak          ; 5 uses
  %i.ao = fmul double %i.ad, 0.000000e+00
  %i.ap = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.aq = fmul double %i.ae, %i.ap
  %i.ar = fmul double %i.ag, 0.000000e+00
  %i.as = fadd double %i.ar, %i.aq
  %i.at = fadd double %i.ao, %i.as                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.014.8.vec.insert32 = insertelement <2 x double> %i.an, double 0.000000e+00, i64 0 ; 3 uses
  %i.au = fmul <2 x double> %.sroa.014.8.vec.insert32, %.sroa.014.8.vec.insert32 ; 2 uses
  %shift = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.au, %shift
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = fmul <2 x double> %i.an, %i.an          ; 2 uses
  %i.ax = fmul double %i.at, %i.at                ; 2 uses
  %i.ay = fadd double %i.ax, %i.av
  %i.az = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %.sroa.014.0 = select i1 %i.az, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %.sroa.014.8.vec.insert32 ; 4 uses
  %.sroa.10.0 = select i1 %i.az, double 0.000000e+00, double %i.at ; 4 uses
  %i.ba = fmul <2 x double> %.sroa.014.0, %.sroa.014.0 ; 2 uses
  %shift48 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fadd <2 x double> %i.ba, %shift48
  %i.bb = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bc = fmul double %.sroa.10.0, %.sroa.10.0
  %i.bd = fadd double %i.bc, %i.bb                ; 2 uses
  %i.be = fcmp ogt double %i.bd, 0.000000e+00     ; 2 uses
  %.scalar.i3 = tail call double @llvm.sqrt.f64(double %i.bd) ; 2 uses
  %i.bf = insertelement <2 x double> poison, double %.scalar.i3, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x double> %.sroa.014.0, %i.bg
  %i.bi = fdiv double %.sroa.10.0, %.scalar.i3
  %.sroa.014.1 = select i1 %i.be, <2 x double> %i.bh, <2 x double> %.sroa.014.0 ; 4 uses
  %.sroa.10.1 = select i1 %i.be, double %i.bi, double %.sroa.10.0 ; 3 uses
  %i.bj = fmul <2 x double> %.sroa.014.1, %.sroa.014.1 ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = fmul double %.sroa.10.1, %.sroa.10.1
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.ax, i64 1
  %i.bq = fadd <2 x double> %i.bp, %i.bm          ; 2 uses
  %i.br = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bq) ; 3 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fdiv <2 x double> %i.an, %i.bs
  %i.bu = fcmp ogt <2 x double> %i.bq, zeroinitializer ; 3 uses
  %.splat = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.i.i = select <2 x i1> %.splat, <2 x double> %i.bt, <2 x double> %i.an ; 7 uses
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %.sroa.014.1, %i.bv
  %i.bx = insertelement <2 x double> poison, double %.sroa.10.1, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.at, i64 1 ; 2 uses
  %i.bz = fdiv <2 x double> %i.by, %i.br
  %i.ca = select <2 x i1> %i.bu, <2 x double> %i.bz, <2 x double> %i.by ; 5 uses
  %.splat54 = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %.sroa.057.0.i.i = select <2 x i1> %.splat54, <2 x double> %i.bw, <2 x double> %.sroa.014.1 ; 7 uses
  %i.cb = fmul <2 x double> %.sroa.0.0.i.i, %.sroa.057.0.i.i ; 2 uses
  %shift51 = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fadd <2 x double> %i.cb, %shift51
  %i.cc = extractelement <2 x double> %foldExtExtBinop52, i64 0
  %i.cd = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.ce = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = fadd double %i.cf, %i.cc                ; 4 uses
  %i.ch = fcmp olt double %i.cg, f0xBFEFFFFFFFFFDCD1
  br i1 %i.ch, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit
  %i.ci = fcmp olt double %i.cg, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ci, double -1.000000e+00, double %i.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !460
  %.sroa.0.0.vec.extract53.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 0
  store double %.sroa.0.0.vec.extract53.i.i, ptr %2, align 16, !tbaa !15, !noalias !461
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %i.ce, ptr %4, align 16, !tbaa !15, !noalias !461
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = shufflevector <2 x double> %.sroa.057.0.i.i, <2 x double> %.sroa.0.0.i.i, <2 x i32> <i32 0, i32 3>
  store <2 x double> %5, ptr %i.cj, align 8, !tbaa !15, !noalias !460
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.057.8.vec.extract62.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 1
  store double %.sroa.057.8.vec.extract62.i.i, ptr %6, align 8, !tbaa !15, !noalias !460
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.cd, ptr %i.ck, align 8, !tbaa !15, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !460
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 0, ptr %i.cm, align 4, !tbaa !32, !noalias !460
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.cl, i8 0, i64 11, i1 false), !noalias !460
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 -1, i64 16, i1 false), !noalias !460
  store i64 0, ptr %i.co, align 8, !tbaa !33, !noalias !460
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i8 0, ptr %i.cp, align 16, !tbaa !52, !noalias !460
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 369
  store i8 0, ptr %i.cq, align 1, !tbaa !462, !noalias !460
  %i.cr = call noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %3, ptr noundef nonnull align 16 dereferenceable(48) %2, i32 noundef 16), !noalias !460 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !13, !noalias !460
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cv = load double, ptr %i.cu, align 16, !tbaa !15, !noalias !460
  %i.cw = fadd nnan double %.sroa.speculated.i.i, 1.000000e+00
  %i.cx = fmul nnan double %i.cw, 5.000000e-01    ; 2 uses
  %i.cy = call double @sqrt(double noundef %i.cx) #19, !noalias !460
  %i.cz = fsub double 1.000000e+00, %i.cx
  %i.da = call double @sqrt(double noundef %i.cz) #19, !noalias !460 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.ct, %i.db
  %i.dd = fmul double %i.cv, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !460
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit
  %.sroa.0.8.vec.extract.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 1
  %.sroa.057.8.vec.extract.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 1
  %.sroa.057.0.vec.extract.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 0
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 0
  %i.de = shufflevector <2 x double> %.sroa.057.0.i.i, <2 x double> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.df = fneg <2 x double> %i.de
  %i.dg = shufflevector <2 x double> %i.ca, <2 x double> %.sroa.0.0.i.i, <2 x i32> <i32 1, i32 2>
  %i.dh = fmul <2 x double> %i.dg, %i.df
  %i.di = shufflevector <2 x double> %.sroa.0.0.i.i, <2 x double> %.sroa.057.0.i.i, <2 x i32> <i32 1, i32 2>
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.ca, <2 x double> %i.dh)
  %i.dk = fneg double %.sroa.057.0.vec.extract.i.i
  %i.dl = fmul double %.sroa.0.8.vec.extract.i.i, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.vec.extract.i.i, double %.sroa.057.8.vec.extract.i.i, double %i.dl)
  %i.dn = fadd double %i.cg, 1.000000e+00
  %i.do = fmul double %i.dn, 2.000000e+00
  %i.dp = tail call double @sqrt(double noundef %i.do) #19, !noalias !460 ; 2 uses
  %i.dq = fdiv double 1.000000e+00, %i.dp         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dr = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.dj, %i.dr
  %i.dt = fmul double %i.dm, %i.dq
  %i.du = fmul double %i.dp, 5.000000e-01
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit: ; preds = %bb.a, %bb.b
  %.sink71.i.i = phi double [ %i.cy, %bb.a ], [ %i.du, %bb.b ]
  %.sink70.i.i = phi <2 x double> [ %i.dc, %bb.a ], [ %i.ds, %bb.b ] ; 2 uses
  %.sink.i.i = phi double [ %i.dd, %bb.a ], [ %i.dt, %bb.b ]
  %i.dv = load <2 x double>, ptr %0, align 16, !tbaa !13, !noalias !463 ; 4 uses
  %i.dw = load <2 x double>, ptr %i.f, align 16, !tbaa !13, !noalias !463 ; 4 uses
  %i.dx = shufflevector <2 x double> %.sink70.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = shufflevector <2 x double> %.sink70.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dz = insertelement <2 x double> poison, double %.sink.i.i, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %.sink71.i.i, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <2 x double> %i.ec, %i.dv
  %i.ee = fmul <2 x double> %i.dy, %i.dw
  %i.ef = fadd <2 x double> %i.ed, %i.ee
  %i.eg = fmul <2 x double> %i.dv, %i.ea
  %i.eh = fmul <2 x double> %i.dx, %i.dw
  %i.ei = fsub <2 x double> %i.eg, %i.eh
  %i.ej = bitcast <2 x double> %i.ei to <2 x i64>
  %i.ek = xor <2 x i64> %i.ej, <i64 0, i64 -9223372036854775808>
  %i.el = bitcast <2 x i64> %i.ek to <2 x double>
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fadd <2 x double> %i.ef, %i.em
  %i.eo = fmul <2 x double> %i.ec, %i.dw
  %i.ep = fmul <2 x double> %i.dy, %i.dv
  %i.eq = fsub <2 x double> %i.eo, %i.ep
  %i.er = fmul <2 x double> %i.dw, %i.ea
  %i.es = fmul <2 x double> %i.dx, %i.dv
  %i.et = fadd <2 x double> %i.es, %i.er
  %i.eu = bitcast <2 x double> %i.et to <2 x i64>
  %i.ev = xor <2 x i64> %i.eu, <i64 -9223372036854775808, i64 0>
  %i.ew = bitcast <2 x i64> %i.ev to <2 x double>
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = fadd <2 x double> %i.eq, %i.ex
  store <2 x double> %i.en, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> %i.ey, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(16) ptr @_ZN5Eigen14QuaternionBaseINS_10QuaternionIfLi0EEEE17setFromTwoVectorsINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEES6_EERS2_RKNS_10MatrixBaseIT_EERKNS8_IT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.159", align 4 ; 8 uses
  %4 = alloca %"class.Eigen::JacobiSVD", align 16 ; 11 uses
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !12, !noalias !470 ; 4 uses
  %i.b = fmul <2 x float> %i.a, %i.a              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12, !noalias !470 ; 4 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = extractelement <2 x float> %i.b, i64 1
  %i.g = fadd float %i.f, %i.e
  %i.h = extractelement <2 x float> %i.b, i64 0
  %i.i = fadd float %i.h, %i.g                    ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call float @llvm.sqrt.f32(float %i.i) ; 2 uses
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.a, %i.m
  %i.o = fdiv float %i.d, %i.k
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.12.0 = phi float [ %i.o, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.p = phi <2 x float> [ %i.n, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.q = load float, ptr %2, align 4, !tbaa !12, !noalias !471 ; 4 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = getelementptr i8, ptr %2, i64 4
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !12, !noalias !471 ; 4 uses
  %i.u = fmul <2 x float> %i.t, %i.t              ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fadd float %i.r, %i.v                    ; 2 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.c, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18

bb.c:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %i.y = tail call float @llvm.sqrt.f32(float %i.w) ; 2 uses
  %i.z = fdiv float %i.q, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.t, %i.ab
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18

_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit, %bb.c
  %.sroa.052.0 = phi float [ %i.z, %bb.c ], [ %i.q, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit ] ; 4 uses
  %i.ad = phi <2 x float> [ %i.ac, %bb.c ], [ %i.t, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit ] ; 5 uses
  %i.ae = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.af = fmul float %i.ae, %.sroa.052.0
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.p, i64 1  ; 2 uses
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = extractelement <2 x float> %i.ad, i64 1
  %i.ak = fmul float %.sroa.12.0, %i.aj
  %i.al = fadd float %i.ak, %i.ai
  %i.am = fadd float %i.af, %i.al                 ; 4 uses
  %i.an = fcmp olt float %i.am, f0xBF7FFF58
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18
  %i.ao = fcmp olt float %i.am, -1.000000e+00
  %.sroa.speculated = select i1 %i.ao, float -1.000000e+00, float %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store float %i.ae, ptr %3, align 4, !tbaa !12, !noalias !472
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ah, ptr %i.ap, align 4, !tbaa !12, !noalias !472
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.052.0, ptr %i.ar, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.ag, ptr %i.as, align 4, !tbaa !12
  %i.at = insertelement <2 x float> %i.ad, float %.sroa.12.0, i64 0
  store <2 x float> %i.at, ptr %i.aq, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 0, ptr %i.av, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.au, i8 0, i64 11, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.ax, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i8 0, ptr %i.ay, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 233
  store i8 0, ptr %i.az, align 1, !tbaa !473
  %i.ba = call noundef nonnull align 16 dereferenceable(348) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(348) %4, ptr noundef nonnull align 4 dereferenceable(24) %3, i32 noundef 16) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bd = load float, ptr %i.bc, align 16, !tbaa !12
end_hunk_0
