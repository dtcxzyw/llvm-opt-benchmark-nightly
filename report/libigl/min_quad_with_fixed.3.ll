Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 144
begin_hunk_0
%"class.Eigen::DenseStorage.5921" = type { %"struct.Eigen::internal::plain_array.5922" }
%"struct.Eigen::internal::plain_array.5922" = type { [2 x i8] }
%"class.Eigen::Block.5155" = type { %"class.Eigen::BlockImpl.5156" }
%"class.Eigen::BlockImpl.5156" = type { %"class.Eigen::internal::BlockImpl_dense.5157" }
%"class.Eigen::internal::BlockImpl_dense.5157" = type { %"class.Eigen::MapBase.5158", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.5158" = type { %"class.Eigen::MapBase.5159" }
%"class.Eigen::MapBase.5159" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.5177" = type { %"class.Eigen::BlockImpl.5178" }
%"class.Eigen::BlockImpl.5178" = type { %"class.Eigen::internal::BlockImpl_dense.5179" }
%"class.Eigen::internal::BlockImpl_dense.5179" = type { %"class.Eigen::MapBase.base.5186", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.5186" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::TriangularView.5111" = type { %"class.Eigen::Block.5115" }
%"class.Eigen::Block.5115" = type { %"class.Eigen::BlockImpl.5116" }
%"class.Eigen::BlockImpl.5116" = type { %"class.Eigen::internal::BlockImpl_dense.5117" }
%"class.Eigen::internal::BlockImpl_dense.5117" = type { %"class.Eigen::MapBase.5118", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.5118" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.5124" = type { %"class.Eigen::BlockImpl.5125" }
%"class.Eigen::BlockImpl.5125" = type { %"class.Eigen::internal::BlockImpl_dense.5126" }
%"class.Eigen::internal::BlockImpl_dense.5126" = type { %"class.Eigen::MapBase.base.5136", ptr, %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.5136" = type { %"class.Eigen::MapBase.base.5135" }
%"class.Eigen::MapBase.base.5135" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.5651" = type { %"struct.Eigen::internal::product_evaluator.base.5655", [8 x i8] }
%"struct.Eigen::internal::product_evaluator.base.5655" = type { %"class.Eigen::Matrix.4693", %"class.Eigen::Map.1776", %"struct.Eigen::internal::evaluator.4703", %"struct.Eigen::internal::evaluator.1869", i64 }
%"struct.Eigen::internal::evaluator.5491" = type { %"struct.Eigen::internal::block_evaluator.base.5497", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.5497" = type { %"struct.Eigen::internal::mapbase_evaluator.base.5496" }
%"struct.Eigen::internal::mapbase_evaluator.base.5496" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.5657" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Block.5469" = type { %"class.Eigen::BlockImpl.5470" }
%"class.Eigen::BlockImpl.5470" = type { %"class.Eigen::internal::BlockImpl_dense.5471" }
%"class.Eigen::internal::BlockImpl_dense.5471" = type { %"class.Eigen::MapBase.5472", %"class.Eigen::Block.5155", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.5472" = type { %"class.Eigen::MapBase.5473" }
%"class.Eigen::MapBase.5473" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }

$_ZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE = comdat any

$_ZN3igl19min_quad_with_fixedIdLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN3igl19min_quad_with_fixedIdLi4ELi1ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN3igl19min_quad_with_fixedIdLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li4ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi4ELi1ELi0ELi4ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_ = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi2ELb0ELi0EE3runElPKdlPd = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdS3_Lb0ELi0EE3runEllRKS3_S6_Pdld = comdat any

$_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_ = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_ = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Array.63", align 4   ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.23", align 16 ; 15 uses
  %9 = alloca %"class.Eigen::Matrix.44", align 16 ; 6 uses
  %10 = alloca %"class.Eigen::Array.63", align 4  ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.44", align 16 ; 5 uses
  %12 = alloca %"class.Eigen::Matrix.44", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !348
  %gep55.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %gep55.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !11, !noalias !348
  %invariant.gep.i.i.i.i.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <2 x double>, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.1.i, align 8, !tbaa !9, !noalias !348
  %gep55.i.i.i.i.i.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %gep55.i.i.i.i.i.i.i.i.i.i.1.i, align 8, !tbaa !11, !noalias !348
  %invariant.gep.i.i.i.i.i.i.i.i.i.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load <2 x double>, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.2.i, align 8, !tbaa !9, !noalias !348
  %gep55.i.i.i.i.i.i.i.i.i.i.2.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load double, ptr %gep55.i.i.i.i.i.i.i.i.i.i.2.i, align 8, !tbaa !11, !noalias !348
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %5, align 8, !tbaa !11, !noalias !348
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i.1.i = load double, ptr %i.g, align 8, !tbaa !11, !noalias !348
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre.i.i.i.i.i.i.i.i.i.i.2.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !348 ; 2 uses
  %i.i = load <2 x double>, ptr %5, align 8, !tbaa !9, !noalias !348
  store <2 x double> %i.a, ptr %8, align 16, !alias.scope !348
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.b, ptr %.sroa.6.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !348
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x double> %i.c, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store double %i.d, ptr %.sroa.13.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store double %.pre.i.i.i.i.i.i.i.i.i.i.1.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !348
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <2 x double> %i.e, ptr %.sroa.17.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store double %i.f, ptr %.sroa.20.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  store double %.pre.i.i.i.i.i.i.i.i.i.i.2.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !348
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <2 x double> %i.i, ptr %.sroa.24.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store double %.pre.i.i.i.i.i.i.i.i.i.i.2.i, ptr %.sroa.27.0..sroa_idx.i, align 16, !alias.scope !348
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  store double 0.000000e+00, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !348
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.j = load <2 x double>, ptr %2, align 8, !tbaa !9, !noalias !349
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !11, !noalias !349
  %i.m = load double, ptr %6, align 8, !tbaa !11, !noalias !349
  %i.n = fneg double %i.m
  store <2 x double> %i.j, ptr %9, align 16, !alias.scope !349
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.l, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !349
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !349
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !350
  store i32 0, ptr %7, align 4, !noalias !350
  %i.o = ptrtoint ptr %7 to i64
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 12                         ; 2 uses
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 3) ; 3 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %7, ptr nonnull align 1 %3, i64 %i.r, i1 false), !tbaa !13, !noalias !350
  br label %_ZZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %7, i64 %i.r
  %scevgep16 = getelementptr i8, ptr %3, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep, ptr noundef nonnull align 1 dereferenceable(3) %scevgep16, i64 3, i1 false), !tbaa !13, !noalias !350
  br label %_ZZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit

_ZZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.s = load i32, ptr %7, align 4, !tbaa !9, !noalias !350
  store i32 %i.s, ptr %10, align 4, !tbaa !9, !alias.scope !350
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !350
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.t = load <2 x double>, ptr %4, align 8, !tbaa !9, !noalias !351
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !11, !noalias !351
  store <2 x double> %i.t, ptr %11, align 16, !alias.scope !351
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %i.v, ptr %.sroa.4.0..sroa_idx.i6, align 16, !alias.scope !351
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @_ZN3igl19min_quad_with_fixedIdLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.44") align 16 %12, ptr noundef nonnull align 16 dereferenceable(128) %8, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(4) %10, ptr noundef nonnull align 16 dereferenceable(32) %11)
  %i.w = load <2 x double>, ptr %12, align 16, !tbaa !9
  store <2 x double> %i.w, ptr %0, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.z = load double, ptr %i.y, align 16, !tbaa !11
  store double %i.z, ptr %i.x, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl19min_quad_with_fixedIdLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.44") align 16 %0, ptr noundef nonnull align 16 dereferenceable(128) %1, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 16 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::CompleteOrthogonalDecomposition", align 16 ; 15 uses
  %6 = alloca %"class.Eigen::CwiseUnaryOp.252", align 8 ; 4 uses
  %i.a = load i8, ptr %3, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %narrow.i5.i.i.i.i.i = add nuw nsw i8 %i.c, %i.a
  %narrow.i.i.i.i.i.i = add nuw nsw i8 %narrow.i5.i.i.i.i.i, %i.e
  %narrow.i.i.i.i.i = add nuw nsw i8 %narrow.i.i.i.i.i.i, %i.g
  switch i8 %narrow.i.i.i.i.i, label %default.unreachable243 [
    i8 4, label %bb.b
    i8 0, label %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IdLi4ELi4ELi0ELi4ELi4EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit
    i8 3, label %.preheader.preheader
    i8 2, label %bb.i
    i8 1, label %bb.h
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.h = trunc nuw i8 %i.a to i1
  br i1 %i.h, label %.preheader.1, label %.split288.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !16
  br label %bb.j

_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IdLi4ELi4ELi0ELi4ELi4EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 304
  store i8 0, ptr %i.i, align 16, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 305
  store i8 0, ptr %i.j, align 1, !tbaa !41
  %i.k = load <2 x double>, ptr %1, align 16, !tbaa !9
  store <2 x double> %i.k, ptr %5, align 16, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !9
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !9
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !9
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !9
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !9
  store <2 x double> %i.z, ptr %i.x, align 16, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !9
  store <2 x double> %i.ac, ptr %i.aa, align 16, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.af = load <2 x double>, ptr %i.ae, align 16, !tbaa !9
  store <2 x double> %i.af, ptr %i.ad, align 16, !tbaa !9
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(416) %5)
  call void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(416) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %2, ptr %6, align 8, !tbaa !44, !alias.scope !354
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(416) %5, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 16 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.j

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ag = trunc nuw i8 %i.c to i1                 ; 2 uses
  br i1 %i.ag, label %.preheader.2, label %bb.c

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = trunc nuw i8 %i.e to i1
  br i1 %i.ah, label %.preheader.3, label %bb.c

.preheader.3:                                     ; preds = %.preheader.2
  %i.ai = trunc nuw i8 %i.g to i1                 ; 2 uses
  %not. = xor i1 %i.ai, true
  %spec.select306 = select i1 %i.ai, i64 -1, i64 3
  br label %bb.c

.split288.thread:                                 ; preds = %.preheader.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !16
  %i.aj = load double, ptr %2, align 16, !tbaa !11
  %i.ak = fneg double %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !11
  %gep.1300 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load double, ptr %gep.1300, align 8, !tbaa !11
  %i.ao = fneg double %i.am
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.ak)
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load double, ptr %i.aq, align 16, !tbaa !11
  %gep.2305 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load double, ptr %gep.2305, align 16, !tbaa !11
  %i.at = fneg double %i.ar
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.as, double %i.ap) ; 2 uses
  store double %i.au, ptr %0, align 16, !tbaa !11
  br label %bb.f

bb.c:                                             ; preds = %.preheader.3, %.preheader.1, %.preheader.2
  %.not.2.ph = phi i1 [ true, %.preheader.2 ], [ false, %.preheader.3 ], [ false, %.preheader.1 ] ; 2 uses
  %.not.3.ph = phi i1 [ false, %.preheader.2 ], [ %not., %.preheader.3 ], [ false, %.preheader.1 ] ; 2 uses
  %.0106.ph = phi i64 [ 2, %.preheader.2 ], [ %spec.select306, %.preheader.3 ], [ 1, %.preheader.1 ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !16
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %.0106.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = fneg double %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0106.ph ; 7 uses
  %.idx.i.i.i238248 = shl nsw i64 %.0106.ph, 5    ; 5 uses
  %invariant.gep249 = getelementptr i8, ptr %1, i64 %.idx.i.i.i238248 ; 5 uses
  %i.az = load double, ptr %4, align 16, !tbaa !11
  %i.ba = load double, ptr %invariant.gep249, align 16, !tbaa !11
  %i.bb = fneg double %i.az
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ba, double %i.ax) ; 4 uses
  store double %i.bc, ptr %i.ay, align 8, !tbaa !11
  br i1 %i.ag, label %.split, label %bb.d

.split:                                           ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11
  %gep.1 = getelementptr i8, ptr %invariant.gep249, i64 8
  %i.bf = load double, ptr %gep.1, align 8, !tbaa !11
  %i.bg = fneg double %i.be
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.bc) ; 3 uses
  store double %i.bh, ptr %i.ay, align 8, !tbaa !11
  br i1 %.not.2.ph, label %bb.e, label %.split288

bb.d:                                             ; preds = %bb.c
  br i1 %.not.2.ph, label %bb.e, label %.split288

.split288:                                        ; preds = %.split, %bb.d
  %i.bi = phi double [ %i.bh, %.split ], [ %i.bc, %bb.d ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = load double, ptr %i.bj, align 16, !tbaa !11
  %gep.2 = getelementptr i8, ptr %invariant.gep249, i64 16
  %i.bl = load double, ptr %gep.2, align 16, !tbaa !11
  %i.bm = fneg double %i.bk
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bi) ; 3 uses
  store double %i.bn, ptr %i.ay, align 8, !tbaa !11
  br i1 %.not.3.ph, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.split, %bb.d
  %i.bo = phi double [ %i.bh, %.split ], [ %i.bc, %bb.d ] ; 2 uses
  br i1 %.not.3.ph, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split288.thread, %.split288, %bb.e
  %i.bp = phi double [ %i.bn, %.split288 ], [ %i.bo, %bb.e ], [ %i.au, %.split288.thread ]
  %.0106256274283293 = phi i64 [ %.0106.ph, %.split288 ], [ %.0106.ph, %bb.e ], [ 0, %.split288.thread ]
  %i.bq = phi ptr [ %i.ay, %.split288 ], [ %i.ay, %bb.e ], [ %0, %.split288.thread ] ; 2 uses
  %.idx.i.i.i238258272285291 = phi i64 [ %.idx.i.i.i238248, %.split288 ], [ %.idx.i.i.i238248, %bb.e ], [ 0, %.split288.thread ]
  %invariant.gep261270287290 = phi ptr [ %invariant.gep249, %.split288 ], [ %invariant.gep249, %bb.e ], [ %1, %.split288.thread ]
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %gep.3 = getelementptr i8, ptr %invariant.gep261270287290, i64 24
  %i.bt = load double, ptr %gep.3, align 8, !tbaa !11
  %i.bu = fneg double %i.bs
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.bp) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_:bb.a

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = icmp samesign ult i64 %i.dm, %i.df
  br i1 %i.dw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  %i.dy = and i64 %i.dx, 16
  %i.dz = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %i.ea = getelementptr i8, ptr %i.dg, i64 %i.dy
  %scevgep1.i = getelementptr i8, ptr %i.ea, i64 %i.dz
  %i.eb = and i64 %i.dx, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.eb, i1 false), !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !13
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.ed = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.ed, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.ee = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13, !range !14, !noundef !15
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1083

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.eh, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ei = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.ei, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ej = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.el, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !11 ; 2 uses
  store double %i.ej, ptr %i.ek, align 8, !tbaa !11
  store double %i.el, ptr %i.ei, align 8, !tbaa !11
  %i.em = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.em, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1084

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !215
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %.fr127 = freeze double %i.i
  %i.j = fmul double %i.c, %.fr127                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8, !tbaa !216  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi133 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 24
  %i.v = mul i64 %i.n, 24
  %i.w = mul i64 %i.o, 24
  %i.x = mul i64 %i.p, 24
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 8, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi133, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1098

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader135

.lr.ph.i.i.preheader135:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader135, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader135 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader135 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = mul i64 %.09.i.i, 24
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !1099

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa132 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 10 uses
  %i.bc = icmp sgt i64 %.lcssa132, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bd = add nsw i64 %.lcssa132, -1              ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 52 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.lcssa132, 24
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.bg = icmp eq i64 %.lcssa132, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 8 uses
  %i.bi = icmp eq i64 %.lcssa132, 1               ; 4 uses
  br i1 %i.bg, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = and i64 %i.bj, 8
  %.not97 = icmp eq i64 %i.bk, 0
  br i1 %.not97, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us, label %.lr.ph.split.us.split

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us: ; preds = %.lr.ph.split.us
  %i.bl = load double, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.bm = load double, ptr %i.be, align 16, !tbaa !11
  store double %i.bm, ptr %1, align 8, !tbaa !11
  store double %i.bl, ptr %i.be, align 16, !tbaa !11
  %i.bn = load double, ptr %i.bf, align 8, !tbaa !11
  %i.bo = fsub double 1.000000e+00, %i.bn
  %i.bp = fmul double %i.bo, %i.bl                ; 2 uses
  store double %i.bp, ptr %i.be, align 16, !tbaa !11
  %i.bq = load double, ptr %1, align 8, !tbaa !11 ; 2 uses
  store double %i.bp, ptr %1, align 8, !tbaa !11
  store double %i.bq, ptr %i.be, align 16, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  store double %i.bq, ptr %i.br, align 8, !tbaa !11
  store double %i.bs, ptr %i.be, align 16, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !11
  %i.bv = fsub double 1.000000e+00, %i.bu
  %i.bw = fmul double %i.bv, %i.bs                ; 2 uses
  store double %i.bw, ptr %i.be, align 16, !tbaa !11
  %i.bx = load double, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  store double %i.bw, ptr %i.br, align 8, !tbaa !11
  store double %i.bx, ptr %i.be, align 16, !tbaa !11
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = fsub double 1.000000e+00, %i.bz
  %i.cb = fmul double %i.ca, %i.bx
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cc = load double, ptr %1, align 8, !tbaa !11
  %i.cd = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cd, ptr %1, align 8, !tbaa !11
  store double %i.cc, ptr %i.be, align 8, !tbaa !11
  %i.ce = load double, ptr %i.bf, align 8, !tbaa !11
  %i.cf = fsub double 1.000000e+00, %i.ce
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.epil

.lr.ph.i.i.i.i.i.i.i.i.us.epil.1:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us
  %.05.i.i.i.i.i.i.i.i.us.epil.1 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1 ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us ] ; 2 uses
  %epil.iter.1 = phi i64 [ %epil.iter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1 ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i.i.us.epil.1 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !11
  %i.ci = fmul double %i.dl, %i.ch
  store double %i.ci, ptr %i.cg, align 8, !tbaa !11
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.1, 0
  br i1 %epil.iter.cmp.1.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1, !llvm.loop !1100

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cm, ptr %i.ck, align 8, !tbaa !11
  store double %i.cl, ptr %i.be, align 8, !tbaa !11
  %.not.us.2 = icmp eq i64 %i.bd, 2               ; 2 uses
  br i1 %.not.us.2, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11
  %i.cp = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cp, ptr %i.cn, align 8, !tbaa !11
  store double %i.co, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2: ; preds = %bb.b, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = fsub double 1.000000e+00, %i.cr
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2

.lr.ph.i.i.i.i.i.i.i.i.us.epil.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2
  %.05.i.i.i.i.i.i.i.i.us.epil.2 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2 ] ; 2 uses
  %epil.iter.2 = phi i64 [ %epil.iter.next.2, %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.2 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i.i.us.epil.2 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !11
  %i.cv = fmul double %i.cs, %i.cu
  store double %i.cv, ptr %i.ct, align 8, !tbaa !11
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.2, 0
  br i1 %epil.iter.cmp.2.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.2, label %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2, !llvm.loop !1100

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil.2
  br i1 %.not.us.2, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.2
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11
  %i.cz = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cz, ptr %i.cx, align 8, !tbaa !11
  store double %i.cy, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.i.i.i.i.i.i.us.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil, %.lr.ph.split.us.split
  %.05.i.i.i.i.i.i.i.i.us.epil = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.us.epil ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.us.epil ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i.i.us.epil ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !11
  %i.dc = fmul double %i.cf, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !11
  %i.dd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.us.epil, !llvm.loop !1100

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.epil
  %i.de = load double, ptr %1, align 8, !tbaa !11
  %i.df = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.df, ptr %1, align 8, !tbaa !11
  store double %i.de, ptr %i.be, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !11
  %i.di = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.di, ptr %i.dg, align 8, !tbaa !11
  store double %i.dh, ptr %i.be, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = fsub double 1.000000e+00, %i.dk
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.epil.1

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dm = icmp samesign ult i64 %.lcssa132, 3
  %i.dn = getelementptr i8, ptr %i.be, i64 16     ; 3 uses
  br i1 %i.dm, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader.split

.lr.ph.split.split.preheader.split:               ; preds = %.lr.ph.split
  %i.do = add nsw i64 %.lcssa132, -2
  br label %bb.p

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not.us102 = icmp eq i64 %i.bd, 0              ; 2 uses
  br i1 %.not.us102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.dp = load double, ptr %1, align 8, !tbaa !11
  %i.dq = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.dq, ptr %1, align 8, !tbaa !11
  store double %i.dp, ptr %i.be, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us
  %i.dr = load double, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.ds = fcmp une double %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.f, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104

bb.f:                                             ; preds = %bb.e
  %i.dt = load double, ptr %invariant.gep, align 8, !tbaa !11
  %i.du = load double, ptr %i.bh, align 8, !tbaa !11
  %i.dv = fmul double %i.dt, %i.du                ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

.lr.ph.i.i.i.i.i.i.i8.i.us.preheader:             ; preds = %bb.f
  %i.dw = getelementptr i8, ptr %invariant.gep, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !11
  %i.dy = load double, ptr %i.dn, align 8, !tbaa !11
  %i.dz = fmul double %i.dx, %i.dy
  %i.ea = fadd double %i.dv, %i.dz
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader, %bb.f
  %.0.i.i.i.i.i.i.us = phi double [ %i.dv, %bb.f ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader ]
  %i.eb = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.ec = fadd double %.0.i.i.i.i.i.i.us, %i.eb   ; 3 uses
  %i.ed = fmul double %i.ec, %i.dr
  %i.ee = fsub double %i.eb, %i.ed
  store double %i.ee, ptr %i.be, align 8, !tbaa !11
  %i.ef = load double, ptr %i.bf, align 8, !tbaa !11, !noalias !1104 ; 2 uses
  %i.eg = load double, ptr %invariant.gep, align 8, !tbaa !11
  %i.eh = fmul double %i.ef, %i.eg
  %i.ei = fmul double %i.eh, %i.ec
  %i.ej = load double, ptr %i.bh, align 8, !tbaa !11
  %i.ek = fsub double %i.ej, %i.ei
  store double %i.ek, ptr %i.bh, align 8, !tbaa !11
  %exitcond.not.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %.lcssa132, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.1:                    ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us
  %i.el = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.em = getelementptr i8, ptr %invariant.gep, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = fmul double %i.ef, %i.en
  %i.ep = fmul double %i.eo, %i.ec
  %i.eq = load double, ptr %i.el, align 8, !tbaa !11
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us, %.lr.ph.i.i.i.i.i.i.i.i.i.us.1, %bb.e
  br i1 %.not.us102, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us105, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104
  %i.es = load double, ptr %1, align 8, !tbaa !11
  %i.et = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.et, ptr %1, align 8, !tbaa !11
  store double %i.es, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us105

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us105: ; preds = %bb.g, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104
  %exitcond111.not = icmp eq i64 %.lcssa132, 1
  br i1 %exitcond111.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph.split.split.us.1

.lr.ph.split.split.us.1:                          ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us105
  %.not.us102.1 = icmp eq i64 %i.bd, 1            ; 2 uses
  br i1 %.not.us102.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.us.1
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ew = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.ew, ptr %i.eu, align 8, !tbaa !11
  store double %i.ev, ptr %i.be, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.split.us.1
  %gep.us103.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11 ; 2 uses
  %i.ez = fcmp une double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.j, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us104.1

end_hunk_1
