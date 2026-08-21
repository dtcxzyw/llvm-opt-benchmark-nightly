Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerData?download=true
inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 146
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Eigen::Matrix.274" = type { %"class.Eigen::PlainObjectBase.275" }
%"class.Eigen::PlainObjectBase.275" = type { %"class.Eigen::DenseStorage.282" }
%"class.Eigen::DenseStorage.282" = type { %"struct.Eigen::internal::plain_array.283" }
%"struct.Eigen::internal::plain_array.283" = type { [4 x double] }
%"struct.Eigen::internal::evaluator.420" = type { %"struct.Eigen::internal::evaluator.421" }
%"struct.Eigen::internal::evaluator.421" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data" }
%"class.Eigen::internal::plainobjectbase_evaluator_data" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.491" = type { %"struct.Eigen::internal::block_evaluator.492" }
%"struct.Eigen::internal::block_evaluator.492" = type { %"struct.Eigen::internal::mapbase_evaluator.493" }
%"struct.Eigen::internal::mapbase_evaluator.493" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.496" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64, i64 }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase" = type { %"class.Eigen::MapBase.71" }
%"class.Eigen::MapBase.71" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix.222" = type { %"class.Eigen::PlainObjectBase.223" }
%"class.Eigen::PlainObjectBase.223" = type { %"class.Eigen::DenseStorage.230" }
%"class.Eigen::DenseStorage.230" = type { %"struct.Eigen::internal::plain_array.231" }
%"struct.Eigen::internal::plain_array.231" = type { [3 x double] }
%"struct.Eigen::internal::assign_op.544" = type { i8 }
%"class.Eigen::CwiseBinaryOp.394" = type <{ [8 x i8], %"class.Eigen::CwiseNullaryOp.387", ptr, [8 x i8] }>
%"class.Eigen::CwiseNullaryOp.387" = type { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", %"struct.Eigen::internal::scalar_constant_op" }
%"struct.Eigen::internal::scalar_constant_op" = type { double }
%"class.Eigen::Matrix.108" = type { %"class.Eigen::PlainObjectBase.109" }
%"class.Eigen::PlainObjectBase.109" = type { %"class.Eigen::DenseStorage.116" }
%"class.Eigen::DenseStorage.116" = type { ptr, i64 }
%"class.Eigen::Block.139" = type { %"class.Eigen::BlockImpl.140" }
%"class.Eigen::BlockImpl.140" = type { %"class.Eigen::internal::BlockImpl_dense.141" }
%"class.Eigen::internal::BlockImpl_dense.141" = type { %"class.Eigen::MapBase.142", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.142" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Replicate" = type { %"class.Eigen::CwiseBinaryOp", %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::CwiseBinaryOp" = type <{ [8 x i8], %"class.Eigen::CwiseBinaryOp.166", %"class.Eigen::CwiseNullaryOp.177", [8 x i8] }>
%"class.Eigen::CwiseBinaryOp.166" = type <{ %"class.Eigen::ArrayWrapper", %"class.Eigen::CwiseNullaryOp.177", [8 x i8] }>
%"class.Eigen::ArrayWrapper" = type { ptr }
%"class.Eigen::CwiseNullaryOp.177" = type { %"class.Eigen::internal::variable_if_dynamic", [8 x i8], %"struct.Eigen::internal::scalar_constant_op" }
%"class.Eigen::Matrix.12" = type { %"class.Eigen::PlainObjectBase.13" }
%"class.Eigen::PlainObjectBase.13" = type { %"class.Eigen::DenseStorage.20" }
%"class.Eigen::DenseStorage.20" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.21" = type { %"class.Eigen::PlainObjectBase.22" }
%"class.Eigen::PlainObjectBase.22" = type { %"class.Eigen::DenseStorage.29" }
%"class.Eigen::DenseStorage.29" = type { ptr, i64, i64 }
%"struct.Eigen::internal::evaluator.708" = type { %"struct.Eigen::internal::binary_evaluator.709" }
%"struct.Eigen::internal::binary_evaluator.709" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Matrix<double, -1, -1>, const Eigen::Matrix<double, -1, -1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Matrix<double, -1, -1>, const Eigen::Matrix<double, -1, -1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.419", %"struct.Eigen::internal::evaluator.419" }
%"struct.Eigen::internal::evaluator.419" = type { %"struct.Eigen::internal::evaluator.420" }
%"class.Eigen::internal::generic_dense_assignment_kernel.712" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Replicate.241" = type <{ ptr, [8 x i8] }>
%"class.Eigen::Matrix.246" = type { %"class.Eigen::PlainObjectBase.247" }
%"class.Eigen::PlainObjectBase.247" = type { %"class.Eigen::DenseStorage.254" }
%"class.Eigen::DenseStorage.254" = type { ptr, i64 }
%"class.Eigen::CwiseBinaryOp.879" = type <{ ptr, %"class.Eigen::CwiseNullaryOp.387", [8 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.Eigen::internal::evaluator.558" = type { %"struct.Eigen::internal::unary_evaluator.base", [7 x i8] }
%"struct.Eigen::internal::unary_evaluator.base" = type <{ %"class.Eigen::Array", %"struct.Eigen::internal::evaluator.569", %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Array" = type { %"class.Eigen::PlainObjectBase.562" }
%"class.Eigen::PlainObjectBase.562" = type { %"class.Eigen::DenseStorage.116" }
%"struct.Eigen::internal::evaluator.569" = type { %"struct.Eigen::internal::evaluator.570" }
%"struct.Eigen::internal::evaluator.570" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.510" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.510" = type { ptr }
%"class.Eigen::internal::generic_dense_assignment_kernel.631" = type { ptr, ptr, ptr, ptr }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_ = comdat any

$__clang_call_terminate = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EESC_EEEERKNS_9DenseBaseIT_EE = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_ = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS1_IdLin1ELin1ELi0ELin1ELin1EEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKS3_Lin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEES3_hhEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9ReplicateINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS5_INS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEESM_EELin1ELin1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE18conservativeResizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi4ELi0EE3runERSB_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS6_SC_EEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSH_ = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9ReplicateIS2_Li2ELi1EEEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_ = comdat any

$_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi1EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIjLin1ELin1ELin1ELi1EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [112 x i8] c"ERROR (set_mesh): The new mesh has a different number of vertices/faces. Please clear the mesh before plotting.\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"ERROR (set_normals): Please provide a normal per face, per corner or per vertex.\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"ERROR (set_colors): Please provide a single color, or a color per face or per vertex.\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"ERROR (set_UV): Please provide uv per vertex.\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3igl6opengl10ViewerDataC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN3igl6opengl10ViewerDataC2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerDataC2Ev(ptr noundef nonnull align 8 dereferenceable(1488) initializes((0, 583), (584, 676)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %0, i8 0, i64 576, i1 false)
  store i32 65535, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i8 0, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 0, ptr %i.c, align 1, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 582
  store i8 0, ptr %i.d, align 2, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 -1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 0, ptr %i.f, align 4, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 0, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.i, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 0, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %i.k, align 4, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  store <4 x float> <float 3.000000e+01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <4 x float> <float 0.000000e+00, float 4.000000e-02, float 1.000000e+00, float 3.500000e+01>, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i32 -1, ptr %i.o, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke void @_ZN3igl6opengl6MeshGLC1Ev(ptr noundef nonnull align 8 dereferenceable(804) %i.p)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl6opengl10ViewerData5clearEv(ptr noundef nonnull align 8 dereferenceable(1488) %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #25
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #25
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #25
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ao) #25
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ap) #25
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.aq) #25
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ar) #25
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.as) #25
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.at) #25
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.au) #25
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.av) #25
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.aw) #25
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.ax) #25
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ay) #25
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.az) #25
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ba) #25
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.bb) #25
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.bc) #25
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !59
end_hunk_0
begin_hunk_1_@_ZN3igl6opengl10ViewerData8set_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.kn = sdiv i64 9223372036854775807, %i.kh
  %i.ko = icmp sgt i64 %i.kf, %i.kn
  br i1 %i.ko, label %.noexc.i.i.i.i.i.i.i91, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i82

.noexc.i.i.i.i.i.i.i91:                           ; preds = %bb.ah
  %i.kp = call ptr @__cxa_allocate_exception(i64 8) #25
  br label %.invoke173

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i82: ; preds = %bb.ah, %bb.ag
  %i.kq = mul nsw i64 %i.kh, %i.kf
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %i.kq, i64 noundef %i.kf, i64 noundef %i.kh)
          to label %.noexc93 unwind label %bb.o

.noexc93:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i82
  %.pre.i.i.i.i.i.i.i83 = load i64, ptr %i.hs, align 8, !tbaa !115
  %.pre20.i.i.i.i.i.i.i84 = load i64, ptr %i.kj, align 8, !tbaa !119
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc93, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit77
  %i.kr = phi i64 [ %.pre20.i.i.i.i.i.i.i84, %.noexc93 ], [ %i.kh, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit77 ]
  %i.ks = phi i64 [ %.pre.i.i.i.i.i.i.i83, %.noexc93 ], [ %i.kf, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit77 ]
  %i.kt = load ptr, ptr %i.hr, align 8, !tbaa !61 ; 8 uses
  %i.ku = ptrtoaddr ptr %i.kt to i64
  %i.kv = mul nsw i64 %i.ks, %i.kr                ; 7 uses
  %i.kw = sdiv i64 %i.kv, 4
  %i.kx = shl nsw i64 %i.kw, 2                    ; 6 uses
  %i.ky = icmp sgt i64 %i.kv, 3
  br i1 %i.ky, label %.lr.ph.i.i.i.i.i.i.i.i89, label %._crit_edge.i.i.i.i.i.i.i.i85

._crit_edge.i.i.i.i.i.i.i.i85:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i89, %bb.ai
  %i.kz = icmp slt i64 %i.kx, %i.kv
  br i1 %i.kz, label %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94

.lr.ph.i.i.i.i.i.i.i.i.i86.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i85
  %i.la = sub i64 %i.kv, %i.kx                    ; 3 uses
  %min.iters.check193 = icmp ult i64 %i.la, 8
  %i.lb = sub i64 %i.ke, %i.ku
  %diff.check191 = icmp ugt i64 %i.lb, -32
  %or.cond235 = select i1 %min.iters.check193, i1 true, i1 %diff.check191
  br i1 %or.cond235, label %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader
  %n.vec195 = and i64 %i.la, -8                   ; 3 uses
  %i.lc = add i64 %i.kx, %n.vec195
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next200, %vector.body196 ] ; 2 uses
  %i.ld = add i64 %i.kx, %index197                ; 2 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load198 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !120
  %wide.load199 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !120
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %wide.load198, ptr %i.le, align 4, !tbaa !120
  store <4 x i32> %wide.load199, ptr %i.lh, align 4, !tbaa !120
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.li = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.li, label %middle.block201, label %vector.body196, !llvm.loop !137

middle.block201:                                  ; preds = %vector.body196
  %cmp.n202 = icmp eq i64 %i.la, %n.vec195
  br i1 %cmp.n202, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94, label %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238

.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader, %middle.block201
  %.05.i.i.i.i.i.i.i.i.i87.ph = phi i64 [ %i.kx, %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader ], [ %i.lc, %middle.block201 ] ; 4 uses
  %i.lj = sub i64 %i.kv, %.05.i.i.i.i.i.i.i.i.i87.ph
  %xtraiter244 = and i64 %i.lj, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i86.prol

.lr.ph.i.i.i.i.i.i.i.i.i86.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238, %.lr.ph.i.i.i.i.i.i.i.i.i86.prol
  %.05.i.i.i.i.i.i.i.i.i87.prol = phi i64 [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i86.prol ], [ %.05.i.i.i.i.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238 ] ; 3 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph.i.i.i.i.i.i.i.i.i86.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238 ]
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %.05.i.i.i.i.i.i.i.i.i87.prol
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %.05.i.i.i.i.i.i.i.i.i87.prol
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !120
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !120
  %i.ln = add nsw i64 %.05.i.i.i.i.i.i.i.i.i87.prol, 1 ; 2 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i86.prol, !llvm.loop !138

.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.prol, %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238
  %.05.i.i.i.i.i.i.i.i.i87.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i.i.i.i.i86.preheader238 ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i86.prol ]
  %i.lo = sub i64 %.05.i.i.i.i.i.i.i.i.i87.ph, %i.kv
  %i.lp = icmp ugt i64 %i.lo, -4
  br i1 %i.lp, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94, label %.lr.ph.i.i.i.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i.i.i.i86:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i86
  %.05.i.i.i.i.i.i.i.i.i87 = phi i64 [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i86 ], [ %.05.i.i.i.i.i.i.i.i.i87.unr, %.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit ] ; 6 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %.05.i.i.i.i.i.i.i.i.i87
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %.05.i.i.i.i.i.i.i.i.i87
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !120
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !120
  %i.lt = add nsw i64 %.05.i.i.i.i.i.i.i.i.i87, 1 ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.lt
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.lt
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !120
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !120
  %i.lx = add nsw i64 %.05.i.i.i.i.i.i.i.i.i87, 2 ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.lx
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.lx
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !120
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !120
  %i.mb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i87, 3 ; 2 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.mb
  %i.md = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.mb
  %i.me = load i32, ptr %i.md, align 4, !tbaa !120
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !120
  %i.mf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i87, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i88.3 = icmp eq i64 %i.mf, %i.kv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i88.3, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94, label %.lr.ph.i.i.i.i.i.i.i.i.i86, !llvm.loop !139

.lr.ph.i.i.i.i.i.i.i.i89:                         ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i89
  %.011.i.i.i.i.i.i.i.i90 = phi i64 [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i89 ], [ 0, %bb.ai ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.011.i.i.i.i.i.i.i.i90
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.011.i.i.i.i.i.i.i.i90
  %i.mi = load <2 x i64>, ptr %i.mh, align 16, !tbaa !70
  store <2 x i64> %i.mi, ptr %i.mg, align 16, !tbaa !70
  %i.mj = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i90, 4 ; 2 uses
  %i.mk = icmp slt i64 %i.mj, %i.kx
  br i1 %i.mk, label %.lr.ph.i.i.i.i.i.i.i.i89, label %._crit_edge.i.i.i.i.i.i.i.i85, !llvm.loop !124

bb.aj:                                            ; preds = %bb.ab, %bb.aa
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aj
  %i.mm = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !78
  %i.mn = getelementptr i8, ptr %i.mm, i64 -24
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 240
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !140 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc106 unwind label %bb.o

.noexc106:                                        ; preds = %bb.ak
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !155
  %.not.i1.i.i = icmp eq i8 %i.mt, 0
  br i1 %.not.i1.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 67
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mr)
          to label %.noexc107 unwind label %bb.o

.noexc107:                                        ; preds = %bb.am
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !78
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = invoke noundef signext i8 %i.my(ptr noundef nonnull align 8 dereferenceable(570) %i.mr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !160

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc107, %bb.al
  %.0.i.i.i = phi i8 [ %i.mv, %bb.al ], [ %i.mz, %.noexc107 ]
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc109 unwind label %bb.o

.noexc109:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94 unwind label %bb.o ; 0 uses

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit94: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i86.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i86, %middle.block201, %.noexc109, %._crit_edge.i.i.i.i.i.i.i.i85, %bb.y
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !9
  %i.ne = or i32 %i.nd, 129
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !9
  %i.nf = load ptr, ptr %10, align 8, !tbaa !59
  call void @free(ptr noundef %i.nf) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

bb.an:                                            ; preds = %bb.z, %bb.o, %bb.g, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.aa, %bb.f ], [ %i.ab, %bb.g ], [ %i.hl, %bb.z ]
  %i.ng = load ptr, ptr %10, align 8, !tbaa !59
  call void @free(ptr noundef %i.ng) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData15compute_normalsEv(ptr noundef nonnull align 8 dereferenceable(1488) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix.222", align 8 ; 5 uses
  %2 = alloca %"class.Eigen::Matrix.222", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %i.f, 3074457345618258602
  br i1 %i.l, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = mul nsw i64 %i.f, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.n, i64 noundef %i.f, i64 noundef 3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !76
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %i.p = phi i64 [ %.pr.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ 3, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.r = icmp sgt i64 %i.p, 0
  %i.s = icmp sgt i64 %i.o, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.o, 4
  %n.vec = and i64 %i.o, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.t = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, %i.o
  %invariant.gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.u = urem i64 %.0810.i.i.i.i.i.i.i.i, 3
  %3 = getelementptr [8 x i8], ptr %1, i64 %i.u
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %3, align 8, !tbaa !80 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <2 x double> %broadcast.splat, ptr %i.v, align 8, !tbaa !80
  store <2 x double> %broadcast.splat, ptr %i.w, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph, %middle.block
  %i.y = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.p
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !162

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i
  store double %.pre.i.i.i.i.i.i.i.i, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !80
  %i.z = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, %i.o
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !163

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  %.not.i.i.i.i.i.i.i.i1 = icmp eq i64 %i.af, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %.not8.i.i.i.i.i.i.i.i2 = icmp eq i64 %i.ah, 3
  %or.cond.i.i.i.i.i.i.i.i3 = select i1 %.not.i.i.i.i.i.i.i.i1, i1 %.not8.i.i.i.i.i.i.i.i2, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ai = icmp sgt i64 %i.ac, 3074457345618258602
  br i1 %i.ai, label %.noexc.i.i.i.i.i.i.i18, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i5

.noexc.i.i.i.i.i.i.i18:                           ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aj, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i5: ; preds = %bb.e
  %i.ak = mul nsw i64 %i.ac, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.ak, i64 noundef %i.ac, i64 noundef 3)
  %.pr.i.i.i.i.i.i.i6 = load i64, ptr %i.ag, align 8, !tbaa !76
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.ae, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i5, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.al = phi i64 [ %.pre.i.i.i.i.i.i.i7, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i5 ], [ %i.ac, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 6 uses
  %i.am = phi i64 [ %.pr.i.i.i.i.i.i.i6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i5 ], [ 3, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.ao = icmp sgt i64 %i.am, 0
  %i.ap = icmp sgt i64 %i.al, 0
  %or.cond.i.i.i.i.i.i.i8 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i8, label %.preheader.i.i.i.i.i.i.i.i9.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit19

.preheader.i.i.i.i.i.i.i.i9.preheader:            ; preds = %bb.f
  %min.iters.check38 = icmp ult i64 %i.al, 4
  %n.vec40 = and i64 %i.al, 9223372036854775804   ; 3 uses
  %cmp.n47 = icmp eq i64 %i.al, %n.vec40
  br label %.preheader.i.i.i.i.i.i.i.i9

.preheader.i.i.i.i.i.i.i.i9:                      ; preds = %.preheader.i.i.i.i.i.i.i.i9.preheader, %._crit_edge.i.i.i.i.i.i.i.i16
  %.0810.i.i.i.i.i.i.i.i10 = phi i64 [ %i.av, %._crit_edge.i.i.i.i.i.i.i.i16 ], [ 0, %.preheader.i.i.i.i.i.i.i.i9.preheader ] ; 3 uses
  %i.aq = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i10, %i.al
  %invariant.gep.i.i.i.i.i.i.i.i11 = getelementptr [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.ar = urem i64 %.0810.i.i.i.i.i.i.i.i10, 3
  %4 = getelementptr [8 x i8], ptr %2, i64 %i.ar
  %.pre.i.i.i.i.i.i.i.i12 = load double, ptr %4, align 8, !tbaa !80 ; 2 uses
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i9
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %.pre.i.i.i.i.i.i.i.i12, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph39
  %index44 = phi i64 [ 0, %vector.ph39 ], [ %index.next45, %vector.body43 ] ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i11, i64 %index44 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store <2 x double> %broadcast.splat42, ptr %i.as, align 8, !tbaa !80
  store <2 x double> %broadcast.splat42, ptr %i.at, align 8, !tbaa !80
  %index.next45 = add nuw i64 %index44, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.au, label %middle.block46, label %vector.body43, !llvm.loop !164

middle.block46:                                   ; preds = %vector.body43
  br i1 %cmp.n47, label %._crit_edge.i.i.i.i.i.i.i.i16, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %.preheader.i.i.i.i.i.i.i.i9, %middle.block46
  %.09.i.i.i.i.i.i.i.i13.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i9 ], [ %n.vec40, %middle.block46 ]
  br label %scalar.ph37

._crit_edge.i.i.i.i.i.i.i.i16:                    ; preds = %scalar.ph37, %middle.block46
  %i.av = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i10, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i17 = icmp eq i64 %i.av, %i.am
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i17, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit19, label %.preheader.i.i.i.i.i.i.i.i9, !llvm.loop !162

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.09.i.i.i.i.i.i.i.i13 = phi i64 [ %i.aw, %scalar.ph37 ], [ %.09.i.i.i.i.i.i.i.i13.ph, %scalar.ph37.preheader ] ; 2 uses
  %gep.i.i.i.i.i.i.i.i14 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i11, i64 %.09.i.i.i.i.i.i.i.i13
  store double %.pre.i.i.i.i.i.i.i.i12, ptr %gep.i.i.i.i.i.i.i.i14, align 8, !tbaa !80
  %i.aw = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i13, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i15 = icmp eq i64 %i.aw, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i15, label %._crit_edge.i.i.i.i.i.i.i.i16, label %scalar.ph37, !llvm.loop !165

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit19: ; preds = %._crit_edge.i.i.i.i.i.i.i.i16, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_9ReplicateINS0_IdLi1ELi3ELi1ELi1ELi3EEELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !9
  %i.bc = or i32 %i.bb, 4
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData14uniform_colorsERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  %5 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !70, !noalias !166
  store <2 x double> %i.a, ptr %4, align 16, !tbaa !70, !noalias !166
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !80, !noalias !166
  %i.e = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.d, i64 0
  store <2 x double> %i.e, ptr %i.b, align 16, !tbaa !80
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !70, !noalias !169
  store <2 x double> %i.f, ptr %5, align 16, !tbaa !70, !noalias !169
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !80, !noalias !169
  %i.j = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.i, i64 0
  store <2 x double> %i.j, ptr %i.g, align 16, !tbaa !80
  %i.k = load <2 x double>, ptr %3, align 8, !tbaa !70, !noalias !172
  store <2 x double> %i.k, ptr %6, align 16, !tbaa !70, !noalias !172
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !80, !noalias !172
  %i.o = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.n, i64 0
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !80
  call void @_ZN3igl6opengl10ViewerData14uniform_colorsERKN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData12grid_textureEv(ptr noundef nonnull align 8 dereferenceable(1488) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::assign_op.544", align 1 ; 3 uses
  %2 = alloca %"struct.Eigen::internal::assign_op.544", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !176
  %i.f = mul nsw i64 %i.e, %i.c
  %.not.i.i = icmp eq i64 %i.f, 16384
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.g) #25
  %i.h = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split.i.i:                                  ; preds = %bb.b
  store ptr %i.h, ptr %i.a, align 8, !tbaa !60
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 128, ptr %i.b, align 8, !tbaa !175
  store i64 128, ptr %i.d, align 8, !tbaa !176
  br label %.preheader

.preheader:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %.split.us
  %indvars.iv50 = phi i64 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ], [ %indvars.iv.next51, %.split.us ] ; 6 uses
  %i.k = icmp samesign ult i64 %indvars.iv50, 64
  br i1 %i.k, label %.preheader.split.split, label %.preheader.split.us.split

.preheader.split.us.split:                        ; preds = %.preheader, %bb.e
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.m = load i64, ptr %i.b, align 8, !tbaa !175
  %i.n = mul nsw i64 %i.m, %indvars.iv38
  %i.o = getelementptr i8, ptr %i.l, i64 %indvars.iv50
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !70
  %i.q = icmp samesign ugt i64 %indvars.iv38, 63
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.split.us.split
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.s = load i64, ptr %i.b, align 8, !tbaa !175
  %i.t = mul nsw i64 %i.s, %indvars.iv38
  %i.u = getelementptr i8, ptr %i.r, i64 %indvars.iv50
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  store i8 -1, ptr %i.v, align 1, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.split.us.split
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 128
  br i1 %exitcond41.not, label %.split.us, label %.preheader.split.us.split, !llvm.loop !177

bb.f:                                             ; preds = %.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  call void @_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEES3_hhEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !60   ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !175
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !176
  %i.ad = mul nsw i64 %i.ac, %i.aa                ; 11 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %iter.check, label %_ZN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

iter.check:                                       ; preds = %bb.f
  %i.af = ptrtoaddr ptr %i.y to i64
  %i.ag = ptrtoaddr ptr %i.x to i64
  %min.iters.check = icmp ult i64 %i.ad, 4
  %i.ah = sub i64 %i.ag, %i.af
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <16 x i8>, ptr %i.ak, align 1, !tbaa !70
  %wide.load64 = load <16 x i8>, ptr %i.al, align 1, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !70
  store <16 x i8> %wide.load64, ptr %i.am, align 1, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.ad, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %index66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %index66
  %wide.load67 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !70
  store <4 x i8> %wide.load67, ptr %i.ao, align 1, !tbaa !70
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.ad, %n.vec65
  br i1 %cmp.n69, label %_ZN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

end_hunk_1
