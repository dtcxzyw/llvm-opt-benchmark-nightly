inline.NumInlined: 10643
inline.NumDeleted: 5829
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 91
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.c, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %7, align 8, !tbaa !11
  store i64 1, ptr %i.d, align 8, !tbaa !16
  store double %2, ptr %i.a, align 8, !tbaa !17, !noalias !19
  invoke void @_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdibRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE.exit unwind label %common.resume.i

common.resume.i:                                  ; preds = %.sink.split.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %7, align 8, !tbaa !11
  call void @free(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %i.e

_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEdibRNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE.exit: ; preds = %.sink.split.i.i
  %i.g = load ptr, ptr %7, align 8, !tbaa !11
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
  %8 = alloca %"class.Eigen::Matrix.226", align 16 ; 7 uses
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 6 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader
  %i.e = uitofp nneg i64 %i.c to double
  %i.f = load ptr, ptr %14, align 8, !tbaa !24
  %.idx = shl i64 %i.c, 4
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit

common.resume:                                    ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn178, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %14, align 8, !tbaa !24
  call void @free(ptr noundef %i.h) #23
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  %i.k = shl nsw i64 %i.c, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = mul nsw i64 %i.k, %i.m
  %i.o = add nsw i64 %i.n, %i.j                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 3074457345618258602
  br i1 %i.p, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !9
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.r = mul nsw i64 %i.o, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.r, i64 noundef %i.o, i64 noundef 3)
          to label %bb.d unwind label %bb.h

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
  store double %i.z, ptr %i.y, align 8, !tbaa !17
  %i.aa = call double @sin(double noundef %i.w) #23
  %i.ab = getelementptr [8 x i8], ptr %i.y, i64 %i.c
  %i.ac = fmul double %i.aa, 5.000000e-01
  store double %i.ac, ptr %i.ab, align 8, !tbaa !17
  %i.ad = getelementptr i8, ptr %i.y, i64 %.idx
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IiiEERKT_RKT0_.exit, !llvm.loop !30

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.af = load ptr, ptr %5, align 8, !tbaa !35, !noalias !32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25, !noalias !32 ; 2 uses
  store ptr %i.af, ptr %15, align 8, !tbaa !36, !alias.scope !32
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !39, !alias.scope !32
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 3, ptr %i.aj, align 8, !tbaa !39, !alias.scope !32
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %5, ptr %i.ak, align 8, !tbaa !40, !alias.scope !32
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !32
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !42, !alias.scope !32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.an = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.an, ptr %10, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ae, ptr %i.ao, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.af, ptr %11, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %11, ptr %12, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.aq, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.ar, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %15, ptr %i.as, align 8, !tbaa !57
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.at = load i64, ptr %i.i, align 8, !tbaa !25  ; 7 uses
  %i.au = icmp ugt i64 %i.at, 384307168202282325
  br i1 %i.au, label %bb.f, label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc182 unwind label %bb.j

.noexc182:                                        ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.av = mul nuw nsw i64 %i.at, 24               ; 3 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #26
          to label %bb.g unwind label %bb.j       ; 5 uses

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = shl nuw nsw i64 %i.at, 2                ; 2 uses
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26
          to label %.noexc186 unwind label %bb.k  ; 3 uses

.noexc186:                                        ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !59
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.at
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc186, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i494 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %scevgep.i.i.i.i.i, %.noexc186 ] ; 4 uses
  %.sink.i473 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.ax, %.noexc186 ] ; 3 uses
  %.sroa.0416.0452 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.aw, %.noexc186 ] ; 10 uses
  %.sroa.12407.0 = phi i64 [ 0, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.bb, %.noexc186 ] ; 2 uses
  %.sroa.0401.0 = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.az, %.noexc186 ] ; 14 uses
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !27  ; 10 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph512, label %._crit_edge519

.lr.ph512:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.be = load ptr, ptr %1, align 8, !tbaa !60    ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bf = icmp eq i64 %i.bc, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph512.new

.lr.ph512.new:                                    ; preds = %.lr.ph512
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %bb.l

.lr.ph518.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph518, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph518.unr-lcssa, %.lr.ph512
  %indvars.iv541.epil.init = phi i64 [ 0, %.lr.ph512 ], [ %indvars.iv.next542.1, %.lr.ph518.unr-lcssa ]
  %lcmp.mod879 = trunc i64 %i.bc to i1
  call void @llvm.assume(i1 %lcmp.mod879)
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv541.epil.init ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !59
  %i.bm = getelementptr [4 x i8], ptr %i.bg, i64 %i.bc
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !59
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !59
  br label %.lr.ph518

.lr.ph518:                                        ; preds = %.lr.ph518.unr-lcssa, %.epil.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 24
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
  br label %bb.m

bb.h:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.i:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EED2Ev.exit282

bb.k:                                             ; preds = %bb.g
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit271

bb.l:                                             ; preds = %bb.l, %.lr.ph512.new
  %indvars.iv541 = phi i64 [ 0, %.lr.ph512.new ], [ %indvars.iv.next542.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph512.new ], [ %niter.next.1, %bb.l ]
  %i.cl = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv541 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !59
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !59
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !59
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.bc
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !59
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !59
  %i.cx = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv541
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !59
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !59
  %i.de = getelementptr [4 x i8], ptr %i.cy, i64 %i.bc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0401.0, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !59
  %indvars.iv.next542.1 = add nuw nsw i64 %indvars.iv541, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph518.unr-lcssa, label %bb.l, !llvm.loop !61

._crit_edge519.loopexit:                          ; preds = %._crit_edge
  %.pre588 = load i64, ptr %i.i, align 8, !tbaa !25
  br label %._crit_edge519

._crit_edge519:                                   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %._crit_edge519.loopexit
  %i.dk = phi i64 [ %.pre587, %._crit_edge519.loopexit ], [ %i.bc, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ]
  %i.dl = phi i64 [ %.pre588, %._crit_edge519.loopexit ], [ %i.at, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %5, ptr %20, align 8, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.dm, align 8, !tbaa !64
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %19, ptr %i.dn, align 8, !tbaa !66
  %i.do = icmp sgt i64 %i.dl, 0
  br i1 %i.do, label %.lr.ph527, label %.preheader498

.lr.ph527:                                        ; preds = %._crit_edge519
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.ad

bb.m:                                             ; preds = %.lr.ph518, %._crit_edge
  %.pre587603 = phi i64 [ %i.bc, %.lr.ph518 ], [ %.pre587, %._crit_edge ] ; 2 uses
  %indvars.iv553 = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next554, %._crit_edge ] ; 13 uses
  %i.dq = shl nuw i64 %indvars.iv553, 1
  %i.dr = shl nuw i64 %indvars.iv553, 1
  %i.ds = or disjoint i64 %i.dr, 1
  %i.dt = load ptr, ptr %1, align 8, !tbaa !60    ; 3 uses
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %indvars.iv553
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.0452, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 0, ptr %i.ed, align 4, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ee, ptr %i.dy, align 8, !tbaa !68
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !75 ; 7 uses
  %i.eg = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.p, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc188 unwind label %.loopexit.split-lp

.noexc188:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #26
          to label %.noexc189 unwind label %.loopexit501 ; 8 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei ; 2 uses
  %i.es = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.es, ptr %i.er, align 4, !tbaa !72
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 0, ptr %i.et, align 4, !tbaa !74
  %.not10.i.i.i.i.i = icmp eq ptr %i.ef, %i.dz
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc189
  %i.eu = ptrtoaddr ptr %i.eq to i64
  %i.ev = add i64 %i.eg, -8
  %i.ew = sub i64 %i.ev, %i.eh                    ; 2 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check764 = icmp ult i64 %i.ew, 24
  %i.ez = sub i64 %i.eh, %i.eu
  %diff.check762 = icmp ugt i64 %i.ez, -32
  %or.cond861 = or i1 %min.iters.check764, %diff.check762
  br i1 %or.cond861, label %.lr.ph.i.i.i.i.i.preheader877, label %vector.ph765

vector.ph765:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec766 = and i64 %i.ey, 4611686018427387900  ; 3 uses
  %i.fa = shl i64 %n.vec766, 3                    ; 2 uses
  %i.fb = getelementptr i8, ptr %i.eq, i64 %i.fa  ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ef, i64 %i.fa
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph765
  %index768 = phi i64 [ 0, %vector.ph765 ], [ %index.next773, %vector.body767 ] ; 2 uses
  %i.fd = shl i64 %index768, 3                    ; 2 uses
  %next.gep769 = getelementptr i8, ptr %i.eq, i64 %i.fd ; 2 uses
  %next.gep770 = getelementptr i8, ptr %i.ef, i64 %i.fd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.fe = getelementptr i8, ptr %next.gep770, i64 16
  %wide.load771 = load <2 x i64>, ptr %next.gep770, align 4, !alias.scope !79, !noalias !76
  %wide.load772 = load <2 x i64>, ptr %i.fe, align 4, !alias.scope !79, !noalias !76
  %i.ff = getelementptr i8, ptr %next.gep769, i64 16
  store <2 x i64> %wide.load771, ptr %next.gep769, align 4, !alias.scope !76, !noalias !79
  store <2 x i64> %wide.load772, ptr %i.ff, align 4, !alias.scope !76, !noalias !79
  %index.next773 = add nuw i64 %index768, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next773, %n.vec766
  br i1 %i.fg, label %middle.block774, label %vector.body767, !llvm.loop !81

middle.block774:                                  ; preds = %vector.body767
  %cmp.n775 = icmp eq i64 %i.ey, %n.vec766
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal9wire_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EEibRNS3_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i187, i64 8
  %.not.i34.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ei) #27
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !60
  %.pre584.pre = load i64, ptr %i.l, align 8, !tbaa !27
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %.pre587602 = phi i64 [ %.pre584.pre, %bb.q ], [ %.pre587603, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.q ], [ %i.dt, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i ]
  store ptr %i.eq, ptr %i.dx, align 8, !tbaa !75
  store ptr %i.fk, ptr %i.dy, align 8, !tbaa !68
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.fl, ptr %i.ea, align 8, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.pre587601 = phi i64 [ %.pre587603, %bb.n ], [ %.pre587602, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.fm = phi ptr [ %i.dt, %bb.n ], [ %.pre, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv553
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.pre587601
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !59
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.0452, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !68 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !71
  %.not.i190 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i190, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !72
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 1, ptr %i.fx, align 4, !tbaa !74
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !68
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.fr, align 8, !tbaa !75 ; 7 uses
  %i.ga = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.gc = sub i64 %i.ga, %i.gb                    ; 4 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.u, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc203 unwind label %.loopexit.split-lp503

.noexc203:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191: ; preds = %bb.t
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i192 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i192, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i193 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i193)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #26
          to label %.noexc204 unwind label %.loopexit502 ; 8 uses

.noexc204:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 1, ptr %i.gn, align 4, !tbaa !74
  %.not10.i.i.i.i.i194 = icmp eq ptr %i.fz, %i.ft
  br i1 %.not10.i.i.i.i.i194, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195.preheader

.lr.ph.i.i.i.i.i195.preheader:                    ; preds = %.noexc204
  %i.go = ptrtoaddr ptr %i.gk to i64
  %i.gp = add i64 %i.ga, -8
  %i.gq = sub i64 %i.gp, %i.gb                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 3
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check748 = icmp ult i64 %i.gq, 24
  %i.gt = sub i64 %i.gb, %i.go
  %diff.check746 = icmp ugt i64 %i.gt, -32
  %or.cond862 = or i1 %min.iters.check748, %diff.check746
  br i1 %or.cond862, label %.lr.ph.i.i.i.i.i195.preheader876, label %vector.ph749

vector.ph749:                                     ; preds = %.lr.ph.i.i.i.i.i195.preheader
  %n.vec750 = and i64 %i.gs, 4611686018427387900  ; 3 uses
  %i.gu = shl i64 %n.vec750, 3                    ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gk, i64 %i.gu  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.fz, i64 %i.gu
  br label %vector.body751

vector.body751:                                   ; preds = %vector.body751, %vector.ph749
  %index752 = phi i64 [ 0, %vector.ph749 ], [ %index.next756, %vector.body751 ] ; 2 uses
  %i.gx = shl i64 %index752, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gk, i64 %i.gx ; 2 uses
  %next.gep753 = getelementptr i8, ptr %i.fz, i64 %i.gx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.gy = getelementptr i8, ptr %next.gep753, i64 16
  %wide.load754 = load <2 x i64>, ptr %next.gep753, align 4, !alias.scope !88, !noalias !85
  %wide.load755 = load <2 x i64>, ptr %i.gy, align 4, !alias.scope !88, !noalias !85
  %i.gz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load754, ptr %next.gep, align 4, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load755, ptr %i.gz, align 4, !alias.scope !85, !noalias !88
  %index.next756 = add nuw i64 %index752, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next756, %n.vec750
  br i1 %i.ha, label %middle.block757, label %vector.body751, !llvm.loop !90

middle.block757:                                  ; preds = %vector.body751
  %cmp.n758 = icmp eq i64 %i.gs, %n.vec750
  br i1 %cmp.n758, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195.preheader876

.lr.ph.i.i.i.i.i195.preheader876:                 ; preds = %.lr.ph.i.i.i.i.i195.preheader, %middle.block757
  %.012.i.i.i.i.i196.ph = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i195.preheader ], [ %i.gv, %middle.block757 ]
  %.0911.i.i.i.i.i197.ph = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i195.preheader ], [ %i.gw, %middle.block757 ]
  br label %.lr.ph.i.i.i.i.i195

.lr.ph.i.i.i.i.i195:                              ; preds = %.lr.ph.i.i.i.i.i195.preheader876, %.lr.ph.i.i.i.i.i195
  %.012.i.i.i.i.i196 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i195 ], [ %.012.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i195.preheader876 ] ; 2 uses
  %.0911.i.i.i.i.i197 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i195 ], [ %.0911.i.i.i.i.i197.ph, %.lr.ph.i.i.i.i.i195.preheader876 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.hb = load i64, ptr %.0911.i.i.i.i.i197, align 4, !alias.scope !88, !noalias !85
  store i64 %i.hb, ptr %.012.i.i.i.i.i196, align 4, !alias.scope !85, !noalias !88
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i197, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i196, i64 8 ; 2 uses
  %.not.i.i.i.i.i198 = icmp eq ptr %i.hc, %i.ft
  br i1 %.not.i.i.i.i.i198, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199, label %.lr.ph.i.i.i.i.i195, !llvm.loop !91

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199: ; preds = %.lr.ph.i.i.i.i.i195, %middle.block757, %.noexc204
  %.0.lcssa.i.i.i.i.i200 = phi ptr [ %i.gk, %.noexc204 ], [ %i.gv, %middle.block757 ], [ %i.hd, %.lr.ph.i.i.i.i.i195 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i200, i64 8
  %.not.i34.i.i201 = icmp eq ptr %i.fz, null
  br i1 %.not.i34.i.i201, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gc) #27
  %.pre585.pre = load ptr, ptr %1, align 8, !tbaa !60
  %.pre586.pre = load i64, ptr %i.l, align 8, !tbaa !27
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202: ; preds = %bb.v, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199
  %.pre587600 = phi i64 [ %.pre586.pre, %bb.v ], [ %.pre587601, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199 ]
  %.pre585 = phi ptr [ %.pre585.pre, %bb.v ], [ %i.fm, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i199 ]
  store ptr %i.gk, ptr %i.fr, align 8, !tbaa !75
  store ptr %i.he, ptr %i.fs, align 8, !tbaa !68
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.hf, ptr %i.fu, align 8, !tbaa !71
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202
  %.pre587599 = phi i64 [ %.pre587601, %bb.s ], [ %.pre587600, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ] ; 2 uses
  %i.hg = phi ptr [ %i.fm, %bb.s ], [ %.pre585, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i202 ]
  %i.hh = getelementptr [4 x i8], ptr %i.hg, i64 %indvars.iv553 ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.hh, i64 %.pre587599
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !59
  %i.hk = sext i32 %i.hj to i64
  %i.hl = load ptr, ptr %0, align 8, !tbaa !35, !noalias !92 ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hk ; 3 uses
  %i.hn = load i32, ptr %i.hh, align 4, !tbaa !59
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ho ; 3 uses
  %i.hq = load i64, ptr %i.i, align 8, !tbaa !25  ; 3 uses
  %i.hr = load double, ptr %i.hm, align 8, !tbaa !17
  %i.hs = load double, ptr %i.hp, align 8, !tbaa !17
  %i.ht = fsub double %i.hr, %i.hs
  %.sroa.0376.0.vec.insert = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hq
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !17
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hq
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !17
  %i.hy = fsub double %i.hv, %i.hx
  %.sroa.0376.8.vec.insert = insertelement <2 x double> %.sroa.0376.0.vec.insert, double %i.hy, i64 1 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.hq, 4 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !17
  %i.ib = getelementptr inbounds i8, ptr %i.hp, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !17
  %i.id = fsub double %i.ia, %i.ic                ; 5 uses
  %i.ie = fmul <2 x double> %.sroa.0376.8.vec.insert, %.sroa.0376.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ie, %shift
  %i.if = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ig = fmul double %i.id, %i.id
  %i.ih = fadd double %i.ig, %i.if                ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.ih) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ii = fcmp ogt double %i.ih, 0.000000e+00
  br i1 %i.ii, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, label %.thread

.thread:                                          ; preds = %bb.w
  store <2 x double> %.sroa.0376.8.vec.insert, ptr %16, align 16
  store double %i.id, ptr %i.bs, align 16, !tbaa !95
  br label %bb.y

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit: ; preds = %bb.w
  %i.ij = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fdiv <2 x double> %.sroa.0376.8.vec.insert, %i.ik ; 5 uses
  store <2 x double> %i.il, ptr %16, align 16, !tbaa !95, !alias.scope !96
  %i.im = fdiv double %i.id, %.scalar.i           ; 5 uses
  store double %i.im, ptr %i.bs, align 16, !tbaa !17, !alias.scope !96
  %.pre605 = fmul <2 x double> %i.il, %i.il       ; 2 uses
  %shift866 = shufflevector <2 x double> %.pre605, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop867 = fadd <2 x double> %.pre605, %shift866
  %.pre610 = extractelement <2 x double> %foldExtExtBinop867, i64 0
  %.pre612 = fmul double %i.im, %i.im
  %.pre614 = fadd double %.pre612, %.pre610
  %.pre614.fr = freeze double %.pre614            ; 2 uses
  %.pre616 = call double @llvm.sqrt.f64(double %.pre614.fr) ; 2 uses
  %i.in = fcmp ogt double %.pre614.fr, 0.000000e+00
  %i.io = insertelement <2 x double> poison, double %.pre616, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = fdiv <2 x double> %i.il, %i.ip
  %i.ir = fdiv double %i.im, %.pre616
  br i1 %i.in, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit, %.thread
  %i.is = phi <2 x double> [ %.sroa.0376.8.vec.insert, %.thread ], [ %i.il, %bb.x ], [ %i.iq, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 6 uses
  %i.it = phi double [ %i.id, %.thread ], [ %i.im, %bb.x ], [ %i.ir, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE10normalizedEv.exit ] ; 4 uses
  %i.iu = fmul <2 x double> %i.is, zeroinitializer ; 2 uses
  %shift869 = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop870 = fadd <2 x double> %i.iu, %shift869
  %i.iv = extractelement <2 x double> %foldExtExtBinop870, i64 0
  %i.iw = fadd double %i.it, %i.iv                ; 4 uses
  %i.ix = fcmp olt double %i.iw, f0xBFEFFFFFFFFFDCD1
  br i1 %i.ix, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !99
  store double 0.000000e+00, ptr %8, align 16, !tbaa !17, !noalias !102
  %28 = insertelement <2 x double> %i.is, double 0.000000e+00, i64 1
  store <2 x double> %28, ptr %i.bt, align 8, !tbaa !17, !noalias !99
  %29 = shufflevector <2 x double> %i.is, <2 x double> <double poison, double 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %29, ptr %i.bu, align 8, !tbaa !17, !noalias !99
  store double %i.it, ptr %i.bv, align 8, !tbaa !17, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !99
  store i32 0, ptr %i.bx, align 4, !tbaa !105, !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.bw, i8 0, i64 11, i1 false), !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 -1, i64 16, i1 false), !noalias !99
  store i64 0, ptr %i.bz, align 8, !tbaa !121, !noalias !99
  store i8 0, ptr %i.ca, align 16, !tbaa !122, !noalias !99
  store i8 0, ptr %i.cb, align 1, !tbaa !141, !noalias !99
  %i.iy = invoke noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %9, ptr noundef nonnull align 16 dereferenceable(48) %8, i32 noundef 16)
          to label %.noexc207 unwind label %bb.ab ; 0 uses

.noexc207:                                        ; preds = %bb.z
  %i.iz = fcmp olt double %i.iw, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.iz, double -1.000000e+00, double %i.iw
  %i.ja = load <2 x double>, ptr %i.cc, align 16, !tbaa !95, !noalias !99
  %i.jb = load double, ptr %i.cd, align 16, !tbaa !17, !noalias !99
  %i.jc = fadd nnan double %.sroa.speculated.i.i, 1.000000e+00
  %i.jd = fmul nnan double %i.jc, 5.000000e-01    ; 2 uses
  %i.je = call double @sqrt(double noundef %i.jd) #23, !noalias !99
  %i.jf = fsub double 1.000000e+00, %i.jd
  %i.jg = call double @sqrt(double noundef %i.jf) #23, !noalias !99 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jh = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x double> %i.ja, %i.jh
  %i.jj = fmul double %i.jb, %i.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !99
  %.pre587.pre = load i64, ptr %i.l, align 8, !tbaa !27
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

bb.aa:                                            ; preds = %bb.y
  %.sroa.061.0.vec.extract.i.i = extractelement <2 x double> %i.is, i64 0 ; 2 uses
  %i.jk = fmul double %i.it, 0.000000e+00
  %i.jl = fsub double %.sroa.061.0.vec.extract.i.i, %i.jk
  %i.jm = fmul double %.sroa.061.0.vec.extract.i.i, -0.000000e+00
  %i.jn = insertelement <2 x double> %i.is, double %i.it, i64 0
  %i.jo = fneg <2 x double> %i.is
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jq = insertelement <2 x double> %i.jp, double %i.jm, i64 1
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> zeroinitializer, <2 x double> %i.jq) ; 2 uses
  %.sroa.071.8.vec.insert.i.i = insertelement <2 x double> %i.jr, double %i.jl, i64 1
  %i.js = fadd double %i.iw, 1.000000e+00
  %i.jt = fmul double %i.js, 2.000000e+00
  %i.ju = call double @sqrt(double noundef %i.jt) #23, !noalias !99 ; 2 uses
  %i.jv = fdiv double 1.000000e+00, %i.ju         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jw = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %.sroa.071.8.vec.insert.i.i, %i.jw
  %i.jy = extractelement <2 x double> %i.jr, i64 1
  %i.jz = fmul double %i.jy, %i.jv
  %i.ka = fmul double %i.ju, 5.000000e-01
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit: ; preds = %bb.aa, %.noexc207
  %.pre587 = phi i64 [ %.pre587.pre, %.noexc207 ], [ %.pre587599, %bb.aa ] ; 4 uses
  %.sink75.i.i = phi double [ %i.je, %.noexc207 ], [ %i.ka, %bb.aa ] ; 2 uses
  %.sink74.i.i = phi <2 x double> [ %i.ji, %.noexc207 ], [ %i.jx, %bb.aa ] ; 3 uses
  %.sink.i.i = phi double [ %i.jj, %.noexc207 ], [ %i.jz, %bb.aa ] ; 2 uses
  %i.kb = load i64, ptr %i.b, align 8, !tbaa !22  ; 8 uses
  %i.kc = icmp sgt i64 %i.kb, 0
  br i1 %i.kc, label %.lr.ph516, label %._crit_edge

.lr.ph516:                                        ; preds = %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  %i.kd = load ptr, ptr %14, align 8, !tbaa !24, !noalias !142
  %i.ke = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.kf = srem i64 %indvars.iv553, %i.ke
  %i.kg = load ptr, ptr %2, align 8, !tbaa !11
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kf ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.kb, 4
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sink75.i.i, i64 0
  %i.ki = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = fdiv double %.scalar.i, 3.000000e+00    ; 4 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !60
  %i.kl = getelementptr [4 x i8], ptr %i.kk, i64 %indvars.iv553 ; 2 uses
  %i.km = load ptr, ptr %0, align 8, !tbaa !35, !noalias !145 ; 3 uses
  %i.kn = ptrtoaddr ptr %i.km to i64              ; 2 uses
  %i.ko = load i64, ptr %i.i, align 8, !tbaa !25  ; 12 uses
  %i.kp = shl nuw nsw i64 %indvars.iv553, 1       ; 2 uses
  %i.kq = load ptr, ptr %5, align 8, !tbaa !35, !noalias !148 ; 3 uses
  %i.kr = ptrtoaddr ptr %i.kq to i64              ; 2 uses
  %i.ks = load i64, ptr %i.cg, align 8, !tbaa !151, !noalias !148 ; 13 uses
  %i.kt = load i64, ptr %i.ag, align 8, !tbaa !25 ; 8 uses
  %i.ku = icmp sgt i64 %i.ks, 0
  %reass.mul.i = mul i64 %i.kb, %i.kp
  %i.kv = add i64 %i.ko, %reass.mul.i
  %i.kw = getelementptr [4 x i8], ptr %i.kl, i64 %.pre587
  %i.kx = or disjoint i64 %i.kp, 1
  %reass.mul.i.1 = mul i64 %i.kb, %i.kx
  %i.ky = add i64 %i.ko, %reass.mul.i.1
  %i.kz = mul i64 %i.ds, %i.kb
  %i.la = add i64 %i.kz, %i.ko
  %i.lb = mul i64 %i.dq, %i.kb
  %i.lc = add i64 %i.lb, %i.ko
  %i.ld = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.le = insertelement <2 x double> %i.ld, double %.sink.i.i, i64 1 ; 2 uses
  %i.lf = insertelement <2 x double> %i.ld, double %.sink.i.i, i64 0 ; 2 uses
  %i.lg = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = shufflevector <2 x double> %.sink74.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %min.iters.check728 = icmp ult i64 %i.ks, 6
  %ident.check723 = icmp ne i64 %i.kt, 1
  %ident.check724 = icmp ne i64 %i.ko, 1
  %i.li = or i1 %ident.check723, %ident.check724
  %n.vec730 = and i64 %i.ks, 9223372036854775804  ; 3 uses
  %cmp.n743 = icmp eq i64 %i.ks, %n.vec730
  %xtraiter880 = and i64 %i.ks, 1
  %lcmp.mod881.not = icmp eq i64 %xtraiter880, 0
  %min.iters.check = icmp ult i64 %i.ks, 6
  %ident.check = icmp ne i64 %i.kt, 1
  %ident.check716 = icmp ne i64 %i.ko, 1
  %i.lj = or i1 %ident.check, %ident.check716
  %n.vec = and i64 %i.ks, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ks, %n.vec
  %xtraiter885 = and i64 %i.ks, 1
  %lcmp.mod886.not = icmp eq i64 %xtraiter885, 0
  br label %bb.ac

._crit_edge:                                      ; preds = %.split514, %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.lk = icmp sgt i64 %.pre587, %indvars.iv.next554
  br i1 %i.lk, label %bb.m, label %._crit_edge519.loopexit, !llvm.loop !152

.loopexit501:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit502:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i191
  %lpad.loopexit504 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp503:                            ; preds = %bb.u
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ab:                                            ; preds = %bb.z
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bq

bb.ac:                                            ; preds = %.lr.ph516, %.split514
  %indvars.iv549 = phi i64 [ 0, %.lr.ph516 ], [ %indvars.iv.next550, %.split514 ] ; 6 uses
  %i.lm = add i64 %indvars.iv549, %i.lc
  %i.ln = shl i64 %i.lm, 32
  %i.lo = ashr exact i64 %i.ln, 29
  %i.lp = add i64 %indvars.iv549, %i.la
  %i.lq = shl i64 %i.lp, 32
  %i.lr = ashr exact i64 %i.lq, 29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv549 ; 3 uses
  %i.lt = load double, ptr %i.kh, align 8, !tbaa !17, !noalias !153 ; 3 uses
  %i.lu = load double, ptr %i.ls, align 8, !tbaa !17, !noalias !156
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.kb
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !17, !noalias !156
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !17, !noalias !156 ; 2 uses
  %i.lz = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lu, i64 1
  %i.md = fmul <2 x double> %i.ma, %i.mc          ; 4 uses
  %i.me = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.ly, i64 1
  %i.mg = fmul <2 x double> %i.ma, %i.mf          ; 3 uses
  %i.mh = shufflevector <2 x double> %i.md, <2 x double> %i.mg, <2 x i32> <i32 1, i32 2>
  %i.mi = fneg <2 x double> %i.mg
  %i.mj = fmul <2 x double> %i.lf, %i.mi
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.md, <2 x double> %i.mj) ; 2 uses
  %i.ml = fadd <2 x double> %i.mk, %i.mk          ; 5 uses
  %i.mm = shufflevector <2 x double> %i.md, <2 x double> %i.ml, <2 x i32> <i32 1, i32 2>
  %i.mn = fneg <2 x double> %i.mm
  %i.mo = fmul <2 x double> %i.lh, %i.mn
  %i.mp = shufflevector <2 x double> %i.mg, <2 x double> %i.ml, <2 x i32> <i32 0, i32 3>
  %i.mq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.mp, <2 x double> %i.mo) ; 3 uses
  %foldExtExtBinop872 = fadd <2 x double> %i.mq, %i.mq ; 3 uses
  %i.mr = extractelement <2 x double> %foldExtExtBinop872, i64 0
  %i.ms = shufflevector <2 x double> %i.ml, <2 x double> %foldExtExtBinop872, <2 x i32> <i32 1, i32 2>
  %i.mt = fneg <2 x double> %i.ms
  %i.mu = fmul <2 x double> %i.lf, %i.mt
  %i.mv = shufflevector <2 x double> %foldExtExtBinop872, <2 x double> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.mv, <2 x double> %i.mu)
  %i.mx = fmul <2 x double> %i.ki, %i.ml
  %i.my = fadd <2 x double> %i.mh, %i.mx
  %i.mz = fadd <2 x double> %i.my, %i.mw
  %i.na = fmul double %.sink75.i.i, %i.mr
  %i.nb = extractelement <2 x double> %i.md, i64 0
  %i.nc = fadd double %i.nb, %i.na
  %i.nd = extractelement <2 x double> %i.mq, i64 1
  %i.ne = fadd double %i.nc, %i.nd
  store <2 x double> %i.mz, ptr %17, align 16, !tbaa !95
  store double %i.ne, ptr %i.cf, align 16, !tbaa !17
  br i1 %i.ku, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.split514
end_hunk_1
