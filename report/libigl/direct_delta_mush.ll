Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0
%"class.Eigen::internal::SparseTransposeImpl" = type { %"class.Eigen::SparseCompressedBase.255" }
%"class.Eigen::SparseCompressedBase.255" = type { %"class.Eigen::SparseMatrixBase.256" }
%"class.Eigen::SparseMatrixBase.256" = type { i8 }
%"class.Eigen::Matrix.262" = type { %"class.Eigen::PlainObjectBase.263" }
%"class.Eigen::PlainObjectBase.263" = type { %"class.Eigen::DenseStorage.270" }
%"class.Eigen::DenseStorage.270" = type { ptr, i64 }
%"class.Eigen::Transpose.347" = type { %"class.Eigen::TransposeImpl.348", [7 x i8], %"class.Eigen::CwiseBinaryOp.238" }
%"class.Eigen::TransposeImpl.348" = type { %"class.Eigen::internal::SparseTransposeImpl.349" }
%"class.Eigen::internal::SparseTransposeImpl.349" = type { %"class.Eigen::SparseMatrixBase.350" }
%"class.Eigen::SparseMatrixBase.350" = type { i8 }
%"class.Eigen::Matrix.15" = type { %"class.Eigen::PlainObjectBase.16" }
%"class.Eigen::PlainObjectBase.16" = type { %"class.Eigen::DenseStorage.23" }
%"class.Eigen::DenseStorage.23" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [16 x double] }
%"class.Eigen::Product.97" = type { ptr, %"class.Eigen::Transpose.104" }
%"class.Eigen::Transpose.104" = type { ptr }
%"class.Eigen::Block.64" = type { %"class.Eigen::BlockImpl.65" }
%"class.Eigen::BlockImpl.65" = type { %"class.Eigen::internal::BlockImpl_dense.66" }
%"class.Eigen::internal::BlockImpl_dense.66" = type { %"class.Eigen::MapBase.67", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.67" = type { %"class.Eigen::MapBase.68" }
%"class.Eigen::MapBase.68" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix.29" = type { %"class.Eigen::PlainObjectBase.30" }
%"class.Eigen::PlainObjectBase.30" = type { %"class.Eigen::DenseStorage.37" }
%"class.Eigen::DenseStorage.37" = type { %"struct.Eigen::internal::plain_array.38" }
%"struct.Eigen::internal::plain_array.38" = type { [10 x double] }
%"struct.Eigen::internal::evaluator.1140" = type { %"struct.Eigen::internal::product_evaluator.1141" }
%"struct.Eigen::internal::product_evaluator.1141" = type { %"struct.Eigen::internal::evaluator.1109", %"class.Eigen::SparseMatrix" }
%"struct.Eigen::internal::evaluator.1109" = type { %"struct.Eigen::internal::evaluator.1110" }
%"struct.Eigen::internal::evaluator.1110" = type { ptr, double }
%"class.Eigen::SparseMatrix.1142" = type { %"class.Eigen::SparseCompressedBase.1143", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase.1143" = type { %"class.Eigen::SparseMatrixBase.1144" }
%"class.Eigen::SparseMatrixBase.1144" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.Eigen::AMDOrdering" = type { i8 }
%"class.Eigen::Transpose.1207" = type { %"class.Eigen::TransposeImpl.1208", ptr }
%"class.Eigen::TransposeImpl.1208" = type { %"class.Eigen::internal::SparseTransposeImpl.1209" }
%"class.Eigen::internal::SparseTransposeImpl.1209" = type { %"class.Eigen::SparseCompressedBase.1210" }
%"class.Eigen::SparseCompressedBase.1210" = type { %"class.Eigen::SparseMatrixBase.1211" }
%"class.Eigen::SparseMatrixBase.1211" = type { i8 }
%"class.Eigen::CwiseBinaryOp.1213" = type <{ %"class.Eigen::CwiseBinaryOpImpl.1214", [7 x i8], ptr, ptr, [8 x i8] }>
%"class.Eigen::CwiseBinaryOpImpl.1214" = type { %"class.Eigen::SparseMatrixBase.1215" }
%"class.Eigen::SparseMatrixBase.1215" = type { i8 }
%"class.Eigen::Product.1241" = type { %"class.Eigen::DiagonalWrapper.1248", ptr }
%"class.Eigen::DiagonalWrapper.1248" = type { [8 x i8], %"class.Eigen::CwiseUnaryOp.1251" }
%"class.Eigen::CwiseUnaryOp.1251" = type <{ ptr, [8 x i8] }>
%"class.Eigen::TriangularView.1258" = type { %"class.Eigen::TriangularViewImpl.1259", %"class.Eigen::Transpose.1207" }
%"class.Eigen::TriangularViewImpl.1259" = type { %"class.Eigen::SparseMatrixBase.1260" }
%"class.Eigen::SparseMatrixBase.1260" = type { i8 }
%"class.Eigen::SparseMatrix.1448" = type { %"class.Eigen::SparseCompressedBase.1449", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage.1452" }
%"class.Eigen::SparseCompressedBase.1449" = type { %"class.Eigen::SparseMatrixBase.1450" }
%"class.Eigen::SparseMatrixBase.1450" = type { i8 }
%"class.Eigen::internal::CompressedStorage.1452" = type { ptr, ptr, i64, i64 }

$_ZN3igl17direct_delta_mushIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKSt6vectorINS1_9TransformIdLi3ELi2ELi0EEENS1_17aligned_allocatorISB_EEERKNS4_IT0_EERNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j = comdat any

$_ZN3igl32direct_delta_mush_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EEiNS6_6ScalarESI_SI_RNS1_15PlainObjectBaseIT2_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE11setIdentityEv = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

$_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEED2Ev = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEEEENS3_INS5_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_ = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EEEEvRT_RKT0_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE = comdat any

$_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_ = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_10SparseViewINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEvRT_RKT0_ = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductIS3_S3_Li2EEEEEvRT_RKT0_ = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEELi8ENS_11SparseShapeES6_ddED2Ev = comdat any

$_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRT_RKT0_ = comdat any

$_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb1EEEvRKS3_ = comdat any

$_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE8orderingERKS3_RPS8_RS3_ = comdat any

$_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE25analyzePattern_preorderedERKS3_b = comdat any

$_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_ = comdat any

$_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE = comdat any

$_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_ = comdat any

$_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_ = comdat any

$_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_ = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE18conservativeResizeElll = comdat any

$_ZN5Eigen8internal20permute_symm_to_symmILi1ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE = comdat any

$_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_ = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi10ELi0ELin1ELi10EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_10SparseViewIS2_EEEERKNS_9EigenBaseIT_EE = comdat any

$_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10SparseViewIS3_EENS0_9assign_opIddEENS0_12Sparse2DenseEvE3runERS3_RKS5_RKS7_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1ElED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdlED2Ev = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEENS_9TransposeIKNS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLi0EiEEKNS5_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES9_EEEEEEEEvRT_RKT0_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1ElE6resizeEll = comdat any

$_ZN5Eigen12SparseMatrixIdLi1ElEaSERKS1_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdlE7reserveEl = comdat any

$_ZN5Eigen8internal17CompressedStorageIdlE6resizeEld = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEES3_EEvRT_RKT0_ = comdat any

$_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_7ProductINS3_IdLi3ELi1ELi0ELi3ELi1EEENS_9TransposeIS7_EELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE = comdat any

$_ZZN5Eigen6numext4log2EiE5table = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN5Eigen6numext4log2EiE5table = linkonce_odr dso_local local_unnamed_addr constant [32 x i32] [i32 0, i32 9, i32 1, i32 10, i32 13, i32 21, i32 2, i32 29, i32 11, i32 14, i32 16, i32 18, i32 22, i32 25, i32 3, i32 30, i32 8, i32 12, i32 20, i32 28, i32 15, i32 17, i32 24, i32 7, i32 19, i32 27, i32 23, i32 6, i32 26, i32 5, i32 4, i32 31], comdat, align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17direct_delta_mushIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKSt6vectorINS1_9TransformIdLi3ELi2ELi0EEENS1_17aligned_allocatorISB_EEERKNS4_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.75", align 16 ; 10 uses
  %5 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.416", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Block.405", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %.sroa.5 = alloca [4 x double], align 16        ; 8 uses
  %.sroa.0438.a = alloca [3 x double], align 16   ; 8 uses
  %11 = alloca %"class.Eigen::Matrix.54", align 16 ; 11 uses
  %12 = alloca %"class.Eigen::JacobiSVD", align 16 ; 23 uses
  %.sroa.6550 = alloca [3 x double], align 16     ; 7 uses
  %.sroa.0 = alloca [4 x double], align 16        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load ptr, ptr %1, align 8, !tbaa !17
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 7                         ; 2 uses
  %i.k = trunc i64 %i.j to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.b, 32
  %i.l = ashr exact i64 %sext, 32                 ; 9 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %i.l, i64 noundef 4)
          to label %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn56.pn.pn.pn.pn, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.n) #24
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !21 ; 3 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !9, !noalias !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !21
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.r = load ptr, ptr %10, align 8, !tbaa !18, !noalias !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28, !noalias !27 ; 2 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !29, !alias.scope !24, !noalias !21
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.q, ptr %i.u, align 8, !tbaa !32, !alias.scope !24, !noalias !21
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.p, ptr %i.v, align 8, !tbaa !32, !alias.scope !24, !noalias !21
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %10, ptr %i.w, align 8, !tbaa !33, !alias.scope !24, !noalias !21
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !noalias !21
  store i64 %i.t, ptr %i.y, align 8, !tbaa !35, !alias.scope !24, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !21
  %i.z = load ptr, ptr %0, align 8, !tbaa !38, !noalias !21
  store ptr %i.z, ptr %5, align 8, !tbaa !39, !noalias !21
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.q, ptr %i.aa, align 8, !tbaa !41, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !21
  store ptr %i.r, ptr %6, align 8, !tbaa !42, !noalias !21
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !32, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !21
  store ptr %6, ptr %7, align 8, !tbaa !45, !noalias !21
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ac, align 8, !tbaa !47, !noalias !21
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ad, align 8, !tbaa !49, !noalias !21
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ae, align 8, !tbaa !51, !noalias !21
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEEEENS3_INS5_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %._crit_edge.i unwind label %bb.d

._crit_edge.i:                                    ; preds = %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !21
  %i.af = icmp eq i64 %i.p, 4                     ; 2 uses
  %.sroa.9344.0 = select i1 %i.af, i64 0, i64 %i.p
  %i.ag = select i1 %i.af, i64 %i.q, i64 0
  %i.ah = load ptr, ptr %10, align 8, !tbaa !18, !noalias !53
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !28, !noalias !53
  %i.ak = mul nsw i64 %i.aj, %.sroa.9344.0
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak ; 6 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ao = lshr exact i64 %i.am, 3
  %i.ap = and i64 %i.ao, 1
  %i.aq = call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.l)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %._crit_edge.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.c ], [ %i.l, %._crit_edge.i ] ; 9 uses
  %i.ar = sub nsw i64 %i.l, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = sdiv i64 %i.ar, 2
  %i.at = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.au = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.av = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader546, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.aw, align 8, !tbaa !56
  store <2 x double> splat (double 1.000000e+00), ptr %i.ax, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader546

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader546:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader546, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader546 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  store double 1.000000e+00, ptr %i.az, align 8, !tbaa !56
  %i.ba = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !62

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = icmp sgt i64 %i.ar, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = icmp slt i64 %i.au, %i.l
  br i1 %i.bc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.at
  %i.be = sub i64 %i.l, %i.bd                     ; 3 uses
  %min.iters.check515 = icmp ult i64 %i.be, 4
  br i1 %min.iters.check515, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader545, label %vector.ph516

vector.ph516:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec517 = and i64 %i.be, -4                   ; 3 uses
  %i.bf = add i64 %i.au, %n.vec517
  %i.bg = getelementptr [8 x i8], ptr %i.al, i64 %i.au
  br label %vector.body518

vector.body518:                                   ; preds = %vector.body518, %vector.ph516
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next520, %vector.body518 ] ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %index519 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bh, align 8, !tbaa !56
  store <2 x double> splat (double 1.000000e+00), ptr %i.bi, align 8, !tbaa !56
  %index.next520 = add nuw i64 %index519, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next520, %n.vec517
  br i1 %i.bj, label %middle.block521, label %vector.body518, !llvm.loop !63

middle.block521:                                  ; preds = %vector.body518
  %cmp.n522 = icmp eq i64 %i.be, %n.vec517
  br i1 %cmp.n522, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader545

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader545:    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block521
  %.05.i19.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.au, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block521 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader545, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i19.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i19.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader545 ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.05.i19.i.i.i.i.i.i.i.i.i.i.i
  store double 1.000000e+00, ptr %i.bk, align 8, !tbaa !56
  %i.bl = add nsw i64 %.05.i19.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.l
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !64

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.022.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.bm, align 16, !tbaa !65
  %i.bn = add nsw i64 %.022.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.au
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !66

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block521, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = mul nsw i64 %i.l, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bp, i64 noundef %i.l, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bq = icmp sgt i32 %i.c, 0
  br i1 %i.bq, label %.lr.ph408, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph408:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.br = icmp sgt i32 %i.k, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 180
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count427 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.j, 2147483647
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 8
  %.sroa.5.24..sroa_idx558 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 24
  %.sroa.0438.8..sroa_idx557 = getelementptr inbounds nuw i8, ptr %.sroa.0438.a, i64 8
  %.sroa.0438.16..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.0438.a, i64 16
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 16
  %.sroa.0438.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.0438.a, i64 8
  %.sroa.6550.8..sroa_idx556 = getelementptr inbounds nuw i8, ptr %.sroa.6550, i64 8
  %.sroa.6550.16.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6550, i64 16
  %.sroa.0.8..sroa_idx547 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.16..sroa_idx548 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.6550.8..sroa_idx555 = getelementptr inbounds nuw i8, ptr %.sroa.6550, i64 8
  br label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.cu = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.cu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.d:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph408, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %indvars.iv424 = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next425, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 4 uses
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.cx = load ptr, ptr %2, align 8, !tbaa !38, !noalias !67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv424
  %i.cz = load i64, ptr %i.bs, align 8, !tbaa !9, !noalias !67 ; 10 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %i.cz, 4
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cz, 24
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.cz, 5
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cz, 40
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cz, 48
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cz, 56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.cz, 6
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cz, 72
  %i.da = load ptr, ptr %1, align 8, !tbaa !17
  %factor.op.mul = mul i64 %i.cz, 10
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.db = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hc, %bb.g ]
  %i.dc = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hd, %bb.g ]
  %i.dd = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.he, %bb.g ]
  %i.de = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hf, %bb.g ]
  %i.df = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hg, %bb.g ]
  %i.dg = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hh, %bb.g ]
  %i.dh = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hi, %bb.g ]
  %i.di = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hj, %bb.g ]
  %.reass = mul i64 %indvars.iv, %factor.op.mul
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %.reass ; 10 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !56
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.cz
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !56
  %i.dn = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.do = load double, ptr %i.dn, align 8, !tbaa !56
  %i.dp = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !56
  %i.dt = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.du = load double, ptr %i.dt, align 8, !tbaa !56
  %i.dv = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !56
  %i.dx = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !56
  %i.dz = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !56
  %i.ed = getelementptr inbounds nuw [128 x i8], ptr %i.da, i64 %indvars.iv ; 8 uses
  %.sroa.0453.0.copyload = load <2 x double>, ptr %i.ed, align 16 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %.sroa.4.0.copyload = load <2 x double>, ptr %.sroa.4.0..sroa_idx, align 16 ; 4 uses
  %.sroa.5454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %.sroa.5454.0.copyload = load <2 x double>, ptr %.sroa.5454.0..sroa_idx, align 16 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %.sroa.6.0.copyload = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 16 ; 4 uses
  %.sroa.7455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %.sroa.7455.0.copyload = load <2 x double>, ptr %.sroa.7455.0..sroa_idx, align 16 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %.sroa.8.0.copyload = load <2 x double>, ptr %.sroa.8.0..sroa_idx, align 16 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  %.sroa.9.0.copyload = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 16 ; 4 uses
  %.sroa.10456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 112
  %.sroa.10456.0.copyload = load <2 x double>, ptr %.sroa.10456.0..sroa_idx, align 16, !tbaa !65 ; 4 uses
  %i.ee = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = fmul <2 x double> %.sroa.0453.0.copyload, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ej = fmul <2 x double> %.sroa.5454.0.copyload, %i.ei
  %i.ek = fadd <2 x double> %i.eg, %i.ej
  %i.el = insertelement <2 x double> poison, double %i.do, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.en = fmul <2 x double> %.sroa.7455.0.copyload, %i.em
  %i.eo = fadd <2 x double> %i.ek, %i.en
  %i.ep = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.er = fmul <2 x double> %.sroa.9.0.copyload, %i.eq
  %i.es = fadd <2 x double> %i.eo, %i.er
  %i.et = fmul <2 x double> %i.ef, %.sroa.4.0.copyload
  %i.eu = fmul <2 x double> %i.ei, %.sroa.6.0.copyload
  %i.ev = fadd <2 x double> %i.et, %i.eu
  %i.ew = fmul <2 x double> %i.em, %.sroa.8.0.copyload
  %i.ex = fadd <2 x double> %i.ev, %i.ew
  %i.ey = fmul <2 x double> %i.eq, %.sroa.10456.0.copyload
  %i.ez = fadd <2 x double> %i.ex, %i.ey
  %i.fa = fmul <2 x double> %.sroa.0453.0.copyload, %i.ei
  %i.fb = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <2 x double> %.sroa.5454.0.copyload, %i.fc
  %i.fe = fadd <2 x double> %i.fa, %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.du, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fh = fmul <2 x double> %.sroa.7455.0.copyload, %i.fg
  %i.fi = fadd <2 x double> %i.fe, %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fl = fmul <2 x double> %.sroa.9.0.copyload, %i.fk
  %i.fm = fadd <2 x double> %i.fi, %i.fl
  %i.fn = fmul <2 x double> %.sroa.4.0.copyload, %i.ei
  %i.fo = fmul <2 x double> %.sroa.6.0.copyload, %i.fc
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = fmul <2 x double> %.sroa.8.0.copyload, %i.fg
  %i.fr = fadd <2 x double> %i.fp, %i.fq
  %i.fs = fmul <2 x double> %.sroa.10456.0.copyload, %i.fk
  %i.ft = fadd <2 x double> %i.fr, %i.fs
  %i.fu = fmul <2 x double> %.sroa.0453.0.copyload, %i.em
  %i.fv = fmul <2 x double> %.sroa.5454.0.copyload, %i.fg
  %i.fw = fadd <2 x double> %i.fu, %i.fv
  %i.fx = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = fmul <2 x double> %.sroa.7455.0.copyload, %i.fy
  %i.ga = fadd <2 x double> %i.fw, %i.fz
  %i.gb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gd = fmul <2 x double> %.sroa.9.0.copyload, %i.gc
  %i.ge = fadd <2 x double> %i.ga, %i.gd
  %i.gf = fmul <2 x double> %.sroa.4.0.copyload, %i.em
  %i.gg = fmul <2 x double> %.sroa.6.0.copyload, %i.fg
  %i.gh = fadd <2 x double> %i.gf, %i.gg
  %i.gi = fmul <2 x double> %.sroa.8.0.copyload, %i.fy
  %i.gj = fadd <2 x double> %i.gh, %i.gi
  %i.gk = fmul <2 x double> %.sroa.10456.0.copyload, %i.gc
  %i.gl = fadd <2 x double> %i.gj, %i.gk
  %i.gm = fmul <2 x double> %.sroa.0453.0.copyload, %i.eq
  %i.gn = fmul <2 x double> %.sroa.5454.0.copyload, %i.fk
  %i.go = fadd <2 x double> %i.gm, %i.gn
  %i.gp = fmul <2 x double> %.sroa.7455.0.copyload, %i.gc
  %i.gq = fadd <2 x double> %i.go, %i.gp
  %i.gr = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fmul <2 x double> %.sroa.9.0.copyload, %i.gs
  %i.gu = fadd <2 x double> %i.gq, %i.gt
  %i.gv = fmul <2 x double> %.sroa.4.0.copyload, %i.eq
  %i.gw = fmul <2 x double> %.sroa.6.0.copyload, %i.fk
  %i.gx = fadd <2 x double> %i.gv, %i.gw
  %i.gy = fmul <2 x double> %.sroa.8.0.copyload, %i.gc
  %i.gz = fadd <2 x double> %i.gx, %i.gy
  %i.ha = fmul <2 x double> %.sroa.10456.0.copyload, %i.gs
  %i.hb = fadd <2 x double> %i.gz, %i.ha
  %i.hc = fadd <2 x double> %i.es, %i.db          ; 2 uses
  %i.hd = fadd <2 x double> %i.ez, %i.dc          ; 2 uses
  %i.he = fadd <2 x double> %i.fm, %i.dd          ; 2 uses
  %i.hf = fadd <2 x double> %i.ft, %i.de          ; 2 uses
  %i.hg = fadd <2 x double> %i.ge, %i.df          ; 2 uses
  %i.hh = fadd <2 x double> %i.gl, %i.dg          ; 2 uses
  %i.hi = fadd <2 x double> %i.gu, %i.dh          ; 2 uses
  %i.hj = fadd <2 x double> %i.hb, %i.di          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.lcssa398 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hj, %bb.g ] ; 2 uses
  %.lcssa397 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hi, %bb.g ]
  %.lcssa396 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hh, %bb.g ]
  %.lcssa395 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hg, %bb.g ]
  %.lcssa394 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hf, %bb.g ]
  %.lcssa393 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.he, %bb.g ]
  %.lcssa392 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hd, %bb.g ]
  %.lcssa = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.hc, %bb.g ]
  %i.hk = shufflevector <2 x double> %.lcssa398, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 8 uses
  %i.hl = fdiv <2 x double> %.lcssa, %i.hk
  %i.hm = fdiv <2 x double> %.lcssa392, %i.hk     ; 4 uses
  %i.hn = fdiv <2 x double> %.lcssa393, %i.hk
  %i.ho = fdiv <2 x double> %.lcssa394, %i.hk     ; 4 uses
  %i.hp = fdiv <2 x double> %.lcssa395, %i.hk
  %i.hq = fdiv <2 x double> %.lcssa396, %i.hk     ; 3 uses
  %i.hr = fdiv <2 x double> %.lcssa397, %i.hk     ; 4 uses
  %i.hs = fdiv <2 x double> %.lcssa398, %i.hk     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.9466.16.vec.extract = extractelement <2 x double> %i.hm, i64 0
  store double %.sroa.9466.16.vec.extract, ptr %.sroa.5, align 16, !tbaa !56
  store <2 x double> %i.hn, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !65
  %.sroa.23.48.vec.extract = extractelement <2 x double> %i.ho, i64 0
  store double %.sroa.23.48.vec.extract, ptr %.sroa.5.24..sroa_idx558, align 8, !tbaa !56
  %.sroa.37.80.vec.extract = extractelement <2 x double> %i.hq, i64 0
  %.sroa.51.112.vec.extract = extractelement <2 x double> %i.hs, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0438.a)
  %.sroa.9466.24.vec.extract = extractelement <2 x double> %i.hm, i64 1
  store double %.sroa.9466.24.vec.extract, ptr %.sroa.0438.a, align 16, !tbaa !56
  %.sroa.23.56.vec.extract = extractelement <2 x double> %i.ho, i64 1
  store double %.sroa.23.56.vec.extract, ptr %.sroa.0438.8..sroa_idx557, align 8, !tbaa !56
  %.sroa.37.88.vec.extract = extractelement <2 x double> %i.hq, i64 1 ; 2 uses
  store double %.sroa.37.88.vec.extract, ptr %.sroa.0438.16..sroa_idx.a, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16. = load <2 x double>, ptr %.sroa.5, align 16, !tbaa !65 ; 2 uses
  store <2 x double> %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16., ptr %i.bt, align 16, !tbaa !65
  %.sroa.5.16..sroa.5.16..sroa.5.16..sroa.5.32. = load <2 x double>, ptr %.sroa.5.16..sroa_idx, align 16, !tbaa !65 ; 2 uses
  store <2 x double> %.sroa.5.16..sroa.5.16..sroa.5.16..sroa.5.32., ptr %i.bu, align 16, !tbaa !65
  %i.ht = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x double> %i.hr, %i.ht
  %i.hv = fsub <2 x double> %i.hl, %i.hu
  store <2 x double> %i.hv, ptr %11, align 16, !tbaa !65
  %i.hw = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = fmul <2 x double> %i.hr, %i.hw
  %i.hy = load <2 x double>, ptr %i.bx, align 8, !tbaa !65
  %i.hz = fsub <2 x double> %i.hy, %i.hx
  store <2 x double> %i.hz, ptr %i.bx, align 8, !tbaa !65
  %i.ia = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = shufflevector <2 x double> %i.hm, <2 x double> %i.ho, <2 x i32> <i32 1, i32 3>
  %i.ic = fmul <2 x double> %i.ia, %i.ib
  %i.id = shufflevector <2 x double> %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16., <2 x double> %.sroa.5.16..sroa.5.16..sroa.5.16..sroa.5.32., <2 x i32> <i32 0, i32 3>
  %i.ie = fsub <2 x double> %i.id, %i.ic          ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  store double %i.if, ptr %i.bt, align 16, !tbaa !56
  %i.ig = extractelement <2 x double> %i.ie, i64 1
  store double %i.ig, ptr %i.by, align 8, !tbaa !56
  %i.ih = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = fmul <2 x double> %i.hr, %i.ih
  %i.ij = fsub <2 x double> %i.hp, %i.ii
  store <2 x double> %i.ij, ptr %i.bv, align 16, !tbaa !65
  %i.ik = fmul double %.sroa.51.112.vec.extract, %.sroa.37.88.vec.extract
  %i.il = fsub double %.sroa.37.80.vec.extract, %i.ik
  store double %i.il, ptr %i.bw, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store i32 0, ptr %i.ca, align 4, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bz, i8 0, i64 11, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.cc, align 16, !tbaa !83
  %i.im = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 8 dereferenceable(376) %12, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 20)
          to label %._crit_edge.i.i.i.i.i.i.i.i.i.i156 unwind label %bb.h ; 0 uses

._crit_edge.i.i.i.i.i.i.i.i.i.i156:               ; preds = %._crit_edge
  %i.in = load <2 x double>, ptr %12, align 16, !tbaa !65 ; 3 uses
  %i.io = load double, ptr %i.cd, align 8, !tbaa !56 ; 2 uses
  %i.ip = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x double> %i.in, %i.iq
  %i.is = load <2 x double>, ptr %i.ce, align 8, !tbaa !65 ; 3 uses
  %i.it = load double, ptr %i.cf, align 16, !tbaa !56 ; 2 uses
  %i.iu = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %i.is, %i.iv
  %i.ix = fadd <2 x double> %i.ir, %i.iw
  %i.iy = load <2 x double>, ptr %i.cg, align 16, !tbaa !65 ; 3 uses
  %i.iz = load double, ptr %i.ch, align 8, !tbaa !56 ; 2 uses
  %i.ja = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x double> %i.iy, %i.jb
  %i.jd = fadd <2 x double> %i.ix, %i.jc          ; 2 uses
  %i.je = load double, ptr %i.ci, align 16, !tbaa !56 ; 3 uses
  %i.jf = fmul double %i.io, %i.je
  %i.jg = load double, ptr %i.cj, align 8, !tbaa !56 ; 3 uses
  %i.jh = fmul double %i.it, %i.jg
  %i.ji = load double, ptr %i.ck, align 16, !tbaa !56 ; 3 uses
  %i.jj = fmul double %i.iz, %i.ji
  %i.jk = fadd double %i.jh, %i.jj
  %i.jl = fadd double %i.jf, %i.jk                ; 2 uses
  %i.jm = load double, ptr %i.cl, align 16, !tbaa !56 ; 2 uses
  %i.jn = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.in, %i.jo
  %i.jq = load double, ptr %i.cm, align 8, !tbaa !56 ; 2 uses
  %i.jr = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.is, %i.js
  %i.ju = fadd <2 x double> %i.jp, %i.jt
  %i.jv = load double, ptr %i.cn, align 16, !tbaa !56 ; 2 uses
  %i.jw = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %i.iy, %i.jx
  %i.jz = fadd <2 x double> %i.ju, %i.jy          ; 2 uses
  %i.ka = fmul double %i.je, %i.jm
  %i.kb = fmul double %i.jg, %i.jq
  %i.kc = fmul double %i.ji, %i.jv
  %i.kd = fadd double %i.kb, %i.kc
  %i.ke = fadd double %i.ka, %i.kd                ; 2 uses
  %i.kf = load double, ptr %i.co, align 8, !tbaa !56 ; 2 uses
  %i.kg = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x double> %i.in, %i.kh
  %i.kj = load double, ptr %i.cp, align 16, !tbaa !56 ; 2 uses
  %i.kk = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x double> %i.is, %i.kl
  %i.kn = fadd <2 x double> %i.ki, %i.km
  %i.ko = load double, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.kp = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x double> %i.iy, %i.kq
  %i.ks = fadd <2 x double> %i.kn, %i.kr          ; 2 uses
  %i.kt = fmul double %i.je, %i.kf
  %i.ku = fmul double %i.jg, %i.kj
  %i.kv = fmul double %i.ji, %i.ko
  %i.kw = fadd double %i.ku, %i.kv
  %i.kx = fadd double %i.kt, %i.kw                ; 2 uses
  %.sroa.0438.0..sroa.0438.0..sroa.0438.0. = load <2 x double>, ptr %.sroa.0438.a, align 16 ; 2 uses
  %i.ky = shufflevector <2 x double> %.sroa.0438.0..sroa.0438.0..sroa.0438.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x double> %i.jd, %i.ky
  %.sroa.0438.8..sroa.0438.8..sroa.0438.8..a = load <2 x double>, ptr %.sroa.0438.8..sroa_idx.a, align 8 ; 4 uses
  %i.la = shufflevector <2 x double> %.sroa.0438.8..sroa.0438.8..sroa.0438.8..a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.jz, %i.la
  %i.lc = fadd <2 x double> %i.kz, %i.lb
  %i.ld = shufflevector <2 x double> %.sroa.0438.8..sroa.0438.8..sroa.0438.8..a, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.le = fmul <2 x double> %i.ks, %i.ld
  %i.lf = fadd <2 x double> %i.le, %i.lc
  %i.lg = fsub <2 x double> %i.hr, %i.lf          ; 2 uses
  %i.lh = extractelement <2 x double> %.sroa.0438.0..sroa.0438.0..sroa.0438.0., i64 0
  %i.li = fmul double %i.jl, %i.lh
  %i.lj = extractelement <2 x double> %.sroa.0438.8..sroa.0438.8..sroa.0438.8..a, i64 0
  %i.lk = fmul double %i.ke, %i.lj
  %i.ll = extractelement <2 x double> %.sroa.0438.8..sroa.0438.8..sroa.0438.8..a, i64 1
  %i.lm = fmul double %i.kx, %i.ll
  %i.ln = fadd double %i.lk, %i.lm
  %i.lo = fadd double %i.li, %i.ln
  %i.lp = fsub double %.sroa.51.112.vec.extract, %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6550)
  %i.lq = extractelement <2 x double> %i.lg, i64 0
  store double %i.kx, ptr %.sroa.6550, align 16, !tbaa !56
  store double %i.lq, ptr %.sroa.6550.8..sroa_idx556, align 8, !tbaa !56
  %.sroa.0553.8.vec.extract = extractelement <2 x double> %i.lg, i64 1
  store double %.sroa.0553.8.vec.extract, ptr %.sroa.6550.16.scevgep.sroa_idx, align 16, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.lr = load ptr, ptr %10, align 8, !tbaa !18, !noalias !84
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv424 ; 4 uses
  %i.lt = load i64, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %i.lu = load double, ptr %i.ls, align 8, !tbaa !56
  store double %i.lu, ptr %.sroa.0, align 16, !tbaa !56
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.lt
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !56
  store double %i.lw, ptr %.sroa.0.8..sroa_idx547, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i166 = shl nsw i64 %i.lt, 4
  %i.lx = getelementptr inbounds i8, ptr %i.ls, i64 %.idx.i.i.i.i.i.i.i.i.i.i166
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !56
  store double %i.ly, ptr %.sroa.0.16..sroa_idx548, align 16, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i167 = mul nsw i64 %i.lt, 24
  %i.lz = getelementptr inbounds i8, ptr %i.ls, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i167
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !56
  store double %i.ma, ptr %.sroa.0.24..sroa_idx, align 8, !tbaa !56
  %i.mb = load ptr, ptr %3, align 8, !tbaa !38, !noalias !87
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv424 ; 6 uses
  %i.md = load i64, ptr %i.cr, align 8, !tbaa !20, !noalias !87 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16 ; 2 uses
  %i.me = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x double> %i.jd, %i.me
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 2 uses
  %i.mg = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x double> %i.jz, %i.mg
  %i.mi = fadd <2 x double> %i.mf, %i.mh
  %.sroa.0.16..sroa.0.16..sroa.0.16. = load <2 x double>, ptr %.sroa.0.16..sroa_idx, align 16 ; 3 uses
  %i.mj = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = fmul <2 x double> %i.ks, %i.mj
  %i.ml = fadd <2 x double> %i.mi, %i.mk
  %.sroa.6550.8..sroa.6550.8..sroa.6550.72. = load <2 x double>, ptr %.sroa.6550.8..sroa_idx555, align 8, !tbaa !65
  %i.mm = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mn = fmul <2 x double> %.sroa.6550.8..sroa.6550.8..sroa.6550.72., %i.mm
  %i.mo = fadd <2 x double> %i.mn, %i.ml
  store <2 x double> %i.mo, ptr %4, align 16, !tbaa !65
  %i.mp = extractelement <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., i64 0
  %i.mq = fmul double %i.mp, %i.jl
  %i.mr = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.ms = fmul double %i.mr, %i.ke
  %i.mt = fadd double %i.mq, %i.ms
  %.sroa.6550.0..sroa.6550.0..sroa.6550.64. = load <2 x double>, ptr %.sroa.6550, align 16
  %i.mu = insertelement <2 x double> %.sroa.6550.0..sroa.6550.0..sroa.6550.64., double %i.lp, i64 1
  %i.mv = fmul <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., %i.mu ; 2 uses
  %shift = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.mv, %shift
  %i.mw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.mx = fadd double %i.mt, %i.mw
  store double %i.mx, ptr %i.cs, align 16, !tbaa !56
  %i.my = load i64, ptr %i.ct, align 8, !tbaa !9  ; 6 uses
  %i.mz = icmp sgt i64 %i.md, 0
  br i1 %i.mz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i156
  %min.iters.check525 = icmp ugt i64 %i.md, 3
  %ident.check.not = icmp eq i64 %i.my, 1
  %or.cond = select i1 %min.iters.check525, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph526, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536

vector.ph526:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec527 = and i64 %i.md, 9223372036854775804  ; 3 uses
  br label %vector.body528

vector.body528:                                   ; preds = %vector.body528, %vector.ph526
  %index529 = phi i64 [ 0, %vector.ph526 ], [ %index.next531, %vector.body528 ] ; 3 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %index529 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index529 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %wide.load = load <2 x double>, ptr %i.nb, align 16, !tbaa !56
  %wide.load530 = load <2 x double>, ptr %i.nc, align 16, !tbaa !56
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <2 x double> %wide.load, ptr %i.na, align 8, !tbaa !56
  store <2 x double> %wide.load530, ptr %i.nd, align 8, !tbaa !56
  %index.next531 = add nuw i64 %index529, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next531, %n.vec527
  br i1 %i.ne, label %middle.block532, label %vector.body528, !llvm.loop !90

middle.block532:                                  ; preds = %vector.body528
  %cmp.n533 = icmp eq i64 %i.md, %n.vec527
  br i1 %cmp.n533, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block532
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec527, %middle.block532 ] ; 3 uses
  %xtraiter = and i64 %i.md, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ]
  %i.nf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.my
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.nf
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !56
  store double %i.ni, ptr %i.ng, align 8, !tbaa !56
  %i.nj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !91

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ], [ %i.nj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nk = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.md
  %i.nl = icmp ugt i64 %i.nk, -4
  br i1 %i.nl, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.nm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.my
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.nm
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.np = load double, ptr %i.no, align 8, !tbaa !56
  store double %i.np, ptr %i.nn, align 8, !tbaa !56
  %i.nq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nr = mul nsw i64 %i.nq, %i.my
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.nr
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.nq
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !56
  store double %i.nu, ptr %i.ns, align 8, !tbaa !56
  %i.nv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nw = mul nsw i64 %i.nv, %i.my
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.nv
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !56
  store double %i.nz, ptr %i.nx, align 8, !tbaa !56
  %i.oa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ob = mul nsw i64 %i.oa, %i.my
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.oa
  %i.oe = load double, ptr %i.od, align 8, !tbaa !56
  store double %i.oe, ptr %i.oc, align 8, !tbaa !56
  %i.of = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.of, %i.md
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !93

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block532, %._crit_edge.i.i.i.i.i.i.i.i.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6550)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0438.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count427
  br i1 %exitcond428.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %bb.f, !llvm.loop !94

bb.h:                                             ; preds = %._crit_edge
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0438.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.e
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %i.og, %bb.h ], [ %i.cw, %bb.e ], [ %i.cv, %bb.d ]
  %i.oh = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.oh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(376) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !95, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 3
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 3
  %or.cond16.i = select i1 %or.cond.i, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %2, %i.k
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.l, i1 false
  br i1 %or.cond19.i, label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %i.d, align 8, !tbaa !98
  store i64 3, ptr %i.g, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 0, ptr %i.n, align 4, !tbaa !101
  store i8 1, ptr %i.a, align 1, !tbaa !95
  store i32 %2, ptr %i.j, align 4, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.p = trunc i32 %2 to i8                       ; 4 uses
  %i.q = lshr i8 %i.p, 2
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 1, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = lshr i8 %i.p, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.w = lshr i8 %i.p, 4
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.z = lshr i8 %i.p, 5
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 2, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 3, ptr %i.ab, align 8, !tbaa !83
  br label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit

_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit: ; preds = %bb.a, %bb.b
  %i.ac = load <2 x i64>, ptr %1, align 8         ; 2 uses
  %i.ad = and <2 x i64> %i.ac, splat (i64 9223372036854775807)
  %i.ae = bitcast <2 x i64> %i.ad to <2 x double> ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !65
  %i.ah = and <2 x i64> %i.ag, splat (i64 9223372036854775807)
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double>
  %i.aj = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.ak = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai, <2 x double> %i.ae) #25, !srcloc !106
  %i.al = select <2 x i1> %i.aj, <2 x double> %i.ae, <2 x double> %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !65
  %i.ao = and <2 x i64> %i.an, splat (i64 9223372036854775807)
  %i.ap = bitcast <2 x i64> %i.ao to <2 x double> ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !65
  %i.as = and <2 x i64> %i.ar, splat (i64 9223372036854775807)
  %i.at = bitcast <2 x i64> %i.as to <2 x double>
  %i.au = fcmp uno <2 x double> %i.ap, zeroinitializer
  %i.av = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at, <2 x double> %i.ap) #25, !srcloc !106
  %i.aw = select <2 x i1> %i.au, <2 x double> %i.ap, <2 x double> %i.av
  %i.ax = fcmp uno <2 x double> %i.al, zeroinitializer
  %i.ay = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aw, <2 x double> %i.al) #25, !srcloc !106
  %i.az = select <2 x i1> %i.ax, <2 x double> %i.al, <2 x double> %i.ay ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.az, i64 0 ; 3 uses
  %i.ba = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.az, i64 1 ; 3 uses
  %i.bb = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
  %i.bc = fcmp uge double %.sroa.0.0.vec.extract.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i
  %.not3.i.i.i.i.i.i = and i1 %i.bb, %i.bc
  %i.bd = select i1 %i.ba, i1 true, i1 %.not3.i.i.i.i.i.i
  %i.be = select i1 %i.bd, double %.sroa.0.0.vec.extract.i.i.i.i.i, double %.sroa.0.8.vec.extract.i.i.i.i.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !56 ; 2 uses
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg) ; 2 uses
  %i.bi = fcmp uno double %i.be, 0.000000e+00
  %i.bj = fcmp ord double %i.bg, 0.000000e+00
  %i.bk = fcmp uge double %i.be, %i.bh
  %.not3.i.i.i.i.i = and i1 %i.bj, %i.bk
  %i.bl = select i1 %i.bi, i1 true, i1 %.not3.i.i.i.i.i
  %i.bm = select i1 %i.bl, double %i.be, double %i.bh ; 3 uses
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ueq double %i.bn, +inf
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.bp, align 4, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 3, ptr %i.bq, align 8, !tbaa !100
  br label %bb.ac

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE8allocateEllj.exit
  %i.br = bitcast <2 x i64> %i.ac to <2 x double>
  %i.bs = fcmp oeq double %i.bm, 0.000000e+00
  %.0184 = select i1 %i.bs, double 1.000000e+00, double %i.bm ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.821.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0184, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.821.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = fdiv <2 x double> %i.br, %i.bu          ; 2 uses
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bx = load double, ptr %i.af, align 8, !tbaa !56
  %i.by = fdiv double %i.bx, %.0184
  store double %i.by, ptr %i.bw, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !65
  %i.cc = fdiv <2 x double> %i.cb, %i.bu          ; 2 uses
  store <2 x double> %i.cc, ptr %i.bz, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !56
  %i.cg = fdiv double %i.cf, %.0184
  store double %i.cg, ptr %i.cd, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ci = load <2 x double>, ptr %i.aq, align 8, !tbaa !65
  %i.cj = fdiv <2 x double> %i.ci, %i.bu
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cl = load double, ptr %i.bf, align 8, !tbaa !56
  %i.cm = fdiv double %i.cl, %.0184               ; 2 uses
  store double %i.cm, ptr %i.ck, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !102, !range !96, !noundef !97
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = extractelement <2 x double> %i.bv, i64 0
  %i.cr = extractelement <2 x double> %i.cc, i64 1
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr %0, align 8, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !103, !range !96, !noundef !97
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !56
  %i.nu = fneg double %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !56
  %.pre229 = load i64, ptr %i.du, align 8, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nv = phi i64 [ %.pre229, %bb.v ], [ %i.nd, %bb.u ] ; 3 uses
  %i.nw = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.nx = icmp slt i64 %i.nw, %i.nv
  br i1 %i.nx, label %bb.u, label %._crit_edge, !llvm.loop !110

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.thread195
  %.0214 = phi i64 [ %i.qb, %.thread195 ], [ 0, %.lr.ph216.preheader ] ; 9 uses
  %i.ny = xor i64 %.0214, -1
  %i.nz = add nsw i64 %.lcssa, %i.ny              ; 3 uses
  %i.oa = sub nsw i64 %.lcssa, %.0214             ; 2 uses
  %i.ob = sub nsw i64 3, %i.oa
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.ob ; 4 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !56 ; 5 uses
  %i.oe = icmp sgt i64 %i.oa, 1
  br i1 %i.oe, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %xtraiter = and i64 %i.nz, 1
  %i.of = icmp eq i64 %i.nc, %.0214
  br i1 %i.of, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.nz, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.oq, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.og = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %i.op, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.oh = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !56 ; 3 uses
  %i.oj = fcmp ogt double %i.oi, %i.og            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.oj, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.oj, double %i.oi, double %.sroa.7.0.i.i
  %i.ok = select i1 %i.oj, double %i.oi, double %i.og ; 2 uses
  %i.ol = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !56 ; 3 uses
  %i.oo = fcmp ogt double %i.on, %i.ok            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.oo, i64 %i.ol, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.oo, double %i.on, double %.sroa.7.1.i.i ; 3 uses
  %i.op = select i1 %i.oo, double %i.on, double %i.ok ; 2 uses
  %i.oq = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.oq, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %i.op, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod253 = trunc i64 %i.nz to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.or = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i.epil.init
  %i.os = load double, ptr %i.or, align 8, !tbaa !56 ; 2 uses
  %i.ot = fcmp ogt double %i.os, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ot, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ot, double %i.os, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ou = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ou, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191: ; preds = %.lr.ph216
  %i.ov = fcmp une double %i.od, 0.000000e+00
  br i1 %i.ov, label %.thread195, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ow = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.0214 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.ow ; 2 uses
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !56
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !56
  store double %i.pa, ptr %i.ox, align 8, !tbaa !56
  store double %i.oz, ptr %i.oy, align 8, !tbaa !56
  %i.pb = load i8, ptr %i.dx, align 1, !tbaa !102, !range !96, !noundef !97
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = load i8, ptr %i.dy, align 8, !range !96
  %i.pe = trunc nuw i8 %i.pd to i1
  %i.pf = select i1 %i.pc, i1 true, i1 %i.pe
  br i1 %i.pf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i84 = mul nuw nsw i64 %i.ow, 24
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 3 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %.0214, 24
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i85 ; 3 uses
  %i.pi = load <2 x double>, ptr %i.ph, align 8, !tbaa !65
  %i.pj = load <2 x double>, ptr %i.pg, align 8, !tbaa !65
  store <2 x double> %i.pj, ptr %i.ph, align 8, !tbaa !65
  store <2 x double> %i.pi, ptr %i.pg, align 8, !tbaa !65
  %i.pk = getelementptr i8, ptr %i.pg, i64 16     ; 2 uses
  %i.pl = getelementptr i8, ptr %i.ph, i64 16     ; 2 uses
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !56
  %i.pn = load double, ptr %i.pl, align 8, !tbaa !56
  store double %i.pn, ptr %i.pk, align 8, !tbaa !56
  store double %i.pm, ptr %i.pl, align 8, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.po = load i8, ptr %i.dz, align 1, !tbaa !104, !range !96, !noundef !97
  %i.pp = trunc nuw i8 %i.po to i1
  %i.pq = load i8, ptr %i.ea, align 2, !range !96
  %i.pr = trunc nuw i8 %i.pq to i1
  %i.ps = select i1 %i.pp, i1 true, i1 %i.pr
  br i1 %i.ps, label %bb.ab, label %.thread195

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i86 = mul nuw nsw i64 %i.ow, 24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i86 ; 3 uses
  %.idx.i.i.i.i87 = mul nuw nsw i64 %.0214, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i87 ; 3 uses
  %i.pv = load <2 x double>, ptr %i.pu, align 8, !tbaa !65
  %i.pw = load <2 x double>, ptr %i.pt, align 8, !tbaa !65
  store <2 x double> %i.pw, ptr %i.pu, align 8, !tbaa !65
  store <2 x double> %i.pv, ptr %i.pt, align 8, !tbaa !65
  %i.px = getelementptr i8, ptr %i.pt, i64 16     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pu, i64 16     ; 2 uses
  %i.pz = load double, ptr %i.px, align 8, !tbaa !56
  %i.qa = load double, ptr %i.py, align 8, !tbaa !56
  store double %i.qa, ptr %i.px, align 8, !tbaa !56
  store double %i.pz, ptr %i.py, align 8, !tbaa !56
  br label %.thread195

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191
  store i64 %.0214, ptr %i.na, align 8, !tbaa !109
  br label %.loopexit

.thread195:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191, %bb.x, %bb.ab, %bb.aa
  %i.qb = add nuw nsw i64 %.0214, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.qb, %.lcssa
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph216, !llvm.loop !112

.loopexit:                                        ; preds = %.thread195, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.qc, align 4, !tbaa !101
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl32direct_delta_mush_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EEiNS6_6ScalarESI_SI_RNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.416", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block.405", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %15 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %16 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %17 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::Matrix.206", align 8 ; 9 uses
  %19 = alloca %"class.Eigen::Diagonal", align 8  ; 5 uses
  %20 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %21 = alloca %"class.Eigen::SparseView", align 8 ; 7 uses
  %22 = alloca %"class.Eigen::Matrix.222", align 8 ; 7 uses
  %23 = alloca %"class.Eigen::DiagonalWrapper", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %25 = alloca %"class.Eigen::Product.224", align 8 ; 7 uses
  %26 = alloca %"class.Eigen::SimplicialLDLT", align 8 ; 18 uses
  %27 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %28 = alloca %"class.Eigen::CwiseBinaryOp.238", align 8 ; 10 uses
  %29 = alloca %"class.Eigen::Matrix.222", align 8 ; 14 uses
  %30 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %31 = alloca %"class.Eigen::Transpose.253", align 8 ; 6 uses
  %32 = alloca %"class.Eigen::Matrix.262", align 8 ; 11 uses
  %33 = alloca %"class.Eigen::Matrix.222", align 8 ; 11 uses
  %34 = alloca %"class.Eigen::Matrix.206", align 8 ; 11 uses
  %35 = alloca %"class.Eigen::Matrix.222", align 8 ; 16 uses
  %36 = alloca %"class.Eigen::SparseView", align 8 ; 7 uses
  %37 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %38 = alloca %"class.Eigen::Transpose.347", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::SimplicialLDLT", align 8 ; 18 uses
  %40 = alloca %"class.Eigen::Matrix.262", align 8 ; 11 uses
  %41 = alloca %"class.Eigen::Matrix.75", align 16 ; 10 uses
  %42 = alloca %"class.Eigen::Matrix.15", align 16 ; 16 uses
  %43 = alloca %"class.Eigen::Product.97", align 8 ; 6 uses
  %44 = alloca %"class.Eigen::Block.64", align 8  ; 10 uses
  %45 = alloca %"class.Eigen::Matrix.29", align 16 ; 13 uses
  %46 = alloca %"class.Eigen::Matrix.29", align 16 ; 13 uses
  %.sroa.3435 = alloca <2 x double>, align 16     ; 5 uses
  %.sroa.6436 = alloca <2 x double>, align 16     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 5 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.b, 32                        ; 4 uses
  %i.g = ashr exact i64 %sext, 32                 ; 16 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.g, i64 noundef 4)
          to label %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.dc, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn182.pn.pn.pn.pn.pn.pn, %bb.dc ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.i) #24
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20, !noalias !113 ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !9, !noalias !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.m = load ptr, ptr %14, align 8, !tbaa !18, !noalias !119 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28, !noalias !119 ; 2 uses
  store ptr %i.m, ptr %13, align 8, !tbaa !29, !alias.scope !116, !noalias !113
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.l, ptr %i.p, align 8, !tbaa !32, !alias.scope !116, !noalias !113
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.k, ptr %i.q, align 8, !tbaa !32, !alias.scope !116, !noalias !113
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %14, ptr %i.r, align 8, !tbaa !33, !alias.scope !116, !noalias !113
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !113
  store i64 %i.o, ptr %i.t, align 8, !tbaa !35, !alias.scope !116, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !113
  %i.u = load ptr, ptr %0, align 8, !tbaa !38, !noalias !113
  store ptr %i.u, ptr %9, align 8, !tbaa !39, !noalias !113
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.l, ptr %i.v, align 8, !tbaa !41, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !113
  store ptr %i.m, ptr %10, align 8, !tbaa !42, !noalias !113
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.o, ptr %i.w, align 8, !tbaa !32, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !113
  store ptr %10, ptr %11, align 8, !tbaa !45, !noalias !113
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.x, align 8, !tbaa !47, !noalias !113
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.y, align 8, !tbaa !49, !noalias !113
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %13, ptr %i.z, align 8, !tbaa !51, !noalias !113
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELin1ELb0EEEEENS3_INS5_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %._crit_edge.i unwind label %bb.m

._crit_edge.i:                                    ; preds = %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !113
  %i.aa = icmp eq i64 %i.k, 4                     ; 2 uses
  %.sroa.9628.0 = select i1 %i.aa, i64 0, i64 %i.k
  %i.ab = select i1 %i.aa, i64 %i.l, i64 0
  %i.ac = load ptr, ptr %14, align 8, !tbaa !18, !noalias !120
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !28, !noalias !120
  %i.af = mul nsw i64 %i.ae, %.sroa.9628.0
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 6 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.aj = lshr exact i64 %i.ah, 3
  %i.ak = and i64 %i.aj, 1
  %i.al = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.g)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %._crit_edge.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.c ], [ %i.g, %._crit_edge.i ] ; 9 uses
  %i.am = sub nsw i64 %i.g, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = sdiv i64 %i.am, 2
  %i.ao = shl nsw i64 %i.an, 1                    ; 2 uses
  %i.ap = add nsw i64 %i.ao, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.aq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1069, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ar, align 8, !tbaa !56
  store <2 x double> splat (double 1.000000e+00), ptr %i.as, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1069

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1069:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1069, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1069 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  store double 1.000000e+00, ptr %i.au, align 8, !tbaa !56
  %i.av = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !124

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp sgt i64 %i.am, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = icmp slt i64 %i.ap, %i.g
  br i1 %i.ax, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit654

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.ao
  %i.az = sub i64 %i.g, %i.ay                     ; 3 uses
  %min.iters.check858 = icmp ult i64 %i.az, 4
  br i1 %min.iters.check858, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader1068, label %vector.ph859

vector.ph859:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec860 = and i64 %i.az, -4                   ; 3 uses
  %i.ba = add i64 %i.ap, %n.vec860
  %i.bb = getelementptr [8 x i8], ptr %i.ag, i64 %i.ap
  br label %vector.body861

vector.body861:                                   ; preds = %vector.body861, %vector.ph859
  %index862 = phi i64 [ 0, %vector.ph859 ], [ %index.next863, %vector.body861 ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %index862 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bc, align 8, !tbaa !56
  store <2 x double> splat (double 1.000000e+00), ptr %i.bd, align 8, !tbaa !56
  %index.next863 = add nuw i64 %index862, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next863, %n.vec860
  br i1 %i.be, label %middle.block864, label %vector.body861, !llvm.loop !125

middle.block864:                                  ; preds = %vector.body861
  %cmp.n865 = icmp eq i64 %i.az, %n.vec860
  br i1 %cmp.n865, label %.loopexit654, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader1068

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader1068:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block864
  %.05.i19.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block864 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader1068, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i19.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i19.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader1068 ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.05.i19.i.i.i.i.i.i.i.i.i.i.i
  store double 1.000000e+00, ptr %i.bf, align 8, !tbaa !56
  %i.bg = add nsw i64 %.05.i19.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, %i.g
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit654, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !126

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.022.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.bh, align 16, !tbaa !65
  %i.bi = add nsw i64 %.022.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.ap
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !66

.loopexit654:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block864, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i8 0, ptr %15, align 8, !tbaa !127
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i8 0, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.g, ptr %i.bl, align 8, !tbaa !129
end_hunk_1
begin_hunk_2_@_ZN3igl32direct_delta_mush_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EEiNS6_6ScalarESI_SI_RNS1_15PlainObjectBaseIT2_EE:bb.a
  %i.vp = fmul double %i.vn, %i.vo
  store double %i.vp, ptr %i.vk, align 8, !tbaa !56
  %i.vq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1078.next = add i64 %prol.iter1078, 1 ; 2 uses
  %prol.iter1078.cmp.not = icmp eq i64 %prol.iter1078.next, %xtraiter1076
  br i1 %prol.iter1078.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !229

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader1063
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader1063 ], [ %i.vq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.vr = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.sf
  %i.vs = icmp ugt i64 %i.vr, -4
  br i1 %i.vs, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperINS1_IdLin1ELi1ELi0ELin1ELi1EEEEESC_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.si, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.vv = getelementptr inbounds [8 x i8], ptr %.sroa.0747.0841, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.vw = load double, ptr %i.vu, align 8, !tbaa !56
  %i.vx = load double, ptr %i.vv, align 8, !tbaa !56
  %i.vy = fmul double %i.vw, %i.vx
  store double %i.vy, ptr %i.vt, align 8, !tbaa !56
  %i.vz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.vz
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.vz
  %i.wc = getelementptr inbounds [8 x i8], ptr %.sroa.0747.0841, i64 %i.vz
  %i.wd = load double, ptr %i.wb, align 8, !tbaa !56
  %i.we = load double, ptr %i.wc, align 8, !tbaa !56
  %i.wf = fmul double %i.wd, %i.we
  store double %i.wf, ptr %i.wa, align 8, !tbaa !56
  %i.wg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.wg
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.wg
  %i.wj = getelementptr inbounds [8 x i8], ptr %.sroa.0747.0841, i64 %i.wg
  %i.wk = load double, ptr %i.wi, align 8, !tbaa !56
  %i.wl = load double, ptr %i.wj, align 8, !tbaa !56
  %i.wm = fmul double %i.wk, %i.wl
  store double %i.wm, ptr %i.wh, align 8, !tbaa !56
  %i.wn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.wn
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.wn
  %i.wq = getelementptr inbounds [8 x i8], ptr %.sroa.0747.0841, i64 %i.wn
  %i.wr = load double, ptr %i.wp, align 8, !tbaa !56
  %i.ws = load double, ptr %i.wq, align 8, !tbaa !56
  %i.wt = fmul double %i.wr, %i.ws
  store double %i.wt, ptr %i.wo, align 8, !tbaa !56
  %i.wu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.wu, %i.sf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperINS1_IdLin1ELi1ELi0ELin1ELi1EEEEESC_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !230

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEESH_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperINS7_IdLin1ELi1ELi0ELin1ELi1EEEEESH_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.si, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.wx = load <2 x double>, ptr %i.ww, align 1, !tbaa !65
  %i.wy = getelementptr inbounds [8 x i8], ptr %.sroa.0747.0841, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.wz = load <2 x double>, ptr %i.wy, align 1, !tbaa !65
  %i.xa = fmul <2 x double> %i.wx, %i.wz
  store <2 x double> %i.xa, ptr %i.wv, align 16, !tbaa !65
  %i.xb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.xc = icmp slt i64 %i.xb, %i.ss
  br i1 %i.xc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !231

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperINS1_IdLin1ELi1ELi0ELin1ELi1EEEEESC_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block1016, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %.sroa.0747.0841) #24
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond707.not = icmp eq i64 %indvars.iv.next705, 10
  br i1 %exitcond707.not, label %bb.aw, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i403, !llvm.loop !232

.body230:                                         ; preds = %bb.av, %.body242
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %i.sb, %.body242 ], [ %i.qo, %bb.av ]
  %i.xd = load ptr, ptr %34, align 8, !tbaa !150
  call void @free(ptr noundef %i.xd) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %.body214

._crit_edge667:                                   ; preds = %bb.aw, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  store i8 0, ptr %36, align 8, !tbaa !153, !alias.scope !233
  %i.xe = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %33, ptr %i.xe, align 8, !tbaa !158, !alias.scope !233
  %i.xf = getelementptr inbounds nuw i8, ptr %36, i64 16
  store <2 x double> <double 0.000000e+00, double f0x3D719799812DEA11>, ptr %i.xf, align 8, !tbaa !56, !alias.scope !233
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_10SparseViewIS2_EEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %._crit_edge667
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i8 0, ptr %38, align 8, !tbaa !236, !alias.scope !238
  %i.xg = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i8 0, ptr %i.xg, align 8, !alias.scope !238
  %i.xh = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %15, ptr %i.xh, align 8, !tbaa !143, !alias.scope !238
  %i.xi = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i8 0, ptr %i.xi, align 8, !alias.scope !238
  %i.xj = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.xk = load <2 x i64>, ptr %i.dn, align 8, !tbaa !183, !noalias !241
  %i.xl = shufflevector <2 x i64> %i.xk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.xl, ptr %i.xj, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %38, i64 48
  store double %4, ptr %i.xm, align 8, !tbaa !187, !alias.scope !238
  %i.xn = getelementptr inbounds nuw i8, ptr %38, i64 56
  store ptr %24, ptr %i.xn, align 8, !tbaa !143, !alias.scope !238
  store i8 0, ptr %37, align 8, !tbaa !127
  %i.xo = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xo, i8 0, i64 64, i1 false)
  %i.xp = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERKNS_16SparseMatrixBaseIT_EE.exit unwind label %.body247 ; 0 uses

.body247:                                         ; preds = %bb.az
  %i.xq = landingpad { ptr, i32 }
          cleanup
  %i.xr = getelementptr inbounds nuw i8, ptr %37, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.xr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.ci

_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERKNS_16SparseMatrixBaseIT_EE.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i8 0, ptr %39, align 8, !tbaa !165
  %i.xs = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i32 0, ptr %i.xs, align 4, !tbaa !167
  %i.xt = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i8 0, ptr %i.xt, align 8, !tbaa !175
  %i.xu = getelementptr inbounds nuw i8, ptr %39, i64 9
  store i8 0, ptr %i.xu, align 1, !tbaa !176
  %i.xv = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i8 0, ptr %i.xv, align 8, !tbaa !127
  %i.xw = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  store i64 -1, ptr %i.xw, align 8, !tbaa !137
  %i.xx = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %39, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xx, i8 0, i64 56, i1 false)
  %i.xz = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 3 uses
  store ptr %i.xz, ptr %i.xy, align 8, !tbaa !134
  %.not6.i415 = icmp eq ptr %i.xz, null
  br i1 %.not6.i415, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.ya = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ya, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.ya, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc416 unwind label %.body.i.i249

.noexc416:                                        ; preds = %bb.ba
  unreachable

.body.i.i249:                                     ; preds = %bb.ba
  %i.yb = landingpad { ptr, i32 }
          cleanup
  %i.yc = getelementptr inbounds nuw i8, ptr %39, i64 56
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.yc) #24
  br label %.body250

bb.bb:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS4_INS5_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS5_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES8_EEEEEEEERKNS_16SparseMatrixBaseIT_EE.exit
  store i64 0, ptr %i.xw, align 8, !tbaa !137
  store i32 0, ptr %i.xz, align 4
  %i.yd = getelementptr inbounds nuw i8, ptr %39, i64 88
  %i.ye = getelementptr inbounds nuw i8, ptr %39, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.yd, i8 0, i64 88, i1 false)
  store double 1.000000e+00, ptr %i.ye, align 8, !tbaa !177
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb1EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(184) %39, ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254.preheader unwind label %bb.be

_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254.preheader: ; preds = %bb.bb
  br i1 %i.hj, label %.lr.ph669, label %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254._crit_edge

.lr.ph669:                                        ; preds = %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254.preheader
  %i.yf = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  br label %bb.bf

_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit271, %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi10ELi0ELin1ELi10EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef %i.g, i64 noundef 10)
          to label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257.preheader unwind label %bb.bc

_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257.preheader: ; preds = %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254._crit_edge
  br i1 %i.hk, label %.lr.ph676, label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257._crit_edge

.lr.ph676:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257.preheader
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.ym = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.yo = getelementptr inbounds nuw i8, ptr %42, i64 96
  %i.yp = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.yq = getelementptr inbounds nuw i8, ptr %42, i64 120
  %i.yr = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.ys = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.yt = getelementptr inbounds nuw i8, ptr %42, i64 80
  %i.yu = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.yv = getelementptr inbounds nuw i8, ptr %40, i64 8
  %wide.trip.count730 = and i64 %i.b, 2147483647
  %wide.trip.count717 = and i64 %i.e, 2147483647
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.yw = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.yx = getelementptr inbounds nuw i8, ptr %42, i64 88
  br label %bb.bl

bb.bc:                                            ; preds = %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254._crit_edge
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bd:                                            ; preds = %._crit_edge667
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.cj

bb.be:                                            ; preds = %bb.bb
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bf:                                            ; preds = %.lr.ph669, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit271
  %.068668 = phi i32 [ 0, %.lr.ph669 ], [ %i.zq, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit271 ]
  %i.zb = load i64, ptr %i.xw, align 8, !tbaa !137 ; 5 uses
  %i.zc = load i64, ptr %i.yf, align 8, !tbaa !20 ; 4 uses
  %i.zd = load i64, ptr %i.yg, align 8, !tbaa !9
  %.not.i.i.i.i.i.i260 = icmp eq i64 %i.zd, %i.zb
  br i1 %.not.i.i.i.i.i.i260, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i267, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ze = icmp eq i64 %i.zb, 0
  %i.zf = icmp eq i64 %i.zc, 0                    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i263 = or i1 %i.ze, %i.zf
  br i1 %or.cond.i.i.i.i.i.i.i.i263, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.zg = sdiv i64 9223372036854775807, %i.zc
  %i.zh = icmp sgt i64 %i.zb, %i.zg
  br i1 %i.zh, label %.invoke852, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread

.invoke852:                                       ; preds = %bb.bh, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421, %bb.bi
  %i.zi = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zi, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.zi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont853 unwind label %.loopexit.split-lp

.cont853:                                         ; preds = %.invoke852
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264: ; preds = %bb.bg
  br i1 %i.zf, label %.noexc269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread: ; preds = %bb.bh, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264
  %i.zj = mul nsw i64 %i.zc, %i.zb                ; 3 uses
  %i.zk = load ptr, ptr %35, align 8, !tbaa !38
  call void @free(ptr noundef %i.zk) #24
  %i.zl = icmp sgt i64 %i.zj, 0
  br i1 %i.zl, label %bb.bi, label %.sink.split.i419

bb.bi:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread
  %i.zm = icmp samesign ugt i64 %i.zj, 2305843009213693951
  br i1 %i.zm, label %.invoke852, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421: ; preds = %bb.bi
  %i.zn = shl nuw i64 %i.zj, 3
  %i.zo = call noalias ptr @malloc(i64 noundef %i.zn) #26 ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %.invoke852, label %.sink.split.i419

.sink.split.i419:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread
  %.sink.i420 = phi ptr [ %i.zo, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421 ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264.thread ]
  store ptr %.sink.i420, ptr %35, align 8, !tbaa !38
  br label %.noexc269

.noexc269:                                        ; preds = %.sink.split.i419, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i264
  store i64 %i.zb, ptr %i.yg, align 8, !tbaa !9
  store i64 %i.zc, ptr %i.yf, align 8, !tbaa !20
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i267

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i267: ; preds = %.noexc269, %bb.bf
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %39, ptr noundef nonnull align 1 dereferenceable(1) %35, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit271 unwind label %.loopexit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit271: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i267
  %i.zq = add nuw nsw i32 %.068668, 1             ; 2 uses
  %exitcond713.not = icmp eq i32 %i.zq, %3
  br i1 %exitcond713.not, label %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit254._crit_edge, label %bb.bf, !llvm.loop !244

.loopexit:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i267
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %.invoke852
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257._crit_edge: ; preds = %.preheader.i306.preheader, %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257.preheader
  %i.zr = icmp eq i64 %sext, 0
  %i.zs = icmp eq i64 %sext645, 0
  %or.cond.i.i = or i1 %i.zr, %i.zs
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257._crit_edge
  %i.zt = sdiv i64 9223372036854775807, %i.mr
  %i.zu = icmp sgt i64 %i.g, %i.zt
  br i1 %i.zu, label %bb.bk, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.zv = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zv, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.zv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc272 unwind label %bb.cf

.noexc272:                                        ; preds = %bb.bk
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.bj, %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257._crit_edge
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.mw, i64 noundef %i.g, i64 noundef %i.mr)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.cf

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %.pre753 = load ptr, ptr %40, align 8, !tbaa !213 ; 2 uses
  br i1 %i.hk, label %.lr.ph680, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph680:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.zw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !218 ; 9 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.zz = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.zx, 4
  %i.aaa = getelementptr inbounds nuw i8, ptr %45, i64 24
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.zx, 24
  %i.aab = getelementptr inbounds nuw i8, ptr %45, i64 32
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.zx, 5
  %i.aac = getelementptr inbounds nuw i8, ptr %45, i64 40
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i339 = mul nsw i64 %i.zx, 40
  %i.aad = getelementptr inbounds nuw i8, ptr %45, i64 48
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i340 = mul nsw i64 %i.zx, 48
  %i.aae = getelementptr inbounds nuw i8, ptr %45, i64 56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i341 = mul nsw i64 %i.zx, 56
  %i.aaf = getelementptr inbounds nuw i8, ptr %45, i64 64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i342 = shl nsw i64 %i.zx, 6
  %i.aag = getelementptr inbounds nuw i8, ptr %45, i64 72
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i343 = mul nsw i64 %i.zx, 72
  %i.aah = load ptr, ptr %35, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.aaj = load i64, ptr %i.aai, align 8          ; 10 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aal = getelementptr inbounds nuw i8, ptr %46, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i344 = shl i64 %i.aaj, 4
  %i.aam = getelementptr inbounds nuw i8, ptr %46, i64 24
  %.idx.i.i.i.i.i.i.i.i.i.i.i345 = mul i64 %i.aaj, 24
  %i.aan = getelementptr inbounds nuw i8, ptr %46, i64 32
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i346 = shl i64 %i.aaj, 5
  %i.aao = getelementptr inbounds nuw i8, ptr %46, i64 40
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i347 = mul i64 %i.aaj, 40
  %i.aap = getelementptr inbounds nuw i8, ptr %46, i64 48
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i348 = mul i64 %i.aaj, 48
  %i.aaq = getelementptr inbounds nuw i8, ptr %46, i64 56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i349 = mul i64 %i.aaj, 56
  %i.aar = getelementptr inbounds nuw i8, ptr %46, i64 64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i350 = shl i64 %i.aaj, 6
  %i.aas = getelementptr inbounds nuw i8, ptr %46, i64 72
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i351 = mul i64 %i.aaj, 72
  %i.aat = fsub double 1.000000e+00, %6
  %i.aau = load ptr, ptr %29, align 8
  %i.aav = load i64, ptr %i.es, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.trip.count740 = and i64 %i.b, 2147483647
  %wide.trip.count735 = and i64 %i.e, 2147483647
  %.sroa.3435.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3435, i64 8
  %.sroa.6436.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6436, i64 8
  br label %bb.cg

bb.bl:                                            ; preds = %.lr.ph676, %.preheader.i306.preheader
  %indvars.iv727 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next728, %.preheader.i306.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br i1 %i.oi, label %.lr.ph673, label %._crit_edge674

.lr.ph673:                                        ; preds = %bb.bl
  %i.aax = load ptr, ptr %35, align 8, !tbaa !38
  %i.aay = load i64, ptr %i.yh, align 8, !tbaa !9 ; 4 uses
  %i.aaz = getelementptr [8 x i8], ptr %i.aax, i64 %indvars.iv727 ; 4 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph673, %bb.bm
  %indvars.iv714 = phi i64 [ 0, %.lr.ph673 ], [ %indvars.iv.next715, %bb.bm ] ; 2 uses
  %.0644670 = phi double [ 0.000000e+00, %.lr.ph673 ], [ %i.abv, %bb.bm ]
  %i.aba = phi <2 x double> [ zeroinitializer, %.lr.ph673 ], [ %i.abp, %bb.bm ]
  %i.abb = phi double [ 0.000000e+00, %.lr.ph673 ], [ %i.abq, %bb.bm ]
  %i.abc = mul nuw nsw i64 %indvars.iv714, 10     ; 4 uses
  %i.abd = add nuw nsw i64 %i.abc, 3
  %i.abe = mul nsw i64 %i.aay, %i.abd
  %i.abf = getelementptr [8 x i8], ptr %i.aaz, i64 %i.abe
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !56, !noalias !245
  %.sroa.0744.0.vec.insert = insertelement <2 x double> poison, double %i.abg, i64 0
  %i.abh = add nuw nsw i64 %i.abc, 6
  %i.abi = mul nsw i64 %i.aay, %i.abh
  %i.abj = getelementptr [8 x i8], ptr %i.aaz, i64 %i.abi
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !56
  %.sroa.0744.8.vec.insert = insertelement <2 x double> %.sroa.0744.0.vec.insert, double %i.abk, i64 1
  %i.abl = add nuw nsw i64 %i.abc, 8
  %i.abm = mul nsw i64 %i.aay, %i.abl
  %i.abn = getelementptr [8 x i8], ptr %i.aaz, i64 %i.abm
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !56
  %i.abp = fadd <2 x double> %.sroa.0744.8.vec.insert, %i.aba ; 3 uses
  store <2 x double> %i.abp, ptr %41, align 16, !tbaa !65
  %i.abq = fadd double %i.abo, %i.abb             ; 3 uses
  store double %i.abq, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i, align 16, !tbaa !56
  %i.abr = add nuw nsw i64 %i.abc, 9
  %i.abs = mul nsw i64 %i.aay, %i.abr
  %i.abt = getelementptr [8 x i8], ptr %i.aaz, i64 %i.abs
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !56
  %i.abv = fadd double %.0644670, %i.abu          ; 2 uses
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 2 uses
  %exitcond718.not = icmp eq i64 %indvars.iv.next715, %wide.trip.count717
  br i1 %exitcond718.not, label %._crit_edge674, label %bb.bm, !llvm.loop !248

._crit_edge674:                                   ; preds = %bb.bm, %bb.bl
  %i.abw = phi double [ 0.000000e+00, %bb.bl ], [ %i.abq, %bb.bm ]
  %i.abx = phi <2 x double> [ zeroinitializer, %bb.bl ], [ %i.abp, %bb.bm ]
  %.0644.lcssa = phi double [ 0.000000e+00, %bb.bl ], [ %i.abv, %bb.bm ] ; 2 uses
  %i.aby = insertelement <2 x double> poison, double %.0644.lcssa, i64 0
  %i.abz = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aca = fdiv <2 x double> %i.abx, %i.abz
  store <2 x double> %i.aca, ptr %41, align 16, !tbaa !65
  %i.acb = fdiv double %i.abw, %.0644.lcssa
  store double %i.acb, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  store ptr %41, ptr %43, align 8
  store ptr %41, ptr %i.yi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  store ptr %42, ptr %44, align 8, !tbaa !249, !alias.scope !251
  store i64 3, ptr %i.yj, align 8, !tbaa !32, !alias.scope !251
  store i64 3, ptr %i.yk, align 8, !tbaa !32, !alias.scope !251
  store ptr %42, ptr %i.yl, align 8, !tbaa !254, !alias.scope !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ym, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.yn, align 8, !tbaa !256, !alias.scope !251
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_7ProductINS3_IdLi3ELi1ELi0ELi3ELi1EEENS_9TransposeIS7_EELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %44, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef null)
          to label %.preheader.i306.preheader unwind label %.body295

.preheader.i306.preheader:                        ; preds = %._crit_edge674
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.acc = load <2 x double>, ptr %41, align 16   ; 3 uses
  store <2 x double> %i.acc, ptr %i.yo, align 16, !tbaa !65
  %i.acd = load double, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i, align 16, !tbaa !56 ; 2 uses
  store double %i.acd, ptr %47, align 16, !tbaa !56
  %bc827 = bitcast <2 x double> %i.acc to <2 x i64>
  %i.ace = extractelement <2 x i64> %bc827, i64 0 ; 2 uses
  store i64 %i.ace, ptr %i.yp, align 8, !tbaa !56
  %i.acf = extractelement <2 x double> %i.acc, i64 1 ; 2 uses
  store double %i.acf, ptr %i.yw, align 8, !tbaa !56
  store double %i.acd, ptr %i.yx, align 8, !tbaa !56
  store double 1.000000e+00, ptr %i.yq, align 8, !tbaa !56
  %i.acg = load i128, ptr %i.yu, align 16, !tbaa !65 ; 2 uses
  %i.ach = lshr i128 %i.acg, 64
  %i.aci = trunc nuw i128 %i.ach to i64
  %i.acj = trunc i128 %i.acg to i64
  %i.ack = load i128, ptr %i.yt, align 16, !tbaa !65
  %i.acl = trunc i128 %i.ack to i64
  %i.acm = load i128, ptr %i.ys, align 16, !tbaa !65 ; 2 uses
  %i.acn = lshr i128 %i.acm, 64
  %i.aco = trunc nuw i128 %i.acn to i64
  %i.acp = load i128, ptr %i.yr, align 16, !tbaa !65 ; 2 uses
  %i.acq = lshr i128 %i.acp, 64
  %i.acr = trunc nuw i128 %i.acq to i64
  %i.acs = trunc i128 %i.acm to i64
  %i.act = trunc i128 %i.acp to i64
  %i.acu = load i128, ptr %42, align 16, !tbaa !65
  %i.acv = trunc i128 %i.acu to i64
  %i.acw = load ptr, ptr %40, align 8, !tbaa !213, !noalias !259
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv727 ; 10 uses
  %i.acy = load i64, ptr %i.yv, align 8, !tbaa !218 ; 9 uses
  store i64 %i.acv, ptr %i.acx, align 8, !tbaa !56
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.acy
  store i64 %i.act, ptr %i.acz, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i325 = shl nsw i64 %i.acy, 4
  %i.ada = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i325
  store i64 %i.acs, ptr %i.ada, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i326 = mul nsw i64 %i.acy, 24
  %i.adb = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i326
  store i64 %i.ace, ptr %i.adb, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i327 = shl nsw i64 %i.acy, 5
  %i.adc = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i327
  store i64 %i.acr, ptr %i.adc, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i328 = mul nsw i64 %i.acy, 40
  %i.add = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i328
  store i64 %i.aco, ptr %i.add, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i329 = mul nsw i64 %i.acy, 48
  %i.ade = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i329
  store double %i.acf, ptr %i.ade, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i330 = mul nsw i64 %i.acy, 56
  %i.adf = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i330
  store i64 %i.acl, ptr %i.adf, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i331 = shl nsw i64 %i.acy, 6
  %i.adg = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i331
  store i64 %i.acj, ptr %i.adg, align 8, !tbaa !56
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i332 = mul nsw i64 %i.acy, 72
  %i.adh = getelementptr inbounds i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i332
  store i64 %i.aci, ptr %i.adh, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %exitcond731.not = icmp eq i64 %indvars.iv.next728, %wide.trip.count730
  br i1 %exitcond731.not, label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit257._crit_edge, label %bb.bl, !llvm.loop !262

.body295:                                         ; preds = %._crit_edge674
  %i.adi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %.body255

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %.pre752 = load ptr, ptr %40, align 8, !tbaa !213
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.adj = phi ptr [ %.pre752, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit ], [ %.pre753, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader ]
  call void @free(ptr noundef %i.adj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  %i.adk = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !134
  call void @free(ptr noundef %i.adl) #24
  %i.adm = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !193
  call void @free(ptr noundef %i.adn) #24
  %i.ado = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !194 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, null
  br i1 %i.adq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.adp) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge
  %i.adr = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !195 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit333, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.ads) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit333

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit333:      ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  %i.adu = load ptr, ptr %35, align 8, !tbaa !38
  call void @free(ptr noundef %i.adu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.adv = load ptr, ptr %33, align 8, !tbaa !38
  call void @free(ptr noundef %i.adv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.adw = load ptr, ptr %32, align 8, !tbaa !213
  call void @free(ptr noundef %i.adw) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.adx = load ptr, ptr %29, align 8, !tbaa !38
  call void @free(ptr noundef %i.adx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.ady = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !134
  call void @free(ptr noundef %i.adz) #24
  %i.aea = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !193
  call void @free(ptr noundef %i.aeb) #24
  %i.aec = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !194 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit333
  call void @_ZdaPv(ptr noundef nonnull %i.aed) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit333
  %i.aef = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !195 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit334, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.aeg) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit334

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit334:      ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.aei = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !134
  call void @free(ptr noundef %i.aej) #24
  %i.aek = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !193
  call void @free(ptr noundef %i.ael) #24
  %i.aem = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !194 ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit334
  call void @_ZdaPv(ptr noundef nonnull %i.aen) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit334
  %i.aep = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !195 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit335, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.aeq) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit335

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit335:      ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.aes = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !134
  call void @free(ptr noundef %i.aet) #24
  %i.aeu = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !193
  call void @free(ptr noundef %i.aev) #24
  %i.aew = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !194 ; 2 uses
  %i.aey = icmp eq ptr %i.aex, null
  br i1 %i.aey, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit335
  call void @_ZdaPv(ptr noundef nonnull %i.aex) #28
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit335
  %i.aez = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !195 ; 2 uses
  %i.afb = icmp eq ptr %i.afa, null
  br i1 %i.afb, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit336, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.afa) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit336

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit336:      ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
end_hunk_2
