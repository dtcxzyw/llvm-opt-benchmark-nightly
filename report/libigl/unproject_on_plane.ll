Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_plane?download=true
inline.NumInlined: 3870
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 39
begin_hunk_0
%"class.Eigen::Block.279" = type { %"class.Eigen::BlockImpl.280" }
%"class.Eigen::BlockImpl.280" = type { %"class.Eigen::internal::BlockImpl_dense.281" }
%"class.Eigen::internal::BlockImpl_dense.281" = type { %"class.Eigen::MapBase.base.291", %"class.Eigen::Block.232", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.291" = type { %"class.Eigen::MapBase.base.290" }
%"class.Eigen::MapBase.base.290" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.232" = type { %"class.Eigen::BlockImpl.233" }
%"class.Eigen::BlockImpl.233" = type { %"class.Eigen::internal::BlockImpl_dense.234" }
%"class.Eigen::internal::BlockImpl_dense.234" = type { %"class.Eigen::MapBase.base.244", %"class.Eigen::Block.218", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.244" = type { %"class.Eigen::MapBase.base.243" }
%"class.Eigen::MapBase.base.243" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.218" = type { %"class.Eigen::BlockImpl.219" }
%"class.Eigen::BlockImpl.219" = type { %"class.Eigen::internal::BlockImpl_dense.220" }
%"class.Eigen::internal::BlockImpl_dense.220" = type { %"class.Eigen::MapBase.base.230", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.230" = type { %"class.Eigen::MapBase.base.229" }
%"class.Eigen::MapBase.base.229" = type <{ ptr, [2 x i8] }>
%"class.Eigen::VectorBlock.231" = type { %"class.Eigen::Block.232" }
%"class.Eigen::Block.195" = type { %"class.Eigen::BlockImpl.196" }
%"class.Eigen::BlockImpl.196" = type { %"class.Eigen::internal::BlockImpl_dense.197" }
%"class.Eigen::internal::BlockImpl_dense.197" = type { %"class.Eigen::MapBase.198", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.198" = type { %"class.Eigen::MapBase.199" }
%"class.Eigen::MapBase.199" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.564" = type { %"struct.Eigen::internal::product_evaluator.565" }
%"struct.Eigen::internal::product_evaluator.565" = type { %"class.Eigen::Matrix.568", %"class.Eigen::Map", %"struct.Eigen::internal::evaluator.577", %"struct.Eigen::internal::evaluator.468", i64 }
%"class.Eigen::Matrix.568" = type { %"class.Eigen::PlainObjectBase.569" }
%"class.Eigen::PlainObjectBase.569" = type { %"class.Eigen::DenseStorage.576" }
%"class.Eigen::DenseStorage.576" = type { %"struct.Eigen::internal::plain_array.80", i64 }
%"class.Eigen::Map" = type <{ %"class.Eigen::MapBase.368", [8 x i8] }>
%"class.Eigen::MapBase.368" = type { %"class.Eigen::MapBase.369" }
%"class.Eigen::MapBase.369" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.577" = type { %"struct.Eigen::internal::evaluator.578" }
%"struct.Eigen::internal::evaluator.578" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.167" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.167" = type { ptr }
%"struct.Eigen::internal::evaluator.468" = type { %"struct.Eigen::internal::mapbase_evaluator.469" }
%"struct.Eigen::internal::mapbase_evaluator.469" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.460" = type { %"struct.Eigen::internal::block_evaluator.base.466", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.466" = type { %"struct.Eigen::internal::mapbase_evaluator.base.465" }
%"struct.Eigen::internal::mapbase_evaluator.base.465" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.581" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::sub_assign_op" = type { i8 }
%"class.Eigen::Block.376" = type { %"class.Eigen::BlockImpl.377" }
%"class.Eigen::BlockImpl.377" = type { %"class.Eigen::internal::BlockImpl_dense.378" }
%"class.Eigen::internal::BlockImpl_dense.378" = type { %"class.Eigen::MapBase.379", %"class.Eigen::Block.195", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.379" = type { %"class.Eigen::MapBase.380" }
%"class.Eigen::MapBase.380" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix.643" = type { %"class.Eigen::PlainObjectBase.644" }
%"class.Eigen::PlainObjectBase.644" = type { %"class.Eigen::DenseStorage.651" }
%"class.Eigen::DenseStorage.651" = type { %"struct.Eigen::internal::plain_array.652" }
%"struct.Eigen::internal::plain_array.652" = type { [1 x double] }
%"class.Eigen::Block.666" = type { %"class.Eigen::BlockImpl.667" }
%"class.Eigen::BlockImpl.667" = type { %"class.Eigen::internal::BlockImpl_dense.668" }
%"class.Eigen::internal::BlockImpl_dense.668" = type { %"class.Eigen::MapBase.669", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.669" = type { %"class.Eigen::MapBase.670" }
%"class.Eigen::MapBase.670" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::VectorBlock.677" = type { %"class.Eigen::Block.678" }
%"class.Eigen::Block.678" = type { %"class.Eigen::BlockImpl.679" }
%"class.Eigen::BlockImpl.679" = type { %"class.Eigen::internal::BlockImpl_dense.680" }
%"class.Eigen::internal::BlockImpl_dense.680" = type { %"class.Eigen::MapBase.base.687", %"class.Eigen::Block.688", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.687" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.688" = type { %"class.Eigen::BlockImpl.689" }
%"class.Eigen::BlockImpl.689" = type { %"class.Eigen::internal::BlockImpl_dense.690" }
%"class.Eigen::internal::BlockImpl_dense.690" = type { %"class.Eigen::MapBase.base.697", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.697" = type <{ ptr, [2 x i8] }>
%"class.Eigen::TriangularView" = type { %"class.Eigen::Block.699" }
%"class.Eigen::Block.699" = type { %"class.Eigen::BlockImpl.700" }
%"class.Eigen::BlockImpl.700" = type { %"class.Eigen::internal::BlockImpl_dense.701" }
%"class.Eigen::internal::BlockImpl_dense.701" = type { %"class.Eigen::MapBase.702", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.702" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.82" = type { %"class.Eigen::BlockImpl.83" }
%"class.Eigen::BlockImpl.83" = type { %"class.Eigen::internal::BlockImpl_dense.84" }
%"class.Eigen::internal::BlockImpl_dense.84" = type { %"class.Eigen::MapBase.base.94", ptr, %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.94" = type { %"class.Eigen::MapBase.base.93" }
%"class.Eigen::MapBase.base.93" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.944" = type { %"struct.Eigen::internal::product_evaluator.945" }
%"struct.Eigen::internal::product_evaluator.945" = type { %"class.Eigen::Matrix.568", %"class.Eigen::Map.723", %"struct.Eigen::internal::evaluator.577", %"struct.Eigen::internal::evaluator.848", i64 }
%"class.Eigen::Map.723" = type <{ %"class.Eigen::MapBase.724", [8 x i8] }>
%"class.Eigen::MapBase.724" = type { %"class.Eigen::MapBase.725" }
%"class.Eigen::MapBase.725" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.848" = type { %"struct.Eigen::internal::mapbase_evaluator.849" }
%"struct.Eigen::internal::mapbase_evaluator.849" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.840" = type { %"struct.Eigen::internal::block_evaluator.base.846", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.846" = type { %"struct.Eigen::internal::mapbase_evaluator.base.845" }
%"struct.Eigen::internal::mapbase_evaluator.base.845" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.948" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Block.733" = type { %"class.Eigen::BlockImpl.734" }
%"class.Eigen::BlockImpl.734" = type { %"class.Eigen::internal::BlockImpl_dense.735" }
%"class.Eigen::internal::BlockImpl_dense.735" = type { %"class.Eigen::MapBase.736", %"class.Eigen::Block.666", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.736" = type { %"class.Eigen::MapBase.737" }
%"class.Eigen::MapBase.737" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }

$_ZN3igl18unproject_on_planeIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi4ELi1ELi1ELi4EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEEENS3_INS5_IdLi2ELi3ELi0ELi2ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_ = comdat any

$_ZN5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_ = comdat any

$_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS1_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKT_RT0_ = comdat any

$_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockIKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1EEEEEvRKT_RKdPd = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_ = comdat any

$_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_ = comdat any

$_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi2ELb0ELi0EE3runElPKdlPd = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdS3_Lb0ELi0EE3runEllRKS3_S6_Pdld = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl18unproject_on_planeIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi4ELi1ELi1ELi4EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 4 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.133", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.3", align 16 ; 6 uses
  %11 = alloca %"class.Eigen::Matrix.25", align 16 ; 11 uses
  %12 = alloca %"class.Eigen::Block", align 8     ; 8 uses
  %13 = alloca %"class.Eigen::Matrix.71", align 8 ; 8 uses
  %14 = alloca %"class.Eigen::FullPivHouseholderQR", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN3igl21projection_constraintIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi2ELi3ELi0ELi2ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EERNSK_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(16) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %11, ptr %12, align 8, !tbaa !9, !alias.scope !16
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.a, align 8, !tbaa !19, !alias.scope !16
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.b, align 8, !tbaa !20, !alias.scope !16
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !16
  store i64 3, ptr %i.d, align 8, !tbaa !22, !alias.scope !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %9, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %11, ptr %6, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %6, ptr %7, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %12, ptr %i.g, align 8, !tbaa !36
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEEENS3_INS5_IdLi2ELi3ELi0ELi2ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.i = load double, ptr %3, align 8, !tbaa !38
  store double %i.i, ptr %i.h, align 16, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !38
  store double %i.l, ptr %i.j, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !38 ; 2 uses
  store double %i.o, ptr %i.m, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.p = ptrtoint ptr %13 to i64
  %i.q = lshr exact i64 %i.p, 3
  %i.r = and i64 %i.q, 1                          ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 3
  %i.t = xor i64 %i.s, 2                          ; 2 uses
  %cond = icmp eq i64 %i.r, 0
  br i1 %cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = load double, ptr %10, align 16, !tbaa !38
  store double %i.u, ptr %13, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.v = icmp samesign ult i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEaSINS_5SolveINS_20FullPivHouseholderQRINS1_IdLi3ELi3ELi0ELi3ELi3EEEEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.w = shl nuw nsw i64 %i.t, 3                  ; 3 uses
  %scevgep27 = getelementptr i8, ptr %13, i64 %i.w
  %scevgep28 = getelementptr i8, ptr %10, i64 %i.w
  %i.x = sub nuw nsw i64 16, %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep27, ptr align 8 %scevgep28, i64 %i.x, i1 false), !tbaa !38
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEaSINS_5SolveINS_20FullPivHouseholderQRINS1_IdLi3ELi3ELi0ELi3ELi3EEEEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEaSINS_5SolveINS_20FullPivHouseholderQRINS1_IdLi3ELi3ELi0ELi3ELi3EEEEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !38
  %i.aa = fneg double %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double %i.aa, ptr %i.ab, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 160
  store i8 0, ptr %i.ac, align 16, !tbaa !44, !alias.scope !41
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 161
  store i8 0, ptr %i.ad, align 1, !tbaa !68, !alias.scope !41
  %i.ae = load <2 x double>, ptr %11, align 16, !tbaa !40, !noalias !41
  store <2 x double> %i.ae, ptr %14, align 16, !tbaa !40, !alias.scope !41
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = load <2 x double>, ptr %i.h, align 16, !tbaa !40, !noalias !41
  store <2 x double> %i.ag, ptr %i.af, align 16, !tbaa !40, !alias.scope !41
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !40, !noalias !41
  store <2 x double> %i.aj, ptr %i.ah, align 16, !tbaa !40, !alias.scope !41
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !40, !noalias !41
  store <2 x double> %i.am, ptr %i.ak, align 16, !tbaa !40, !alias.scope !41
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 64
  store double %i.o, ptr %i.an, align 16, !tbaa !38, !alias.scope !41
  call void @_ZN5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
  call void @_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS1_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl21projection_constraintIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi2ELi3ELi0ELi2ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EERNSK_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEEENS3_INS5_IdLi2ELi3ELi0ELi2ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69, !nonnull !71, !align !72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 34 uses
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEEENS3_INS5_IdLi2ELi3ELi0ELi2ELi3EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSD_.exit

.split.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !71, !align !72
  %i.k = load ptr, ptr %0, align 8, !nonnull !71, !align !72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 9 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !73   ; 9 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.p = sub i64 %i.o, %i.m
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split.i
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !38
  %wide.load70 = load <2 x double>, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !38
  store <2 x double> %wide.load70, ptr %i.t, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.split.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr [8 x i8], ptr %i.l, i64 %.09.i.prol
  %gep.i.prol = getelementptr [8 x i8], ptr %i.n, i64 %.09.i.prol
  %i.w = load double, ptr %gep.i.prol, align 8, !tbaa !38
  store double %i.w, ptr %i.v, align 8, !tbaa !38
  %i.x = add nuw nsw i64 %.09.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub nsw i64 %.09.i.ph, %i.g
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aa = getelementptr i8, ptr %i.l, i64 24      ; 6 uses
  %invariant.gep.1.i = getelementptr i8, ptr %i.n, i64 16 ; 6 uses
  %min.iters.check74 = icmp ult i64 %i.g, 10
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.memcheck71

vector.memcheck71:                                ; preds = %._crit_edge.i
  %i.ab = sub i64 %i.m, %i.o
  %i.ac = add i64 %i.ab, 7
  %diff.check72 = icmp ult i64 %i.ac, 31
  br i1 %diff.check72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck71
  %n.vec76 = and i64 %i.g, 9223372036854775804    ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %index78 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %invariant.gep.1.i, i64 %index78 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load79 = load <2 x double>, ptr %i.ae, align 8, !tbaa !38
  %wide.load80 = load <2 x double>, ptr %i.af, align 8, !tbaa !38
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load79, ptr %i.ad, align 8, !tbaa !38
  store <2 x double> %wide.load80, ptr %i.ag, align 8, !tbaa !38
  %index.next81 = add nuw i64 %index78, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.ah, label %middle.block82, label %vector.body77, !llvm.loop !81

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %i.g, %n.vec76
  br i1 %cmp.n83, label %._crit_edge.1.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck71, %._crit_edge.i, %middle.block82
  %.09.1.i.ph = phi i64 [ 0, %vector.memcheck71 ], [ 0, %._crit_edge.i ], [ %n.vec76, %middle.block82 ] ; 3 uses
  %xtraiter145 = and i64 %i.g, 3                  ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol

scalar.ph73.prol:                                 ; preds = %scalar.ph73.preheader, %scalar.ph73.prol
  %.09.1.i.prol = phi i64 [ %i.ak, %scalar.ph73.prol ], [ %.09.1.i.ph, %scalar.ph73.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph73.prol ], [ 0, %scalar.ph73.preheader ]
  %i.ai = getelementptr [8 x i8], ptr %i.aa, i64 %.09.1.i.prol
  %gep.1.i.prol = getelementptr [8 x i8], ptr %invariant.gep.1.i, i64 %.09.1.i.prol
  %i.aj = load double, ptr %gep.1.i.prol, align 8, !tbaa !38
  store double %i.aj, ptr %i.ai, align 8, !tbaa !38
  %i.ak = add nuw nsw i64 %.09.1.i.prol, 1        ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol, !llvm.loop !82

scalar.ph73.prol.loopexit:                        ; preds = %scalar.ph73.prol, %scalar.ph73.preheader
  %.09.1.i.unr = phi i64 [ %.09.1.i.ph, %scalar.ph73.preheader ], [ %i.ak, %scalar.ph73.prol ]
  %i.al = sub nsw i64 %.09.1.i.ph, %i.g
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.1.i, label %scalar.ph73

scalar.ph73:                                      ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73
  %.09.1.i = phi i64 [ %i.ay, %scalar.ph73 ], [ %.09.1.i.unr, %scalar.ph73.prol.loopexit ] ; 6 uses
  %i.an = getelementptr [8 x i8], ptr %i.aa, i64 %.09.1.i
  %gep.1.i = getelementptr [8 x i8], ptr %invariant.gep.1.i, i64 %.09.1.i
  %i.ao = load double, ptr %gep.1.i, align 8, !tbaa !38
  store double %i.ao, ptr %i.an, align 8, !tbaa !38
  %i.ap = add nuw nsw i64 %.09.1.i, 1             ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.aa, i64 %i.ap
  %gep.1.i.1 = getelementptr [8 x i8], ptr %invariant.gep.1.i, i64 %i.ap
  %i.ar = load double, ptr %gep.1.i.1, align 8, !tbaa !38
  store double %i.ar, ptr %i.aq, align 8, !tbaa !38
  %i.as = add nuw nsw i64 %.09.1.i, 2             ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.aa, i64 %i.as
  %gep.1.i.2 = getelementptr [8 x i8], ptr %invariant.gep.1.i, i64 %i.as
  %i.au = load double, ptr %gep.1.i.2, align 8, !tbaa !38
  store double %i.au, ptr %i.at, align 8, !tbaa !38
end_hunk_0
