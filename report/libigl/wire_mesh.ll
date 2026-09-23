Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/wire_mesh?download=true
inline.NumInlined: 10643
inline.NumDeleted: 5829
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 91
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
%"class.Eigen::TriangularView.1683" = type { %"class.Eigen::Transpose.1687" }
%"class.Eigen::Transpose.1687" = type { ptr }
%"class.Eigen::Transpose.1816" = type { %"class.Eigen::Block.1759" }
%"class.Eigen::Block.1759" = type { %"class.Eigen::BlockImpl.1760" }
%"class.Eigen::BlockImpl.1760" = type { %"class.Eigen::internal::BlockImpl_dense.1761" }
%"class.Eigen::internal::BlockImpl_dense.1761" = type { %"class.Eigen::MapBase.1762", %"class.Eigen::Block.1770", [8 x i8], %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1762" = type { %"class.Eigen::MapBase.1763" }
%"class.Eigen::MapBase.1763" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.1770" = type { %"class.Eigen::BlockImpl.1771" }
%"class.Eigen::BlockImpl.1771" = type { %"class.Eigen::internal::BlockImpl_dense.1772" }
%"class.Eigen::internal::BlockImpl_dense.1772" = type { %"class.Eigen::MapBase.1773", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1773" = type { %"class.Eigen::MapBase.1774" }
%"class.Eigen::MapBase.1774" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Transpose.1824" = type { %"class.Eigen::Block.1747" }
%"class.Eigen::Block.1747" = type { %"class.Eigen::BlockImpl.1748" }
%"class.Eigen::BlockImpl.1748" = type { %"class.Eigen::internal::BlockImpl_dense.1749" }
%"class.Eigen::internal::BlockImpl_dense.1749" = type { %"class.Eigen::MapBase.1750", %"class.Eigen::Block.617", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1750" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Transpose.1831" = type { %"class.Eigen::CwiseBinaryOp.1709" }
%"class.Eigen::CwiseBinaryOp.1709" = type <{ [8 x i8], %"class.Eigen::CwiseNullaryOp.1440", %"class.Eigen::Transpose.1715", [8 x i8] }>
%"class.Eigen::CwiseNullaryOp.1440" = type { [8 x i8], %"class.Eigen::internal::variable_if_dynamic", %"struct.Eigen::internal::scalar_constant_op" }
%"struct.Eigen::internal::scalar_constant_op" = type { double }
%"class.Eigen::Transpose.1715" = type { %"class.Eigen::Block.1722" }
%"class.Eigen::Block.1722" = type { %"class.Eigen::BlockImpl.1723" }
%"class.Eigen::BlockImpl.1723" = type { %"class.Eigen::internal::BlockImpl_dense.1724" }
%"class.Eigen::internal::BlockImpl_dense.1724" = type { %"class.Eigen::MapBase.base.1731", %"class.Eigen::Block.1732", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.1731" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.1732" = type { %"class.Eigen::BlockImpl.1733" }
%"class.Eigen::BlockImpl.1733" = type { %"class.Eigen::internal::BlockImpl_dense.1734" }
%"class.Eigen::internal::BlockImpl_dense.1734" = type { %"class.Eigen::MapBase.base.1741", %"class.Eigen::Block.617", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.1741" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }
%"class.Eigen::Matrix.2063" = type { %"class.Eigen::PlainObjectBase.2064" }
%"class.Eigen::PlainObjectBase.2064" = type { %"class.Eigen::DenseStorage.2071" }
%"class.Eigen::DenseStorage.2071" = type { %"struct.Eigen::internal::plain_array.2072" }
%"struct.Eigen::internal::plain_array.2072" = type { [64 x double] }
%"struct.Eigen::internal::gebp_kernel" = type { i8 }
%"struct.Eigen::internal::gemm_pack_lhs" = type { i8 }
%"struct.Eigen::internal::gemm_pack_rhs" = type { i8 }
%"class.Eigen::internal::const_blas_data_mapper.2060" = type { %"class.Eigen::internal::blas_data_mapper.2061" }
%"class.Eigen::internal::blas_data_mapper.2061" = type { ptr, i64 }
%"class.Eigen::internal::blas_data_mapper.2062" = type { ptr, i64 }
%"struct.Eigen::internal::lhs_process_one_packet" = type { i8 }
%"class.Eigen::internal::gemm_blocking_space.2147" = type { %"class.Eigen::internal::level3_blocking", i64, i64 }
%"class.Eigen::Matrix.2157" = type { %"class.Eigen::PlainObjectBase.2158" }
%"class.Eigen::PlainObjectBase.2158" = type { %"class.Eigen::DenseStorage.2165" }
%"class.Eigen::DenseStorage.2165" = type { %"struct.Eigen::internal::plain_array.2166" }
%"struct.Eigen::internal::plain_array.2166" = type { [64 x double] }
%"struct.Eigen::internal::gemm_pack_lhs.2175" = type { i8 }

$_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdiRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE = comdat any

$_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE = comdat any

$_ZZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EEENKUlRKS8_iE_clESX_i = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_ = comdat any

$_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j = comdat any

$_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_ = comdat any

$_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_ = comdat any

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

$_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IdLin1ELin1ELi0ELi2ELi3EEELb0EE3runINS2_IdLin1ELin1ELi0ELin1ELi3EEEEEvRT_RKS3_RKS4_RKNS8_6ScalarE = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi2ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_ = comdat any

$_ZN5Eigen8internal10CacheSizesC2Ev = comdat any

$_ZN5Eigen8internal15queryCacheSizesERiS1_S1_ = comdat any

$_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_ = comdat any

$_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELi3EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IdLin1ELin1ELi0ELi2ELi3EEELi0EEEEERKT_ = comdat any

$_ZN5Eigen8internal23triangular_product_implILi1ELb1EKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELb0ENS3_IdLin1ELin1ELi0ELi2ELi3EEELb0EE3runINS3_IdLin1ELin1ELi0ELin1ELi3EEEEEvRT_RS7_RKS8_RKNSC_6ScalarE = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll = comdat any

$_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE = comdat any

$_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEC2INS_11IndexedViewINS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

$_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

@.str = private unnamed_addr constant [6 x i8] c"union\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global %"struct.Eigen::internal::CacheSizes" zeroinitializer, comdat, align 8
@_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZN3igl12placeholdersL3allE = internal constant %"struct.Eigen::internal::all_t" undef, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdiRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %.sink.split.i.i

.noexc:                                           ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.c, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %7, align 8, !tbaa !16
  store i64 1, ptr %i.d, align 8, !tbaa !17
  store double %2, ptr %i.a, align 8, !tbaa !19, !noalias !246
  invoke void @_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdibRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE.exit unwind label %common.resume.i

common.resume.i:                                  ; preds = %.sink.split.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %i.e

_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdibRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE.exit: ; preds = %.sink.split.i.i
  %i.g = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.Eigen::Matrix.226", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::JacobiSVD", align 16 ; 11 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.169", align 8 ; 5 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.173", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %14 = alloca %"class.Eigen::Matrix.33", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %16 = alloca %"class.Eigen::Matrix.59", align 16 ; 14 uses
  %17 = alloca %"class.Eigen::Matrix.59", align 16 ; 12 uses
  %18 = alloca %"class.std::vector.156", align 8  ; 14 uses
  %19 = alloca %"class.std::vector.49", align 8   ; 11 uses
  %20 = alloca %class.anon.161, align 8           ; 9 uses
  %21 = alloca %"class.Eigen::Matrix.162", align 8 ; 9 uses
  %22 = alloca %"class.Eigen::Matrix.162", align 8 ; 9 uses
  %23 = alloca %"class.Eigen::Matrix.163", align 8 ; 10 uses
  %24 = alloca %"class.Eigen::Matrix.164", align 8 ; 10 uses
  %25 = alloca %"class.Eigen::Matrix.163", align 8 ; 7 uses
  %26 = alloca %"class.Eigen::Matrix.164", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.a = sext i32 %3 to i64
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.a, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader unwind label %bb.b

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader
  %i.e = uitofp nneg i64 %i.c to double
  %i.f = load ptr, ptr %14, align 8, !tbaa !22
  %.idx = shl i64 %i.c, 4
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit

common.resume:                                    ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn178, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %14, align 8, !tbaa !22
  call void @free(ptr noundef %i.h) #23
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = shl nsw i64 %i.c, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = mul nsw i64 %i.k, %i.m
  %i.o = add nsw i64 %i.n, %i.j                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 3074457345618258602
  br i1 %i.p, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.r = mul nsw i64 %i.o, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.r, i64 noundef %i.o, i64 noundef 3)
          to label %bb.d unwind label %bb.i

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit: ; preds = %.lr.ph, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = fdiv double %i.t, %i.e
  %i.v = fmul double %i.u, 2.000000e+00
  %i.w = fmul double %i.v, f0x400921FB54442D18    ; 2 uses
  %i.x = call double @cos(double noundef %i.w) #23
  %i.y = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.z = fmul double %i.x, 5.000000e-01
  store double %i.z, ptr %i.y, align 8, !tbaa !19
  %i.aa = call double @sin(double noundef %i.w) #23
  %i.ab = getelementptr [8 x i8], ptr %i.y, i64 %i.c
  %i.ac = fmul double %i.aa, 5.000000e-01
  store double %i.ac, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr i8, ptr %i.y, i64 %.idx
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit, !llvm.loop !247

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.af = load ptr, ptr %5, align 8, !tbaa !29, !noalias !308 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24, !noalias !308 ; 2 uses
  store ptr %i.af, ptr %15, align 8, !tbaa !32, !alias.scope !308
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !33, !alias.scope !308
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 3, ptr %i.aj, align 8, !tbaa !33, !alias.scope !308
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %5, ptr %i.ak, align 8, !tbaa !35, !alias.scope !308
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !308
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !309, !alias.scope !308
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.an = load ptr, ptr %0, align 8, !tbaa !29
  store ptr %i.an, ptr %10, align 8, !tbaa !310
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ae, ptr %i.ao, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.af, ptr %11, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %11, ptr %12, align 8, !tbaa !311
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.aq, align 8, !tbaa !312
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.ar, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %15, ptr %i.as, align 8, !tbaa !313
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.at = load i64, ptr %i.i, align 8, !tbaa !24  ; 4 uses
  %i.au = icmp ugt i64 %i.at, 384307168202282325
  br i1 %i.au, label %bb.f, label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc182 unwind label %bb.k

.noexc182:                                        ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.av = mul nuw nsw i64 %i.at, 24               ; 3 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #26
          to label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EEC2EmRKS4_.exit unwind label %bb.k ; 6 uses

_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EEC2EmRKS4_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.at ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.av ; 3 uses
  %.pr = load i64, ptr %i.i, align 8, !tbaa !24   ; 4 uses
  %i.ay = icmp ugt i64 %.pr, 2305843009213693951
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EEC2EmRKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc185 unwind label %bb.l

.noexc185:                                        ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EEC2EmRKS4_.exit
  %.not.i.i.i.i184 = icmp eq i64 %.pr, 0
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.az = shl nuw nsw i64 %.pr, 2                 ; 2 uses
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #26
          to label %.noexc186 unwind label %bb.l  ; 3 uses

.noexc186:                                        ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.az, i1 false), !tbaa !48
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.pr
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc186, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0416.0453504 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.aw, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aw, %.noexc186 ] ; 10 uses
  %.sink.i474502 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.ax, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ax, %.noexc186 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i495500 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %scevgep.i.i.i.i.i, %.noexc186 ] ; 4 uses
  %.sroa.12407.0 = phi i64 [ 0, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bc, %.noexc186 ] ; 2 uses
  %.sroa.0401.0 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ba, %.noexc186 ] ; 14 uses
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !27  ; 10 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph522, label %._crit_edge529

.lr.ph522:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %xtraiter = and i64 %i.bd, 1
  %i.bg = icmp eq i64 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph522.new

.lr.ph522.new:                                    ; preds = %.lr.ph522
  %unroll_iter = and i64 %i.bd, 9223372036854775806
  br label %bb.m

.lr.ph528.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph528, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph528.unr-lcssa, %.lr.ph522
  %indvars.iv551.epil.init = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next552.1, %.lr.ph528.unr-lcssa ]
  %lcmp.mod843 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod843)
  %i.bh = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv551.epil.init ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !48
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !48
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !48
  %i.bn = getelementptr [4 x i8], ptr %i.bh, i64 %i.bd
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !48
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !48
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !48
  br label %.lr.ph528

.lr.ph528:                                        ; preds = %.lr.ph528.unr-lcssa, %.epil.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 140
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 369
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.n

bb.i:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.j:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.k:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit271

bb.m:                                             ; preds = %bb.m, %.lr.ph522.new
  %indvars.iv551 = phi i64 [ 0, %.lr.ph522.new ], [ %indvars.iv.next552.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph522.new ], [ %niter.next.1, %bb.m ]
  %i.cl = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv551 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !48
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !48
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.bd
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !48
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !48
  %i.cx = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv551
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !48
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !48
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !48
  %i.de = getelementptr [4 x i8], ptr %i.cy, i64 %i.bd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !48
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !48
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !48
  %indvars.iv.next552.1 = add nuw nsw i64 %indvars.iv551, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph528.unr-lcssa, label %bb.m, !llvm.loop !250

._crit_edge529:                                   ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.dk = phi i64 [ %i.bd, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.pre597, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %5, ptr %20, align 8, !tbaa !314
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.dl, align 8, !tbaa !315
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %19, ptr %i.dm, align 8, !tbaa !316
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph537, label %.preheader508

.lr.ph537:                                        ; preds = %._crit_edge529
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.ae

bb.n:                                             ; preds = %.lr.ph528, %._crit_edge
  %.pre597606 = phi i64 [ %i.bd, %.lr.ph528 ], [ %.pre597, %._crit_edge ]
  %indvars.iv563 = phi i64 [ 0, %.lr.ph528 ], [ %indvars.iv.next564, %._crit_edge ] ; 11 uses
  %i.dq = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %indvars.iv563
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !48
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.0453504, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !319 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !320
  %.not.i = icmp eq ptr %i.dw, %i.dy
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = trunc nuw nsw i64 %indvars.iv563 to i32
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !322
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 0, ptr %i.ea, align 4, !tbaa !323
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.eb, ptr %i.dv, align 8, !tbaa !319
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ec = load ptr, ptr %i.du, align 8, !tbaa !324 ; 5 uses
  %i.ed = ptrtoint ptr %i.dw to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.q, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc188 unwind label %.loopexit.split-lp

.noexc188:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #26
          to label %.noexc189 unwind label %.loopexit511 ; 5 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv563 to i32
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !322
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 0, ptr %i.eq, align 4, !tbaa !323
  %.not10.i.i.i.i.i = icmp eq ptr %i.ec, %i.dw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc189, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i ], [ %i.en, %.noexc189 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ec, %.noexc189 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.er = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !326, !noalias !325
  store i64 %i.er, ptr %.012.i.i.i.i.i, align 4, !alias.scope !325, !noalias !326
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.dw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !254

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc189
  %.0.lcssa.i.i.i.i.i187 = phi ptr [ %i.en, %.noexc189 ], [ %i.et, %.lr.ph.i.i.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i187, i64 8
  %.not.i34.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !320
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ew, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ex) #27
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.en, ptr %i.du, align 8, !tbaa !324
  store ptr %i.eu, ptr %i.dv, align 8, !tbaa !319
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.ey, ptr %i.dx, align 8, !tbaa !320
  %.pre = load ptr, ptr %1, align 8, !tbaa !49
  %.pre594 = load i64, ptr %i.l, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.pre597605 = phi i64 [ %.pre597606, %bb.o ], [ %.pre594, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ez = phi ptr [ %i.dq, %bb.o ], [ %.pre, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.ez, i64 %indvars.iv563
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %.pre597605
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !48
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.0453504, i64 %i.fd ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !319 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !320
  %.not.i190 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i190, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = trunc nuw nsw i64 %indvars.iv563 to i32
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !322
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 1, ptr %i.fk, align 4, !tbaa !323
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fl, ptr %i.ff, align 8, !tbaa !319
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.fm = load ptr, ptr %i.fe, align 8, !tbaa !324 ; 5 uses
  %i.fn = ptrtoint ptr %i.fg to i64
  %i.fo = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.v, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc203 unwind label %.loopexit.split-lp513

.noexc203:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191: ; preds = %bb.u
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i192 = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i192, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i193 = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i.i193)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #26
          to label %.noexc204 unwind label %.loopexit512 ; 5 uses

.noexc204:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp ; 2 uses
  %i.fz = trunc nuw nsw i64 %indvars.iv563 to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !322
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 1, ptr %i.ga, align 4, !tbaa !323
  %.not10.i.i.i.i.i194 = icmp eq ptr %i.fm, %i.fg
  br i1 %.not10.i.i.i.i.i194, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195

.lr.ph.i.i.i.i.i195:                              ; preds = %.noexc204, %.lr.ph.i.i.i.i.i195
  %.012.i.i.i.i.i196 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i195 ], [ %i.fx, %.noexc204 ] ; 2 uses
  %.0911.i.i.i.i.i197 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i195 ], [ %i.fm, %.noexc204 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i197, align 4, !alias.scope !328, !noalias !327
  store i64 %i.gb, ptr %.012.i.i.i.i.i196, align 4, !alias.scope !327, !noalias !328
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i197, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i196, i64 8 ; 2 uses
  %.not.i.i.i.i.i198 = icmp eq ptr %i.gc, %i.fg
  br i1 %.not.i.i.i.i.i198, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195, !llvm.loop !254

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199: ; preds = %.lr.ph.i.i.i.i.i195, %.noexc204
  %.0.lcssa.i.i.i.i.i200 = phi ptr [ %i.fx, %.noexc204 ], [ %i.gd, %.lr.ph.i.i.i.i.i195 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i200, i64 8
  %.not.i34.i.i201 = icmp eq ptr %i.fm, null
  br i1 %.not.i34.i.i201, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  %i.gf = load ptr, ptr %i.fh, align 8, !tbaa !320
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = sub i64 %i.gg, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.gh) #27
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202: ; preds = %bb.w, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  store ptr %i.fx, ptr %i.fe, align 8, !tbaa !324
  store ptr %i.ge, ptr %i.ff, align 8, !tbaa !319
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gi, ptr %i.fh, align 8, !tbaa !320
  %.pre595 = load ptr, ptr %1, align 8, !tbaa !49
  %.pre596 = load i64, ptr %i.l, align 8, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202
  %.pre597604 = phi i64 [ %.pre597605, %bb.t ], [ %.pre596, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ] ; 2 uses
  %i.gj = phi ptr [ %i.ez, %bb.t ], [ %.pre595, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ]
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %indvars.iv563 ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %.pre597604
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !48
  %i.gn = sext i32 %i.gm to i64
  %i.go = load ptr, ptr %0, align 8, !tbaa !29, !noalias !329 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gn ; 3 uses
  %i.gq = load i32, ptr %i.gk, align 4, !tbaa !48
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gr ; 3 uses
  %i.gt = load i64, ptr %i.i, align 8, !tbaa !24  ; 3 uses
  %i.gu = load double, ptr %i.gp, align 8, !tbaa !19
  %i.gv = load double, ptr %i.gs, align 8, !tbaa !19
  %i.gw = fsub double %i.gu, %i.gv
  %.sroa.0376.0.vec.insert = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gt
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !19
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gt
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !19
  %i.hb = fsub double %i.gy, %i.ha
  %.sroa.0376.8.vec.insert = insertelement <2 x double> %.sroa.0376.0.vec.insert, double %i.hb, i64 1 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.gt, 4 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19
  %i.he = getelementptr inbounds i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !19
  %i.hg = fsub double %i.hd, %i.hf                ; 5 uses
  %i.hh = fmul <2 x double> %.sroa.0376.8.vec.insert, %.sroa.0376.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hh, %shift
  %i.hi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hj = fmul double %i.hg, %i.hg
  %i.hk = fadd double %i.hj, %i.hi                ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.hk) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.hl = fcmp ogt double %i.hk, 0.000000e+00
  br i1 %i.hl, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, label %.thread

.thread:                                          ; preds = %bb.x
  store <2 x double> %.sroa.0376.8.vec.insert, ptr %16, align 16
  store double %i.hg, ptr %i.bt, align 16, !tbaa !53
  br label %bb.z

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit: ; preds = %bb.x
  %i.hm = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fdiv <2 x double> %.sroa.0376.8.vec.insert, %i.hn ; 5 uses
  store <2 x double> %i.ho, ptr %16, align 16, !tbaa !53, !alias.scope !330
  %i.hp = fdiv double %i.hg, %.scalar.i           ; 5 uses
  store double %i.hp, ptr %i.bt, align 16, !tbaa !19, !alias.scope !330
  %.pre608 = fmul <2 x double> %i.ho, %i.ho       ; 2 uses
  %shift832 = shufflevector <2 x double> %.pre608, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop833 = fadd <2 x double> %.pre608, %shift832
  %.pre613 = extractelement <2 x double> %foldExtExtBinop833, i64 0
  %.pre615 = fmul double %i.hp, %i.hp
  %.pre617 = fadd double %.pre615, %.pre613
  %.pre617.fr = freeze double %.pre617            ; 2 uses
  %.pre619 = call double @llvm.sqrt.f64(double %.pre617.fr) ; 2 uses
  %i.hq = fcmp ogt double %.pre617.fr, 0.000000e+00
  %i.hr = insertelement <2 x double> poison, double %.pre619, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fdiv <2 x double> %i.ho, %i.hs
  %i.hu = fdiv double %i.hp, %.pre619
  br i1 %i.hq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, %.thread
  %i.hv = phi <2 x double> [ %.sroa.0376.8.vec.insert, %.thread ], [ %i.ho, %bb.y ], [ %i.ht, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 5 uses
  %i.hw = phi double [ %i.hg, %.thread ], [ %i.hp, %bb.y ], [ %i.hu, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 4 uses
  %i.hx = fmul <2 x double> %i.hv, zeroinitializer ; 2 uses
  %shift835 = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop836 = fadd <2 x double> %i.hx, %shift835
  %i.hy = extractelement <2 x double> %foldExtExtBinop836, i64 0
  %i.hz = fadd double %i.hw, %i.hy                ; 4 uses
  %i.ia = fcmp olt double %i.hz, f0xBFEFFFFFFFFFDCD1
  br i1 %i.ia, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !331
  store double 1.000000e+00, ptr %i.bu, align 16, !tbaa !19, !noalias !332
  %28 = shufflevector <2 x double> %i.hv, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %29 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %28, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %29, ptr %8, align 16, !tbaa !19, !noalias !331
  store double %i.hw, ptr %i.bv, align 8, !tbaa !19, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !331
  store i32 0, ptr %i.bx, align 4, !tbaa !69, !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.bw, i8 0, i64 11, i1 false), !noalias !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 -1, i64 16, i1 false), !noalias !331
  store i64 0, ptr %i.bz, align 8, !tbaa !70, !noalias !331
  store i8 0, ptr %i.ca, align 16, !tbaa !89, !noalias !331
  store i8 0, ptr %i.cb, align 1, !tbaa !333, !noalias !331
  %i.ib = invoke noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %9, ptr noundef nonnull align 16 dereferenceable(48) %8, i32 noundef 16)
          to label %.noexc207 unwind label %bb.ac ; 0 uses

.noexc207:                                        ; preds = %bb.aa
  %i.ic = fcmp olt double %i.hz, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ic, double -1.000000e+00, double %i.hz
  %i.id = load <2 x double>, ptr %i.cc, align 16, !tbaa !53, !noalias !331
  %i.ie = load double, ptr %i.cd, align 16, !tbaa !19, !noalias !331
  %i.if = fadd nnan double %.sroa.speculated.i.i, 1.000000e+00
  %i.ig = fmul nnan double %i.if, 5.000000e-01    ; 2 uses
  %i.ih = call double @sqrt(double noundef %i.ig) #23, !noalias !331
  %i.ii = fsub double 1.000000e+00, %i.ig
  %i.ij = call double @sqrt(double noundef %i.ii) #23, !noalias !331 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.ik = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x double> %i.id, %i.ik
  %i.im = fmul double %i.ie, %i.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !331
  %.pre597.pre = load i64, ptr %i.l, align 8, !tbaa !27
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

bb.ab:                                            ; preds = %bb.z
  %.sroa.061.0.vec.extract.i.i = extractelement <2 x double> %i.hv, i64 0 ; 2 uses
  %i.in = fmul double %i.hw, 0.000000e+00
  %i.io = fsub double %.sroa.061.0.vec.extract.i.i, %i.in
  %i.ip = fmul double %.sroa.061.0.vec.extract.i.i, -0.000000e+00
  %i.iq = insertelement <2 x double> %i.hv, double %i.hw, i64 0
  %i.ir = fneg <2 x double> %i.hv
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = insertelement <2 x double> %i.is, double %i.ip, i64 1
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> zeroinitializer, <2 x double> %i.it) ; 2 uses
  %.sroa.071.8.vec.insert.i.i = insertelement <2 x double> %i.iu, double %i.io, i64 1
  %i.iv = fadd double %i.hz, 1.000000e+00
  %i.iw = fmul double %i.iv, 2.000000e+00
  %i.ix = call double @sqrt(double noundef %i.iw) #23, !noalias !331 ; 2 uses
  %i.iy = fdiv double 1.000000e+00, %i.ix         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.iz = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %.sroa.071.8.vec.insert.i.i, %i.iz
  %i.jb = extractelement <2 x double> %i.iu, i64 1
  %i.jc = fmul double %i.jb, %i.iy
  %i.jd = fmul double %i.ix, 5.000000e-01
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit: ; preds = %bb.ab, %.noexc207
  %.pre597 = phi i64 [ %.pre597.pre, %.noexc207 ], [ %.pre597604, %bb.ab ] ; 4 uses
  %.sink75.i.i = phi double [ %i.ih, %.noexc207 ], [ %i.jd, %bb.ab ] ; 2 uses
  %.sink74.i.i = phi <2 x double> [ %i.il, %.noexc207 ], [ %i.ja, %bb.ab ] ; 3 uses
  %.sink.i.i = phi double [ %i.im, %.noexc207 ], [ %i.jc, %bb.ab ] ; 2 uses
  %i.je = load i64, ptr %i.b, align 8, !tbaa !21  ; 6 uses
  %i.jf = icmp sgt i64 %i.je, 0
  br i1 %i.jf, label %.lr.ph526, label %._crit_edge

.lr.ph526:                                        ; preds = %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  %i.jg = load ptr, ptr %14, align 8, !tbaa !22, !noalias !334
  %i.jh = load i64, ptr %i.ce, align 8, !tbaa !17
  %i.ji = srem i64 %indvars.iv563, %i.jh
  %i.jj = load ptr, ptr %2, align 8, !tbaa !16
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ji ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.je, 4
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sink75.i.i, i64 0
  %i.jl = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fdiv double %.scalar.i, 3.000000e+00    ; 4 uses
  %i.jn = load ptr, ptr %1, align 8, !tbaa !49
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %indvars.iv563 ; 2 uses
  %i.jp = load ptr, ptr %0, align 8, !tbaa !29, !noalias !335 ; 3 uses
  %i.jq = ptrtoaddr ptr %i.jp to i64              ; 2 uses
  %i.jr = load i64, ptr %i.i, align 8, !tbaa !24  ; 10 uses
  %i.js = shl nuw nsw i64 %indvars.iv563, 1       ; 2 uses
  %i.jt = load ptr, ptr %5, align 8, !tbaa !29, !noalias !336 ; 3 uses
  %i.ju = ptrtoaddr ptr %i.jt to i64              ; 2 uses
  %i.jv = load i64, ptr %i.cg, align 8, !tbaa !90, !noalias !336 ; 13 uses
  %i.jw = load i64, ptr %i.ag, align 8, !tbaa !24 ; 8 uses
  %i.jx = icmp sgt i64 %i.jv, 0
  %reass.mul.i = mul i64 %i.je, %i.js
  %i.jy = add i64 %i.jr, %reass.mul.i
  %i.jz = getelementptr [4 x i8], ptr %i.jo, i64 %.pre597
  %i.ka = or disjoint i64 %i.js, 1
  %reass.mul.i.1 = mul i64 %i.je, %i.ka
  %i.kb = add i64 %i.jr, %reass.mul.i.1
  %i.kc = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kd = insertelement <2 x double> %i.kc, double %.sink.i.i, i64 1 ; 2 uses
  %i.ke = insertelement <2 x double> %i.kc, double %.sink.i.i, i64 0 ; 2 uses
  %i.kf = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %min.iters.check731 = icmp ult i64 %i.jv, 6
  %ident.check726 = icmp ne i64 %i.jw, 1
  %ident.check727 = icmp ne i64 %i.jr, 1
  %i.kh = or i1 %ident.check726, %ident.check727
  %n.vec733 = and i64 %i.jv, 9223372036854775804  ; 3 uses
  %cmp.n746 = icmp eq i64 %i.jv, %n.vec733
  %xtraiter844 = and i64 %i.jv, 1
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  %min.iters.check = icmp ult i64 %i.jv, 6
  %ident.check = icmp ne i64 %i.jw, 1
  %ident.check719 = icmp ne i64 %i.jr, 1
  %i.ki = or i1 %ident.check, %ident.check719
  %n.vec = and i64 %i.jv, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  %xtraiter849 = and i64 %i.jv, 1
  %lcmp.mod850.not = icmp eq i64 %xtraiter849, 0
  br label %bb.ad

._crit_edge:                                      ; preds = %.split524, %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.kj = icmp sgt i64 %.pre597, %indvars.iv.next564
  br i1 %i.kj, label %bb.n, label %._crit_edge529, !llvm.loop !272

.loopexit511:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit512:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191
  %lpad.loopexit514 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp513:                            ; preds = %bb.v
  %lpad.loopexit.split-lp515 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ac:                                            ; preds = %bb.aa
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.br

bb.ad:                                            ; preds = %.lr.ph526, %.split524
  %indvars.iv559 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next560, %.split524 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv559 ; 3 uses
  %i.km = load double, ptr %i.jk, align 8, !tbaa !19, !noalias !337 ; 3 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !19, !noalias !338
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.je
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !19, !noalias !338
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !19, !noalias !338 ; 2 uses
  %i.ks = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ku = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %i.kn, i64 1
  %i.kw = fmul <2 x double> %i.kt, %i.kv          ; 4 uses
  %i.kx = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.ky = insertelement <2 x double> %i.kx, double %i.kr, i64 1
  %i.kz = fmul <2 x double> %i.kt, %i.ky          ; 3 uses
  %i.la = shufflevector <2 x double> %i.kw, <2 x double> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.lb = fneg <2 x double> %i.kz
  %i.lc = fmul <2 x double> %i.ke, %i.lb
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.kw, <2 x double> %i.lc) ; 2 uses
  %i.le = fadd <2 x double> %i.ld, %i.ld          ; 5 uses
  %i.lf = shufflevector <2 x double> %i.kw, <2 x double> %i.le, <2 x i32> <i32 1, i32 2>
  %i.lg = fneg <2 x double> %i.lf
  %i.lh = fmul <2 x double> %i.kg, %i.lg
  %i.li = shufflevector <2 x double> %i.kz, <2 x double> %i.le, <2 x i32> <i32 0, i32 3>
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.li, <2 x double> %i.lh) ; 3 uses
  %foldExtExtBinop838 = fadd <2 x double> %i.lj, %i.lj ; 3 uses
  %i.lk = extractelement <2 x double> %foldExtExtBinop838, i64 0
  %i.ll = shufflevector <2 x double> %i.le, <2 x double> %foldExtExtBinop838, <2 x i32> <i32 1, i32 2>
  %i.lm = fneg <2 x double> %i.ll
  %i.ln = fmul <2 x double> %i.ke, %i.lm
  %i.lo = shufflevector <2 x double> %foldExtExtBinop838, <2 x double> %i.le, <2 x i32> <i32 0, i32 2>
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.lo, <2 x double> %i.ln)
  %i.lq = fmul <2 x double> %i.jl, %i.le
  %i.lr = fadd <2 x double> %i.la, %i.lq
  %i.ls = fadd <2 x double> %i.lr, %i.lp
  %i.lt = fmul double %.sink75.i.i, %i.lk
  %i.lu = extractelement <2 x double> %i.kw, i64 0
  %i.lv = fadd double %i.lu, %i.lt
  %i.lw = extractelement <2 x double> %i.lj, i64 1
  %i.lx = fadd double %i.lv, %i.lw
  store <2 x double> %i.ls, ptr %17, align 16, !tbaa !53
  store double %i.lx, ptr %i.cf, align 16, !tbaa !19
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.split524

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader:   ; preds = %bb.ad
  %i.ly = fcmp olt double %i.jm, %i.km
  %.sroa.speculated = select i1 %i.ly, double %i.jm, double %i.km
  %i.lz = load i32, ptr %i.jo, align 4, !tbaa !48
  %i.ma = sext i32 %i.lz to i64                   ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !48
  %i.md = icmp sgt i32 %i.mc, 1
  %i.me = uitofp i1 %i.md to double
end_hunk_0
