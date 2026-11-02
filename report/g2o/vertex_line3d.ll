Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_line3d?download=true
inline.NumInlined: 5025
inline.NumDeleted: 2785
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix.11" = type { %"class.Eigen::PlainObjectBase.12" }
%"class.Eigen::PlainObjectBase.12" = type { %"class.Eigen::DenseStorage.19" }
%"class.Eigen::DenseStorage.19" = type { %"struct.Eigen::internal::plain_array.20" }
%"struct.Eigen::internal::plain_array.20" = type { [6 x double] }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [4 x double] }
%"class.Eigen::LLT" = type { %"class.Eigen::Matrix.401", double, i8, i32 }
%"class.Eigen::Matrix.401" = type { %"class.Eigen::PlainObjectBase.402" }
%"class.Eigen::PlainObjectBase.402" = type { %"class.Eigen::DenseStorage.409" }
%"class.Eigen::DenseStorage.409" = type { %"struct.Eigen::internal::plain_array.410" }
%"struct.Eigen::internal::plain_array.410" = type { [16 x double] }
%"struct.Eigen::internal::evaluator.652" = type { %"struct.Eigen::internal::product_evaluator.653" }
%"struct.Eigen::internal::product_evaluator.653" = type { %"class.Eigen::Block.564", %"class.Eigen::Transpose.616", %"struct.Eigen::internal::evaluator.656", %"struct.Eigen::internal::evaluator.664", i64 }
%"class.Eigen::Block.564" = type { %"class.Eigen::BlockImpl.565" }
%"class.Eigen::BlockImpl.565" = type { %"class.Eigen::internal::BlockImpl_dense.566" }
%"class.Eigen::internal::BlockImpl_dense.566" = type { %"class.Eigen::MapBase.567", ptr, %"class.Eigen::internal::variable_if_dynamic.103", %"class.Eigen::internal::variable_if_dynamic.103", i64 }
%"class.Eigen::MapBase.567" = type { %"class.Eigen::MapBase.568" }
%"class.Eigen::MapBase.568" = type { ptr, %"class.Eigen::internal::variable_if_dynamic.103", %"class.Eigen::internal::variable_if_dynamic.103" }
%"class.Eigen::internal::variable_if_dynamic.103" = type { i64 }
%"class.Eigen::Transpose.616" = type { %"class.Eigen::Block.598" }
%"class.Eigen::Block.598" = type { %"class.Eigen::BlockImpl.599" }
%"class.Eigen::BlockImpl.599" = type { %"class.Eigen::internal::BlockImpl_dense.600" }
%"class.Eigen::internal::BlockImpl_dense.600" = type { %"class.Eigen::MapBase.601", ptr, %"class.Eigen::internal::variable_if_dynamic.103", %"class.Eigen::internal::variable_if_dynamic.103", i64 }
%"class.Eigen::MapBase.601" = type { %"class.Eigen::MapBase.602" }
%"class.Eigen::MapBase.602" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic.103" }
%"struct.Eigen::internal::evaluator.656" = type { %"struct.Eigen::internal::block_evaluator.base.662", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.662" = type { %"struct.Eigen::internal::mapbase_evaluator.base.661" }
%"struct.Eigen::internal::mapbase_evaluator.base.661" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.664" = type { %"struct.Eigen::internal::unary_evaluator.665" }
%"struct.Eigen::internal::unary_evaluator.665" = type { %"struct.Eigen::internal::evaluator.635" }
%"struct.Eigen::internal::evaluator.635" = type { %"struct.Eigen::internal::evaluator.base.643", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.643" = type { %"struct.Eigen::internal::block_evaluator.base.642" }
%"struct.Eigen::internal::block_evaluator.base.642" = type { %"struct.Eigen::internal::mapbase_evaluator.base.641" }
%"struct.Eigen::internal::mapbase_evaluator.base.641" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.668" = type { %"struct.Eigen::internal::block_evaluator.base.674", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.674" = type { %"struct.Eigen::internal::mapbase_evaluator.base.673" }
%"struct.Eigen::internal::mapbase_evaluator.base.673" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.676" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::sub_assign_op" = type { i8 }
%"class.Eigen::Block.585" = type { %"class.Eigen::BlockImpl.586" }
%"class.Eigen::BlockImpl.586" = type { %"class.Eigen::internal::BlockImpl_dense.587" }
%"class.Eigen::internal::BlockImpl_dense.587" = type { %"class.Eigen::MapBase.base.597", ptr, %"class.Eigen::internal::variable_if_dynamic.103", %"class.Eigen::internal::variable_if_dynamic.103", i64 }
%"class.Eigen::MapBase.base.597" = type { %"class.Eigen::MapBase.base.596" }
%"class.Eigen::MapBase.base.596" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic.103", i8 }>

$_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE = comdat any

$_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev = comdat any

$_ZN3g2o12VertexLine3DD0Ev = comdat any

$_ZNK3g2o10HyperGraph6Vertex11elementTypeEv = comdat any

$_ZN3g2o16OptimizableGraph6Vertex5setIdEi = comdat any

$_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii = comdat any

$_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd = comdat any

$_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd = comdat any

$_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd = comdat any

$_ZNK3g2o12VertexLine3D15getEstimateDataEPd = comdat any

$_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE = comdat any

$_ZNK3g2o12VertexLine3D17estimateDimensionEv = comdat any

$_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE4pushEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE3popEv = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEE10discardTopEv = comdat any

$_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE9stackSizeEv = comdat any

$_ZN3g2o12VertexLine3D9oplusImplEPKd = comdat any

$_ZN3g2o12VertexLine3D15setToOriginImplEv = comdat any

$_ZN3g2o12VertexLine3D19setEstimateDataImplEPKd = comdat any

$_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd = comdat any

$_ZThn64_N3g2o12VertexLine3DD1Ev = comdat any

$_ZThn64_N3g2o12VertexLine3DD0Ev = comdat any

$_ZN3g2o10BaseVertexILi4ENS_6Line3DEED0Ev = comdat any

$_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd = comdat any

$_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED1Ev = comdat any

$_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED0Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZN3g2o6Line3D5oplusERKN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEE = comdat any

$_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_ = comdat any

$_ZTIN3g2o10BaseVertexILi4ENS_6Line3DEEE = comdat any

$_ZTSN3g2o10BaseVertexILi4ENS_6Line3DEEE = comdat any

$_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE = comdat any

@_ZTVN3g2o12VertexLine3DE = constant { [34 x ptr], [4 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN3g2o12VertexLine3DE, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev, ptr @_ZN3g2o12VertexLine3DD0Ev, ptr @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv, ptr @_ZN3g2o16OptimizableGraph6Vertex5setIdEi, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd, ptr @_ZNK3g2o12VertexLine3D15getEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o12VertexLine3D17estimateDimensionEv, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE4pushEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE3popEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE10discardTopEv, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE9stackSizeEv, ptr @_ZN3g2o12VertexLine3D4readERSi, ptr @_ZNK3g2o12VertexLine3D5writeERSo, ptr @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv, ptr @_ZN3g2o12VertexLine3D9oplusImplEPKd, ptr @_ZN3g2o12VertexLine3D15setToOriginImplEv, ptr @_ZN3g2o12VertexLine3D19setEstimateDataImplEPKd, ptr @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd], [4 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr @_ZTIN3g2o12VertexLine3DE, ptr @_ZThn64_N3g2o12VertexLine3DD1Ev, ptr @_ZThn64_N3g2o12VertexLine3DD0Ev] }, align 8
@_ZTIN3g2o12VertexLine3DE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o12VertexLine3DE, ptr @_ZTIN3g2o10BaseVertexILi4ENS_6Line3DEEE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3g2o12VertexLine3DE = constant [21 x i8] c"N3g2o12VertexLine3DE\00", align 1
@_ZTIN3g2o10BaseVertexILi4ENS_6Line3DEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o10BaseVertexILi4ENS_6Line3DEEE, ptr @_ZTIN3g2o16OptimizableGraph6VertexE }, comdat, align 8
@_ZTSN3g2o10BaseVertexILi4ENS_6Line3DEEE = linkonce_odr constant [36 x i8] c"N3g2o10BaseVertexILi4ENS_6Line3DEEE\00", comdat, align 1
@_ZTIN3g2o16OptimizableGraph6VertexE = external constant ptr
@_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE = linkonce_odr constant { [34 x ptr], [4 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN3g2o10BaseVertexILi4ENS_6Line3DEEE, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED0Ev, ptr @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv, ptr @_ZN3g2o16OptimizableGraph6Vertex5setIdEi, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE4pushEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE3popEv, ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE10discardTopEv, ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE9stackSizeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd, ptr @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd], [4 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr @_ZTIN3g2o10BaseVertexILi4ENS_6Line3DEEE, ptr @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED1Ev, ptr @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o12VertexLine3DC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o12VertexLine3DC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o12VertexLine3DC2Ev(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 16 dereferenceable(248) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.b, align 16, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store i32 4, ptr %i.f, align 8, !tbaa !95
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o12VertexLine3DE, i64 16), ptr %0, align 16, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o12VertexLine3DE, i64 288), ptr %i.a, align 16, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o12VertexLine3D4readERSi(ptr noundef nonnull align 16 dereferenceable(272) initializes((176, 224)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.11", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = call noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 16, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.b, ptr %i.g, align 16, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> %i.d, ptr %i.h, align 16, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %i.f, ptr %i.i, align 16, !tbaa !30
  %i.j = load ptr, ptr %0, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 16 dereferenceable(248) %0), !inline_history !96
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ %.pre14, %bb.g ], [ %i.bc, %bb.f ], [ %i.at, %bb.e ], [ %i.ak, %bb.d ], [ %i.ab, %bb.c ], [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = and i32 %i.h, 2
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !29
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !29
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !29
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !29
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !29
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert12 = getelementptr inbounds i8, ptr %0, i64 %.pre11
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12, i64 32
  %.pre14 = load i32, ptr %.phi.trans.insert13, align 8, !tbaa !39
  br label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o12VertexLine3D5writeERSo(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !14
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !14
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !14
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.ad = icmp eq i32 %i.ac, 0
  ret i1 %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev(ptr noundef nonnull align 16 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %0, align 16, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %i.a, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEED2Ev.exit

_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o12VertexLine3DD0Ev(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %0, align 16, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %i.a, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit

_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(272) %0) #19, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph6Vertex5setIdEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 5
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 5
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12  ; 16 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 32
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !14
  %i.j = fneg double %i.i                         ; 3 uses
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.f, double %i.k) ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 3 uses
  %i.o = getelementptr i8, ptr %i.b, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.q = fmul double %i.p, %i.j
  %i.r = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.n, double %i.q) ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 56
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 3 uses
  %i.w = fmul double %i.v, %i.j
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.t, double %i.w) ; 2 uses
  %i.y = fneg double %i.f                         ; 2 uses
  %i.z = fmul double %i.p, %i.y
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.n, double %i.z) ; 2 uses
  %i.ab = fmul double %i.v, %i.y
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.t, double %i.ab) ; 2 uses
  %i.ad = fneg double %i.n
  %i.ae = fmul double %i.v, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.t, double %i.ae) ; 2 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 64
  %i.ah = getelementptr i8, ptr %i.b, i64 72
  %i.ai = getelementptr i8, ptr %i.b, i64 80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 88
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.am = fmul double %i.aa, %i.al
  %i.an = fmul double %i.aj, %i.ac
  %i.ao = fsub double %i.am, %i.an
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aq = fmul double %i.af, %i.ap
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fmul double %i.r, %i.al
  %i.at = fmul double %i.aj, %i.x
  %i.au = fsub double %i.as, %i.at
  %i.av = load double, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %i.aw = fmul double %i.af, %i.av
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fmul double %i.l, %i.al
  %i.az = fmul double %i.x, %i.ap
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = fmul double %i.ac, %i.av
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.l, %i.aj
  %i.be = fmul double %i.r, %i.ap
  %i.bf = fsub double %i.bd, %i.be
  %i.bg = fmul double %i.aa, %i.av
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = getelementptr i8, ptr %i.b, i64 96
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14
  %i.bk = getelementptr i8, ptr %i.b, i64 104
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = fmul double %i.bl, %i.ax
  %i.bn = fmul double %i.bj, %i.ar
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = getelementptr i8, ptr %i.b, i64 112
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = getelementptr i8, ptr %i.b, i64 120
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14
  %i.bt = fmul double %i.bh, %i.bs
  %i.bu = fmul double %i.bc, %i.bq
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = fadd double %i.bo, %i.bv
  ret double %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(248) %0, double noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %3 = alloca %"class.Eigen::LLT", align 16       ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 9 uses
  %i.b = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.e = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %.sroa.09.0.copyload, i64 80
  %i.j = getelementptr i8, ptr %.sroa.09.0.copyload, i64 96
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %.sroa.09.0.copyload, i64 112
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %.sroa.09.0.copyload, i64 120
  %i.o = load double, ptr %i.n, align 8, !tbaa !14
  %i.p = fadd double %1, %i.o                     ; 3 uses
  %i.q = fmul double %1, 0.000000e+00
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.s, <double 1.000000e+00, double 0.000000e+00> ; 4 uses
  %i.u = load <2 x double>, ptr %.sroa.09.0.copyload, align 8, !tbaa !14
  %i.v = fadd <2 x double> %i.t, %i.u             ; 7 uses
  %i.w = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.x = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.y = fadd <2 x double> %i.x, %i.c             ; 8 uses
  %i.z = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.aa = fadd <2 x double> %i.w, %i.z            ; 3 uses
  %i.ab = fadd <2 x double> %i.x, %i.f            ; 6 uses
  %i.ac = fadd <2 x double> %i.x, %i.h            ; 4 uses
  %i.ad = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  %i.ae = fadd <2 x double> %i.t, %i.ad           ; 6 uses
  %i.af = fadd <2 x double> %i.x, %i.k            ; 3 uses
  %i.ag = fadd double %i.q, %i.m                  ; 2 uses
  %i.ah = fneg <2 x double> %i.aa                 ; 3 uses
  %i.ai = shufflevector <2 x double> %i.v, <2 x double> %i.y, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.aj = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = fmul <2 x double> %i.y, %i.aj
  %i.am = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.an = fneg <2 x double> %i.am                 ; 2 uses
  %i.ao = fmul <2 x double> %i.ai, %i.ah
  %i.ap = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.am, <2 x double> %i.ak)
  %i.ar = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ah
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ab, <2 x double> %i.al)
  %i.au = fmul <2 x double> %i.y, %i.an
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.am, <2 x double> %i.ao)
  %i.aw = fmul <2 x double> %i.ar, %i.an
  %i.ax = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.ax, <2 x double> %i.as)
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ab, <2 x double> %i.au)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ax, <2 x double> %i.aw)
  %i.bb = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.av, %i.bb
  %i.bd = shufflevector <2 x double> %i.ac, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.be = fmul <2 x double> %i.ay, %i.bd
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = fmul <2 x double> %i.ba, %i.ac
  %i.bh = fadd <2 x double> %i.bg, %i.bf
  %i.bi = fmul <2 x double> %i.aq, %i.ae
  %i.bj = fmul <2 x double> %i.at, %i.bd
  %i.bk = fsub <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.az, %i.bl
  %i.bn = fadd <2 x double> %i.bm, %i.bk
  %i.bo = insertelement <2 x double> %i.af, double %i.p, i64 0
  %i.bp = fmul <2 x double> %i.bo, %i.bn
  %i.bq = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x double> %i.bq, double %i.ag, i64 0
  %i.bs = fmul <2 x double> %i.br, %i.bh
  %i.bt = fsub <2 x double> %i.bp, %i.bs          ; 2 uses
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.bt
  %i.bu = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bv = fcmp uno double %i.bu, 0.000000e+00
  %i.bw = fcmp olt double %i.bu, f0x3CB0000000000000
  %or.cond = or i1 %i.bv, %i.bw
  br i1 %or.cond, label %bb.d, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i: ; preds = %bb.a
  %.sroa.38.112.vec.insert = insertelement <2 x double> poison, double %i.ag, i64 0
  %.sroa.38.120.vec.insert = insertelement <2 x double> %.sroa.38.112.vec.insert, double %i.p, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store <2 x double> %i.v, ptr %3, align 16, !tbaa !30, !alias.scope !101
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %i.y, ptr %i.bx, align 16, !tbaa !30, !alias.scope !101
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> %i.aa, ptr %i.by, align 16, !tbaa !30, !alias.scope !101
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store <2 x double> %i.ab, ptr %i.bz, align 16, !tbaa !30, !alias.scope !101
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x double> %i.ac, ptr %i.ca, align 16, !tbaa !30, !alias.scope !101
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store <2 x double> %i.ae, ptr %i.cb, align 16, !tbaa !30, !alias.scope !101
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x double> %i.af, ptr %i.cc, align 16, !tbaa !30, !alias.scope !101
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x double> %.sroa.38.120.vec.insert, ptr %i.cd, align 16, !tbaa !30, !alias.scope !101
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.cf = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v)
  %i.cg = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.y)
  %i.ch = fadd <2 x double> %i.cf, %i.cg          ; 2 uses
  %shift38 = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop39 = fadd <2 x double> %i.ch, %shift38
  %i.ci = extractelement <2 x double> %foldExtExtBinop39, i64 0 ; 2 uses
  %i.cj = fcmp ogt double %i.ci, 0.000000e+00
  %i.ck = select i1 %i.cj, double %i.ci, double 0.000000e+00 ; 3 uses
  store double %i.ck, ptr %i.ce, align 16, !tbaa !108, !alias.scope !101
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !alias.scope !101 ; 2 uses
  %i.cn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cm) ; 2 uses
  %shift41 = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop42 = fadd <2 x double> %i.cn, %shift41
  %i.co = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.cp = extractelement <2 x double> %i.v, i64 1
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = extractelement <2 x double> %i.cm, i64 1
  %i.cs = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ae) ; 2 uses
  %shift44 = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop45 = fadd <2 x double> %i.cs, %shift44
  %i.ct = extractelement <2 x double> %foldExtExtBinop45, i64 0
  %i.cu = extractelement <2 x double> %i.y, i64 0
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.cx = fadd double %i.cv, %i.cw
  %i.cy = fadd double %i.ct, %i.cx                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.da = shufflevector <2 x double> %i.y, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.db = shufflevector <2 x double> %i.da, <2 x double> %i.ae, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.dc = insertelement <4 x double> %i.db, double %i.p, i64 3
  %i.dd = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.dc) ; 4 uses
  %i.de = extractelement <4 x double> %i.dd, i64 1 ; 2 uses
  %i.df = fadd double %i.de, %i.co
  %i.dg = fadd double %i.cq, %i.df                ; 2 uses
  %i.dh = fcmp ogt double %i.dg, %i.ck            ; 2 uses
  %i.di = select i1 %i.dh, double %i.dg, double %i.ck ; 2 uses
  %i.dj = fcmp ogt double %i.cy, %i.di            ; 2 uses
  %i.dk = select i1 %i.dj, double %i.cy, double %i.di ; 2 uses
  %i.dl = or i1 %i.dh, %i.dj
  %i.dm = extractelement <4 x double> %i.dd, i64 0
  %i.dn = fadd double %i.dm, %i.de
  %i.do = extractelement <4 x double> %i.dd, i64 2
  %i.dp = fadd double %i.dn, %i.do
  %i.dq = extractelement <4 x double> %i.dd, i64 3
  %i.dr = fadd double %i.dp, %i.dq                ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.dk            ; 2 uses
  %i.dt = or i1 %i.dl, %i.ds
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i
  %spec.select = select i1 %i.ds, double %i.dr, double %i.dk
  store double %spec.select, ptr %i.ce, align 16, !tbaa !108, !alias.scope !101
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i, %bb.b
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i8 1, ptr %i.du, align 8, !tbaa !109, !alias.scope !101
  %i.dv = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(144) %3)
  %i.dw = icmp ne i64 %i.dv, -1
  %i.dx = zext i1 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !110, !alias.scope !101
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !30 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ed = load <2 x double>, ptr %i.ec, align 16, !tbaa !30 ; 2 uses
  %i.ee = load double, ptr %3, align 16, !tbaa !14 ; 2 uses
  %i.ef = extractelement <2 x double> %i.ea, i64 0
  %i.eg = fdiv double %i.ef, %i.ee                ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14
  %i.ej = fmul double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.el = extractelement <2 x double> %i.ea, i64 1
  %i.em = fsub double %i.el, %i.ej
  %i.en = load double, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.eo = fdiv double %i.em, %i.en                ; 3 uses
  %i.ep = load double, ptr %i.bx, align 16, !tbaa !14
  %i.eq = fmul double %i.eg, %i.ep
  %i.er = load double, ptr %i.bz, align 16, !tbaa !14
  %i.es = fmul double %i.eo, %i.er
  %i.et = fadd double %i.eq, %i.es
  %i.eu = extractelement <2 x double> %i.ed, i64 0
  %i.ev = fsub double %i.eu, %i.et
  %i.ew = load double, ptr %i.cb, align 16, !tbaa !14 ; 2 uses
  %i.ex = fdiv double %i.ev, %i.ew                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !14 ; 2 uses
  %i.fa = fmul double %i.eg, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !14
  %i.fd = fmul double %i.eo, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !14 ; 2 uses
  %i.fg = fmul double %i.ex, %i.ff
  %i.fh = fadd double %i.fd, %i.fg
  %i.fi = fadd double %i.fa, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = extractelement <2 x double> %i.ed, i64 1
  %i.fl = fsub double %i.fk, %i.fi
  %i.fm = load double, ptr %i.cz, align 8, !tbaa !14 ; 2 uses
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = fdiv double %i.fn, %i.fm                ; 2 uses
  store double %i.fo, ptr %i.fj, align 8, !tbaa !14
  %i.fp = fmul double %i.ff, %i.fo
  %i.fq = fsub double %i.ex, %i.fp
  %i.fr = fdiv double %i.fq, %i.ew
  store double %i.fr, ptr %i.eb, align 16, !tbaa !14
  %i.fs = load <2 x double>, ptr %i.bz, align 16, !tbaa !30
  %i.ft = load <2 x double>, ptr %i.eb, align 16  ; 2 uses
  %i.fu = fmul <2 x double> %i.fs, %i.ft          ; 2 uses
  %shift47 = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop48 = fadd <2 x double> %i.fu, %shift47
  %i.fv = extractelement <2 x double> %foldExtExtBinop48, i64 0
  %i.fw = fsub double %i.eo, %i.fv
  %i.fx = fdiv double %i.fw, %i.en
  store double %i.fx, ptr %i.ek, align 8, !tbaa !14
  %i.fy = load <2 x double>, ptr %i.eh, align 8, !tbaa !30
  %i.fz = load <2 x double>, ptr %i.ek, align 8, !tbaa !30
  %i.ga = fmul <2 x double> %i.fy, %i.fz          ; 2 uses
  %shift50 = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fadd <2 x double> %i.ga, %shift50
  %i.gb = extractelement <2 x double> %foldExtExtBinop51, i64 0
  %i.gc = extractelement <2 x double> %i.ft, i64 1
  %i.gd = fmul double %i.ez, %i.gc
  %i.ge = fadd double %i.gd, %i.gb
  %i.gf = fsub double %i.eg, %i.ge
  %i.gg = fdiv double %i.gf, %i.ee
  store double %i.gg, ptr %2, align 16, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.gh = load ptr, ptr %0, align 16, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 224
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !100
  %i.gk = load ptr, ptr %0, align 16, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 216
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret double %i.bu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12VertexLine3D15getEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !30
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !30
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !30
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !30
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !30
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !30
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12VertexLine3D17estimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 6
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE4pushEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !43
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !115
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.c, align 8, !tbaa !48
  br label %_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 16, !tbaa !42  ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = sdiv exact i64 %i.l, 48                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 192153584101141162)
  %i.r = select i1 %i.p, i64 192153584101141162, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = mul nuw nsw i64 %i.r, 48
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !115
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0911.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !115, !alias.scope !116
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !114

_ZNSt6vectorIN3g2o6Line3DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN3g2o6Line3DESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i33.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i.i.i, label %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i.i
  %i.y = load ptr, ptr %i.e, align 16, !tbaa !43
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o6Line3DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i.i
  store ptr %i.t, ptr %i.a, align 16, !tbaa !42
  store ptr %i.x, ptr %i.c, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 16, !tbaa !43
  br label %_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5stackIN3g2o6Line3DESt6vectorIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN3g2o6Line3DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE3popEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load <2 x double>, ptr %i.c, align 16, !tbaa !30
  store <2 x double> %i.e, ptr %i.d, align 16, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !30
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !30
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !30
  store ptr %i.c, ptr %i.a, align 8, !tbaa !48
  %i.l = load ptr, ptr %0, align 16, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -48
  store ptr %i.c, ptr %i.a, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !42
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o12VertexLine3D9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !30
  store <2 x double> %i.b, ptr %2, align 16, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !30
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !30
  call void @_ZN3g2o6Line3D5oplusERKN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEE(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o12VertexLine3D15setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 1.000000e+00, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12VertexLine3D19setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 1, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.a, ptr %i.f, align 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> %i.c, ptr %.sroa.43.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %i.e, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !30
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o12VertexLine3DD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %i.a, align 16, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %0, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit

_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(272) %i.a) #19, !inline_history !44
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o12VertexLine3DD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %i.a, align 16, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %0, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o12VertexLine3DD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o12VertexLine3DD0Ev.exit

_ZN3g2o12VertexLine3DD0Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(272) %i.a) #19, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(272) %i.a, i64 noundef 272) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED0Ev(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %i.a, align 16, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %0, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit

_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(248) %i.a) #19, !inline_history !44
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !14
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !14
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !14
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o6Line3D5oplusERKN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEE(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit:
  %.sroa.4.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.18.sroa.0 = alloca [3 x double], align 16 ; 6 uses
  %.sroa.12.sroa.0 = alloca [7 x double], align 16 ; 15 uses
  %.sroa.4 = alloca [4 x double], align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !30, !noalias !130 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !14, !noalias !130 ; 4 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %i.f = load <2 x double>, ptr %0, align 16, !tbaa !30, !noalias !131 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load double, ptr %i.g, align 16, !tbaa !14, !noalias !131 ; 4 uses
  %i.i = fmul <2 x double> %i.f, %i.f             ; 2 uses
  %.sroa.0159.8.vec.extract.i = extractelement <2 x double> %i.f, i64 1 ; 2 uses
  %.sroa.0157.8.vec.extract.i = extractelement <2 x double> %i.b, i64 1 ; 3 uses
  %i.j = fneg double %.sroa.0157.8.vec.extract.i
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %.sroa.0159.8.vec.extract.i, double %i.d, double %i.k) ; 2 uses
  %.sroa.0157.0.vec.extract.i = extractelement <2 x double> %i.b, i64 0 ; 2 uses
  %.sroa.0159.0.vec.extract.i = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.m = fneg double %i.d
  %i.n = fmul double %.sroa.0159.0.vec.extract.i, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.h, double %.sroa.0157.0.vec.extract.i, double %i.n) ; 2 uses
  %i.p = fneg double %.sroa.0157.0.vec.extract.i
  %i.q = fmul double %.sroa.0159.8.vec.extract.i, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %.sroa.0159.0.vec.extract.i, double %.sroa.0157.8.vec.extract.i, double %i.q) ; 3 uses
  %.sroa.0164.0.vec.insert.i = insertelement <2 x double> poison, double %i.l, i64 0
  %.sroa.0164.8.vec.insert.i = insertelement <2 x double> %.sroa.0164.0.vec.insert.i, double %i.o, i64 1 ; 2 uses
  %i.s = fmul <2 x double> %.sroa.0164.8.vec.insert.i, %.sroa.0164.8.vec.insert.i ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.s, %shift
  %i.t = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> poison, double %i.h, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.d, i64 1 ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.x
  %i.z = fadd <2 x double> %i.y, %i.v
  %i.aa = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.z) ; 7 uses
  %i.ab = fmul <2 x double> %i.aa, %i.aa
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ad = insertelement <2 x double> %i.aa, double %i.r, i64 0
  %i.ae = insertelement <2 x double> %i.aa, double %i.r, i64 0
  %i.af = fmul <2 x double> %i.ad, %i.ae
  %i.ag = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.ah = fadd <2 x double> %i.af, %i.ag
  %i.ai = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ah)
  %i.aj = fdiv <2 x double> splat (double 1.000000e+00), %i.ai ; 3 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 3 uses
  %i.al = fmul double %i.l, %i.ak
  %.sroa.31.80.vec.insert = insertelement <2 x double> poison, double %i.al, i64 0
  %i.am = fmul double %i.o, %i.ak
  %.sroa.31.88.vec.insert = insertelement <2 x double> %.sroa.31.80.vec.insert, double %i.am, i64 1 ; 2 uses
  %i.an = extractelement <2 x double> %i.aa, i64 1
  %i.ao = fneg double %i.an
  %i.ap = extractelement <2 x double> %i.aj, i64 1
  %i.aq = fmul double %i.ap, %i.ao
  %.sroa.8.16.vec.insert = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ar = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x double> %i.aa, %i.ar          ; 2 uses
  %i.at = shufflevector <2 x double> %.sroa.8.16.vec.insert, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.au = fdiv <2 x double> splat (double 1.000000e+00), %i.aa ; 3 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.f, %i.av           ; 2 uses
  %i.ax = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.ay = fmul double %.sroa.0157.8.vec.extract.i, %i.ax
  %.sroa.18.sroa.0.16..sroa_idx178 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 16
  store double %i.ay, ptr %.sroa.18.sroa.0.16..sroa_idx178, align 16, !tbaa !14, !alias.scope !129
  %i.az = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x double> %i.az, double %i.h, i64 0
  %i.bb = fmul <2 x double> %i.ba, %i.au
  store <2 x double> %i.bb, ptr %.sroa.18.sroa.0, align 16, !tbaa !14, !alias.scope !129
  %i.bc = fmul double %i.d, %i.ax                 ; 2 uses
  %i.bd = fmul double %i.r, %i.ak                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.0)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14 ; 3 uses
  %2 = tail call double @cos(double noundef %i.bf) #19
  %3 = tail call double @sin(double noundef %i.bf) #19
  %4 = tail call double @cos(double noundef %i.bf) #19 ; 0 uses
  %i.bg = load <2 x double>, ptr %1, align 16     ; 6 uses
  %i.bh = fmul <2 x double> %i.bg, %i.bg          ; 2 uses
  %shift143 = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fadd <2 x double> %i.bh, %shift143
  %i.bi = extractelement <2 x double> %foldExtExtBinop144, i64 0
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load double, ptr %i.bj, align 16, !tbaa !14 ; 3 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %i.bl, %i.bi
  %i.bn = fsub double 1.000000e+00, %i.bm
  %5 = tail call double @sqrt(double noundef %i.bn) #19
  %.sroa.849.16.vec.insert = insertelement <2 x double> poison, double %i.bk, i64 0
  %.sroa.849.24.vec.insert = insertelement <2 x double> %.sroa.849.16.vec.insert, double %5, i64 1 ; 4 uses
  %i.bo = fmul <2 x double> %i.bg, %i.bg
  %i.bp = fmul <2 x double> %.sroa.849.24.vec.insert, %.sroa.849.24.vec.insert
  %i.bq = fadd <2 x double> %i.bp, %i.bo          ; 2 uses
  %shift146 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fadd <2 x double> %i.bq, %shift146
  %i.br = extractelement <2 x double> %foldExtExtBinop147, i64 0 ; 2 uses
  %i.bs = fcmp ogt double %i.br, 0.000000e+00     ; 2 uses
  %.scalar.i.i24 = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bt = insertelement <2 x double> poison, double %.scalar.i.i24, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fdiv <2 x double> %i.bg, %i.bu
  %i.bw = fdiv <2 x double> %.sroa.849.24.vec.insert, %i.bu
  %.sroa.045.0 = select i1 %i.bs, <2 x double> %i.bv, <2 x double> %i.bg ; 2 uses
  %.sroa.849.0 = select i1 %i.bs, <2 x double> %i.bw, <2 x double> %.sroa.849.24.vec.insert ; 2 uses
  %.sroa.045.0.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 0 ; 4 uses
  %i.bx = fmul double %.sroa.045.0.vec.extract, 2.000000e+00 ; 2 uses
  %.sroa.045.8.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 1 ; 3 uses
  %i.by = fmul double %.sroa.045.8.vec.extract, 2.000000e+00 ; 3 uses
  %.sroa.849.16.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 0 ; 2 uses
  %i.bz = fmul double %.sroa.849.16.vec.extract, 2.000000e+00 ; 4 uses
  %.sroa.849.24.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 1 ; 3 uses
  %i.ca = fmul double %.sroa.849.24.vec.extract, %i.bx
  %i.cb = fmul double %.sroa.849.24.vec.extract, %i.by ; 2 uses
  %i.cc = fmul double %.sroa.849.24.vec.extract, %i.bz ; 2 uses
  %i.cd = fmul double %.sroa.045.0.vec.extract, %i.bx
  %i.ce = fmul double %.sroa.045.0.vec.extract, %i.by ; 2 uses
  %i.cf = fmul double %.sroa.045.0.vec.extract, %i.bz ; 2 uses
  %i.cg = fmul double %.sroa.045.8.vec.extract, %i.by
  %i.ch = fmul double %.sroa.045.8.vec.extract, %i.bz
  %i.ci = fmul double %.sroa.849.16.vec.extract, %i.bz ; 2 uses
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = fsub double 1.000000e+00, %i.cj
  %i.cl = fsub double %i.ce, %i.cc
  %i.cm = fadd double %i.cf, %i.cb
  %i.cn = fadd double %i.ce, %i.cc
  %i.co = fadd double %i.cd, %i.ci
  %i.cp = fsub double 1.000000e+00, %i.co
  %i.cq = fsub double %i.cf, %i.cb
  %i.cr = fadd double %i.ch, %i.ca
  store double %i.ck, ptr %.sroa.12.sroa.0, align 16
  %.sroa.12.sroa.0.8..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 8
  store double %i.cn, ptr %.sroa.12.sroa.0.8..sroa_idx167, align 8
  %.sroa.12.sroa.0.16..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 16
  store double %i.cq, ptr %.sroa.12.sroa.0.16..sroa_idx169, align 16
  %.sroa.12.sroa.0.24..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 24
  store double %i.cl, ptr %.sroa.12.sroa.0.24..sroa_idx171, align 8
  %.sroa.12.sroa.0.32..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 32
  store double %i.cp, ptr %.sroa.12.sroa.0.32..sroa_idx173, align 16
  %.sroa.12.sroa.0.40..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 40
  store double %i.cr, ptr %.sroa.12.sroa.0.40..sroa_idx175, align 8
  %.sroa.12.sroa.0.48..sroa_idx176 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 48
  store double %i.cm, ptr %.sroa.12.sroa.0.48..sroa_idx176, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %.sroa.12.sroa.0.0..sroa.12.sroa.0.0..sroa.12.0..sroa.12.32. = load <2 x double>, ptr %.sroa.12.sroa.0, align 16 ; 2 uses
  %i.cs = shufflevector <2 x double> %.sroa.12.sroa.0.0..sroa.12.sroa.0.0..sroa.12.0..sroa.12.32., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.aw, %i.cs
  %.sroa.18.sroa.0.8..sroa_idx177 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 8
  %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56. = load <2 x double>, ptr %.sroa.18.sroa.0.8..sroa_idx177, align 8, !tbaa !30 ; 2 uses
  %.sroa.12.sroa.0.8..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 8
  %.sroa.12.sroa.0.8..sroa.12.sroa.0.8..sroa.12.8..sroa.12.40. = load <2 x double>, ptr %.sroa.12.sroa.0.8..sroa_idx166, align 8 ; 2 uses
  %i.cu = shufflevector <2 x double> %.sroa.12.sroa.0.8..sroa.12.sroa.0.8..sroa.12.8..sroa.12.40., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.cu
  %i.cw = fadd <2 x double> %i.ct, %i.cv
  %.sroa.12.sroa.0.16..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 16
  %.sroa.12.sroa.0.16..sroa.12.sroa.0.16..sroa.12.16..sroa.12.48. = load <2 x double>, ptr %.sroa.12.sroa.0.16..sroa_idx168, align 16 ; 2 uses
  %i.cx = shufflevector <2 x double> %.sroa.12.sroa.0.16..sroa.12.sroa.0.16..sroa.12.16..sroa.12.48., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %.sroa.31.88.vec.insert, %i.cx
  %i.cz = fadd <2 x double> %i.cw, %i.cy
  %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.119 = load double, ptr %.sroa.18.sroa.0, align 16, !tbaa !14 ; 2 uses
  %i.da = extractelement <2 x double> %.sroa.12.sroa.0.0..sroa.12.sroa.0.0..sroa.12.0..sroa.12.32., i64 0
  %i.db = fmul double %i.da, %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.119
  %i.dc = extractelement <2 x double> %.sroa.12.sroa.0.8..sroa.12.sroa.0.8..sroa.12.8..sroa.12.40., i64 0
  %i.dd = fmul double %i.dc, %i.bc
  %i.de = extractelement <2 x double> %.sroa.12.sroa.0.16..sroa.12.sroa.0.16..sroa.12.16..sroa.12.48., i64 0
  %i.df = fmul double %i.de, %i.bd
  %i.dg = fadd double %i.dd, %i.df
  %i.dh = fadd double %i.db, %i.dg
  store double %i.dh, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !14
  %.sroa.12.sroa.0.24..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 24
  %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56. = load <2 x double>, ptr %.sroa.12.sroa.0.24..sroa_idx170, align 8 ; 2 uses
  %i.di = shufflevector <2 x double> %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.aw, %i.di
  %.sroa.12.sroa.0.32..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 32
  %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64. = load <2 x double>, ptr %.sroa.12.sroa.0.32..sroa_idx172, align 16 ; 2 uses
  %i.dk = shufflevector <2 x double> %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.dk
  %i.dm = fadd <2 x double> %i.dj, %i.dl
  %.sroa.12.sroa.0.40..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 40
  %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72. = load <2 x double>, ptr %.sroa.12.sroa.0.40..sroa_idx174, align 8 ; 2 uses
  %i.dn = shufflevector <2 x double> %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72., <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %.sroa.31.88.vec.insert, %i.dn
  %i.dp = fadd <2 x double> %i.dm, %i.do
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  store <2 x double> %i.dp, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !30
  %i.dq = extractelement <2 x double> %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56., i64 0
  %i.dr = fmul double %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.119, %i.dq
  %i.ds = extractelement <2 x double> %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64., i64 0
  %i.dt = fmul double %i.bc, %i.ds
  %i.du = extractelement <2 x double> %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72., i64 0
  %i.dv = fmul double %i.bd, %i.du
  %i.dw = fadd double %i.dt, %i.dv
  %i.dx = fadd double %i.dr, %i.dw
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  store double %i.dx, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !14
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !30 ; 2 uses
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %6 = bitcast double %2 to <1 x double>
  %i.dy = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.as, %i.dy
  %7 = bitcast double %3 to <1 x double>
  %i.ea = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.at, %i.ea
  %i.ec = fadd <2 x double> %i.dz, %i.eb          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, %i.cz
  %foldExtExtBinop149 = fmul <2 x double> %i.ec, %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i
  %i.ef = extractelement <2 x double> %foldExtExtBinop149, i64 0
  %i.eg = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = shufflevector <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.ei = fmul <2 x double> %i.eg, %i.eh          ; 3 uses
  %foldExtExtBinop151 = fmul <2 x double> %i.ec, %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i
  %i.ej = extractelement <2 x double> %foldExtExtBinop151, i64 1 ; 3 uses
  store double %i.ef, ptr %.sroa.4, align 16, !tbaa !14, !alias.scope !132
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8
  store <2 x double> %i.ei, ptr %.sroa.4.8..sroa_idx, align 8, !tbaa !30, !alias.scope !132
  %.sroa.4.24..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  store double %i.ej, ptr %.sroa.4.24..sroa_idx160, align 8, !tbaa !14, !alias.scope !132
  %i.ek = fmul <2 x double> %i.ei, %i.ei          ; 2 uses
  %shift153 = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop154 = fadd <2 x double> %i.ek, %shift153
  %i.el = extractelement <2 x double> %foldExtExtBinop154, i64 0
  %i.em = fmul double %i.ej, %i.ej
  %i.en = fadd double %i.em, %i.el
  %.scalar.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.en)
  %i.eo = fdiv double 1.000000e+00, %.scalar.i.i.i
  %i.ep = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.er = fmul <2 x double> %i.ee, %i.eq
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16. = load <2 x double>, ptr %.sroa.4, align 16, !tbaa !30, !alias.scope !132
  %i.es = fmul <2 x double> %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16., %i.eq
  store <2 x double> %i.es, ptr %.sroa.4, align 16, !tbaa !30, !alias.scope !132
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32. = load <2 x double>, ptr %.sroa.4.16..sroa_idx, align 16, !tbaa !30, !alias.scope !132
  %i.et = fmul <2 x double> %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32., %i.eq
  %.sroa.4.16..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  store <2 x double> %i.et, ptr %.sroa.4.16..sroa_idx159, align 16, !tbaa !30, !alias.scope !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4, i64 32, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.eu = load <2 x double>, ptr %i.a, align 8, !tbaa !30, !noalias !134 ; 2 uses
  %i.ev = load double, ptr %i.c, align 8, !tbaa !14, !noalias !134 ; 2 uses
  %i.ew = fmul <2 x double> %i.eu, %i.eu          ; 2 uses
  %shift156 = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop157 = fadd <2 x double> %i.ew, %shift156
  %i.ex = extractelement <2 x double> %foldExtExtBinop157, i64 0
  %i.ey = fmul double %i.ev, %i.ev
  %i.ez = fadd double %i.ey, %i.ex
  %.scalar.i.i29 = tail call noundef double @llvm.sqrt.f64(double %i.ez)
  %i.fa = fdiv double 1.000000e+00, %.scalar.i.i29
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fd = fmul <2 x double> %i.er, %i.fc
  store <2 x double> %i.fd, ptr %0, align 16, !tbaa !30
  %i.fe = load <2 x double>, ptr %i.g, align 16, !tbaa !30
  %i.ff = fmul <2 x double> %i.fe, %i.fc
  store <2 x double> %i.ff, ptr %i.g, align 16, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !30
  %i.fi = fmul <2 x double> %i.fh, %i.fc
  store <2 x double> %i.fi, ptr %i.fg, align 16, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(128) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.652", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.668", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.676", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.585", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03254 = phi i64 [ 0, %bb.a ], [ %i.p, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 15 uses
  %i.m = add nsw i64 %.03254, -1                  ; 2 uses
  %i.n = add nsw i64 %.03254, -2
  %i.o = sub nuw nsw i64 3, %.03254               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = add nuw nsw i64 %.03254, 1               ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %.03254, 5        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !53
  store i64 %i.o, ptr %i.a, align 8, !tbaa !54
  store ptr %0, ptr %i.b, align 8, !tbaa !142
  store i64 %i.p, ptr %i.c, align 8, !tbaa !54
  store i64 %.03254, ptr %i.d, align 8, !tbaa !54
  store i64 4, ptr %i.e, align 8, !tbaa !145
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.03254 ; 9 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !14 ; 2 uses
  %.not55 = icmp eq i64 %.03254, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 3 uses
  %.not52 = icmp eq i64 %.03254, 1
  br i1 %.not52, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.n, 3
  br i1 %i.x, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01725.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02324.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.01725.i.i.i.i, 5
  %i.y = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = fadd double %.02324.i.i.i.i, %i.aa
  %i.ac = shl i64 %.01725.i.i.i.i, 5
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = fadd double %i.ab, %i.ag
  %i.ai = shl i64 %.01725.i.i.i.i, 5
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fadd double %i.ah, %i.am
  %i.ao = shl i64 %.01725.i.i.i.i, 5
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 96
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.an, %i.as                ; 3 uses
  %i.au = add nuw nsw i64 %.01725.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !135

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01725.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01725.i.i.i.i.epil = phi i64 [ %i.az, %.lr.ph.i.i.i.i.epil ], [ %.01725.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.epil = phi double [ %i.ay, %.lr.ph.i.i.i.i.epil ], [ %.02324.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.01725.i.i.i.i.epil, 5
  %i.av = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fadd double %.02324.i.i.i.i.epil, %i.ax ; 2 uses
  %i.az = add nuw nsw i64 %.01725.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !136

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.0.i.i = phi double [ %i.w, %bb.c ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.i.i.i.i.epil ]
  %i.ba = fsub double %i.u, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.ba, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.u, %bb.b ] ; 2 uses
  %i.bb = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = call double @sqrt(double noundef %.0) #19 ; 6 uses
  store double %i.bc, ptr %i.t, align 8, !tbaa !14
  switch i64 %.03254, label %.thread [
    i64 3, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %i.q, ptr %1, align 8
  store i64 %i.o, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.03254, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 4, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.s, ptr %i.f, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.q, ptr %i.g, align 8, !tbaa !58
  store ptr %i.s, ptr %i.h, align 8, !tbaa !60
  store i64 %.03254, ptr %i.i, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.r, ptr %2, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %2, ptr %3, align 8, !tbaa !146
  store ptr %1, ptr %i.j, align 8, !tbaa !147
  store ptr %4, ptr %i.k, align 8, !tbaa !148
  store ptr %5, ptr %i.l, align 8, !tbaa !149
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !53
  %.pre57 = load i64, ptr %i.a, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.bd = phi i64 [ 3, %bb.e ], [ %.pre57, %.thread ] ; 6 uses
  %i.be = phi ptr [ %i.r, %bb.e ], [ %.pre, %.thread ] ; 6 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = and i64 %i.bf, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = lshr exact i64 %i.bf, 3
  %i.bi = and i64 %i.bh, 1
  %i.bj = call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.g ], [ %i.bd, %bb.f ] ; 9 uses
  %i.bk = sub nsw i64 %i.bd, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.bl = sdiv i64 %i.bk, 2
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = add nsw i64 %i.bm, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check66 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph67
  %index72 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body71 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index72 ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.bp, align 8, !tbaa !14
  %i.bq = fdiv <2 x double> %wide.load73, %broadcast.splat70
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !14
  %index.next74 = add nuw i64 %index72, 2         ; 2 uses
  %i.br = icmp eq i64 %index.next74, %n.vec68
  br i1 %i.br, label %middle.block75, label %vector.body71, !llvm.loop !137

middle.block75:                                   ; preds = %vector.body71
  %cmp.n76 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec68
  br i1 %cmp.n76, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.i.i.preheader79:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block75
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec68, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14
  %i.bu = fdiv double %i.bt, %i.bc
  store double %i.bu, ptr %i.bs, align 8, !tbaa !14
  %i.bv = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !138

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block75, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.bw = icmp sgt i64 %i.bk, 1
  br i1 %i.bw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bx = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bz = icmp slt i64 %i.bn, %i.bd
  br i1 %i.bz, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ca = add i64 %.0.i.i.i.i.i.i.i, %i.bm
  %i.cb = sub i64 %i.bd, %i.ca                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, -2                      ; 3 uses
  %i.cc = add i64 %i.bn, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = getelementptr [8 x i8], ptr %i.be, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !14
  %i.cf = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cf, ptr %i.ce, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader78

.lr.ph.i17.i.i.i.i.i.i.preheader78:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader78, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !14
  %i.cj = fdiv double %i.ci, %i.bc
  store double %i.cj, ptr %i.ch, align 8, !tbaa !14
  %i.ck = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ck, %i.bd
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !140

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !30
  %i.cn = fdiv <2 x double> %i.cm, %i.by
  store <2 x double> %i.cn, ptr %i.cl, align 16, !tbaa !30
  %i.co = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.bn
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !141

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %exitcond.not = icmp eq i64 %i.p, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03254, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit ]
  ret i64 %spec.select
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177, !nonnull !178, !align !179 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 2 uses
  %i.n = add nsw i64 %i.m, %.0.i                  ; 7 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !178, !align !179
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82   ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !181, !nonnull !178, !align !179 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182, !noalias !183 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184, !noalias !185 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !54, !noalias !185 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter109 = and i64 %i.aa, 3                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = icmp ne i64 %xtraiter109, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 10
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %i.af
  %bound1 = icmp ult ptr %i.t, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %i.q, %i.ag
  %bound162 = icmp ult ptr %i.v, %i.ae
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ah = load double, ptr %i.v, align 8, !tbaa !14, !alias.scope !186
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !187
  %wide.load64 = load <2 x double>, ptr %i.aj, align 8, !tbaa !14, !alias.scope !187
  %i.ak = fmul <2 x double> %wide.load, %broadcast.splat
  %i.al = fmul <2 x double> %wide.load64, %broadcast.splat
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.am, align 8, !tbaa !14, !alias.scope !188, !noalias !189
  %wide.load66 = load <2 x double>, ptr %i.an, align 8, !tbaa !14, !alias.scope !188, !noalias !189
  %i.ao = fsub <2 x double> %wide.load65, %i.ak
  %i.ap = fsub <2 x double> %wide.load66, %i.al
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !14, !alias.scope !188, !noalias !189
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !14, !alias.scope !188, !noalias !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14
  %i.at = load double, ptr %i.v, align 8, !tbaa !14
  %i.au = fmul double %i.as, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !14
  %i.ax = fsub double %i.aw, %i.au
  store double %i.ax, ptr %i.av, align 8, !tbaa !14
  %i.ay = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107 ], [ %i.ay, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.az = icmp eq i64 %.0.i, %.neg
  br i1 %i.az, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !14
  %i.bc = load double, ptr %i.v, align 8, !tbaa !14
  %i.bd = fmul double %i.bb, %i.bc                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.ce, %.lr.ph.i.i.i.i.i.us.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = shl i64 %.01725.i.i.i.i.i.us.i, 5 ; 2 uses
  %i.be = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !14
  %i.bi = fmul double %i.bf, %i.bh
  %i.bj = fadd double %.02324.i.i.i.i.i.us.i, %i.bi
  %i.bk = shl i64 %.01725.i.i.i.i.i.us.i, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = add i64 %i.bk, 32 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !14
  %i.bn = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = fadd double %i.bj, %i.bp
  %i.br = shl i64 %.01725.i.i.i.i.i.us.i, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = add i64 %i.br, 64 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14
  %i.bu = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !14
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = fadd double %i.bq, %i.bw
  %i.by = shl i64 %.01725.i.i.i.i.i.us.i, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = add i64 %i.by, 96 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !14
  %i.cb = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !14
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %i.bx, %i.cd                ; 3 uses
  %i.cf = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !159

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod110.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.cl, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = shl i64 %.01725.i.i.i.i.i.us.i.epil, 5 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !14
  %i.ci = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_:bb.a
  %i.fj = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !14
  %i.fl = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !14
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.02324.i.i.i.i.i.us.i26, %i.fn
  %i.fp = shl i64 %.01725.i.i.i.i.i.us.i25, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = add i64 %i.fp, 32 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !14
  %i.fs = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !14
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = shl i64 %.01725.i.i.i.i.i.us.i25, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.fw, 64 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !14
  %i.fz = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !14
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = shl i64 %.01725.i.i.i.i.i.us.i25, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.gd, 96 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !14
  %i.gg = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !14
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 3 uses
  %i.gk = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !159

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod124.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fi, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gq, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = shl i64 %.01725.i.i.i.i.i.us.i25.epil, 5 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !14
  %i.gn = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.go = load double, ptr %i.gn, align 8, !tbaa !14
  %i.gp = fmul double %i.gm, %i.go
  %i.gq = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gp ; 2 uses
  %i.gr = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !172

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gq, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.us6.i23 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !14
  %i.gu = fsub double %i.gt, %.lcssa
  store double %i.gu, ptr %i.gs, align 8, !tbaa !14
  %i.gv = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gv, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !161

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i20
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !14
  %i.gy = load double, ptr %i.dq, align 8, !tbaa !14
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !14
  %i.hc = fsub double %i.hb, %i.gz
  store double %i.hc, ptr %i.ha, align 8, !tbaa !14
  %i.hd = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !14
  %i.hg = load double, ptr %i.dq, align 8, !tbaa !14
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.hd ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !14
  %i.hk = fsub double %i.hj, %i.hh
  store double %i.hk, ptr %i.hi, align 8, !tbaa !14
  %i.hl = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hl, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !173

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block100, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.iz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hm = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !178, !align !179
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !82
  %i.ho = load ptr, ptr %i.di, align 8, !tbaa !181, !nonnull !178, !align !179 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 144
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !80 ; 5 uses
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 112
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !58
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.036 ; 3 uses
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !60 ; 3 uses
  %xtraiter113 = and i64 %i.hq, 1
  %i.hx = icmp eq i64 %i.hq, 1
  br i1 %i.hx, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter118 = and i64 %i.hq, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.hy = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.in, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.io, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter119 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter119.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.013.i.i.i.i, 5 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !30
  %gep.i.i.i = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i
  %i.ib = load double, ptr %gep.i.i.i, align 8, !tbaa !14
  %i.ic = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.ia, %i.id
  %i.if = fadd <2 x double> %i.hy, %i.ie
  %i.ig = shl i64 %.013.i.i.i.i, 5
  %.idx.i.i.i.i.i.1 = or disjoint i64 %i.ig, 32   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i.1
  %i.ii = load <2 x double>, ptr %i.ih, align 1, !tbaa !30
  %gep.i.i.i.1 = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i.1
  %i.ij = load double, ptr %gep.i.i.i.1, align 8, !tbaa !14
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %i.ii, %i.il
  %i.in = fadd <2 x double> %i.if, %i.im          ; 3 uses
  %i.io = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter119.next.1 = add nuw nsw i64 %niter119, 2 ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !174

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.io, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %i.hq to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %.idx.i.i.i.i.i.epil = shl nuw nsw i64 %.013.i.i.i.i.epil.init, 5 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i.epil
  %i.iq = load <2 x double>, ptr %i.ip, align 1, !tbaa !30
  %gep.i.i.i.epil = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i.epil
  %i.ir = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !14
  %i.is = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x double> %i.iq, %i.it
  %i.iv = fadd <2 x double> %.epil.init, %i.iu
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.iv, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.036 ; 2 uses
  %i.ix = load <2 x double>, ptr %i.iw, align 16, !tbaa !30
  %i.iy = fsub <2 x double> %i.ix, %.0.i.i.i
  store <2 x double> %i.iy, ptr %i.iw, align 16, !tbaa !30
  %i.iz = add nsw i64 %.036, 2                    ; 2 uses
  %i.ja = icmp slt i64 %i.iz, %i.n
  br i1 %i.ja, label %bb.c, label %._crit_edge, !llvm.loop !175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 double", !8, i64 0}
!10 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi4EEE"}
!11 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !9, i64 0, !10, i64 8, !10, i64 9}
!12 = !{!11, !9, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSN3g2o10HyperGraph17HyperGraphElementE"}
!16 = !{!"_ZTSSt4lessIPN3g2o10HyperGraph4EdgeEE"}
!17 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN3g2o10HyperGraph4EdgeEEE", !16, i64 0}
!18 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !8, i64 0}
!20 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!21 = !{!"long", !4, i64 0}
!22 = !{!"_ZTSSt15_Rb_tree_header", !20, i64 0, !21, i64 32}
!23 = !{!"_ZTSNSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !17, i64 0, !22, i64 8}
!24 = !{!"_ZTSSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE", !23, i64 0}
!25 = !{!"_ZTSSt3setIPN3g2o10HyperGraph4EdgeESt4lessIS3_ESaIS3_EE", !24, i64 0}
!26 = !{!"_ZTSN3g2o10HyperGraph6VertexE", !15, i64 0, !5, i64 8, !25, i64 16}
!27 = !{!"bool", !4, i64 0}
!28 = !{!"vtable pointer", !3, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!4, !4, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !8, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !21, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !8, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !4, i64 64, !5, i64 192, !35, i64 200, !37, i64 208}
!39 = !{!38, !32, i64 32}
!40 = !{!"p1 _ZTSN3g2o6Line3DE", !8, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN3g2o6Line3DESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 0}
!43 = !{!41, !40, i64 16}
!44 = !{ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev}
!45 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!46 = !{!45, !9, i64 8}
!47 = !{!45, !9, i64 0}
!48 = !{!41, !40, i64 8}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !21, i64 0}
!51 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!52 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEELi0EEE", !9, i64 0, !50, i64 8, !51, i64 16}
!53 = !{!52, !9, i64 0}
!54 = !{!50, !21, i64 0}
!55 = !{!"p1 _ZTSN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEE", !8, i64 0}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS3_IdLin1ELin1ELi0ELi4ELi4EEEEE", !9, i64 0, !51, i64 8, !10, i64 9}
!58 = !{!57, !9, i64 0}
!59 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELi4EEEEE", !9, i64 0, !10, i64 8, !51, i64 9}
!60 = !{!59, !9, i64 0}
!61 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELi0EEE", !9, i64 0, !50, i64 8, !50, i64 16}
!62 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELi1EEE", !61, i64 0}
!63 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0ELb1EEE", !62, i64 0, !55, i64 24, !50, i64 32, !50, i64 40, !21, i64 48}
!64 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0ENS_5DenseEEE", !63, i64 0}
!65 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEE", !64, i64 0}
!66 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEELi0EEE", !9, i64 0, !51, i64 8, !50, i64 16}
!67 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEELi1EEE", !66, i64 0}
!68 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0ELb1EEE", !67, i64 0, !55, i64 24, !50, i64 32, !50, i64 40, !21, i64 48}
!69 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0ENS_5DenseEEE", !68, i64 0}
!70 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEE", !69, i64 0}
!71 = !{!"_ZTSN5Eigen9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEE", !70, i64 0}
!72 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0ELb1EEE", !57, i64 0}
!73 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEE", !72, i64 0}
!74 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0ELb1EEE", !59, i64 0}
!75 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEE", !74, i64 0}
!76 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEE", !75, i64 0}
!77 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEENS0_10IndexBasedEdEE", !76, i64 0}
!78 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEEEE", !77, i64 0}
!79 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEELi3ENS_10DenseShapeESC_ddEE", !65, i64 0, !71, i64 56, !73, i64 112, !78, i64 128, !21, i64 144}
!80 = !{!79, !21, i64 144}
!81 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEENS3_IdLin1ELi1ELi0ELi4ELi1EEEEE", !9, i64 0, !51, i64 8, !10, i64 9}
!82 = !{!81, !9, i64 0}
!83 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEE", !8, i64 0}
!84 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEE", !8, i64 0}
!85 = !{!"p1 _ZTSN5Eigen8internal13sub_assign_opIddEE", !8, i64 0}
!86 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEE", !8, i64 0}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !{!"p1 _ZTSN3g2o10HyperGraph4DataE", !8, i64 0}
!90 = !{!"_ZTSN3g2o10HyperGraph13DataContainerE", !89, i64 8}
!91 = !{!"p1 _ZTSN3g2o16OptimizableGraphE", !8, i64 0}
!92 = !{!"_ZTSN3g2o11OpenMPMutexE"}
!93 = !{!"p1 _ZTSN3g2o14CacheContainerE", !8, i64 0}
!94 = !{!"_ZTSN3g2o16OptimizableGraph6VertexE", !26, i64 0, !90, i64 64, !91, i64 80, !89, i64 88, !5, i64 96, !27, i64 100, !27, i64 101, !5, i64 104, !5, i64 108, !92, i64 112, !93, i64 120}
!95 = !{!94, !5, i64 104}
!96 = distinct !{null}
!97 = !{!26, !5, i64 8}
!98 = distinct !{!98, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE3lltEv"}
!99 = distinct !{!99, !98, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE3lltEv: argument 0"}
!100 = distinct !{null}
!101 = !{!99}
!102 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi16ELi0ELi16EEE", !4, i64 0}
!103 = !{!"_ZTSN5Eigen12DenseStorageIdLi16ELi4ELi4ELi0EEE", !102, i64 0}
!104 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEE", !103, i64 0}
!105 = !{!"_ZTSN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEE", !104, i64 0}
!106 = !{!"_ZTSN5Eigen15ComputationInfoE", !4, i64 0}
!107 = !{!"_ZTSN5Eigen3LLTINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1EEE", !105, i64 0, !13, i64 128, !27, i64 136, !106, i64 140}
!108 = !{!107, !13, i64 128}
!109 = !{!107, !27, i64 136}
!110 = !{!107, !106, i64 140}
!111 = distinct !{!111, i1 true, !"_ZSt19__relocate_object_aIN3g2o6Line3DES1_SaIS1_EEvPT_PT0_RT1_"}
!112 = distinct !{!112, !111, !"_ZSt19__relocate_object_aIN3g2o6Line3DES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!113 = distinct !{!113, !111, !"_ZSt19__relocate_object_aIN3g2o6Line3DES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !49}
!115 = !{i64 0, i64 48, !30}
!116 = !{!113, !112}
!117 = !{!40, !40, i64 0}
!118 = !{!45, !9, i64 16}
!119 = distinct !{!119, i1 true, !"_ZN3g2o6Line3D13toOrthonormalERKS0_"}
!120 = distinct !{!120, !119, !"_ZN3g2o6Line3D13toOrthonormalERKS0_: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZNK3g2o6Line3D1dEv"}
!122 = distinct !{!122, !121, !"_ZNK3g2o6Line3D1dEv: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZNK3g2o6Line3D1wEv"}
!124 = distinct !{!124, !123, !"_ZNK3g2o6Line3D1wEv: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZN3g2o6Line3D15fromOrthonormalERKNS_17OrthonormalLine3DE"}
!126 = distinct !{!126, !125, !"_ZN3g2o6Line3D15fromOrthonormalERKNS_17OrthonormalLine3DE: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZNK3g2o6Line3D1dEv"}
!128 = distinct !{!128, !127, !"_ZNK3g2o6Line3D1dEv: argument 0"}
!129 = !{!120}
!130 = !{!122, !120}
!131 = !{!124, !120}
!132 = !{!126}
!133 = !{i64 0, i64 32, !30}
!134 = !{!128}
!135 = distinct !{!135, !49}
!136 = distinct !{!136, !56}
!137 = distinct !{!137, !49, !87, !88}
!138 = distinct !{!138, !49, !88, !87}
!139 = distinct !{!139, !49, !87, !88}
!140 = distinct !{!140, !49, !88, !87}
!141 = distinct !{!141, !49}
!142 = !{!55, !55, i64 0}
!143 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEELi1EEE", !52, i64 0}
!144 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0ELb1EEE", !143, i64 0, !55, i64 24, !50, i64 32, !50, i64 40, !21, i64 48}
!145 = !{!144, !21, i64 48}
!146 = !{!83, !83, i64 0}
!147 = !{!84, !84, i64 0}
!148 = !{!85, !85, i64 0}
!149 = !{!86, !86, i64 0}
!150 = distinct !{!150, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE3rowEl"}
!151 = distinct !{!151, !150, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!152 = distinct !{!152, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEEE3colEl"}
!153 = distinct !{!153, !152, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEEE3colEl: argument 0"}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !49, !87, !88}
!159 = distinct !{!159, !49}
!160 = distinct !{!160, !56}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49, !87}
!163 = distinct !{!163, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE3rowEl"}
!164 = distinct !{!164, !163, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEEE3colEl"}
!166 = distinct !{!166, !165, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEEEE3colEl: argument 0"}
!167 = distinct !{!167, i1 false, !"LVerDomain"}
!168 = distinct !{!168, !167}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !167}
!171 = distinct !{!171, !49, !87, !88}
!172 = distinct !{!172, !56}
!173 = distinct !{!173, !49, !87}
!174 = distinct !{!174, !49}
!175 = distinct !{!175, !49}
!176 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEE", !83, i64 0, !84, i64 8, !85, i64 16, !86, i64 24}
!177 = !{!176, !86, i64 24}
!178 = !{}
!179 = !{i64 8}
!180 = !{!176, !83, i64 0}
!181 = !{!176, !84, i64 8}
!182 = !{!61, !9, i64 0}
!183 = !{!151}
!184 = !{!66, !9, i64 0}
!185 = !{!153}
!186 = !{!155}
!187 = !{!156}
!188 = !{!157}
!189 = !{!156, !155}
!190 = !{!164}
!191 = !{!166}
!192 = !{!168}
!193 = !{!169}
!194 = !{!170}
end_hunk_1
