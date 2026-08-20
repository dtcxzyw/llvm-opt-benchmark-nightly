inline.NumInlined: 9441
inline.NumDeleted: 5126
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0
%"class.Eigen::Block.697" = type { %"class.Eigen::BlockImpl.698" }
%"class.Eigen::BlockImpl.698" = type { %"class.Eigen::internal::BlockImpl_dense.699" }
%"class.Eigen::internal::BlockImpl_dense.699" = type { %"class.Eigen::MapBase.700", %"class.Eigen::Block.542", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.700" = type { %"class.Eigen::MapBase.701" }
%"class.Eigen::MapBase.701" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.1286" = type { %"struct.Eigen::internal::product_evaluator.1287" }
%"struct.Eigen::internal::product_evaluator.1287" = type { %"class.Eigen::Matrix.899", %"class.Eigen::Transpose.1143", %"struct.Eigen::internal::evaluator.908", %"struct.Eigen::internal::evaluator.1290", i64 }
%"class.Eigen::Transpose.1143" = type { %"class.Eigen::Block.1030" }
%"struct.Eigen::internal::evaluator.1290" = type { %"struct.Eigen::internal::unary_evaluator.1291" }
%"struct.Eigen::internal::unary_evaluator.1291" = type { %"struct.Eigen::internal::evaluator.1294" }
%"struct.Eigen::internal::evaluator.1294" = type { %"struct.Eigen::internal::evaluator.base.1195", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.1195" = type { %"struct.Eigen::internal::block_evaluator.base.1194" }
%"struct.Eigen::internal::block_evaluator.base.1194" = type { %"struct.Eigen::internal::mapbase_evaluator.base.1193" }
%"struct.Eigen::internal::mapbase_evaluator.base.1193" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.1180" = type { %"struct.Eigen::internal::block_evaluator.base.1186", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.1186" = type { %"struct.Eigen::internal::mapbase_evaluator.base.1185" }
%"struct.Eigen::internal::mapbase_evaluator.base.1185" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.1296" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.1176" = type { %"struct.Eigen::internal::product_evaluator.1177" }
%"struct.Eigen::internal::product_evaluator.1177" = type { %"class.Eigen::Block.1097", %"class.Eigen::Block.1030", %"struct.Eigen::internal::evaluator.1180", %"struct.Eigen::internal::evaluator.1188", i64 }
%"class.Eigen::Block.1097" = type { %"class.Eigen::BlockImpl.1098" }
%"class.Eigen::BlockImpl.1098" = type { %"class.Eigen::internal::BlockImpl_dense.1099" }
%"class.Eigen::internal::BlockImpl_dense.1099" = type { %"class.Eigen::MapBase.1100", %"class.Eigen::Block.1019", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1100" = type { %"class.Eigen::MapBase.1101" }
%"class.Eigen::MapBase.1101" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.1188" = type { %"struct.Eigen::internal::block_evaluator.base.1194", [6 x i8] }
%"struct.Eigen::internal::evaluator.1196" = type { %"struct.Eigen::internal::mapbase_evaluator.1197" }
%"struct.Eigen::internal::mapbase_evaluator.1197" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.1200" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Map.1085" = type { %"class.Eigen::MapBase.base.1095", [7 x i8] }
%"class.Eigen::MapBase.base.1095" = type { %"class.Eigen::MapBase.base.1094" }
%"class.Eigen::MapBase.base.1094" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.1492" = type { %"struct.Eigen::internal::product_evaluator.1493" }
%"struct.Eigen::internal::product_evaluator.1493" = type { %"class.Eigen::Matrix.899", %"class.Eigen::Map.1330", %"struct.Eigen::internal::evaluator.908", %"struct.Eigen::internal::evaluator.1396", i64 }
%"class.Eigen::Map.1330" = type <{ %"class.Eigen::MapBase.1331", [8 x i8] }>
%"class.Eigen::MapBase.1331" = type { %"class.Eigen::MapBase.1332" }
%"class.Eigen::MapBase.1332" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.1396" = type { %"struct.Eigen::internal::mapbase_evaluator.1397" }
%"struct.Eigen::internal::mapbase_evaluator.1397" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.1496" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::internal::gemm_blocking_space.2105" = type { %"class.Eigen::internal::level3_blocking", [8 x i8], [6 x double], [6 x double] }
%"class.Eigen::internal::level3_blocking" = type { ptr, ptr, i64, i64, i64 }
%"class.Eigen::Matrix.2049" = type { %"class.Eigen::PlainObjectBase.2050" }
%"class.Eigen::PlainObjectBase.2050" = type { %"class.Eigen::DenseStorage.46" }
%"class.Eigen::DenseStorage.46" = type { ptr, i64, i64 }
%"class.Eigen::internal::gemm_blocking_space" = type { %"class.Eigen::internal::level3_blocking", [8 x i8], [6 x double], [9 x double], [8 x i8] }
%"class.Eigen::Matrix.1550" = type { %"class.Eigen::PlainObjectBase.1551" }
%"class.Eigen::PlainObjectBase.1551" = type { %"class.Eigen::DenseStorage.1558" }
%"class.Eigen::DenseStorage.1558" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.1563" = type { %"class.Eigen::PlainObjectBase.1564" }
%"class.Eigen::PlainObjectBase.1564" = type { %"class.Eigen::DenseStorage.1571" }
%"class.Eigen::DenseStorage.1571" = type { %"struct.Eigen::internal::plain_array.76", i64, i64 }
%"class.Eigen::Product.1601" = type { %"class.Eigen::TriangularView.1608", ptr }
%"class.Eigen::TriangularView.1608" = type { %"class.Eigen::Transpose.1612" }
%"class.Eigen::Transpose.1612" = type { ptr }
%"class.Eigen::Transpose.1736" = type { %"class.Eigen::Block.1684" }
%"class.Eigen::Block.1684" = type { %"class.Eigen::BlockImpl.1685" }
%"class.Eigen::BlockImpl.1685" = type { %"class.Eigen::internal::BlockImpl_dense.1686" }
%"class.Eigen::internal::BlockImpl_dense.1686" = type { %"class.Eigen::MapBase.1687", %"class.Eigen::Block.1695", [8 x i8], %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1687" = type { %"class.Eigen::MapBase.1688" }
%"class.Eigen::MapBase.1688" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.1695" = type { %"class.Eigen::BlockImpl.1696" }
%"class.Eigen::BlockImpl.1696" = type { %"class.Eigen::internal::BlockImpl_dense.1697" }
%"class.Eigen::internal::BlockImpl_dense.1697" = type { %"class.Eigen::MapBase.1698", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1698" = type { %"class.Eigen::MapBase.1699" }
%"class.Eigen::MapBase.1699" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Transpose.1744" = type { %"class.Eigen::Block.1672" }
%"class.Eigen::Block.1672" = type { %"class.Eigen::BlockImpl.1673" }
%"class.Eigen::BlockImpl.1673" = type { %"class.Eigen::internal::BlockImpl_dense.1674" }
%"class.Eigen::internal::BlockImpl_dense.1674" = type { %"class.Eigen::MapBase.1675", %"class.Eigen::Block.542", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.1675" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Transpose.1751" = type { %"class.Eigen::CwiseBinaryOp.1634" }
%"class.Eigen::CwiseBinaryOp.1634" = type <{ [8 x i8], %"class.Eigen::CwiseNullaryOp.1365", %"class.Eigen::Transpose.1640", [8 x i8] }>
%"class.Eigen::CwiseNullaryOp.1365" = type { [8 x i8], %"class.Eigen::internal::variable_if_dynamic", %"struct.Eigen::internal::scalar_constant_op" }
%"struct.Eigen::internal::scalar_constant_op" = type { double }
%"class.Eigen::Transpose.1640" = type { %"class.Eigen::Block.1647" }
%"class.Eigen::Block.1647" = type { %"class.Eigen::BlockImpl.1648" }
%"class.Eigen::BlockImpl.1648" = type { %"class.Eigen::internal::BlockImpl_dense.1649" }
%"class.Eigen::internal::BlockImpl_dense.1649" = type { %"class.Eigen::MapBase.base.1656", %"class.Eigen::Block.1657", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.1656" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.1657" = type { %"class.Eigen::BlockImpl.1658" }
%"class.Eigen::BlockImpl.1658" = type { %"class.Eigen::internal::BlockImpl_dense.1659" }
%"class.Eigen::internal::BlockImpl_dense.1659" = type { %"class.Eigen::MapBase.base.1666", %"class.Eigen::Block.542", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.1666" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }
%"class.Eigen::Matrix.1978" = type { %"class.Eigen::PlainObjectBase.1979" }
%"class.Eigen::PlainObjectBase.1979" = type { %"class.Eigen::DenseStorage.1986" }
%"class.Eigen::DenseStorage.1986" = type { %"struct.Eigen::internal::plain_array.1987" }
%"struct.Eigen::internal::plain_array.1987" = type { [64 x double] }
%"struct.Eigen::internal::gebp_kernel" = type { i8 }
%"struct.Eigen::internal::gemm_pack_lhs" = type { i8 }
%"struct.Eigen::internal::gemm_pack_rhs" = type { i8 }
%"class.Eigen::internal::const_blas_data_mapper.1975" = type { %"class.Eigen::internal::blas_data_mapper.1976" }
%"class.Eigen::internal::blas_data_mapper.1976" = type { ptr, i64 }
%"class.Eigen::internal::blas_data_mapper.1977" = type { ptr, i64 }
%"struct.Eigen::internal::lhs_process_one_packet" = type { i8 }
%"class.Eigen::internal::gemm_blocking_space.2062" = type { %"class.Eigen::internal::level3_blocking", i64, i64 }
%"class.Eigen::Matrix.2072" = type { %"class.Eigen::PlainObjectBase.2073" }
%"class.Eigen::PlainObjectBase.2073" = type { %"class.Eigen::DenseStorage.2080" }
%"class.Eigen::DenseStorage.2080" = type { %"struct.Eigen::internal::plain_array.2081" }
%"struct.Eigen::internal::plain_array.2081" = type { [64 x double] }
%"struct.Eigen::internal::gemm_pack_lhs.2090" = type { i8 }

$_ZN3igl26directed_edge_orientationsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorINS1_10QuaternionIdLi0EEENS1_17aligned_allocatorISG_EEE = comdat any

$_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm = comdat any

$_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll = comdat any

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

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

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

$_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

$_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global %"struct.Eigen::internal::CacheSizes" zeroinitializer, comdat, align 8
@_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global i64 0, comdat, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl26directed_edge_orientationsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorINS1_10QuaternionIdLi0EEENS1_17aligned_allocatorISG_EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.58", align 8  ; 4 uses
  %4 = alloca %"class.Eigen::Matrix.67", align 16 ; 9 uses
  %5 = alloca %"class.Eigen::JacobiSVD", align 16 ; 11 uses
  %6 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.b, %i.i
  tail call void @_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.k)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.b, %i.i
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !14
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.n = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ] ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.624.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.725.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.826.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.418.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.519.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 80
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 88
  %.sroa.7.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 369
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 96
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit, %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit ] ; 3 uses
  %i.ae = phi i64 [ %i.n, %.lr.ph ], [ %i.cf, %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.af = load ptr, ptr %1, align 8, !tbaa !18
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !20, !noalias !23 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i64, ptr %i.p, align 8, !tbaa !26, !noalias !23 ; 2 uses
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao
  store ptr %i.al, ptr %6, align 8
  store i64 %i.am, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.523.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.624.0..sroa_idx.a, align 8
  store i64 0, ptr %.sroa.725.0..sroa_idx.a, align 8
  store i64 1, ptr %.sroa.826.0..sroa_idx.a, align 8
  store ptr %i.ap, ptr %i.q, align 8
  store i64 %i.am, ptr %.sroa.418.0..sroa_idx.a, align 8
  store ptr %0, ptr %.sroa.519.0..sroa_idx.a, align 8
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.a, align 8
  store i64 0, ptr %.sroa.7.0..sroa_idx.a, align 8
  store i64 1, ptr %.sroa.8.0..sroa_idx.a, align 8
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.58") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.as = load ptr, ptr %3, align 8, !tbaa !27    ; 3 uses
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !29 ; 6 uses
  %i.au = getelementptr i8, ptr %i.as, i64 16
  %i.av = load double, ptr %i.au, align 16, !tbaa !30 ; 4 uses
  call void @free(ptr noundef %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.aw = fmul <2 x double> %i.at, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.aw, %shift
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = fmul double %i.av, 0.000000e+00
  %i.az = fadd double %i.ay, %i.ax                ; 4 uses
  %i.ba = fcmp olt double %i.az, f0xBFEFFFFFFFFFDCD1
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = fcmp olt double %i.az, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.bb, double -1.000000e+00, double %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store double 1.000000e+00, ptr %4, align 16, !tbaa !30, !noalias !32
  store double 0.000000e+00, ptr %i.r, align 16, !tbaa !30, !noalias !32
  store double 0.000000e+00, ptr %i.s, align 16, !tbaa !30, !noalias !32
  %.sroa.059.0.vec.extract62.i = extractelement <2 x double> %i.at, i64 0
  store double %.sroa.059.0.vec.extract62.i, ptr %i.t, align 8, !tbaa !30
  %.sroa.059.8.vec.extract64.i = extractelement <2 x double> %i.at, i64 1
  store double %.sroa.059.8.vec.extract64.i, ptr %i.u, align 8, !tbaa !30
  store double %i.av, ptr %i.v, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 0, ptr %i.x, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.w, i8 0, i64 11, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.z, align 8, !tbaa !51
  store i8 0, ptr %i.aa, align 16, !tbaa !52
  store i8 0, ptr %i.ab, align 1, !tbaa !71
  %i.bc = call noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %5, ptr noundef nonnull align 16 dereferenceable(48) %4, i32 noundef 16) ; 0 uses
  %i.bd = load <2 x double>, ptr %i.ac, align 16, !tbaa !29
  %i.be = load double, ptr %i.ad, align 16, !tbaa !30
  %i.bf = fadd nnan double %.sroa.speculated.i, 1.000000e+00
  %i.bg = fmul nnan double %i.bf, 5.000000e-01    ; 2 uses
  %i.bh = call double @sqrt(double noundef %i.bg) #20
  %i.bi = fsub double 1.000000e+00, %i.bg
  %i.bj = call double @sqrt(double noundef %i.bi) #20 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bk = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.bd, %i.bk
  %i.bm = fmul double %i.be, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.bn = fneg double %i.av
  %i.bo = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x double> %i.bo, double %i.av, i64 0
  %i.bq = fmul <2 x double> %i.at, <double 0.000000e+00, double -0.000000e+00> ; 2 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x double> %i.br, double %i.bn, i64 1
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> zeroinitializer, <2 x double> %i.bs)
  %shift37 = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop38 = fsub <2 x double> %shift37, %i.bq
  %i.bu = extractelement <2 x double> %foldExtExtBinop38, i64 0
  %i.bv = fadd double %i.az, 1.000000e+00
  %i.bw = fmul double %i.bv, 2.000000e+00
  %i.bx = call double @sqrt(double noundef %i.bw) #20 ; 2 uses
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i = insertelement <2 x double> poison, double %i.by, i64 0
  %i.bz = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %i.bt, %i.bz
  %i.cb = fmul double %i.bu, %i.by
  %i.cc = fmul double %i.bx, 5.000000e-01
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit

_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE17setFromTwoVectorsINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESF_EEEERS2_RKNS_10MatrixBaseIT_EERKNSI_IT0_EE.exit: ; preds = %bb.g, %bb.h
  %.sink73.i = phi double [ %i.bh, %bb.g ], [ %i.cc, %bb.h ]
  %.sink72.i = phi <2 x double> [ %i.bl, %bb.g ], [ %i.ca, %bb.h ]
  %.sink.i = phi double [ %i.bm, %bb.g ], [ %i.cb, %bb.h ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store double %.sink73.i, ptr %i.cd, align 8, !tbaa !30
  store <2 x double> %.sink72.i, ptr %i.ar, align 8, !tbaa !29
  %i.ce = getelementptr i8, ptr %i.ar, i64 16
  store double %.sink.i, ptr %i.ce, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, %indvars.iv.next
  br i1 %i.cg, label %bb.f, label %._crit_edge, !llvm.loop !72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 5
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !14
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #22 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE12_M_check_lenEmPKc.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

bb.g:                                             ; preds = %_ZNKSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE11_S_relocateEPS2_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !77, !alias.scope !78
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE11_S_relocateEPS2_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !82

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE11_S_relocateEPS2_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE13_M_deallocateEPS2_m.exit32, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE11_S_relocateEPS2_S6_S6_RS4_.exit
  tail call void @free(ptr noundef nonnull %i.c) #20
  br label %_ZNSt12_Vector_baseIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE13_M_deallocateEPS2_m.exit32

_ZNSt12_Vector_baseIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE13_M_deallocateEPS2_m.exit32: ; preds = %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE11_S_relocateEPS2_S6_S6_RS4_.exit, %bb.h
  store ptr %i.u, ptr %0, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEE13_M_deallocateEPS2_m.exit32, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.58") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.016.0.copyload = load ptr, ptr %1, align 8 ; 13 uses
  %.sroa.016.0.copyload29 = ptrtoaddr ptr %.sroa.016.0.copyload to i64 ; 2 uses
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.718.0.copyload = load ptr, ptr %.sroa.718.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 13 uses
  %.sroa.11.0.copyload30 = ptrtoaddr ptr %.sroa.11.0.copyload to i64 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 14 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp eq i64 %.sroa.15.0.copyload, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i1
end_hunk_0
