Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/barycentric_coordinates?download=true
inline.NumInlined: 4165
inline.NumDeleted: 2296
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase.266" }
%"class.Eigen::PlainObjectBase.266" = type { %"class.Eigen::DenseStorage.273" }
%"class.Eigen::DenseStorage.273" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.993" = type { %"struct.Eigen::internal::binary_evaluator.994" }
%"struct.Eigen::internal::binary_evaluator.994" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>, const Eigen::Array<double, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_quotient_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>, const Eigen::Array<double, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.997", %"struct.Eigen::internal::evaluator.991" }
%"struct.Eigen::internal::evaluator.997" = type { %"struct.Eigen::internal::evaluator.982" }
%"struct.Eigen::internal::evaluator.982" = type { %"struct.Eigen::internal::binary_evaluator.983" }
%"struct.Eigen::internal::binary_evaluator.983" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.986", %"struct.Eigen::internal::evaluator.986" }
%"struct.Eigen::internal::evaluator.986" = type { %"struct.Eigen::internal::evaluator.987" }
%"struct.Eigen::internal::evaluator.987" = type { %"struct.Eigen::internal::binary_evaluator.988" }
%"struct.Eigen::internal::binary_evaluator.988" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::Array<double, -1, 1>, const Eigen::Array<double, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.991", %"struct.Eigen::internal::evaluator.991" }
%"struct.Eigen::internal::evaluator.991" = type { %"struct.Eigen::internal::evaluator.942" }
%"struct.Eigen::internal::evaluator.942" = type { %"struct.Eigen::internal::evaluator.943" }
%"struct.Eigen::internal::evaluator.943" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.621" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.621" = type { ptr }
%"struct.Eigen::internal::evaluator.998" = type { %"struct.Eigen::internal::block_evaluator.999" }
%"struct.Eigen::internal::block_evaluator.999" = type { %"struct.Eigen::internal::mapbase_evaluator.1000" }
%"struct.Eigen::internal::mapbase_evaluator.1000" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.1003" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op.605" = type { i8 }
%"class.Eigen::Array.391" = type { %"class.Eigen::PlainObjectBase.392" }
%"class.Eigen::PlainObjectBase.392" = type { %"class.Eigen::DenseStorage.281" }
%"class.Eigen::DenseStorage.281" = type { ptr, i64, i64 }
%"class.Eigen::CwiseBinaryOp.399" = type <{ %"class.Eigen::ArrayWrapper.405", %"class.Eigen::ArrayWrapper.405", [8 x i8] }>
%"class.Eigen::ArrayWrapper.405" = type { ptr }
%"class.Eigen::Array.412" = type { %"class.Eigen::PlainObjectBase.413" }
%"class.Eigen::PlainObjectBase.413" = type { %"class.Eigen::DenseStorage.273" }
%"class.Eigen::PartialReduxExpr.420" = type { [8 x i8], %"class.Eigen::CwiseBinaryOp.425", [8 x i8] }
%"class.Eigen::CwiseBinaryOp.425" = type <{ ptr, ptr, [8 x i8] }>
%"class.Eigen::Block.455" = type { %"class.Eigen::BlockImpl.456" }
%"class.Eigen::BlockImpl.456" = type { %"class.Eigen::internal::BlockImpl_dense.457" }
%"class.Eigen::internal::BlockImpl_dense.457" = type { %"class.Eigen::MapBase.base.467", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.467" = type { %"class.Eigen::MapBase.base.466" }
%"class.Eigen::MapBase.base.466" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIfLi1ELin1ELi1ELi1ELin1EEENS2_IfLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EERNS1_15PlainObjectBaseIT4_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS1_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS1_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S3_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESE_EEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS9_INS0_20scalar_difference_opIddEEKNS9_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESI_EESK_EESI_EEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSR_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIfLi1ELin1ELi1ELi1ELin1EEENS2_IfLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph90.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.a, align 4, !tbaa !10
  %i.d = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 4 uses
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 5 uses
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = load <2 x float>, ptr %3, align 4, !tbaa !10 ; 4 uses
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 1
  %i.q = insertelement <2 x float> poison, float %i.d, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fsub <2 x float> %i.p, %i.r              ; 5 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x float> %i.t, %i.u              ; 4 uses
  %i.w = shufflevector <2 x float> %i.n, <2 x float> %i.k, <2 x i32> <i32 1, i32 3>
  %i.x = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.y = fsub <2 x float> %i.w, %i.x              ; 4 uses
  %i.z = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aa = fsub <2 x float> %i.z, %i.l
  %i.ab = load <2 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.ac = shufflevector <2 x float> %i.k, <2 x float> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.ad = fsub <2 x float> %i.ac, %i.m
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> %i.n, <2 x i32> <i32 1, i32 2>
  %i.af = fsub <2 x float> %i.ae, %i.m
  %i.ag = fsub <2 x float> %i.ab, %i.l
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.v
  %i.ah = fmul <2 x float> %i.v, %i.v
  %i.ai = fmul <2 x float> %i.ag, %i.aa
  %i.aj = fmul <2 x float> %i.af, %i.ad
  %i.ak = fadd <2 x float> %i.aj, %i.ai
  %shift381 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fmul <2 x float> %shift381, %i.y
  %foldExtExtBinop384 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop382
  %shift386 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fmul <2 x float> %shift386, %i.s
  %foldExtExtBinop389 = fadd <2 x float> %foldExtExtBinop384, %foldExtExtBinop387 ; 3 uses
  %i.al = fmul <2 x float> %i.y, %i.y
  %i.am = fadd <2 x float> %i.ah, %i.al
  %i.an = fmul <2 x float> %i.s, %i.s
  %i.ao = fadd <2 x float> %i.am, %i.an           ; 3 uses
  %shift391 = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fmul <2 x float> %shift391, %i.ao
  %foldExtExtBinop394 = fmul <2 x float> %foldExtExtBinop389, %foldExtExtBinop389
  %foldExtExtBinop396 = fsub <2 x float> %foldExtExtBinop392, %foldExtExtBinop394
  %5 = fsub float %i.i, %i.d
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.ap = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = fadd <2 x float> %i.ak, %i.ar           ; 2 uses
  %i.at = fmul <2 x float> %i.ao, %i.as
  %i.au = shufflevector <2 x float> %foldExtExtBinop389, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = fsub <2 x float> %i.at, %i.aw
  %7 = shufflevector <2 x float> %foldExtExtBinop396, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x float> %i.ax, %7              ; 3 uses
  store <2 x float> %i.ay, ptr %i.j, align 4, !tbaa !10
  %shift396 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fadd <2 x float> %i.ay, %shift396
  %i.az = extractelement <2 x float> %foldExtExtBinop397, i64 0
  %i.ba = fsub float 1.000000e+00, %i.az
  store float %i.ba, ptr %4, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = load <2 x double>, ptr %2, align 1, !tbaa !13
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.c, align 8, !tbaa !15
  %i.f = load double, ptr %i.d, align 8, !tbaa !15 ; 2 uses
  %i.g = load <2 x double>, ptr %3, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  %i.j = fsub <2 x double> %i.g, %i.b             ; 4 uses
  %i.k = fsub <2 x double> %i.a, %i.b             ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.m = load <2 x double>, ptr %i.l, align 1, !tbaa !13
  %i.n = fsub <2 x double> %i.m, %i.b             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %i.q = fmul <2 x double> %i.k, %i.k             ; 2 uses
  %i.r = fmul <2 x double> %i.k, %i.j             ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.r, %shift
  %i.s = fmul <2 x double> %i.j, %i.j             ; 2 uses
  %i.t = fmul <2 x double> %i.k, %i.n             ; 2 uses
  %i.u = fmul <2 x double> %i.j, %i.n             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = insertelement <2 x double> poison, double %i.e, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.i, i64 1
  %i.y = insertelement <2 x double> poison, double %i.f, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x double> %i.x, %i.z            ; 5 uses
  %shift360 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop361 = fmul <2 x double> %i.aa, %shift360
  %foldExtExtBinop363 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop361 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.q, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ac = shufflevector <2 x double> %i.q, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.ad = fadd <2 x double> %i.ab, %i.ac
  %i.ae = fmul <2 x double> %i.aa, %i.aa
  %i.af = fadd <2 x double> %i.ad, %i.ae          ; 3 uses
  %i.ag = shufflevector <2 x double> %i.u, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.u, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  %shift365 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop366 = fmul <2 x double> %i.af, %shift365
  %i.aj = fmul <2 x double> %foldExtExtBinop363, %foldExtExtBinop363
  %foldExtExtBinop370 = fsub <2 x double> %foldExtExtBinop366, %i.aj
  %5 = fsub double %i.p, %i.f
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fmul <2 x double> %7, %i.ak
  %i.am = fadd <2 x double> %i.ai, %i.al          ; 2 uses
  %i.an = fmul <2 x double> %i.af, %i.am
  %i.ao = shufflevector <2 x double> %foldExtExtBinop363, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = fmul <2 x double> %i.ao, %i.ap
  %i.ar = fsub <2 x double> %i.an, %i.aq
  %i.as = shufflevector <2 x double> %foldExtExtBinop370, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x double> %i.ar, %i.as          ; 3 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.au, ptr %i.v, align 8, !tbaa !15
  %shift370 = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop371 = fadd <2 x double> %shift370, %i.at
  %i.av = extractelement <2 x double> %foldExtExtBinop371, i64 0
  %i.aw = fsub double 1.000000e+00, %i.av
  store double %i.aw, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = getelementptr i8, ptr %3, i64 4
  %i.f = getelementptr i8, ptr %3, i64 8
  %i.g = load float, ptr %0, align 4, !tbaa !10
  %i.h = getelementptr i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = load float, ptr %2, align 4, !tbaa !10
  %i.k = load float, ptr %i.b, align 4, !tbaa !10
  %i.l = load float, ptr %i.d, align 4, !tbaa !10
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.n = load float, ptr %3, align 4, !tbaa !10   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !10
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.n, i64 1
  %i.r = insertelement <2 x float> poison, float %i.a, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fsub <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = insertelement <2 x float> poison, float %i.k, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.o, i64 1
  %i.w = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x float> %i.v, %i.w              ; 6 uses
  %i.y = load float, ptr %i.f, align 4, !tbaa !10
  %i.z = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  %i.ab = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 6 uses
  %i.ad = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.g, i64 1
  %i.af = fsub <2 x float> %i.ae, %i.s            ; 2 uses
  %i.ag = load <2 x float>, ptr %i.h, align 4, !tbaa !10
  %i.ah = fsub <2 x float> %i.ag, %i.m            ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.t, %shift
  %shift242 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fmul <2 x float> %i.x, %shift242
  %shift245 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop246 = fmul <2 x float> %i.ac, %shift245
  %foldExtExtBinop248 = fadd <2 x float> %foldExtExtBinop243, %foldExtExtBinop246
  %foldExtExtBinop250 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop248 ; 3 uses
  %i.ai = fmul <2 x float> %i.t, %i.t
  %i.aj = fmul <2 x float> %i.x, %i.x
  %i.ak = fmul <2 x float> %i.ac, %i.ac
  %i.al = fadd <2 x float> %i.aj, %i.ak
  %i.am = fadd <2 x float> %i.ai, %i.al           ; 3 uses
  %i.an = shufflevector <2 x float> %i.af, <2 x float> %i.t, <2 x i32> <i32 1, i32 2>
  %i.ao = fmul <2 x float> %i.af, %i.an
  %i.ap = shufflevector <2 x float> %i.x, <2 x float> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.aq = fmul <2 x float> %i.ap, %i.ah
  %i.ar = shufflevector <2 x float> %i.x, <2 x float> %i.ac, <2 x i32> <i32 3, i32 0>
  %i.as = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = fadd <2 x float> %i.aq, %i.at
  %i.av = fadd <2 x float> %i.ao, %i.au           ; 2 uses
  %shift252 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fmul <2 x float> %i.am, %shift252
  %foldExtExtBinop255 = fmul <2 x float> %foldExtExtBinop250, %foldExtExtBinop250
  %foldExtExtBinop257 = fsub <2 x float> %foldExtExtBinop253, %foldExtExtBinop255
  %i.aw = fmul <2 x float> %i.am, %i.av
  %i.ax = shufflevector <2 x float> %foldExtExtBinop250, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = fsub <2 x float> %i.aw, %i.az
  %i.bb = shufflevector <2 x float> %foldExtExtBinop257, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fdiv <2 x float> %i.ba, %i.bb           ; 3 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bd, ptr %i.i, align 4, !tbaa !10
  %shift259 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop260 = fadd <2 x float> %shift259, %i.bc
  %i.be = extractelement <2 x float> %foldExtExtBinop260, i64 0
  %i.bf = fsub float 1.000000e+00, %i.be
  store float %i.bf, ptr %4, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EERNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.g, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.d = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.f
  %i.e = shl nsw i64 %i.b, 2
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.e, i64 noundef %i.b, i64 noundef 4)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22, !noalias !92 ; 16 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !23, !noalias !93 ; 11 uses
  %i.i = load ptr, ptr %7, align 8, !tbaa !24, !noalias !92 ; 11 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.l = and i64 %i.k, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = icmp sgt i64 %i.g, 0
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader: ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.n = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader245, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !15, !noalias !92
  %wide.load124 = load <2 x double>, ptr %i.q, align 8, !tbaa !15, !noalias !92
  %i.r = getelementptr i8, ptr %i.o, i64 16
  store <2 x double> %wide.load, ptr %i.o, align 8, !tbaa !15, !noalias !92
  store <2 x double> %wide.load124, ptr %i.r, align 8, !tbaa !15, !noalias !92
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader245

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader245: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.prol: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader245, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader245 ] ; 3 uses
end_hunk_0
