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
  %i.ah = fsub float %i.i, %i.d
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.v
  %i.ai = fmul <2 x float> %i.v, %i.v
  %i.aj = fmul <2 x float> %i.ag, %i.aa
  %i.ak = fmul <2 x float> %i.af, %i.ad
  %i.al = fadd <2 x float> %i.ak, %i.aj
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = fadd <2 x float> %i.al, %i.ap           ; 2 uses
  %shift381 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fmul <2 x float> %shift381, %i.y
  %foldExtExtBinop384 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop382
  %shift386 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fmul <2 x float> %shift386, %i.s
  %foldExtExtBinop389 = fadd <2 x float> %foldExtExtBinop384, %foldExtExtBinop387 ; 3 uses
  %i.ar = fmul <2 x float> %i.y, %i.y
  %i.as = fadd <2 x float> %i.ai, %i.ar
  %i.at = fmul <2 x float> %i.s, %i.s
  %i.au = fadd <2 x float> %i.as, %i.at           ; 3 uses
  %shift391 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fmul <2 x float> %shift391, %i.au
  %foldExtExtBinop394 = fmul <2 x float> %foldExtExtBinop389, %foldExtExtBinop389
  %foldExtExtBinop396 = fsub <2 x float> %foldExtExtBinop392, %foldExtExtBinop394
  %i.av = fmul <2 x float> %i.au, %i.aq
  %i.aw = shufflevector <2 x float> %foldExtExtBinop389, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = fsub <2 x float> %i.av, %i.ay
  %i.ba = shufflevector <2 x float> %foldExtExtBinop396, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x float> %i.az, %i.ba           ; 3 uses
  store <2 x float> %i.bb, ptr %i.j, align 4, !tbaa !10
  %shift398 = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop399 = fadd <2 x float> %i.bb, %shift398
  %5 = extractelement <2 x float> %foldExtExtBinop399, i64 0
  %i.bc = fsub float 1.000000e+00, %5
  store float %i.bc, ptr %4, align 4, !tbaa !10
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
  %i.ab = fsub double %i.p, %i.f
  %shift360 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop361 = fmul <2 x double> %i.aa, %shift360
  %foldExtExtBinop363 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop361 ; 3 uses
  %i.ac = shufflevector <2 x double> %i.q, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.q, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul <2 x double> %i.aa, %i.aa
  %i.ag = fadd <2 x double> %i.ae, %i.af          ; 3 uses
  %i.ah = shufflevector <2 x double> %i.u, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <2 x double> %i.u, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %i.aj = fadd <2 x double> %i.ah, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fmul <2 x double> %i.al, %i.am
  %i.ao = fadd <2 x double> %i.aj, %i.an          ; 2 uses
  %shift365 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop366 = fmul <2 x double> %i.ag, %shift365
  %foldExtExtBinop368 = fmul <2 x double> %foldExtExtBinop363, %foldExtExtBinop363
  %foldExtExtBinop370 = fsub <2 x double> %foldExtExtBinop366, %foldExtExtBinop368
  %i.ap = fmul <2 x double> %i.ag, %i.ao
  %i.aq = shufflevector <2 x double> %foldExtExtBinop363, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = fmul <2 x double> %i.aq, %i.ar
  %i.at = fsub <2 x double> %i.ap, %i.as
  %i.au = shufflevector <2 x double> %foldExtExtBinop370, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fdiv <2 x double> %i.at, %i.au          ; 3 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aw, ptr %i.v, align 8, !tbaa !15
  %shift372 = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fadd <2 x double> %shift372, %i.av
  %5 = extractelement <2 x double> %foldExtExtBinop373, i64 0
  %i.ax = fsub double 1.000000e+00, %5
  store double %i.ax, ptr %4, align 8, !tbaa !15
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
  %i.o = insertelement <2 x float> poison, float %i.j, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = insertelement <2 x float> poison, float %i.a, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fsub <2 x float> %i.p, %i.r              ; 5 uses
  %i.t = load float, ptr %i.e, align 4, !tbaa !10
  %i.u = insertelement <2 x float> poison, float %i.k, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x float> %i.v, %i.w              ; 6 uses
  %i.y = load float, ptr %i.f, align 4, !tbaa !10
  %i.z = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  %i.ab = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 6 uses
  %i.ad = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.g, i64 1
  %i.af = fsub <2 x float> %i.ae, %i.r            ; 2 uses
  %i.ag = load <2 x float>, ptr %i.h, align 4, !tbaa !10
  %i.ah = fsub <2 x float> %i.ag, %i.m            ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.s, %shift
  %shift242 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fmul <2 x float> %i.x, %shift242
  %shift245 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop246 = fmul <2 x float> %i.ac, %shift245
  %foldExtExtBinop248 = fadd <2 x float> %foldExtExtBinop243, %foldExtExtBinop246
  %foldExtExtBinop250 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop248 ; 3 uses
  %i.ai = fmul <2 x float> %i.s, %i.s
  %i.aj = fmul <2 x float> %i.x, %i.x
  %i.ak = fmul <2 x float> %i.ac, %i.ac
  %i.al = fadd <2 x float> %i.aj, %i.ak
  %i.am = fadd <2 x float> %i.ai, %i.al           ; 3 uses
  %i.an = shufflevector <2 x float> %i.af, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
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
  %5 = extractelement <2 x float> %foldExtExtBinop260, i64 0
  %i.be = fsub float 1.000000e+00, %5
  store float %i.be, ptr %4, align 4, !tbaa !10
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
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.n = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
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
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259 ]
  %i.t = getelementptr [8 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.u = getelementptr [8 x i8], ptr %i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.v = load double, ptr %i.u, align 8, !tbaa !15, !noalias !92
  store double %i.v, ptr %i.t, align 8, !tbaa !15, !noalias !92
  %i.w = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !55

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader259 ], [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.g
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr [8 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !15, !noalias !92
  store double %i.ab, ptr %i.z, align 8, !tbaa !15, !noalias !92
  %i.ac = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.i, i64 %i.ac
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15, !noalias !92
  store double %i.af, ptr %i.ad, align 8, !tbaa !15, !noalias !92
  %i.ag = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.h, i64 %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.i, i64 %i.ag
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !15, !noalias !92
  store double %i.aj, ptr %i.ah, align 8, !tbaa !15, !noalias !92
  %i.ak = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.ak
  %i.am = getelementptr [8 x i8], ptr %i.i, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !15, !noalias !92
  store double %i.an, ptr %i.al, align 8, !tbaa !15, !noalias !92
  %i.ao = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !56

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ap = lshr exact i64 %i.k, 3
  %i.aq = and i64 %i.ap, 1
  %i.ar = call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.g) ; 5 uses
  %i.as = sub i64 %i.g, %i.ar                     ; 2 uses
  %i.at = and i64 %i.as, -2                       ; 2 uses
  %i.au = add nsw i64 %i.at, %i.ar                ; 5 uses
  %i.av = icmp sgt i64 %i.ar, 0
  br i1 %i.av, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load double, ptr %i.i, align 8, !tbaa !15, !noalias !92
  store double %i.aw, ptr %i.h, align 8, !tbaa !15, !noalias !92
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = icmp slt i64 %i.au, %i.g
  br i1 %i.ay, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = add i64 %i.ar, %i.at
  %i.ba = sub i64 %i.g, %i.az                     ; 3 uses
  %min.iters.check128 = icmp ult i64 %i.ba, 8
  %i.bb = sub i64 %i.j, %i.k
  %diff.check130 = icmp ugt i64 %i.bb, -32
  %or.cond251 = select i1 %min.iters.check128, i1 true, i1 %diff.check130
  br i1 %or.cond251, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i.preheader258, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec132 = and i64 %i.ba, -4                   ; 3 uses
  %i.bc = add i64 %i.au, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 2 uses
  %i.bd = add i64 %i.au, %index134                ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.h, i64 %i.bd ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.i, i64 %i.bd ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %wide.load135 = load <2 x double>, ptr %i.bf, align 8, !tbaa !15, !noalias !92
  %wide.load136 = load <2 x double>, ptr %i.bg, align 8, !tbaa !15, !noalias !92
end_hunk_0
begin_hunk_1_@_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EERNS1_15PlainObjectBaseIT4_EE:bb.a
  %i.nn = shl i64 %i.nh, 3                        ; 2 uses
  %scevgep238 = getelementptr i8, ptr %i.nf, i64 %i.nn
  %min.iters.check240 = icmp ult i64 %i.nh, 2
  %bound0 = icmp ult ptr %i.ng, %scevgep238
  %bound1 = icmp ult ptr %i.nf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.nn, 0
  %i.no = or i1 %found.conflict, %stride.check
  %n.vec242 = and i64 %i.nh, 9223372036854775806  ; 3 uses
  %cmp.n249 = icmp eq i64 %i.nh, %n.vec242
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.oc, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.np = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.nh
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ng, i64 %i.np ; 6 uses
  %brmerge = select i1 %min.iters.check240, i1 true, i1 %i.no
  br i1 %brmerge, label %scalar.ph239.preheader, label %vector.body243

vector.body243:                                   ; preds = %.preheader.i.i.i.i.i.i.i, %vector.body243
  %index244 = phi i64 [ %index.next247, %vector.body243 ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.nq = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index244 ; 2 uses
  %i.nr = getelementptr [8 x i8], ptr %i.nf, i64 %index244
  %wide.load245 = load <2 x double>, ptr %i.nr, align 8, !tbaa !15, !alias.scope !97
  %wide.load246 = load <2 x double>, ptr %i.nq, align 8, !tbaa !15, !alias.scope !98, !noalias !97
  %i.ns = fdiv <2 x double> %wide.load246, %wide.load245
  store <2 x double> %i.ns, ptr %i.nq, align 8, !tbaa !15, !alias.scope !98, !noalias !97
  %index.next247 = add nuw i64 %index244, 2       ; 2 uses
  %i.nt = icmp eq i64 %index.next247, %n.vec242
  br i1 %i.nt, label %middle.block248, label %vector.body243, !llvm.loop !88

middle.block248:                                  ; preds = %vector.body243
  br i1 %cmp.n249, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block248
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec242, %middle.block248 ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.nu = sub nsw i64 %i.nh, %.09.i.i.i.i.i.i.i.ph
  %xtraiter279 = and i64 %i.nu, 3                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.nz, %scalar.ph239.prol ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %gep.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.prol ; 2 uses
  %i.nv = getelementptr [8 x i8], ptr %i.nf, i64 %.09.i.i.i.i.i.i.i.prol
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !15
  %i.nx = load double, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !15
  %i.ny = fdiv double %i.nx, %i.nw
  store double %i.ny, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !15
  %i.nz = add nuw nsw i64 %.09.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !89

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph239.preheader ], [ %i.nz, %scalar.ph239.prol ]
  %i.oa = sub nsw i64 %.09.i.i.i.i.i.i.i.ph, %i.nh
  %i.ob = icmp ugt i64 %i.oa, -4
  br i1 %i.ob, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph239

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block248
  %i.oc = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.oc, %i.ni
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEdVINS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !90

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.ow, %scalar.ph239 ], [ %.09.i.i.i.i.i.i.i.unr, %scalar.ph239.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i ; 2 uses
  %i.od = getelementptr [8 x i8], ptr %i.nf, i64 %.09.i.i.i.i.i.i.i
  %i.oe = load double, ptr %i.od, align 8, !tbaa !15
  %i.of = load double, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.og = fdiv double %i.of, %i.oe
  store double %i.og, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.oh = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %gep.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.oh ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.nf, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !15
  %i.ok = load double, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !15
  %i.ol = fdiv double %i.ok, %i.oj
  store double %i.ol, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !15
  %i.om = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 2   ; 2 uses
  %gep.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.om ; 2 uses
  %i.on = getelementptr [8 x i8], ptr %i.nf, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !15
  %i.op = load double, ptr %gep.i.i.i.i.i.i.i.2, align 8, !tbaa !15
  %i.oq = fdiv double %i.op, %i.oo
  store double %i.oq, ptr %gep.i.i.i.i.i.i.i.2, align 8, !tbaa !15
  %i.or = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 3   ; 2 uses
  %gep.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.or ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %i.nf, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !15
  %i.ou = load double, ptr %gep.i.i.i.i.i.i.i.3, align 8, !tbaa !15
  %i.ov = fdiv double %i.ou, %i.ot
  store double %i.ov, ptr %gep.i.i.i.i.i.i.i.3, align 8, !tbaa !15
  %i.ow = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ow, %i.nh
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph239, !llvm.loop !91

_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEdVINS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %.loopexit
  %i.ox = load ptr, ptr %10, align 8, !tbaa !24
  call void @free(ptr noundef %i.ox) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.oy = load ptr, ptr %9, align 8, !tbaa !24
  call void @free(ptr noundef %i.oy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.oz = load ptr, ptr %8, align 8, !tbaa !24
  call void @free(ptr noundef %i.oz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.pa = load ptr, ptr %7, align 8, !tbaa !24
  call void @free(ptr noundef %i.pa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.pb = load ptr, ptr %6, align 8, !tbaa !24
  call void @free(ptr noundef %i.pb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.m:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %10, align 8, !tbaa !24
  call void @free(ptr noundef %i.pd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pe = load ptr, ptr %9, align 8, !tbaa !24
  call void @free(ptr noundef %i.pe) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.pf = load ptr, ptr %8, align 8, !tbaa !24
  call void @free(ptr noundef %i.pf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.pg = load ptr, ptr %7, align 8, !tbaa !24
  call void @free(ptr noundef %i.pg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ph = load ptr, ptr %6, align 8, !tbaa !24
  call void @free(ptr noundef %i.ph) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %i.pc
}

declare void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %2, align 1, !tbaa !13
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !13 ; 3 uses
  %i.c = fsub <2 x double> %i.a, %i.b             ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 16
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load double, ptr %i.d, align 8, !tbaa !15 ; 2 uses
  %i.g = load double, ptr %i.e, align 8, !tbaa !15
  %i.h = load <2 x double>, ptr %3, align 1, !tbaa !13
  %i.i = fsub <2 x double> %i.h, %i.b             ; 4 uses
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !15 ; 2 uses
  %i.l = load <2 x double>, ptr %0, align 1, !tbaa !13
  %i.m = fsub <2 x double> %i.l, %i.b             ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !15 ; 2 uses
  %i.p = fmul <2 x double> %i.c, %i.c             ; 2 uses
  %i.q = fmul <2 x double> %i.c, %i.i             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.r = fmul <2 x double> %i.i, %i.i             ; 2 uses
  %i.s = fmul <2 x double> %i.c, %i.m             ; 2 uses
  %i.t = fmul <2 x double> %i.i, %i.m             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.f, i64 1
  %i.x = insertelement <2 x double> poison, double %i.g, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fsub <2 x double> %i.w, %i.y             ; 4 uses
  %i.aa = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.k, i64 1
  %i.ac = fsub <2 x double> %i.ab, %i.y
  %i.ad = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.o, i64 1
  %i.af = fsub <2 x double> %i.ae, %i.y
  %shift233 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fmul <2 x double> %shift233, %i.z
  %foldExtExtBinop236 = fadd <2 x double> %foldExtExtBinop234, %foldExtExtBinop ; 3 uses
  %i.ag = shufflevector <2 x double> %i.r, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.r, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  %i.aj = fmul <2 x double> %i.z, %i.z
  %i.ak = fadd <2 x double> %i.aj, %i.ai          ; 3 uses
  %i.al = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %i.an = fadd <2 x double> %i.al, %i.am
  %i.ao = fmul <2 x double> %i.ac, %i.af
  %i.ap = fadd <2 x double> %i.ao, %i.an          ; 2 uses
  %shift238 = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fmul <2 x double> %shift238, %i.ak
  %foldExtExtBinop241 = fmul <2 x double> %foldExtExtBinop236, %foldExtExtBinop236
  %foldExtExtBinop243 = fsub <2 x double> %foldExtExtBinop239, %foldExtExtBinop241
  %i.aq = fmul <2 x double> %i.ak, %i.ap
  %i.ar = shufflevector <2 x double> %foldExtExtBinop236, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.at = fmul <2 x double> %i.ar, %i.as
  %i.au = fsub <2 x double> %i.aq, %i.at
  %i.av = shufflevector <2 x double> %foldExtExtBinop243, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.au, %i.av          ; 3 uses
  store <2 x double> %i.aw, ptr %i.u, align 8, !tbaa !15
  %shift245 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop246 = fadd <2 x double> %i.aw, %shift245
  %5 = extractelement <2 x double> %foldExtExtBinop246, i64 0
  %i.ax = fsub double 1.000000e+00, %5
  store double %i.ax, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS1_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0204.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.0204.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0204.sroa.5.0.copyload = load ptr, ptr %.sroa.0204.sroa.5.0..sroa_idx, align 8
  %.sroa.0203.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.0203.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0203.sroa.5.0.copyload = load ptr, ptr %.sroa.0203.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0204.sroa.5.0.copyload, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0203.sroa.5.0.copyload, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = load double, ptr %.sroa.0204.sroa.0.0.copyload, align 8, !tbaa !15
  %i.f = load double, ptr %.sroa.0203.sroa.0.0.copyload, align 8, !tbaa !15 ; 3 uses
  %i.g = fsub double %i.e, %i.f
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.g, i64 0
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0204.sroa.0.0.copyload, i64 %i.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds [8 x i8], ptr %.sroa.0203.sroa.0.0.copyload, i64 %i.d
  %i.k = load double, ptr %i.j, align 8, !tbaa !15 ; 3 uses
  %i.l = fsub double %i.i, %i.k
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.l, i64 1 ; 4 uses
  %.sroa.0194.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.0194.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0194.sroa.5.0.copyload = load ptr, ptr %.sroa.0194.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0194.sroa.5.0.copyload, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = load double, ptr %.sroa.0194.sroa.0.0.copyload, align 8, !tbaa !15
  %i.p = fsub double %i.o, %i.f
  %.sroa.0217.0.vec.insert = insertelement <2 x double> poison, double %i.p, i64 0
  %i.q = getelementptr inbounds [8 x i8], ptr %.sroa.0194.sroa.0.0.copyload, i64 %i.n
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = fsub double %i.r, %i.k
  %.sroa.0217.8.vec.insert = insertelement <2 x double> %.sroa.0217.0.vec.insert, double %i.s, i64 1 ; 4 uses
  %i.t = load <2 x double>, ptr %0, align 8, !tbaa !15
  %i.u = insertelement <2 x double> poison, double %i.f, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.k, i64 1
  %i.w = fsub <2 x double> %i.t, %i.v             ; 2 uses
  %i.x = fmul <2 x double> %.sroa.0.8.vec.insert, %.sroa.0.8.vec.insert ; 2 uses
  %i.y = fmul <2 x double> %.sroa.0.8.vec.insert, %.sroa.0217.8.vec.insert ; 2 uses
  %i.z = fmul <2 x double> %.sroa.0217.8.vec.insert, %.sroa.0217.8.vec.insert ; 2 uses
  %i.aa = fmul <2 x double> %.sroa.0.8.vec.insert, %i.w ; 2 uses
  %i.ab = fmul <2 x double> %.sroa.0217.8.vec.insert, %i.w ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %shift = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.y, %shift ; 3 uses
  %i.ad = shufflevector <2 x double> %i.z, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x double> %i.z, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.af = fadd <2 x double> %i.ad, %i.ae          ; 3 uses
  %i.ag = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.ai = fadd <2 x double> %i.ag, %i.ah          ; 2 uses
  %shift240 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fmul <2 x double> %shift240, %i.af
  %foldExtExtBinop243 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %foldExtExtBinop245 = fsub <2 x double> %foldExtExtBinop241, %foldExtExtBinop243
  %i.aj = fmul <2 x double> %i.af, %i.ai
  %i.ak = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fmul <2 x double> %i.ak, %i.al
  %i.an = fsub <2 x double> %i.aj, %i.am
  %i.ao = shufflevector <2 x double> %foldExtExtBinop245, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x double> %i.an, %i.ao          ; 3 uses
  store <2 x double> %i.ap, ptr %i.ac, align 8, !tbaa !15
  %shift247 = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x double> %i.ap, %shift247
  %5 = extractelement <2 x double> %foldExtExtBinop248, i64 0
  %i.aq = fsub double 1.000000e+00, %5
  store double %i.aq, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS1_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S3_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0207.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.0207.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0207.sroa.5.0.copyload = load ptr, ptr %.sroa.0207.sroa.5.0..sroa_idx, align 8
  %.sroa.0206.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.0206.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0206.sroa.5.0.copyload = load ptr, ptr %.sroa.0206.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0207.sroa.5.0.copyload, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0206.sroa.5.0.copyload, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = load double, ptr %.sroa.0207.sroa.0.0.copyload, align 8, !tbaa !15
  %i.f = load double, ptr %.sroa.0206.sroa.0.0.copyload, align 8, !tbaa !15 ; 3 uses
  %i.g = fsub double %i.e, %i.f
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.g, i64 0
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0207.sroa.0.0.copyload, i64 %i.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds [8 x i8], ptr %.sroa.0206.sroa.0.0.copyload, i64 %i.d
  %i.k = load double, ptr %i.j, align 8, !tbaa !15 ; 3 uses
  %i.l = fsub double %i.i, %i.k
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.l, i64 1 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.b, 4
  %i.m = getelementptr inbounds i8, ptr %.sroa.0207.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.d, 4
  %i.o = getelementptr inbounds i8, ptr %.sroa.0206.sroa.0.0.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %.sroa.0197.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.0197.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0197.sroa.5.0.copyload = load ptr, ptr %.sroa.0197.sroa.5.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0197.sroa.5.0.copyload, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = load double, ptr %.sroa.0197.sroa.0.0.copyload, align 8, !tbaa !15
  %i.t = fsub double %i.s, %i.f
  %.sroa.0223.0.vec.insert = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.0197.sroa.0.0.copyload, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !15
  %i.w = fsub double %i.v, %i.k
  %.sroa.0223.8.vec.insert = insertelement <2 x double> %.sroa.0223.0.vec.insert, double %i.w, i64 1 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i13 = shl nsw i64 %i.r, 4
  %i.x = getelementptr inbounds i8, ptr %.sroa.0197.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i13
  %i.y = load double, ptr %i.x, align 8, !tbaa !15 ; 2 uses
  %i.z = load <2 x double>, ptr %0, align 8, !tbaa !15
  %i.aa = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.k, i64 1
  %i.ac = fsub <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = fmul <2 x double> %.sroa.0.8.vec.insert, %.sroa.0.8.vec.insert ; 2 uses
  %i.ag = fmul <2 x double> %.sroa.0.8.vec.insert, %.sroa.0223.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ah = fmul <2 x double> %.sroa.0223.8.vec.insert, %.sroa.0223.8.vec.insert ; 2 uses
  %i.ai = fmul <2 x double> %.sroa.0.8.vec.insert, %i.ac ; 2 uses
  %i.aj = fmul <2 x double> %.sroa.0223.8.vec.insert, %i.ac ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = insertelement <2 x double> poison, double %i.y, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.n, i64 1
  %i.an = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ap = fsub <2 x double> %i.am, %i.ao          ; 4 uses
  %i.aq = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.y, i64 1
  %i.as = fsub <2 x double> %i.ar, %i.ao
  %i.at = insertelement <2 x double> poison, double %i.n, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ae, i64 1
  %i.av = fsub <2 x double> %i.au, %i.ao
  %shift251 = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop252 = fmul <2 x double> %shift251, %i.ap
  %foldExtExtBinop254 = fadd <2 x double> %foldExtExtBinop252, %foldExtExtBinop ; 3 uses
  %i.aw = shufflevector <2 x double> %i.ah, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = fmul <2 x double> %i.ap, %i.ap
  %i.ba = fadd <2 x double> %i.az, %i.ay          ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  %i.be = fmul <2 x double> %i.as, %i.av
  %i.bf = fadd <2 x double> %i.be, %i.bd          ; 2 uses
  %shift256 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop257 = fmul <2 x double> %shift256, %i.ba
  %foldExtExtBinop259 = fmul <2 x double> %foldExtExtBinop254, %foldExtExtBinop254
  %foldExtExtBinop261 = fsub <2 x double> %foldExtExtBinop257, %foldExtExtBinop259
  %i.bg = fmul <2 x double> %i.ba, %i.bf
  %i.bh = shufflevector <2 x double> %foldExtExtBinop254, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = fsub <2 x double> %i.bg, %i.bj
  %i.bl = shufflevector <2 x double> %foldExtExtBinop261, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.bk, %i.bl          ; 3 uses
  store <2 x double> %i.bm, ptr %i.ak, align 8, !tbaa !15
  %shift263 = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x double> %i.bm, %shift263
  %5 = extractelement <2 x double> %foldExtExtBinop264, i64 0
  %i.bn = fsub double 1.000000e+00, %5
  store double %i.bn, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23barycentric_coordinatesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.993", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.998", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1003", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op.605", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.993", align 8 ; 8 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.998", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1003", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op.605", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Array.391", align 8 ; 10 uses
  %14 = alloca %"class.Eigen::CwiseBinaryOp.399", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::Array.391", align 8 ; 10 uses
  %16 = alloca %"class.Eigen::CwiseBinaryOp.399", align 8 ; 6 uses
  %17 = alloca %"class.Eigen::Array.391", align 8 ; 8 uses
  %18 = alloca %"class.Eigen::CwiseBinaryOp.399", align 8 ; 6 uses
  %19 = alloca %"class.Eigen::Array.412", align 8 ; 8 uses
  %20 = alloca %"class.Eigen::PartialReduxExpr.420", align 8 ; 6 uses
  %21 = alloca %"class.Eigen::Array.412", align 8 ; 10 uses
  %22 = alloca %"class.Eigen::PartialReduxExpr.420", align 8 ; 6 uses
  %23 = alloca %"class.Eigen::Array.412", align 8 ; 8 uses
  %24 = alloca %"class.Eigen::PartialReduxExpr.420", align 8 ; 6 uses
  %25 = alloca %"class.Eigen::Array.412", align 8 ; 8 uses
  %26 = alloca %"class.Eigen::PartialReduxExpr.420", align 8 ; 6 uses
  %27 = alloca %"class.Eigen::Array.412", align 8 ; 8 uses
  %28 = alloca %"class.Eigen::PartialReduxExpr.420", align 8 ; 6 uses
  %29 = alloca %"class.Eigen::Array.412", align 8 ; 12 uses
  %30 = alloca %"class.Eigen::Block.455", align 8 ; 10 uses
  %31 = alloca %"class.Eigen::Block.455", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.a = ptrtoint ptr %2 to i64
  store i64 %i.a, ptr %14, align 8, !alias.scope !119
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !119
  call void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESE_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.d = ptrtoint ptr %3 to i64
  store i64 %i.d, ptr %16, align 8, !alias.scope !120
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.c, ptr %i.e, align 8, !alias.scope !120
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESE_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %18, align 8, !alias.scope !121
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.c, ptr %i.g, align 8, !alias.scope !121
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEESE_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %13, ptr %i.h, align 8
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %13, ptr %.sroa.5199.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %13, ptr %i.i, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %15, ptr %.sroa.5193.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %15, ptr %i.j, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %15, ptr %.sroa.5187.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  %i.k = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %17, ptr %i.k, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %13, ptr %.sroa.5181.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  %i.l = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %17, ptr %i.l, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %15, ptr %.sroa.5175.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEESB_EENS7_10member_sumIddEELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.n, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKS2_SB_EESD_EEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %bb.j

_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKS2_SB_EESD_EEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.h
  %i.o = load ptr, ptr %19, align 8, !tbaa !24    ; 6 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = load ptr, ptr %23, align 8, !tbaa !24    ; 6 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = load ptr, ptr %21, align 8, !tbaa !24    ; 6 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load i64, ptr %i.m, align 8, !tbaa !22   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, %i.u
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKS2_SB_EESD_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.u, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKS2_SB_EESD_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.x = phi i64 [ %.pr.i.i.i.i.i, %.noexc.i ], [ %i.u, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKS2_SB_EESD_EEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 7 uses
  %i.y = load ptr, ptr %29, align 8, !tbaa !24    ; 6 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 3 uses
  %i.aa = sdiv i64 %i.x, 2
  %i.ab = shl nsw i64 %i.aa, 1                    ; 7 uses
  %i.ac = icmp sgt i64 %i.x, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i
  %i.ad = icmp slt i64 %i.ab, %i.x
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5ArrayIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS3_INS4_17scalar_product_opIddEEKS1_S9_EESB_EEEERKNS_9EigenBaseIT_EENS4_9enable_ifIXsr8internal14is_convertibleINSE_6ScalarEdEE5valueENS1_11PrivateTypeEE4typeE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ae = sub i64 %i.x, %i.ab                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.af = sub i64 %i.p, %i.z
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = sub i64 %i.r, %i.z
  %diff.check216 = icmp ugt i64 %i.ag, -32
  %conflict.rdx = or i1 %diff.check, %diff.check216
  %i.ah = sub i64 %i.t, %i.z
  %diff.check217 = icmp ugt i64 %i.ah, -32
  %conflict.rdx218 = or i1 %conflict.rdx, %diff.check217
  br i1 %conflict.rdx218, label %.lr.ph.i.i.i.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  %i.ai = add i64 %i.ab, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add i64 %i.ab, %index                   ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aj ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !15
  %wide.load219 = load <2 x double>, ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load220 = load <2 x double>, ptr %i.am, align 8, !tbaa !15
  %wide.load221 = load <2 x double>, ptr %i.ao, align 8, !tbaa !15
  %i.ap = fmul <2 x double> %wide.load, %wide.load220
  %i.aq = fmul <2 x double> %wide.load219, %wide.load221
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aj ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load222 = load <2 x double>, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS9_INS0_20scalar_difference_opIddEEKNS9_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESI_EESK_EESI_EEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSR_:bb.a

._crit_edge:                                      ; preds = %bb.c, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit
  %i.cy = icmp slt i64 %i.n, %i.d
  br i1 %i.cy, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit20

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.cz = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !43, !align !44
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !163, !nonnull !43, !align !44 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !165 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !165 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !165 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !165 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 5 uses
  %i.dn = add i64 %.0.i, %i.m
  %i.do = sub i64 %i.d, %i.dn                     ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.do, 4
  br i1 %min.iters.check52, label %scalar.ph51.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i17
  %i.dp = ptrtoaddr ptr %i.dm to i64
  %i.dq = ptrtoaddr ptr %i.dk to i64
  %i.dr = ptrtoaddr ptr %i.di to i64
  %i.ds = ptrtoaddr ptr %i.dg to i64
  %i.dt = ptrtoaddr ptr %i.de to i64
  %i.du = ptrtoaddr ptr %i.da to i64              ; 5 uses
  %i.dv = sub i64 %i.dt, %i.du
  %diff.check54 = icmp ugt i64 %i.dv, -16
  %i.dw = sub i64 %i.ds, %i.du
  %diff.check55 = icmp ugt i64 %i.dw, -16
  %conflict.rdx56 = or i1 %diff.check54, %diff.check55
  %i.dx = sub i64 %i.dr, %i.du
  %diff.check57 = icmp ugt i64 %i.dx, -16
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  %i.dy = sub i64 %i.dq, %i.du
  %diff.check59 = icmp ugt i64 %i.dy, -16
  %conflict.rdx60 = or i1 %conflict.rdx58, %diff.check59
  %i.dz = sub i64 %i.dp, %i.du
  %diff.check61 = icmp ugt i64 %i.dz, -16
  %conflict.rdx62 = or i1 %conflict.rdx60, %diff.check61
  br i1 %conflict.rdx62, label %scalar.ph51.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck53
  %n.vec64 = and i64 %i.do, -2                    ; 3 uses
  %i.ea = add i64 %i.n, %n.vec64
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body65 ] ; 2 uses
  %i.eb = add i64 %i.n, %index66                  ; 6 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.eb
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.eb
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.eb
  %wide.load67 = load <2 x double>, ptr %i.ed, align 8, !tbaa !15
  %wide.load68 = load <2 x double>, ptr %i.ee, align 8, !tbaa !15
  %i.ef = fmul <2 x double> %wide.load67, %wide.load68
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.eb
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.eb
  %wide.load69 = load <2 x double>, ptr %i.eg, align 8, !tbaa !15
  %wide.load70 = load <2 x double>, ptr %i.eh, align 8, !tbaa !15
  %i.ei = fmul <2 x double> %wide.load69, %wide.load70
  %i.ej = fsub <2 x double> %i.ef, %i.ei
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eb
  %wide.load71 = load <2 x double>, ptr %i.ek, align 8, !tbaa !15
  %i.el = fdiv <2 x double> %i.ej, %wide.load71
  store <2 x double> %i.el, ptr %i.ec, align 8, !tbaa !15
  %index.next72 = add nuw i64 %index66, 2         ; 2 uses
  %i.em = icmp eq i64 %index.next72, %n.vec64
  br i1 %i.em, label %middle.block73, label %vector.body65, !llvm.loop !157

middle.block73:                                   ; preds = %vector.body65
  %cmp.n74 = icmp eq i64 %i.do, %n.vec64
  br i1 %cmp.n74, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit20, label %scalar.ph51.preheader

scalar.ph51.preheader:                            ; preds = %vector.memcheck53, %.lr.ph.i17, %middle.block73
  %.05.i18.ph = phi i64 [ %i.n, %vector.memcheck53 ], [ %i.n, %.lr.ph.i17 ], [ %i.ea, %middle.block73 ] ; 10 uses
  %i.en = sub i64 %i.d, %.05.i18.ph
  %.neg78 = add i64 %.05.i18.ph, 1
  %xtraiter76 = and i64 %i.en, 1
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %scalar.ph51.prol.loopexit, label %scalar.ph51.prol

scalar.ph51.prol:                                 ; preds = %scalar.ph51.preheader
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.da, i64 %.05.i18.ph
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05.i18.ph
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05.i18.ph
  %i.er = load double, ptr %i.ep, align 8, !tbaa !15
  %i.es = load double, ptr %i.eq, align 8, !tbaa !15
  %i.et = fmul double %i.er, %i.es
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i18.ph
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18.ph
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !15
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !15
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = fsub double %i.et, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i18.ph
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !15
  %i.fc = fdiv double %i.ez, %i.fb
  store double %i.fc, ptr %i.eo, align 8, !tbaa !15
  %i.fd = add nsw i64 %.05.i18.ph, 1
  br label %scalar.ph51.prol.loopexit

scalar.ph51.prol.loopexit:                        ; preds = %scalar.ph51.prol, %scalar.ph51.preheader
  %.05.i18.unr = phi i64 [ %.05.i18.ph, %scalar.ph51.preheader ], [ %i.fd, %scalar.ph51.prol ]
  %i.fe = icmp eq i64 %i.d, %.neg78
  br i1 %i.fe, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit20, label %scalar.ph51

scalar.ph51:                                      ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51
  %.05.i18 = phi i64 [ %i.gk, %scalar.ph51 ], [ %.05.i18.unr, %scalar.ph51.prol.loopexit ] ; 8 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.da, i64 %.05.i18
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05.i18
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05.i18
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !15
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !15
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i18
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !15
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !15
  %i.fp = fmul double %i.fn, %i.fo
  %i.fq = fsub double %i.fk, %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i18
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !15
  %i.ft = fdiv double %i.fq, %i.fs
  store double %i.ft, ptr %i.ff, align 8, !tbaa !15
  %i.fu = add nsw i64 %.05.i18, 1                 ; 6 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fu
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fu
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !15
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !15
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fu
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.fu
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !15
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !15
  %i.gf = fmul double %i.gd, %i.ge
  %i.gg = fsub double %i.ga, %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fu
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !15
  %i.gj = fdiv double %i.gg, %i.gi
  store double %i.gj, ptr %i.fv, align 8, !tbaa !15
  %i.gk = add nsw i64 %.05.i18, 2                 ; 2 uses
  %exitcond.not.i19.1 = icmp eq i64 %i.gk, %i.d
  br i1 %exitcond.not.i19.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit20, label %scalar.ph51, !llvm.loop !158

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNSB_INS0_20scalar_difference_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESK_EESM_EESK_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit20: ; preds = %scalar.ph51.prol.loopexit, %scalar.ph51, %middle.block73, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.021 = phi i64 [ %.0.i, %.lr.ph ], [ %i.hn, %bb.c ] ; 7 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !43, !align !44
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !38
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %.021
  %i.go = load ptr, ptr %i.cx, align 8, !tbaa !163, !nonnull !43, !align !44 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !165
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %.021
  %i.gs = load <2 x double>, ptr %i.gr, align 1, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !165
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %.021
  %i.gw = load <2 x double>, ptr %i.gv, align 1, !tbaa !13
  %i.gx = fmul <2 x double> %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !165
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %.021
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !165
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %.021
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !13
  %i.hg = fmul <2 x double> %i.hb, %i.hf
  %i.hh = fsub <2 x double> %i.gx, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !165
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %.021
  %i.hl = load <2 x double>, ptr %i.hk, align 1, !tbaa !13
  %i.hm = fdiv <2 x double> %i.hh, %i.hl
  store <2 x double> %i.hm, ptr %i.gn, align 16, !tbaa !13
  %i.hn = add nsw i64 %.021, 2                    ; 2 uses
  %i.ho = icmp slt i64 %i.hn, %i.n
  br i1 %i.ho, label %bb.c, label %._crit_edge, !llvm.loop !159
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 double", !11, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !16, i64 0, !12, i64 8, !12, i64 16}
!18 = !{!17, !12, i64 8}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !16, i64 0, !12, i64 8}
!22 = !{!21, !12, i64 8}
!23 = !{!17, !16, i64 0}
!24 = !{!21, !16, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!17, !12, i64 16}
!30 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !12, i64 0}
!31 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!32 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !16, i64 0, !30, i64 8, !31, i64 16}
!33 = !{!32, !16, i64 0}
!34 = !{!30, !12, i64 0}
!35 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !11, i64 0}
!36 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !16, i64 0}
!37 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEEEE", !16, i64 0, !31, i64 8, !30, i64 16}
!38 = !{!37, !16, i64 0}
!39 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEE", !11, i64 0}
!40 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS2_INS0_20scalar_difference_opIddEEKNS2_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESB_EESD_EESB_EEEE", !11, i64 0}
!41 = !{!"p1 _ZTSN5Eigen8internal9assign_opIddEE", !11, i64 0}
!42 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEE", !11, i64 0}
!43 = !{}
!44 = !{i64 8}
!45 = !{!"p1 float", !11, i64 0}
!46 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELi1ELin1ELi1EEE", !45, i64 0, !12, i64 8}
!47 = !{!46, !45, i64 0}
!48 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !16, i64 0, !12, i64 8}
!49 = !{!48, !16, i64 0}
!50 = distinct !{!50, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!51 = distinct !{!51, !50, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!53 = distinct !{!53, !52, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!54 = distinct !{!54, !25, !26, !27}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !25, !26}
!57 = distinct !{!57, !25, !26, !27}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25, !26}
!60 = distinct !{!60, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!61 = distinct !{!61, !60, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!62 = distinct !{!62, !25, !26, !27}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !25, !26}
!65 = distinct !{!65, !25, !26, !27}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !25, !26}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!70 = distinct !{!70, !69, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!71 = distinct !{!71, !25, !26, !27}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !25, !26}
!74 = distinct !{!74, !25, !26, !27}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !25, !26}
!77 = distinct !{!77, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!78 = distinct !{!78, !77, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!79 = distinct !{!79, !25, !26, !27}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !25, !26}
!82 = distinct !{!82, !25, !26, !27}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !25, !26}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !25, !26, !27}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25, !26}
!92 = !{!51}
!93 = !{!53, !51}
!94 = !{!61}
!95 = !{!70}
!96 = !{!78}
!97 = !{!86}
!98 = !{!87}
!99 = distinct !{!99, i1 true, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE"}
!100 = distinct !{!100, !99, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE"}
!102 = distinct !{!102, !101, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE"}
!104 = distinct !{!104, !103, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEmiIS5_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEEKS5_KSC_EERKNS0_ISC_EE: argument 0"}
!105 = distinct !{!105, !25, !26, !27}
!106 = distinct !{!106, !25, !26}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!109 = distinct !{!109, !108, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!111 = distinct !{!111, !110, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!113 = distinct !{!113, !112, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!114 = distinct !{!114, !25, !26, !27}
!115 = distinct !{!115, !25, !26}
!116 = distinct !{!116, !25, !26, !27}
!117 = distinct !{!117, !25, !26}
!118 = distinct !{!118, !25}
!119 = !{!100}
!120 = !{!102}
!121 = !{!104}
!122 = !{!109}
!123 = !{!35, !35, i64 0}
!124 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !32, i64 0}
!125 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !124, i64 0, !35, i64 24, !30, i64 32, !30, i64 40, !12, i64 48}
!126 = !{!125, !12, i64 48}
!127 = !{!36, !16, i64 0}
!128 = !{!39, !39, i64 0}
!129 = !{!40, !40, i64 0}
!130 = !{!41, !41, i64 0}
!131 = !{!42, !42, i64 0}
!132 = !{!111}
!133 = !{!113}
!134 = distinct !{!134, !25, !26, !27}
!135 = distinct !{!135, !28}
!136 = distinct !{!136, !25, !26}
!137 = distinct !{!137, !25}
!138 = !{!"_ZTSN5Eigen12ArrayWrapperIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !35, i64 0}
!139 = !{!138, !35, i64 0}
!140 = distinct !{!140, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEES7_EEE9subVectorILNS_13DirectionTypeE1EEENS2_11conditionalIXeqT_LSB_0EEKNS_5BlockIKS8_Lin1ELi1ELb1EEEKNSD_ISE_Li1ELin1ELb0EEEE4typeEl"}
!141 = distinct !{!141, !140, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEES7_EEE9subVectorILNS_13DirectionTypeE1EEENS2_11conditionalIXeqT_LSB_0EEKNS_5BlockIKS8_Lin1ELi1ELb1EEEKNSD_ISE_Li1ELin1ELb0EEEE4typeEl: argument 0"}
!142 = distinct !{!142, !25, !26, !27}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !25}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !25, !26}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !25}
!150 = !{!"p1 _ZTSN5Eigen5ArrayIdLin1ELin1ELi0ELin1ELin1EEE", !11, i64 0}
!151 = !{!"_ZTSN5Eigen8internal17scalar_product_opIddEE"}
!152 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEES6_EE", !150, i64 0, !150, i64 8, !151, i64 16}
!153 = !{!152, !150, i64 8}
!154 = !{!141}
!155 = distinct !{!155, !25, !26, !27}
!156 = distinct !{!156, !25, !26}
!157 = distinct !{!157, !25, !26, !27}
!158 = distinct !{!158, !25, !26}
!159 = distinct !{!159, !25}
!160 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS8_INS0_20scalar_difference_opIddEEKNS8_INS0_17scalar_product_opIddEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEESH_EESJ_EESH_EEEENS0_9assign_opIddEELi0EEE", !39, i64 0, !40, i64 8, !41, i64 16, !42, i64 24}
!161 = !{!160, !42, i64 24}
!162 = !{!160, !39, i64 0}
!163 = !{!160, !40, i64 8}
!164 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEE", !36, i64 0}
!165 = !{!164, !16, i64 0}
end_hunk_2
