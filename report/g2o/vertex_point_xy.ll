Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_point_xy?download=true
inline.NumInlined: 2840
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [2 x double] }

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED2Ev = comdat any

$_ZN3g2o13VertexPointXYD0Ev = comdat any

$_ZNK3g2o10HyperGraph6Vertex11elementTypeEv = comdat any

$_ZN3g2o16OptimizableGraph6Vertex5setIdEi = comdat any

$_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii = comdat any

$_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18hessianDeterminantEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11hessianDataEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE16mapHessianMemoryEPd = comdat any

$_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5copyBEPd = comdat any

$_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5bDataEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18clearQuadraticFormEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11solveDirectEd = comdat any

$_ZNK3g2o13VertexPointXY15getEstimateDataEPd = comdat any

$_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE = comdat any

$_ZNK3g2o13VertexPointXY17estimateDimensionEv = comdat any

$_ZNK3g2o13VertexPointXY22getMinimalEstimateDataEPd = comdat any

$_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE = comdat any

$_ZNK3g2o13VertexPointXY24minimalEstimateDimensionEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4pushEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE3popEv = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE10discardTopEv = comdat any

$_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9stackSizeEv = comdat any

$_ZN3g2o13VertexPointXY9oplusImplEPKd = comdat any

$_ZN3g2o13VertexPointXY15setToOriginImplEv = comdat any

$_ZN3g2o13VertexPointXY19setEstimateDataImplEPKd = comdat any

$_ZN3g2o13VertexPointXY26setMinimalEstimateDataImplEPKd = comdat any

$_ZThn64_N3g2o13VertexPointXYD1Ev = comdat any

$_ZThn64_N3g2o13VertexPointXYD0Ev = comdat any

$_ZN3g2o31VertexPointXYWriteGnuplotActionD0Ev = comdat any

$_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED0Ev = comdat any

$_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd = comdat any

$_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd = comdat any

$_ZThn64_N3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED1Ev = comdat any

$_ZThn64_N3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED0Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZTIN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = comdat any

$_ZTSN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = comdat any

$_ZTIN3g2o18WriteGnuplotActionE = comdat any

$_ZTSN3g2o18WriteGnuplotActionE = comdat any

$_ZTVN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = comdat any

@_ZTVN3g2o13VertexPointXYE = constant { [34 x ptr], [4 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN3g2o13VertexPointXYE, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED2Ev, ptr @_ZN3g2o13VertexPointXYD0Ev, ptr @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv, ptr @_ZN3g2o16OptimizableGraph6Vertex5setIdEi, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18hessianDeterminantEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11hessianDataEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE16mapHessianMemoryEPd, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5copyBEPd, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5bDataEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18clearQuadraticFormEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11solveDirectEd, ptr @_ZNK3g2o13VertexPointXY15getEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o13VertexPointXY17estimateDimensionEv, ptr @_ZNK3g2o13VertexPointXY22getMinimalEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o13VertexPointXY24minimalEstimateDimensionEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4pushEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE3popEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE10discardTopEv, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9stackSizeEv, ptr @_ZN3g2o13VertexPointXY4readERSi, ptr @_ZNK3g2o13VertexPointXY5writeERSo, ptr @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv, ptr @_ZN3g2o13VertexPointXY9oplusImplEPKd, ptr @_ZN3g2o13VertexPointXY15setToOriginImplEv, ptr @_ZN3g2o13VertexPointXY19setEstimateDataImplEPKd, ptr @_ZN3g2o13VertexPointXY26setMinimalEstimateDataImplEPKd], [4 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr @_ZTIN3g2o13VertexPointXYE, ptr @_ZThn64_N3g2o13VertexPointXYD1Ev, ptr @_ZThn64_N3g2o13VertexPointXYD0Ev] }, align 8
@_ZTIN3g2o13VertexPointXYE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o13VertexPointXYE, ptr @_ZTIN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3g2o13VertexPointXYE = constant [22 x i8] c"N3g2o13VertexPointXYE\00", align 1
@_ZTIN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE, ptr @_ZTIN3g2o16OptimizableGraph6VertexE }, comdat, align 8
@_ZTSN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = linkonce_odr constant [63 x i8] c"N3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE\00", comdat, align 1
@_ZTIN3g2o16OptimizableGraph6VertexE = external constant ptr
@_ZTVN3g2o31VertexPointXYWriteGnuplotActionE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3g2o31VertexPointXYWriteGnuplotActionE, ptr @_ZN3g2o31VertexPointXYWriteGnuplotActionclEPNS_10HyperGraph17HyperGraphElementEPNS_23HyperGraphElementAction10ParametersE, ptr @_ZN3g2o23HyperGraphElementActionclEPKNS_10HyperGraph17HyperGraphElementEPNS0_10ParametersE, ptr @_ZN3g2o23HyperGraphElementActionD2Ev, ptr @_ZN3g2o31VertexPointXYWriteGnuplotActionD0Ev] }, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZTIN3g2o31VertexPointXYWriteGnuplotActionE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o31VertexPointXYWriteGnuplotActionE, ptr @_ZTIN3g2o18WriteGnuplotActionE }, align 8
@_ZTSN3g2o31VertexPointXYWriteGnuplotActionE = constant [40 x i8] c"N3g2o31VertexPointXYWriteGnuplotActionE\00", align 1
@_ZTIN3g2o18WriteGnuplotActionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o18WriteGnuplotActionE, ptr @_ZTIN3g2o23HyperGraphElementActionE }, comdat, align 8
@_ZTSN3g2o18WriteGnuplotActionE = linkonce_odr constant [27 x i8] c"N3g2o18WriteGnuplotActionE\00", comdat, align 1
@_ZTIN3g2o23HyperGraphElementActionE = external constant ptr
@_ZTVN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE = linkonce_odr constant { [34 x ptr], [4 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED2Ev, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED0Ev, ptr @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv, ptr @_ZN3g2o16OptimizableGraph6Vertex5setIdEi, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE7hessianEii, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18hessianDeterminantEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11hessianDataEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE16mapHessianMemoryEPd, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5copyBEPd, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE1bEi, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE5bDataEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE18clearQuadraticFormEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE11solveDirectEd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd, ptr @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE, ptr @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4pushEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE3popEv, ptr @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE10discardTopEv, ptr @_ZNK3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9stackSizeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd, ptr @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd], [4 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr @_ZTIN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE, ptr @_ZThn64_N3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED1Ev, ptr @_ZThn64_N3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED0Ev] }, comdat, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o13VertexPointXYC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o13VertexPointXYC2Ev
@_ZN3g2o31VertexPointXYWriteGnuplotActionC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o31VertexPointXYWriteGnuplotActionC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13VertexPointXYC2Ev(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 16 dereferenceable(200) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.b, align 16, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %i.d, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o13VertexPointXYE, i64 16), ptr %0, align 16, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o13VertexPointXYE, i64 288), ptr %i.a, align 16, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o13VertexPointXY4readERSi(ptr noundef nonnull align 16 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !27
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 -24
  %.pre11.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert12.i.a = getelementptr inbounds i8, ptr %1, i64 %.pre11.i
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12.i.a, i64 32
  %.pre14.i = load i32, ptr %.phi.trans.insert13.i, align 8, !tbaa !36
  br label %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit

_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %2 = phi i32 [ %.pre14.i, %bb.c ], [ %i.o, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %3 = icmp eq i32 %2, 0
  %i.s = and i32 %2, 2
  %i.t = icmp ne i32 %i.s, 0
  %i.u = or i1 %3, %i.t
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o13VertexPointXY5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load double, ptr %i.a, align 16, !tbaa !38
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !27
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36
  %i.o = icmp eq i32 %i.n, 0
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o31VertexPointXYWriteGnuplotActionC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 21, ptr %i.a, align 8, !tbaa !62
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !42
  %i.d = load i64, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @_ZTSN3g2o13VertexPointXYE, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !44
  %i.f = load ptr, ptr %1, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN3g2o18WriteGnuplotActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !43
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3g2o31VertexPointXYWriteGnuplotActionE, i64 16), ptr %0, align 8, !tbaa !27
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3g2o18WriteGnuplotActionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3g2o31VertexPointXYWriteGnuplotActionclEPNS_10HyperGraph17HyperGraphElementEPNS_23HyperGraphElementAction10ParametersE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43
  %i.h = icmp eq i8 %i.g, 42
  %.idx.i = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 3 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #20
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.d
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !42
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr nonnull %i.i, i64 %i.l)
  %.not12 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not12, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.t = load double, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, double noundef %i.t) ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load double, ptr %i.w, align 8, !tbaa !38
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, double noundef %i.x) ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 67
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 10), !inline_history !63
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.ai, %bb.g ], [ %i.am, %bb.h ]
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef signext %.0.i.i.i)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %bb.c, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %.1 = phi ptr [ null, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ], [ %0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ null, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread11 ], [ null, %bb.c ]
  ret ptr %.1
}

declare void @__cxa_bad_typeid() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE, i64 16), ptr %0, align 16, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE, i64 288), ptr %i.a, align 16, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !47  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEESt6vectorIS2_SaIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
