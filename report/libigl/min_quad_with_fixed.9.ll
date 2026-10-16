Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 153
begin_hunk_0
%"class.Eigen::internal::BlockImpl_dense.4568" = type { %"class.Eigen::MapBase.4569", %"class.Eigen::Block.4407", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.4569" = type { %"class.Eigen::MapBase.4570" }
%"class.Eigen::MapBase.4570" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.4661" = type { %"struct.Eigen::internal::unary_evaluator.4662" }
%"struct.Eigen::internal::unary_evaluator.4662" = type { %"struct.Eigen::internal::evaluator.4665" }
%"struct.Eigen::internal::evaluator.4665" = type { %"struct.Eigen::internal::evaluator.base.4526", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.4526" = type { %"struct.Eigen::internal::block_evaluator.base.4525" }
%"struct.Eigen::internal::block_evaluator.base.4525" = type { %"struct.Eigen::internal::mapbase_evaluator.base.4524" }
%"struct.Eigen::internal::mapbase_evaluator.base.4524" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.4667" = type { %"struct.Eigen::internal::block_evaluator.base.4673", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.4673" = type { %"struct.Eigen::internal::mapbase_evaluator.base.4672" }
%"struct.Eigen::internal::mapbase_evaluator.base.4672" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.4679" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Matrix.5984" = type { %"class.Eigen::PlainObjectBase.5985" }
%"class.Eigen::PlainObjectBase.5985" = type { %"class.Eigen::DenseStorage.5992" }
%"class.Eigen::DenseStorage.5992" = type { %"struct.Eigen::internal::plain_array.5993" }
%"struct.Eigen::internal::plain_array.5993" = type { [2 x i8] }
%"class.Eigen::Block.5235" = type { %"class.Eigen::BlockImpl.5236" }
%"class.Eigen::BlockImpl.5236" = type { %"class.Eigen::internal::BlockImpl_dense.5237" }
%"class.Eigen::internal::BlockImpl_dense.5237" = type { %"class.Eigen::MapBase.5238", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.5238" = type { %"class.Eigen::MapBase.5239" }
%"class.Eigen::MapBase.5239" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.5257" = type { %"class.Eigen::BlockImpl.5258" }
%"class.Eigen::BlockImpl.5258" = type { %"class.Eigen::internal::BlockImpl_dense.5259" }
%"class.Eigen::internal::BlockImpl_dense.5259" = type { %"class.Eigen::MapBase.base.5266", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.5266" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::TriangularView.5191" = type { %"class.Eigen::Block.5195" }
%"class.Eigen::Block.5195" = type { %"class.Eigen::BlockImpl.5196" }
%"class.Eigen::BlockImpl.5196" = type { %"class.Eigen::internal::BlockImpl_dense.5197" }
%"class.Eigen::internal::BlockImpl_dense.5197" = type { %"class.Eigen::MapBase.5198", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.5198" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.5204" = type { %"class.Eigen::BlockImpl.5205" }
%"class.Eigen::BlockImpl.5205" = type { %"class.Eigen::internal::BlockImpl_dense.5206" }
%"class.Eigen::internal::BlockImpl_dense.5206" = type { %"class.Eigen::MapBase.base.5216", ptr, %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.5216" = type { %"class.Eigen::MapBase.base.5215" }
%"class.Eigen::MapBase.base.5215" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.5734" = type { %"struct.Eigen::internal::product_evaluator.5735" }
%"struct.Eigen::internal::product_evaluator.5735" = type { %"class.Eigen::Matrix.4775", %"class.Eigen::Map.1783", %"struct.Eigen::internal::evaluator.4784", %"struct.Eigen::internal::evaluator.1877", i64 }

$_ZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE = comdat any

$_ZN3igl19min_quad_with_fixedIfLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN3igl19min_quad_with_fixedIfLi4ELi1ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN3igl19min_quad_with_fixedIfLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_ = comdat any

$_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li4ELi1ELb1EEELin1EEEEEvRKT_RKfPf = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS5_IfLin1ELin1ELi0ELi4ELi4EEEEEEENS0_13mul_assign_opIffEELi0EEELi4ELi0EE3runERSH_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSP_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERS12_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi4ELi1ELi0ELi4ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKfPf = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS5_IfLin1ELin1ELi0ELi4ELi1EEEEEEENS0_13mul_assign_opIffEELi0EEELi4ELi0EE3runERSH_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERSZ_ = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen8internal23triangular_solve_vectorIfflLi1ELi2ELb0ELi0EE3runElPKflPf = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIlfNS0_22const_blas_data_mapperIflLi0EEELi0ELb0EfS3_Lb0ELi0EE3runEllRKS3_S6_Pflf = comdat any

$_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKfPf = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSP_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi3ELi1ELi0ELi3ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKfPf = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKfPf = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_ = comdat any

$_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Array.63", align 4   ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.23", align 16 ; 15 uses
  %9 = alloca %"class.Eigen::Matrix.44", align 16 ; 5 uses
  %10 = alloca %"class.Eigen::Array.63", align 4  ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.44", align 16 ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.44", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %.sroa.6.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload43.i = load float, ptr %.sroa.6.0..sroa_idx42.i, align 4, !tbaa !10, !noalias !350
  %invariant.gep54.i.i.i.i.i.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.12.16.invariant.gep54.i.i.i.i.i.i.i.i.i.i.1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.12.16.copyload.i = load float, ptr %.sroa.12.16.invariant.gep54.i.i.i.i.i.i.i.i.i.i.1.sroa_idx.i, align 4, !tbaa !10, !noalias !350
  %invariant.gep54.i.i.i.i.i.i.i.i.i.i.2.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.18.32.invariant.gep54.i.i.i.i.i.i.i.i.i.i.2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.18.32.copyload.i = load float, ptr %.sroa.18.32.invariant.gep54.i.i.i.i.i.i.i.i.i.i.2.sroa_idx.i, align 4, !tbaa !10, !noalias !350
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i.2.i = load float, ptr %i.a, align 4, !tbaa !10, !noalias !350 ; 2 uses
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !10, !noalias !350
  store <2 x float> %i.b, ptr %8, align 16, !alias.scope !350
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.6.0.copyload43.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !350
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = load <2 x float>, ptr %invariant.gep54.i.i.i.i.i.i.i.i.i.i.1.i, align 4, !tbaa !10, !noalias !350
  store <2 x float> %i.c, ptr %.sroa.9.0..sroa_idx.i, align 16, !alias.scope !350
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store float %.sroa.12.16.copyload.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !350
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = load <2 x float>, ptr %invariant.gep54.i.i.i.i.i.i.i.i.i.i.2.i, align 4, !tbaa !10, !noalias !350
  store <2 x float> %i.d, ptr %.sroa.15.0..sroa_idx.i, align 16, !alias.scope !350
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store float %.sroa.18.32.copyload.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !350
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 44
  store float %.pre.i.i.i.i.i.i.i.i.i.i.2.i, ptr %.sroa.19.0..sroa_idx.i, align 4, !alias.scope !350
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.e = load <2 x float>, ptr %5, align 4, !tbaa !10, !noalias !350 ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  store float %i.f, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !350
  %i.g = extractelement <2 x float> %i.e, i64 1
  store float %i.g, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !350
  store <2 x float> %i.e, ptr %.sroa.21.0..sroa_idx.i, align 16, !alias.scope !350
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store float %.pre.i.i.i.i.i.i.i.i.i.i.2.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !alias.scope !350
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 60
  store float 0.000000e+00, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !11, !alias.scope !350
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.h = load float, ptr %6, align 4, !tbaa !10, !noalias !351
  %i.i = fneg float %i.h
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float %i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11, !alias.scope !351
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !352
  store i32 0, ptr %7, align 4, !noalias !352
  %i.j = ptrtoint ptr %7 to i64
  %i.k = sub i64 0, %i.j
  %i.l = and i64 %i.k, 12                         ; 2 uses
  %i.m = call i64 @llvm.umin.i64(i64 %i.l, i64 3) ; 3 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %7, ptr nonnull align 1 %3, i64 %i.m, i1 false), !tbaa !13, !noalias !352
  br label %_ZZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %7, i64 %i.m
  %scevgep15 = getelementptr i8, ptr %3, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep, ptr noundef nonnull align 1 dereferenceable(3) %scevgep15, i64 3, i1 false), !tbaa !13, !noalias !352
  br label %_ZZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit

_ZZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEEENKUlvE1_clEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.n = load i32, ptr %7, align 4, !tbaa !11, !noalias !352
  store i32 %i.n, ptr %10, align 4, !tbaa !11, !alias.scope !352
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @_ZN3igl19min_quad_with_fixedIfLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.44") align 16 %12, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(4) %10, ptr noundef nonnull align 16 dereferenceable(16) %11)
  %i.o = load <2 x float>, ptr %12, align 16, !tbaa !10
  store <2 x float> %i.o, ptr %0, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = load float, ptr %i.q, align 8, !tbaa !10
  store float %i.r, ptr %i.p, align 4, !tbaa !10
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
define linkonce_odr dso_local void @_ZN3igl19min_quad_with_fixedIfLi4ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.44") align 16 %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::CompleteOrthogonalDecomposition", align 16 ; 11 uses
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
    i8 0, label %_ZN5Eigen6MatrixIfLi4ELi1ELi0ELi4ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IfLi4ELi4ELi0ELi4ELi4EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit
    i8 3, label %.preheader.preheader
    i8 2, label %bb.i
    i8 1, label %bb.h
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.h = trunc nuw i8 %i.a to i1
  br i1 %i.h, label %.preheader.1, label %.split288.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  br label %bb.j

_ZN5Eigen6MatrixIfLi4ELi1ELi0ELi4ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IfLi4ELi4ELi0ELi4ELi4EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i8 0, ptr %i.i, align 16, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 177
  store i8 0, ptr %i.j, align 1, !tbaa !41
  %i.k = load <4 x float>, ptr %1, align 16, !tbaa !11
  store <4 x float> %i.k, ptr %5, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <4 x float>, ptr %i.m, align 16, !tbaa !11
  store <4 x float> %i.n, ptr %i.l, align 16, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load <4 x float>, ptr %i.p, align 16, !tbaa !11
  store <4 x float> %i.q, ptr %i.o, align 16, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load <4 x float>, ptr %i.s, align 16, !tbaa !11
  store <4 x float> %i.t, ptr %i.r, align 16, !tbaa !11
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(240) %5)
  call void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(240) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %2, ptr %6, align 8, !tbaa !44, !alias.scope !355
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(240) %5, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 16 dereferenceable(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.j

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.u = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.u, label %.preheader.2, label %bb.c

.preheader.2:                                     ; preds = %.preheader.1
  %i.v = trunc nuw i8 %i.e to i1
  br i1 %i.v, label %.preheader.3, label %bb.c

.preheader.3:                                     ; preds = %.preheader.2
  %i.w = trunc nuw i8 %i.g to i1                  ; 2 uses
  %not. = xor i1 %i.w, true
  %spec.select306 = select i1 %i.w, i64 -1, i64 3
  br label %bb.c

.split288.thread:                                 ; preds = %.preheader.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  %i.x = load float, ptr %2, align 16, !tbaa !10
  %i.y = fneg float %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %gep.1300 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load float, ptr %gep.1300, align 4, !tbaa !10
  %gep.2305 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load float, ptr %gep.2305, align 8, !tbaa !10
  %i.ac = load <2 x float>, ptr %i.z, align 4, !tbaa !10
  %i.ad = fneg <2 x float> %i.ac                  ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.aa, float %i.y)
  %i.ag = extractelement <2 x float> %i.ad, i64 1
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ab, float %i.af) ; 2 uses
  store float %i.ah, ptr %0, align 16, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %.preheader.3, %.preheader.1, %.preheader.2
  %.not.2.ph = phi i1 [ true, %.preheader.2 ], [ false, %.preheader.3 ], [ false, %.preheader.1 ] ; 2 uses
  %.not.3.ph = phi i1 [ false, %.preheader.2 ], [ %not., %.preheader.3 ], [ false, %.preheader.1 ] ; 2 uses
  %.0106.ph = phi i64 [ 2, %.preheader.2 ], [ %spec.select306, %.preheader.3 ], [ 1, %.preheader.1 ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  %i.ai = getelementptr inbounds [4 x i8], ptr %2, i64 %.0106.ph
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ak = fneg float %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0106.ph ; 7 uses
  %.idx.i.i.i238248 = shl nsw i64 %.0106.ph, 4    ; 5 uses
  %invariant.gep249 = getelementptr i8, ptr %1, i64 %.idx.i.i.i238248 ; 5 uses
  %i.am = load float, ptr %4, align 16, !tbaa !10
  %i.an = load float, ptr %invariant.gep249, align 16, !tbaa !10
  %i.ao = fneg float %i.am
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.an, float %i.ak) ; 4 uses
  store float %i.ap, ptr %i.al, align 4, !tbaa !10
  br i1 %i.u, label %.split, label %bb.d

.split:                                           ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !10
  %gep.1 = getelementptr i8, ptr %invariant.gep249, i64 4
  %i.as = load float, ptr %gep.1, align 4, !tbaa !10
  %i.at = fneg float %i.ar
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.as, float %i.ap) ; 3 uses
  store float %i.au, ptr %i.al, align 4, !tbaa !10
  br i1 %.not.2.ph, label %bb.e, label %.split288

bb.d:                                             ; preds = %bb.c
  br i1 %.not.2.ph, label %bb.e, label %.split288

.split288:                                        ; preds = %.split, %bb.d
  %i.av = phi float [ %i.au, %.split ], [ %i.ap, %bb.d ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !10
  %gep.2 = getelementptr i8, ptr %invariant.gep249, i64 8
  %i.ay = load float, ptr %gep.2, align 8, !tbaa !10
  %i.az = fneg float %i.ax
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.av) ; 3 uses
  store float %i.ba, ptr %i.al, align 4, !tbaa !10
  br i1 %.not.3.ph, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.split, %bb.d
  %i.bb = phi float [ %i.au, %.split ], [ %i.ap, %bb.d ] ; 2 uses
  br i1 %.not.3.ph, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split288.thread, %.split288, %bb.e
  %i.bc = phi float [ %i.ba, %.split288 ], [ %i.bb, %bb.e ], [ %i.ah, %.split288.thread ]
  %.0106256274283293 = phi i64 [ %.0106.ph, %.split288 ], [ %.0106.ph, %bb.e ], [ 0, %.split288.thread ]
  %i.bd = phi ptr [ %i.al, %.split288 ], [ %i.al, %bb.e ], [ %0, %.split288.thread ] ; 2 uses
  %.idx.i.i.i238258272285291 = phi i64 [ %.idx.i.i.i238248, %.split288 ], [ %.idx.i.i.i238248, %bb.e ], [ 0, %.split288.thread ]
  %invariant.gep261270287290 = phi ptr [ %invariant.gep249, %.split288 ], [ %invariant.gep249, %bb.e ], [ %1, %.split288.thread ]
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  %gep.3 = getelementptr i8, ptr %invariant.gep261270287290, i64 12
  %i.bg = load float, ptr %gep.3, align 4, !tbaa !10
  %i.bh = fneg float %i.bf
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bg, float %i.bc) ; 2 uses
  store float %i.bi, ptr %i.bd, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.split288, %bb.f, %bb.e
  %.0106256274283294 = phi i64 [ %.0106256274283293, %bb.f ], [ %.0106.ph, %bb.e ], [ %.0106.ph, %.split288 ]
  %i.bj = phi ptr [ %i.bd, %bb.f ], [ %i.al, %bb.e ], [ %i.al, %.split288 ]
  %.idx.i.i.i238258272285292 = phi i64 [ %.idx.i.i.i238258272285291, %bb.f ], [ %.idx.i.i.i238248, %bb.e ], [ %.idx.i.i.i238248, %.split288 ]
  %i.bk = phi float [ %i.bi, %bb.f ], [ %i.bb, %bb.e ], [ %i.ba, %.split288 ]
  %i.bl = getelementptr [4 x i8], ptr %1, i64 %.0106256274283294
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i238258272285292
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !10
  %i.bo = fdiv float %i.bk, %i.bn
  store float %i.bo, ptr %i.bj, align 4, !tbaa !10
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN3igl19min_quad_with_fixedIfLi4ELi1ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.44") align 16 %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 16 dereferenceable(16) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN3igl19min_quad_with_fixedIfLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.44") align 16 %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 16 dereferenceable(16) %4)
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !13
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.dx = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.dx, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.dy = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1164

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.eb, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ec = getelementptr inbounds [4 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load float, ptr %i.ec, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ed = phi float [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ef, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !10 ; 2 uses
  store float %i.ed, ptr %i.ee, align 4, !tbaa !10
  store float %i.ef, ptr %i.ec, align 4, !tbaa !10
  %i.eg = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.eg, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1165

_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load float, ptr %i.a, align 4, !tbaa !242
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load float, ptr %i.g, align 8
  %i.i = select i1 %i.f, float %i.h, float f0x34C00000
  %.fr122 = freeze float %i.i
  %i.j = fmul float %i.c, %.fr122                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !243  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi126 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 12
  %i.v = mul i64 %i.n, 12
  %i.w = mul i64 %i.o, 12
  %i.x = mul i64 %i.p, 12
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 8, !tbaa !10
  %i.ad = load float, ptr %i.z, align 8, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 8, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi126, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader127

.lr.ph.i.i.preheader127:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader127, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader127 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader127 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = mul i64 %.09.i.i, 12
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !1182

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa125 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 10 uses
  %i.bc = icmp sgt i64 %.lcssa125, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bd = add nsw i64 %.lcssa125, -1              ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd ; 36 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.lcssa125, 12
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.bg = icmp eq i64 %.lcssa125, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 8 uses
  %i.bi = icmp eq i64 %.lcssa125, 1               ; 4 uses
  br i1 %i.bg, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us, label %.lr.ph.split

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us: ; preds = %.lr.ph
  %i.bj = load float, ptr %1, align 4, !tbaa !10  ; 2 uses
  %i.bk = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.bk, ptr %1, align 4, !tbaa !10
  store float %i.bj, ptr %i.be, align 4, !tbaa !10
  %i.bl = load float, ptr %i.bf, align 8, !tbaa !10
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = fmul float %i.bm, %i.bj                 ; 2 uses
  store float %i.bn, ptr %i.be, align 4, !tbaa !10
  %i.bo = load float, ptr %1, align 4, !tbaa !10  ; 2 uses
  store float %i.bn, ptr %1, align 4, !tbaa !10
  store float %i.bo, ptr %i.be, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10 ; 2 uses
  store float %i.bo, ptr %i.bp, align 4, !tbaa !10
  store float %i.bq, ptr %i.be, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bs = load float, ptr %i.br, align 4, !tbaa !10
  %i.bt = fsub float 1.000000e+00, %i.bs
  %i.bu = fmul float %i.bt, %i.bq                 ; 2 uses
  store float %i.bu, ptr %i.be, align 4, !tbaa !10
  %i.bv = load float, ptr %i.bp, align 4, !tbaa !10 ; 2 uses
  store float %i.bu, ptr %i.bp, align 4, !tbaa !10
  store float %i.bv, ptr %i.be, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !10
  %i.by = fsub float 1.000000e+00, %i.bx
  %i.bz = fmul float %i.by, %i.bv
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = icmp samesign ult i64 %.lcssa125, 3
  %i.cb = getelementptr i8, ptr %i.be, i64 8      ; 3 uses
  br i1 %i.ca, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader.split

.lr.ph.split.split.preheader.split:               ; preds = %.lr.ph.split
  %i.cc = add nsw i64 %.lcssa125, -2
  br label %bb.n

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not.us100 = icmp eq i64 %i.bd, 0              ; 2 uses
  br i1 %.not.us100, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.cd = load float, ptr %1, align 4, !tbaa !10
  %i.ce = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.ce, ptr %1, align 4, !tbaa !10
  store float %i.cd, ptr %i.be, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.split.us
  %i.cf = load float, ptr %i.bf, align 8, !tbaa !10 ; 2 uses
  %i.cg = fcmp une float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102

bb.d:                                             ; preds = %bb.c
  %i.ch = load float, ptr %invariant.gep, align 4, !tbaa !10
  %i.ci = load float, ptr %i.bh, align 4, !tbaa !10
  %i.cj = fmul float %i.ch, %i.ci                 ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

.lr.ph.i.i.i.i.i.i.i8.i.us.preheader:             ; preds = %bb.d
  %i.ck = getelementptr i8, ptr %invariant.gep, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10
  %i.cm = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = fadd float %i.cj, %i.cn
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader, %bb.d
  %.0.i.i.i.i.i.i.us = phi float [ %i.cj, %bb.d ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader ]
  %i.cp = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.cq = fadd float %.0.i.i.i.i.i.i.us, %i.cp    ; 3 uses
  %i.cr = fmul float %i.cq, %i.cf
  %i.cs = fsub float %i.cp, %i.cr
  store float %i.cs, ptr %i.be, align 4, !tbaa !10
  %i.ct = load float, ptr %i.bf, align 8, !tbaa !10, !noalias !1186 ; 2 uses
  %i.cu = load float, ptr %invariant.gep, align 4, !tbaa !10
  %i.cv = fmul float %i.ct, %i.cu
  %i.cw = fmul float %i.cv, %i.cq
  %i.cx = load float, ptr %i.bh, align 4, !tbaa !10
  %i.cy = fsub float %i.cx, %i.cw
  store float %i.cy, ptr %i.bh, align 4, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %.lcssa125, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.1:                    ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.da = getelementptr i8, ptr %invariant.gep, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = fmul float %i.ct, %i.db
  %i.dd = fmul float %i.dc, %i.cq
  %i.de = load float, ptr %i.cz, align 4, !tbaa !10
  %i.df = fsub float %i.de, %i.dd
  store float %i.df, ptr %i.cz, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us, %.lr.ph.i.i.i.i.i.i.i.i.i.us.1, %bb.c
  br i1 %.not.us100, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us103, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102
  %i.dg = load float, ptr %1, align 4, !tbaa !10
  %i.dh = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.dh, ptr %1, align 4, !tbaa !10
  store float %i.dg, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us103

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us103: ; preds = %bb.e, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102
  %exitcond108.not = icmp eq i64 %.lcssa125, 1
  br i1 %exitcond108.not, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph.split.split.us.1

.lr.ph.split.split.us.1:                          ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us103
  %.not.us100.1 = icmp eq i64 %i.bd, 1            ; 2 uses
  br i1 %.not.us100.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us.1
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !10
  %i.dk = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.dk, ptr %i.di, align 4, !tbaa !10
  store float %i.dj, ptr %i.be, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us.1
  %gep.us101.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !10 ; 2 uses
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.h, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1

bb.h:                                             ; preds = %bb.g
  %i.do = load float, ptr %gep.us101.1, align 4, !tbaa !10
  %i.dp = load float, ptr %i.bh, align 4, !tbaa !10
  %i.dq = fmul float %i.do, %i.dp                 ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1

.lr.ph.i.i.i.i.i.i.i8.i.us.preheader.1:           ; preds = %bb.h
  %i.dr = getelementptr i8, ptr %invariant.gep, i64 16
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !10
  %i.dt = load float, ptr %i.cb, align 4, !tbaa !10
  %i.du = fmul float %i.ds, %i.dt
  %i.dv = fadd float %i.dq, %i.du
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader.1, %bb.h
  %.0.i.i.i.i.i.i.us.1 = phi float [ %i.dq, %bb.h ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i8.i.us.preheader.1 ]
  %i.dw = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.dx = fadd float %.0.i.i.i.i.i.i.us.1, %i.dw  ; 3 uses
  %i.dy = fmul float %i.dx, %i.dm
  %i.dz = fsub float %i.dw, %i.dy
  store float %i.dz, ptr %i.be, align 4, !tbaa !10
  %i.ea = load float, ptr %i.dl, align 4, !tbaa !10, !noalias !1186 ; 2 uses
  %i.eb = load float, ptr %gep.us101.1, align 4, !tbaa !10
  %i.ec = fmul float %i.ea, %i.eb
  %i.ed = fmul float %i.ec, %i.dx
  %i.ee = load float, ptr %i.bh, align 4, !tbaa !10
  %i.ef = fsub float %i.ee, %i.ed
  store float %i.ef, ptr %i.bh, align 4, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.i.i.us.1 = icmp eq i64 %.lcssa125, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1:                  ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.eh = getelementptr i8, ptr %invariant.gep, i64 16
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !10
  %i.ej = fmul float %i.ea, %i.ei
  %i.ek = fmul float %i.ej, %i.dx
  %i.el = load float, ptr %i.eg, align 4, !tbaa !10
  %i.em = fsub float %i.el, %i.ek
  store float %i.em, ptr %i.eg, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1, %bb.g
  br i1 %.not.us100.1, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.ep, ptr %i.en, align 4, !tbaa !10
  store float %i.eo, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin: ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.not.peel = icmp eq i64 %i.gh, %i.bd           ; 2 uses
  br i1 %.not.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gh ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !10
  %i.es = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.es, ptr %i.eq, align 4, !tbaa !10
  store float %i.er, ptr %i.be, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  %gep.peel = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.gh ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.gh
  %i.eu = load float, ptr %i.et, align 4, !tbaa !10 ; 2 uses
  %i.ev = fcmp une float %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.l, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel

bb.l:                                             ; preds = %bb.k
  %i.ew = load float, ptr %gep.peel, align 4, !tbaa !10
  %i.ex = load float, ptr %i.bh, align 4, !tbaa !10
  %i.ey = fmul float %i.ew, %i.ex                 ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.preheader.peel, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel

.lr.ph.i.i.i.i.i.i.i8.i.preheader.peel:           ; preds = %bb.l
  %i.ez = getelementptr i8, ptr %gep.peel, i64 12
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !10
  %i.fb = getelementptr i8, ptr %i.be, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !10
  %i.fd = fmul float %i.fa, %i.fc
  %i.fe = fadd float %i.ey, %i.fd
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.preheader.peel, %bb.l
  %.0.i.i.i.i.i.i.peel = phi float [ %i.ey, %bb.l ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i8.i.preheader.peel ]
  %i.ff = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.fg = fadd float %.0.i.i.i.i.i.i.peel, %i.ff
  %i.fh = fmul float %i.fg, %i.eu
  %i.fi = fsub float %i.ff, %i.fh
  store float %i.fi, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel, %bb.k
  br i1 %.not.peel, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gh ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !10
  %i.fl = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.fl, ptr %i.fj, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split: ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us, %bb.m
  %.sink = phi float [ %i.fk, %bb.m ], [ %i.bz, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us ]
  store float %.sink, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us103, %bb.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.us102.1, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split, %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  ret void

bb.n:                                             ; preds = %.lr.ph.split.split.preheader.split, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.02898 = phi i64 [ %i.gh, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ], [ 0, %.lr.ph.split.split.preheader.split ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02898 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !10
  %i.fo = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.fo, ptr %i.fm, align 4, !tbaa !10
  store float %i.fn, ptr %i.be, align 4, !tbaa !10
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.02898 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.02898
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !10 ; 2 uses
  %i.fr = fcmp une float %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.o, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

bb.o:                                             ; preds = %bb.n
  %i.fs = load float, ptr %gep, align 4, !tbaa !10
  %i.ft = load float, ptr %i.bh, align 4, !tbaa !10
  %i.fu = fmul float %i.fs, %i.ft                 ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i

.lr.ph.i.i.i.i.i.i.i8.i.preheader:                ; preds = %bb.o
end_hunk_1
