Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/massmatrix?download=true
inline.NumInlined: 1307
inline.NumDeleted: 564
loop-unroll.NumRuntimeUnrolled: 257
loop-unroll.NumUnrolled: 257
begin_hunk_0
%"class.Eigen::Matrix.44" = type { %"class.Eigen::PlainObjectBase.45" }
%"class.Eigen::PlainObjectBase.45" = type { %"class.Eigen::DenseStorage.52" }
%"class.Eigen::DenseStorage.52" = type { ptr, i64 }
%"class.Eigen::Matrix.62" = type { %"class.Eigen::PlainObjectBase.63" }
%"class.Eigen::PlainObjectBase.63" = type { %"class.Eigen::DenseStorage.70" }
%"class.Eigen::DenseStorage.70" = type { ptr, i64 }
%"class.Eigen::Block.91" = type { %"class.Eigen::BlockImpl.92" }
%"class.Eigen::BlockImpl.92" = type { %"class.Eigen::internal::BlockImpl_dense.93" }
%"class.Eigen::internal::BlockImpl_dense.93" = type { %"class.Eigen::MapBase.94", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.94" = type { %"class.Eigen::MapBase.95" }
%"class.Eigen::MapBase.95" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.114" = type { %"struct.Eigen::internal::block_evaluator" }
%"struct.Eigen::internal::block_evaluator" = type { %"struct.Eigen::internal::mapbase_evaluator" }
%"struct.Eigen::internal::mapbase_evaluator" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.122" = type { ptr, ptr, ptr, ptr }

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE = comdat any

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE = comdat any

$_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_ = comdat any

$_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_ = comdat any

$_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.41", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  switch i64 %i.b, label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit [
    i64 3, label %bb.b
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 3
  %i.d = select i1 %i.c, i32 1, i32 %2
  invoke void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.e

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i: ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit: ; preds = %bb.a, %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.41", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  switch i64 %i.b, label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit [
    i64 3, label %bb.b
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 3
  %i.d = select i1 %i.c, i32 1, i32 %2
  invoke void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.e

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i: ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit: ; preds = %bb.a, %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %17 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %21 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %22 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %28 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %29 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %30 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %32 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %33 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %34 = alloca %"struct.Eigen::internal::evaluator.196", align 8 ; 5 uses
  %35 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %36 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.201", align 8 ; 7 uses
  %37 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %38 = alloca %"class.Eigen::Matrix.44", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 40 uses
  %40 = alloca %"class.Eigen::Matrix.62", align 8 ; 33 uses
  %41 = alloca %"class.Eigen::Matrix.44", align 8 ; 19 uses
  %42 = alloca %"class.Eigen::Block.76", align 8  ; 10 uses
  %43 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %44 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %45 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %46 = alloca %"class.Eigen::Block.91", align 8  ; 10 uses
  %47 = alloca %"class.Eigen::Block.91", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 37 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !434  ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %38, align 8, !tbaa !24    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %i.j = sdiv i64 %i.i, 2
  %i.k = shl nsw i64 %i.j, 1                      ; 6 uses
  %i.l = icmp sgt i64 %i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.m = icmp slt i64 %i.k, %i.i
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit1258

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.n = sub i64 %i.i, %i.k                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.n, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !27
  %wide.load1399 = load <2 x double>, ptr %i.r, align 8, !tbaa !27
  %i.s = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.t = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1399)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !27
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354

.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354 ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !27
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !27
  %i.y = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !31
  %i.ab = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !31
  %i.ac = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.k
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit1258:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %._crit_edge
    i32 2, label %bb.v
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.d:                                             ; preds = %.loopexit1258, %.loopexit1258
  %i.af = shl nsw i32 %i.f, 2
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %1, align 8, !tbaa !435, !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %sext1226 = shl i64 %i.e, 32
  %i.ai = ashr exact i64 %sext1226, 32            ; 6 uses
  %i.aj = load ptr, ptr %39, align 8, !tbaa !33, !noalias !437 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !437 ; 2 uses
  store ptr %i.aj, ptr %42, align 8, !tbaa !37, !alias.scope !437
  %i.am = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !38, !alias.scope !437
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 1, ptr %i.an, align 8, !tbaa !38, !alias.scope !437
  %i.ao = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %39, ptr %i.ao, align 8, !tbaa !40, !alias.scope !437
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !43, !alias.scope !437
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  store ptr %i.ah, ptr %34, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.as = load i64, ptr %i.d, align 8, !tbaa !434
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %i.aj, ptr %35, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.al, ptr %i.at, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  store ptr %35, ptr %36, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %34, ptr %i.au, align 8, !tbaa !438
  %i.av = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %37, ptr %i.av, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr %42, ptr %i.aw, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  %i.ax = load ptr, ptr %1, align 8, !tbaa !435, !noalias !439
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !434, !noalias !439 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.ba = load ptr, ptr %39, align 8, !tbaa !33, !noalias !440
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ai ; 2 uses
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !440 ; 2 uses
  store ptr %i.bb, ptr %43, align 8, !tbaa !37, !alias.scope !440
  %i.bd = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ai, ptr %i.bd, align 8, !tbaa !38, !alias.scope !440
  %i.be = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 1, ptr %i.be, align 8, !tbaa !38, !alias.scope !440
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %39, ptr %i.bf, align 8, !tbaa !40, !alias.scope !440
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %i.ai, ptr %i.bg, align 8, !tbaa !38, !alias.scope !440
  %i.bh = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !38, !alias.scope !440
  %i.bi = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !43, !alias.scope !440
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store ptr %i.az, ptr %30, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store ptr %i.bb, ptr %31, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store ptr %31, ptr %32, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %30, ptr %i.bl, align 8, !tbaa !438
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %43, ptr %i.bn, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %i.bo = load ptr, ptr %1, align 8, !tbaa !435, !noalias !441
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !434, !noalias !441 ; 2 uses
  %.idx1227 = shl nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %.idx1227
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.br = shl nsw i32 %i.f, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.bt = load ptr, ptr %39, align 8, !tbaa !33, !noalias !442
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !442 ; 2 uses
  store ptr %i.bu, ptr %44, align 8, !tbaa !37, !alias.scope !442
  %i.bw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.ai, ptr %i.bw, align 8, !tbaa !38, !alias.scope !442
  %i.bx = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 1, ptr %i.bx, align 8, !tbaa !38, !alias.scope !442
  %i.by = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %39, ptr %i.by, align 8, !tbaa !40, !alias.scope !442
  %i.bz = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !38, !alias.scope !442
  %i.ca = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !38, !alias.scope !442
  %i.cb = getelementptr inbounds nuw i8, ptr %44, i64 48
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !43, !alias.scope !442
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store ptr %i.bq, ptr %26, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %i.bp, ptr %i.cc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  store ptr %i.bu, ptr %27, align 8, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr %27, ptr %28, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %26, ptr %i.ce, align 8, !tbaa !438
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %29, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %44, ptr %i.cg, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.ch = load ptr, ptr %1, align 8, !tbaa !435, !noalias !443
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !434, !noalias !443 ; 2 uses
  %.idx1228 = mul nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %.idx1228
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %sext146 = mul i64 %i.e, 12884901888
  %i.ck = ashr exact i64 %sext146, 32             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.cl = load ptr, ptr %39, align 8, !tbaa !33, !noalias !444
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !444 ; 2 uses
  store ptr %i.cm, ptr %45, align 8, !tbaa !37, !alias.scope !444
  %i.co = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.ai, ptr %i.co, align 8, !tbaa !38, !alias.scope !444
  %i.cp = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 1, ptr %i.cp, align 8, !tbaa !38, !alias.scope !444
  %i.cq = getelementptr inbounds nuw i8, ptr %45, i64 24
  store ptr %39, ptr %i.cq, align 8, !tbaa !40, !alias.scope !444
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i64 %i.ck, ptr %i.cr, align 8, !tbaa !38, !alias.scope !444
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !38, !alias.scope !444
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 48
  store i64 %i.cn, ptr %i.ct, align 8, !tbaa !43, !alias.scope !444
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr %i.cj, ptr %22, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.ci, ptr %i.cu, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr %i.cm, ptr %23, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.cn, ptr %i.cv, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  store ptr %23, ptr %24, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %22, ptr %i.cw, align 8, !tbaa !438
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %25, ptr %i.cx, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %45, ptr %i.cy, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.k unwind label %bb.r
end_hunk_0
begin_hunk_1_@_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE:bb.a
bb.bm:                                            ; preds = %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit
  %i.dqc = load ptr, ptr %41, align 8, !tbaa !24
  call void @free(ptr noundef %i.dqc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  %i.dqd = load ptr, ptr %40, align 8, !tbaa !33
  call void @free(ptr noundef %i.dqd) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  %i.dqe = load ptr, ptr %39, align 8, !tbaa !33
  call void @free(ptr noundef %i.dqe) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  %i.dqf = load ptr, ptr %38, align 8, !tbaa !24
  call void @free(ptr noundef %i.dqf) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  ret void

bb.bn:                                            ; preds = %bb.bj, %bb.bi, %bb.r, %bb.q, %bb.p, %bb.o, %bb.bl, %bb.bk, %bb.u, %bb.n
  %.pn150 = phi { ptr, i32 } [ %i.fu, %bb.n ], [ %i.fx, %bb.q ], [ %i.fw, %bb.p ], [ %i.fv, %bb.o ], [ %i.dpy, %bb.bj ], [ %i.fy, %bb.r ], [ %i.jk, %bb.u ], [ %i.dqa, %bb.bl ], [ %i.dpz, %bb.bk ], [ %i.dpx, %bb.bi ]
  %i.dqg = load ptr, ptr %41, align 8, !tbaa !24
  call void @free(ptr noundef %i.dqg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  %i.dqh = load ptr, ptr %40, align 8, !tbaa !33
  call void @free(ptr noundef %i.dqh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  %i.dqi = load ptr, ptr %39, align 8, !tbaa !33
  call void @free(ptr noundef %i.dqi) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.c
  %.pn150.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn150, %bb.bn ], [ %i.ae, %bb.c ]
  %i.dqj = load ptr, ptr %38, align 8, !tbaa !24
  call void @free(ptr noundef %i.dqj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.41", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %2, 3
  %i.b = select i1 %i.a, i32 1, i32 %2
  invoke void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.c

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.41", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %2, 3
  %i.b = select i1 %i.a, i32 1, i32 %2
  invoke void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.c

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10massmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.41", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  switch i64 %i.b, label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit [
    i64 3, label %bb.b
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 3
  %i.d = select i1 %i.c, i32 1, i32 %2
  invoke void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.e

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i: ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit

_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLin1EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit: ; preds = %bb.a, %_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi3EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE.exit.i, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %17 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %21 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %22 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %28 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %29 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %30 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %32 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %33 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %34 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %35 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %36 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %37 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %38 = alloca %"class.Eigen::Matrix.44", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 40 uses
  %40 = alloca %"class.Eigen::Matrix.62", align 8 ; 33 uses
  %41 = alloca %"class.Eigen::Matrix.44", align 8 ; 19 uses
  %42 = alloca %"class.Eigen::Block.76", align 8  ; 10 uses
  %43 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %44 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %45 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %46 = alloca %"class.Eigen::Block.91", align 8  ; 10 uses
  %47 = alloca %"class.Eigen::Block.91", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 37 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %38, align 8, !tbaa !24    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %i.j = sdiv i64 %i.i, 2
  %i.k = shl nsw i64 %i.j, 1                      ; 6 uses
  %i.l = icmp sgt i64 %i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.m = icmp slt i64 %i.k, %i.i
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit1258

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.n = sub i64 %i.i, %i.k                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.n, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !27
  %wide.load1399 = load <2 x double>, ptr %i.r, align 8, !tbaa !27
  %i.s = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.t = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1399)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !27
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !515

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354

.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354 ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !27
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !27
  %i.y = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !516

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !31
  %i.ab = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !31
  %i.ac = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.k
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit1258:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %._crit_edge
    i32 2, label %bb.v
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.d:                                             ; preds = %.loopexit1258, %.loopexit1258
  %i.af = shl nsw i32 %i.f, 2
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %1, align 8, !tbaa !78, !noalias !859
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %sext1226 = shl i64 %i.e, 32
  %i.ai = ashr exact i64 %sext1226, 32            ; 6 uses
  %i.aj = load ptr, ptr %39, align 8, !tbaa !33, !noalias !860 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !860 ; 2 uses
  store ptr %i.aj, ptr %42, align 8, !tbaa !37, !alias.scope !860
  %i.am = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !38, !alias.scope !860
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 1, ptr %i.an, align 8, !tbaa !38, !alias.scope !860
  %i.ao = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %39, ptr %i.ao, align 8, !tbaa !40, !alias.scope !860
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !43, !alias.scope !860
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  store ptr %i.ah, ptr %34, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.as = load i64, ptr %i.d, align 8, !tbaa !77
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %i.aj, ptr %35, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.al, ptr %i.at, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  store ptr %35, ptr %36, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %34, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %37, ptr %i.av, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr %42, ptr %i.aw, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  %i.ax = load ptr, ptr %1, align 8, !tbaa !78, !noalias !861
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !861 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.ba = load ptr, ptr %39, align 8, !tbaa !33, !noalias !862
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ai ; 2 uses
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !862 ; 2 uses
  store ptr %i.bb, ptr %43, align 8, !tbaa !37, !alias.scope !862
  %i.bd = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ai, ptr %i.bd, align 8, !tbaa !38, !alias.scope !862
  %i.be = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 1, ptr %i.be, align 8, !tbaa !38, !alias.scope !862
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %39, ptr %i.bf, align 8, !tbaa !40, !alias.scope !862
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %i.ai, ptr %i.bg, align 8, !tbaa !38, !alias.scope !862
  %i.bh = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !38, !alias.scope !862
  %i.bi = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !43, !alias.scope !862
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store ptr %i.az, ptr %30, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store ptr %i.bb, ptr %31, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store ptr %31, ptr %32, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %30, ptr %i.bl, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %43, ptr %i.bn, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %i.bo = load ptr, ptr %1, align 8, !tbaa !78, !noalias !863
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !863 ; 2 uses
  %.idx1227 = shl nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %.idx1227
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.br = shl nsw i32 %i.f, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.bt = load ptr, ptr %39, align 8, !tbaa !33, !noalias !864
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !864 ; 2 uses
  store ptr %i.bu, ptr %44, align 8, !tbaa !37, !alias.scope !864
  %i.bw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.ai, ptr %i.bw, align 8, !tbaa !38, !alias.scope !864
  %i.bx = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 1, ptr %i.bx, align 8, !tbaa !38, !alias.scope !864
  %i.by = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %39, ptr %i.by, align 8, !tbaa !40, !alias.scope !864
  %i.bz = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !38, !alias.scope !864
  %i.ca = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !38, !alias.scope !864
  %i.cb = getelementptr inbounds nuw i8, ptr %44, i64 48
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !43, !alias.scope !864
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store ptr %i.bq, ptr %26, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %i.bp, ptr %i.cc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  store ptr %i.bu, ptr %27, align 8, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr %27, ptr %28, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %26, ptr %i.ce, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %29, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %44, ptr %i.cg, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.ch = load ptr, ptr %1, align 8, !tbaa !78, !noalias !865
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !865 ; 2 uses
  %.idx1228 = mul nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %.idx1228
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %sext146 = mul i64 %i.e, 12884901888
  %i.ck = ashr exact i64 %sext146, 32             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.cl = load ptr, ptr %39, align 8, !tbaa !33, !noalias !866
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !866 ; 2 uses
  store ptr %i.cm, ptr %45, align 8, !tbaa !37, !alias.scope !866
  %i.co = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.ai, ptr %i.co, align 8, !tbaa !38, !alias.scope !866
  %i.cp = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 1, ptr %i.cp, align 8, !tbaa !38, !alias.scope !866
  %i.cq = getelementptr inbounds nuw i8, ptr %45, i64 24
  store ptr %39, ptr %i.cq, align 8, !tbaa !40, !alias.scope !866
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i64 %i.ck, ptr %i.cr, align 8, !tbaa !38, !alias.scope !866
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !38, !alias.scope !866
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 48
  store i64 %i.cn, ptr %i.ct, align 8, !tbaa !43, !alias.scope !866
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr %i.cj, ptr %22, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.ci, ptr %i.cu, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr %i.cm, ptr %23, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.cn, ptr %i.cv, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  store ptr %23, ptr %24, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %22, ptr %i.cw, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %25, ptr %i.cx, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %45, ptr %i.cy, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.k unwind label %bb.r
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !975, !nonnull !85, !align !86
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !25
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bi, 0
  br i1 %i.bo, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi0ELi0EE3runERSH_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bp = lshr exact i64 %i.d, 3
  %i.bq = and i64 %i.bp, 1
  %i.br = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bg)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bt = shl i64 %i.bg, 3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.dx, %._crit_edge ] ; 5 uses
  %.03550 = phi i64 [ %i.br, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bu = shl i64 %.03451, 3
  %i.bv = sub i64 %i.bg, %.03550                  ; 3 uses
  %i.bw = and i64 %i.bv, -2                       ; 2 uses
  %i.bx = add nsw i64 %i.bw, %.03550              ; 6 uses
  %i.by = icmp sgt i64 %.03550, 0
  br i1 %i.by, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !976, !nonnull !85, !align !86
  %i.ca = load ptr, ptr %0, align 8, !tbaa !977, !nonnull !85, !align !86 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !38
  %i.ce = mul nsw i64 %i.cd, %.03451
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce ; 2 uses
  %i.cg = load double, ptr %i.bz, align 8, !tbaa !66
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ci = fdiv double %i.ch, %i.cg
  store double %i.ci, ptr %i.cf, align 8, !tbaa !27
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.cj = icmp sgt i64 %i.bv, 1
  br i1 %i.cj, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ck = icmp slt i64 %i.bx, %i.bg
  br i1 %i.ck, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.cl = load ptr, ptr %0, align 8, !tbaa !977, !nonnull !85, !align !86 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %.03451
  %i.cq = getelementptr [8 x i8], ptr %i.cm, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.bs, align 8, !tbaa !976, !nonnull !85, !align !86 ; 4 uses
  %i.cs = add i64 %.03550, %i.bw
  %i.ct = sub i64 %i.bg, %i.cs                    ; 3 uses
  %min.iters.check73 = icmp ult i64 %i.ct, 2
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph49
  %i.cu = mul i64 %i.co, %i.bu                    ; 2 uses
  %i.cv = shl i64 %i.bv, 3
  %i.cw = and i64 %i.cv, -16
  %i.cx = shl i64 %.03550, 3
  %i.cy = getelementptr i8, ptr %i.cm, i64 %i.cu
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep65 = getelementptr i8, ptr %i.cz, i64 %i.cx
  %scevgep66 = getelementptr i8, ptr %i.cm, i64 %i.bt
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.cu
  %scevgep68 = getelementptr i8, ptr %i.cr, i64 8
  %bound069 = icmp ult ptr %scevgep65, %scevgep68
  %bound170 = icmp ult ptr %i.cr, %scevgep67
  %found.conflict71 = and i1 %bound069, %bound170
  br i1 %found.conflict71, label %scalar.ph72.preheader, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck64
  %n.vec75 = and i64 %i.ct, -2                    ; 3 uses
  %i.da = add i64 %i.bx, %n.vec75
  %i.db = load double, ptr %i.cr, align 8, !tbaa !66, !alias.scope !978
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = getelementptr [8 x i8], ptr %i.cq, i64 %i.bx
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next81, %vector.body76 ] ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %index77 ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.dd, align 8, !tbaa !27, !alias.scope !979, !noalias !978
  %i.de = fdiv <2 x double> %wide.load78, %broadcast.splat80
  store <2 x double> %i.de, ptr %i.dd, align 8, !tbaa !27, !alias.scope !979, !noalias !978
  %index.next81 = add nuw i64 %index77, 2         ; 2 uses
  %i.df = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.df, label %middle.block82, label %vector.body76, !llvm.loop !967

middle.block82:                                   ; preds = %vector.body76
  %cmp.n83 = icmp eq i64 %i.ct, %n.vec75
  br i1 %cmp.n83, label %._crit_edge, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %vector.memcheck64, %.lr.ph49, %middle.block82
  %.048.ph = phi i64 [ %i.bx, %vector.memcheck64 ], [ %i.bx, %.lr.ph49 ], [ %i.da, %middle.block82 ]
  br label %scalar.ph72

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.dt, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !977, !nonnull !85, !align !86 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dk = mul nsw i64 %i.dj, %.03451
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %.03246 ; 2 uses
  %i.dn = load ptr, ptr %i.bs, align 8, !tbaa !976, !nonnull !85, !align !86
  %i.do = load double, ptr %i.dn, align 8, !tbaa !27
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = load <2 x double>, ptr %i.dm, align 16, !tbaa !31
  %i.ds = fdiv <2 x double> %i.dr, %i.dq
  store <2 x double> %i.ds, ptr %i.dm, align 16, !tbaa !31
  %i.dt = add nsw i64 %.03246, 2                  ; 2 uses
  %i.du = icmp slt i64 %i.dt, %i.bx
  br i1 %i.du, label %.lr.ph47, label %.preheader, !llvm.loop !968

._crit_edge:                                      ; preds = %scalar.ph72, %middle.block82, %.preheader
  %i.dv = add nsw i64 %.03550, %i.bn
  %i.dw = srem i64 %i.dv, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.dw)
  %i.dx = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.dx, %i.bi
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi0ELi0EE3runERSH_.exit, label %bb.c, !llvm.loop !969

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.048 = phi i64 [ %i.ec, %scalar.ph72 ], [ %.048.ph, %scalar.ph72.preheader ] ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.cq, i64 %.048 ; 2 uses
  %i.dz = load double, ptr %i.cr, align 8, !tbaa !66
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !27
  %i.eb = fdiv double %i.ea, %i.dz
  store double %i.eb, ptr %i.dy, align 8, !tbaa !27
  %i.ec = add nsw i64 %.048, 1                    ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.bg
  br i1 %i.ed, label %scalar.ph72, label %._crit_edge, !llvm.loop !970

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi0ELi0EE3runERSH_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %17 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %21 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %22 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %28 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %29 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %30 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %32 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %33 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %34 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %35 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %36 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %37 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %38 = alloca %"class.Eigen::Matrix.44", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 40 uses
  %40 = alloca %"class.Eigen::Matrix.62", align 8 ; 33 uses
  %41 = alloca %"class.Eigen::Matrix.44", align 8 ; 19 uses
  %42 = alloca %"class.Eigen::Block.76", align 8  ; 10 uses
  %43 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %44 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %45 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %46 = alloca %"class.Eigen::Block.91", align 8  ; 10 uses
  %47 = alloca %"class.Eigen::Block.91", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1325 ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 37 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %38, align 8, !tbaa !24    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %i.j = sdiv i64 %i.i, 2
  %i.k = shl nsw i64 %i.j, 1                      ; 6 uses
  %i.l = icmp sgt i64 %i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.m = icmp slt i64 %i.k, %i.i
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit1258

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.n = sub i64 %i.i, %i.k                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.n, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !27
  %wide.load1399 = load <2 x double>, ptr %i.r, align 8, !tbaa !27
  %i.s = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.t = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1399)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !27
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354

.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354 ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !27
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !27
  %i.y = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !981

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !31
  %i.ab = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !31
  %i.ac = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.k
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit1258:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %._crit_edge
    i32 2, label %bb.v
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.d:                                             ; preds = %.loopexit1258, %.loopexit1258
  %i.af = shl nsw i32 %i.f, 2
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1326
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %sext1226 = shl i64 %i.e, 32
  %i.ai = ashr exact i64 %sext1226, 32            ; 6 uses
  %i.aj = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1327 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1327 ; 2 uses
  store ptr %i.aj, ptr %42, align 8, !tbaa !37, !alias.scope !1327
  %i.am = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !38, !alias.scope !1327
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 1, ptr %i.an, align 8, !tbaa !38, !alias.scope !1327
  %i.ao = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %39, ptr %i.ao, align 8, !tbaa !40, !alias.scope !1327
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !43, !alias.scope !1327
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  store ptr %i.ah, ptr %34, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.as = load i64, ptr %i.d, align 8, !tbaa !77
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %i.aj, ptr %35, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.al, ptr %i.at, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  store ptr %35, ptr %36, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %34, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %37, ptr %i.av, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr %42, ptr %i.aw, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  %i.ax = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1328
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1328 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.ba = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1329
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ai ; 2 uses
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1329 ; 2 uses
  store ptr %i.bb, ptr %43, align 8, !tbaa !37, !alias.scope !1329
  %i.bd = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ai, ptr %i.bd, align 8, !tbaa !38, !alias.scope !1329
  %i.be = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 1, ptr %i.be, align 8, !tbaa !38, !alias.scope !1329
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %39, ptr %i.bf, align 8, !tbaa !40, !alias.scope !1329
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %i.ai, ptr %i.bg, align 8, !tbaa !38, !alias.scope !1329
  %i.bh = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !38, !alias.scope !1329
  %i.bi = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !43, !alias.scope !1329
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store ptr %i.az, ptr %30, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store ptr %i.bb, ptr %31, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store ptr %31, ptr %32, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %30, ptr %i.bl, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %43, ptr %i.bn, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %i.bo = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1330
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1330 ; 2 uses
  %.idx1227 = shl nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %.idx1227
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.br = shl nsw i32 %i.f, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.bt = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1331
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1331 ; 2 uses
  store ptr %i.bu, ptr %44, align 8, !tbaa !37, !alias.scope !1331
  %i.bw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.ai, ptr %i.bw, align 8, !tbaa !38, !alias.scope !1331
  %i.bx = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 1, ptr %i.bx, align 8, !tbaa !38, !alias.scope !1331
  %i.by = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %39, ptr %i.by, align 8, !tbaa !40, !alias.scope !1331
  %i.bz = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !38, !alias.scope !1331
  %i.ca = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !38, !alias.scope !1331
  %i.cb = getelementptr inbounds nuw i8, ptr %44, i64 48
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !43, !alias.scope !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store ptr %i.bq, ptr %26, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %i.bp, ptr %i.cc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  store ptr %i.bu, ptr %27, align 8, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr %27, ptr %28, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %26, ptr %i.ce, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %29, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %44, ptr %i.cg, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.ch = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1332
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1332 ; 2 uses
  %.idx1228 = mul nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %.idx1228
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %sext146 = mul i64 %i.e, 12884901888
  %i.ck = ashr exact i64 %sext146, 32             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.cl = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1333
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1333 ; 2 uses
  store ptr %i.cm, ptr %45, align 8, !tbaa !37, !alias.scope !1333
  %i.co = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.ai, ptr %i.co, align 8, !tbaa !38, !alias.scope !1333
  %i.cp = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 1, ptr %i.cp, align 8, !tbaa !38, !alias.scope !1333
  %i.cq = getelementptr inbounds nuw i8, ptr %45, i64 24
  store ptr %39, ptr %i.cq, align 8, !tbaa !40, !alias.scope !1333
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i64 %i.ck, ptr %i.cr, align 8, !tbaa !38, !alias.scope !1333
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !38, !alias.scope !1333
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 48
  store i64 %i.cn, ptr %i.ct, align 8, !tbaa !43, !alias.scope !1333
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr %i.cj, ptr %22, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.ci, ptr %i.cu, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr %i.cm, ptr %23, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.cn, ptr %i.cv, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  store ptr %23, ptr %24, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %22, ptr %i.cw, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %25, ptr %i.cx, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %45, ptr %i.cy, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.k unwind label %bb.r
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_:bb.a
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph82.preheader ], [ %i.di, %scalar.ph82.prol ]
  %i.dj = sub nsw i64 %.03345.ph, %.03550
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %.preheader43, label %scalar.ph82

.preheader43:                                     ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block91, %bb.c
  %i.dl = icmp sgt i64 %i.cd, 3
  br i1 %i.dl, label %.lr.ph47, label %.preheader

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.03345 = phi i64 [ %i.eb, %scalar.ph82 ], [ %.03345.unr, %scalar.ph82.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cm, i64 %.03345
  %i.dn = getelementptr [4 x i8], ptr %i.cs, i64 %.03345
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !56
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !56
  %i.dp = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.cs, i64 %i.dp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !56
  %i.dt = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.cm, i64 %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cs, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !56
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !56
  %i.dx = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.cm, i64 %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.cs, i64 %i.dx
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !56
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !56
  %i.eb = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %.03550
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph82, !llvm.loop !1413

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ec = icmp slt i64 %i.cf, %i.bm
  br i1 %i.ec, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %0, align 8, !tbaa !1422, !nonnull !85, !align !86 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !38 ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %.03451
  %i.ei = getelementptr [4 x i8], ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !1423, !nonnull !85, !align !86 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !38 ; 2 uses
  %i.en = mul nsw i64 %i.em, %.03451
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = add i64 %.03550, %i.ce
  %i.eq = sub i64 %i.bm, %i.ep                    ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.eq, 12
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph49
  %i.er = ptrtoaddr ptr %i.ek to i64
  %i.es = ptrtoaddr ptr %i.ee to i64
  %i.et = mul i64 %i.eg, %i.cc
  %i.eu = add i64 %i.et, %i.es
  %i.ev = mul i64 %i.em, %i.cc
  %i.ew = add i64 %i.ev, %i.er
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -32
  br i1 %diff.check, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck67
  %n.vec71 = and i64 %i.eq, -8                    ; 3 uses
  %i.ey = add i64 %i.cf, %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body72 ] ; 2 uses
  %i.ez = add i64 %i.cf, %index73                 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.ei, i64 %i.ez ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load74 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !56
  %wide.load75 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !56
  %i.fd = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load74, ptr %i.fa, align 4, !tbaa !56
  store <4 x i32> %wide.load75, ptr %i.fd, align 4, !tbaa !56
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.fe, label %middle.block77, label %vector.body72, !llvm.loop !1414

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.eq, %n.vec71
  br i1 %cmp.n78, label %._crit_edge, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck67, %.lr.ph49, %middle.block77
  %.048.ph = phi i64 [ %i.cf, %vector.memcheck67 ], [ %i.cf, %.lr.ph49 ], [ %i.ey, %middle.block77 ]
  br label %scalar.ph68

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fu, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !1422, !nonnull !85, !align !86 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !38
  %i.fj = mul nsw i64 %i.fi, %.03451
  %i.fk = getelementptr [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.03246
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !1423, !nonnull !85, !align !86 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !46
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %.03246
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !38
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !31
  store <2 x i64> %i.ft, ptr %i.fl, align 16, !tbaa !31
  %i.fu = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.cf
  br i1 %i.fv, label %.lr.ph47, label %.preheader, !llvm.loop !1415

._crit_edge:                                      ; preds = %scalar.ph68, %middle.block77, %.preheader
  %i.fw = add nsw i64 %.03550, %i.bu
  %i.fx = srem i64 %i.fw, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.fy, %i.bo
  br i1 %exitcond55.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSF_.exit, label %bb.c, !llvm.loop !1416

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %.048 = phi i64 [ %i.gc, %scalar.ph68 ], [ %.048.ph, %scalar.ph68.preheader ] ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.ei, i64 %.048
  %i.ga = getelementptr [4 x i8], ptr %i.eo, i64 %.048
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !56
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !56
  %i.gc = add nsw i64 %.048, 1                    ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.bm
  br i1 %i.gd, label %scalar.ph68, label %._crit_edge, !llvm.loop !1417

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSF_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl16MassMatrixHelperIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdLi4EE7computeERKNS1_10MatrixBaseIS3_EERKNS6_IS4_EENS_14MassMatrixTypeERNS1_12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.170", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.174", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.179", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %17 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %21 = alloca %"class.Eigen::Block.76", align 8  ; 9 uses
  %22 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %28 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %29 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %30 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %32 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %33 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %34 = alloca %"struct.Eigen::internal::evaluator.114", align 8 ; 5 uses
  %35 = alloca %"struct.Eigen::internal::evaluator.117", align 8 ; 5 uses
  %36 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.122", align 8 ; 7 uses
  %37 = alloca %"struct.Eigen::internal::assign_op.112", align 1 ; 3 uses
  %38 = alloca %"class.Eigen::Matrix.44", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 40 uses
  %40 = alloca %"class.Eigen::Matrix.62", align 8 ; 33 uses
  %41 = alloca %"class.Eigen::Matrix.44", align 8 ; 19 uses
  %42 = alloca %"class.Eigen::Block.76", align 8  ; 10 uses
  %43 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %44 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %45 = alloca %"class.Eigen::Block.76", align 8  ; 11 uses
  %46 = alloca %"class.Eigen::Block.91", align 8  ; 10 uses
  %47 = alloca %"class.Eigen::Block.91", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1769 ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 37 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %38, align 8, !tbaa !24    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %i.j = sdiv i64 %i.i, 2
  %i.k = shl nsw i64 %i.j, 1                      ; 6 uses
  %i.l = icmp sgt i64 %i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.m = icmp slt i64 %i.k, %i.i
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit1258

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.n = sub i64 %i.i, %i.k                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.n, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !27
  %wide.load1399 = load <2 x double>, ptr %i.r, align 8, !tbaa !27
  %i.s = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.t = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1399)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !27
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354

.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2354 ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !27
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !27
  %i.y = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit1258, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1425

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !31
  %i.ab = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !31
  %i.ac = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.k
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit1258:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %._crit_edge
    i32 2, label %bb.v
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.d:                                             ; preds = %.loopexit1258, %.loopexit1258
  %i.af = shl nsw i32 %i.f, 2
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.ag, i64 noundef 1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1770
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %sext1226 = shl i64 %i.e, 32
  %i.ai = ashr exact i64 %sext1226, 32            ; 6 uses
  %i.aj = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1771 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1771 ; 2 uses
  store ptr %i.aj, ptr %42, align 8, !tbaa !37, !alias.scope !1771
  %i.am = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !38, !alias.scope !1771
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 1, ptr %i.an, align 8, !tbaa !38, !alias.scope !1771
  %i.ao = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %39, ptr %i.ao, align 8, !tbaa !40, !alias.scope !1771
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !43, !alias.scope !1771
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  store ptr %i.ah, ptr %34, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.as = load i64, ptr %i.d, align 8, !tbaa !77
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %i.aj, ptr %35, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.al, ptr %i.at, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  store ptr %35, ptr %36, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %34, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %37, ptr %i.av, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr %42, ptr %i.aw, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  %i.ax = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1772
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1772 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.ba = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1773
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ai ; 2 uses
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1773 ; 2 uses
  store ptr %i.bb, ptr %43, align 8, !tbaa !37, !alias.scope !1773
  %i.bd = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ai, ptr %i.bd, align 8, !tbaa !38, !alias.scope !1773
  %i.be = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 1, ptr %i.be, align 8, !tbaa !38, !alias.scope !1773
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %39, ptr %i.bf, align 8, !tbaa !40, !alias.scope !1773
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %i.ai, ptr %i.bg, align 8, !tbaa !38, !alias.scope !1773
  %i.bh = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !38, !alias.scope !1773
  %i.bi = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !43, !alias.scope !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store ptr %i.az, ptr %30, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store ptr %i.bb, ptr %31, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store ptr %31, ptr %32, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %30, ptr %i.bl, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %43, ptr %i.bn, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %i.bo = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1774
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1774 ; 2 uses
  %.idx1227 = shl nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %.idx1227
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.br = shl nsw i32 %i.f, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %i.bt = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1775
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1775 ; 2 uses
  store ptr %i.bu, ptr %44, align 8, !tbaa !37, !alias.scope !1775
  %i.bw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.ai, ptr %i.bw, align 8, !tbaa !38, !alias.scope !1775
  %i.bx = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 1, ptr %i.bx, align 8, !tbaa !38, !alias.scope !1775
  %i.by = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %39, ptr %i.by, align 8, !tbaa !40, !alias.scope !1775
  %i.bz = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !38, !alias.scope !1775
  %i.ca = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !38, !alias.scope !1775
  %i.cb = getelementptr inbounds nuw i8, ptr %44, i64 48
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !43, !alias.scope !1775
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store ptr %i.bq, ptr %26, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %i.bp, ptr %i.cc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  store ptr %i.bu, ptr %27, align 8, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr %27, ptr %28, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %26, ptr %i.ce, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %29, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %44, ptr %i.cg, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.ch = load ptr, ptr %1, align 8, !tbaa !78, !noalias !1776
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1776 ; 2 uses
  %.idx1228 = mul nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %.idx1228
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %sext146 = mul i64 %i.e, 12884901888
  %i.ck = ashr exact i64 %sext146, 32             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.cl = load ptr, ptr %39, align 8, !tbaa !33, !noalias !1777
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !34, !noalias !1777 ; 2 uses
  store ptr %i.cm, ptr %45, align 8, !tbaa !37, !alias.scope !1777
  %i.co = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.ai, ptr %i.co, align 8, !tbaa !38, !alias.scope !1777
  %i.cp = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 1, ptr %i.cp, align 8, !tbaa !38, !alias.scope !1777
  %i.cq = getelementptr inbounds nuw i8, ptr %45, i64 24
  store ptr %39, ptr %i.cq, align 8, !tbaa !40, !alias.scope !1777
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i64 %i.ck, ptr %i.cr, align 8, !tbaa !38, !alias.scope !1777
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !38, !alias.scope !1777
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 48
  store i64 %i.cn, ptr %i.ct, align 8, !tbaa !43, !alias.scope !1777
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr %i.cj, ptr %22, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.ci, ptr %i.cu, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr %i.cm, ptr %23, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 %i.cn, ptr %i.cv, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  store ptr %23, ptr %24, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %22, ptr %i.cw, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %25, ptr %i.cx, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %45, ptr %i.cy, align 8, !tbaa !55
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.k unwind label %bb.r
end_hunk_3
