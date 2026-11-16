Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graphsegmentation_demo?download=true
inline.NumInlined: 165
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation17GraphSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to create GraphSegmentation Algorithm.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to load input image\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [10 x i8] c" segments\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Image written to \00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"A program demonstrating the use and capabilities of a particular graph based image\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"segmentation algorithm described in P. Felzenszwalb, D. Huttenlocher,\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"             \22Efficient Graph-Based Image Segmentation\22\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"International Journal of Computer Vision, Vol. 59, No. 2, September 2004\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"./graphsegmentation_demo input_image output_image [simga=0.5] [k=300] [min_size=100]\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z10hsv_to_rgbN2cv7Scalar_IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Scalar_") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef 1, i32 noundef 69)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef 1, i32 noundef 69)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !19
  %i.d = fptrunc <2 x double> %i.c to <2 x float>
  %i.e = fmul <2 x float> %i.d, <float 3.600000e+02, float 1.000000e+00>
  store <2 x float> %i.e, ptr %i.b, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fptrunc double %i.g to float
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !24
  store i32 16842752, ptr %4, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !26
  store ptr %3, ptr %i.m, align 8, !tbaa !27
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 55, i32 noundef 0, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  %i.t = load <2 x float>, ptr %i.q, align 4, !tbaa !21
  %i.u = fmul <2 x float> %i.t, splat (float 2.550000e+02)
  %i.v = fptosi <2 x float> %i.u to <2 x i32>
  %i.w = sitofp <2 x i32> %i.v to <2 x double>
  store <2 x double> %i.w, ptr %0, align 8, !tbaa !19
  %i.x = fmul float %i.s, 2.550000e+02
  %i.y = fptosi float %i.x to i32
  %i.z = sitofp i32 %i.y to double
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.aa, align 8, !tbaa !19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn10.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_Z13color_mappingi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Scalar_") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %i.a = sitofp i32 %1 to double
  %i.b = tail call double @llvm.fmuladd.f64(double %i.a, double f0x3FE3C6EF372FE951, double f0x3FCF499FDC28E049)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 1.200000e+00) #15
  store double %i.c, ptr %2, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x double> <double f0x3FEE666666666666, double 8.000000e-01>, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !19
  call void @_Z10hsv_to_rgbN2cv7Scalar_IdEE(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8 %0, ptr noundef nonnull align 8 dead_on_return %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 -3, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.cv::Ptr", align 8          ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.std::vector", align 8      ; 9 uses
  %i.e = add i32 %0, -7
  %or.cond = icmp ult i32 %i.e, -5
  br i1 %or.cond, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !73
  %.not.i1.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.s, %bb.e ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.4, i64 noundef 82) ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67 ; 6 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !73
  %.not.i1.i.i3.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
end_hunk_0
