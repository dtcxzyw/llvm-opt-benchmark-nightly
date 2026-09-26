Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/create_mask?download=true
inline.NumInlined: 261
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Point_" = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::CommandLineParser" = type { ptr }

$_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@src = hidden global %"class.cv::Mat" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@img1 = hidden global %"class.cv::Mat" zeroinitializer, align 8
@mask = hidden global %"class.cv::Mat" zeroinitializer, align 8
@final = hidden global %"class.cv::Mat" zeroinitializer, align 8
@point = hidden local_unnamed_addr global %"class.cv::Point_" zeroinitializer, align 8
@pts = hidden global %"class.std::vector" zeroinitializer, align 8
@drag = hidden local_unnamed_addr global i32 0, align 4
@var = hidden local_unnamed_addr global i32 0, align 4
@flag = hidden local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"{@input | lena.jpg | input image}\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"This program demonstrates using mouse events\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [131 x i8] c"\0A\09left mouse button - set a point to create mask shape\0A\09right mouse button - create mask from points\0A\09middle mouse button - reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"@input\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Error opening image: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.17, ptr @.str.14, i32 174, i32 3, ptr @.str.18, ptr @.str.19, ptr @.str.20 }, comdat, align 8
@.str.17 = private unnamed_addr constant [79 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Point_<int>]\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_create_mask.cpp, ptr null }]

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12mouseHandleriiiiPv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = icmp eq i32 %0, 1
  %i.b = load i32, ptr @drag, align 4             ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %or.cond.not38 = select i1 %i.a, i1 %i.c, i1 false
  %i.d = load i32, ptr @flag, align 4
  %i.e = icmp eq i32 %i.d, 0
  %or.cond5 = select i1 %or.cond.not38, i1 %i.e, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @var, align 4, !tbaa !34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) @src)
  %i.h = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) @img1, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

bb.f:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0.insert.ext = zext i32 %2 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0157.0.insert.ext = zext i32 %1 to i64
  %.sroa.0157.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0157.0.insert.ext ; 2 uses
  store i64 %.sroa.0157.0.insert.insert, ptr @point, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !16
  store ptr @img1, ptr %i.j, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.l, align 8, !tbaa !36
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.0157.0.insert.insert, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 8), align 8, !tbaa !37 ; 5 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 16), align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr @point, align 8
  store i64 %i.o, ptr %i.m, align 4
  %41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 8), align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 8), align 8, !tbaa !37
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @pts, align 8, !tbaa !12   ; 5 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #20
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #21 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = load i64, ptr @point, align 8
  store i64 %i.ad, ptr %i.ac, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !39, !noalias !38
  store i64 %i.ae, ptr %.012.i.i.i.i.i, align 4, !alias.scope !38, !noalias !39
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 16), align 8, !tbaa !13
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ak) #18
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ab, ptr @pts, align 8, !tbaa !12
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 8), align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 16), align 8, !tbaa !13
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.am = load i32, ptr @var, align 4, !tbaa !34  ; 3 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr @var, align 4, !tbaa !34
  store i32 1, ptr @drag, align 4, !tbaa !34
  %i.ao = icmp sgt i32 %i.am, 0
  br i1 %i.ao, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.aq, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !16
  store ptr @img1, ptr %i.ap, align 8, !tbaa !17
  %i.ar = load ptr, ptr @pts, align 8, !tbaa !12
  %i.as = zext nneg i32 %i.am to i64
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %.sroa.08.0.copyload = load i64, ptr %i.au, align 4
  %.sroa.07.0.copyload = load i64, ptr @point, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.av, align 8, !tbaa !36
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 %.sroa.08.0.copyload, i64 %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.aw, ptr %14, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.ax, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i8 0, ptr %i.ay, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.ba, align 4, !tbaa !26
  store i32 16842752, ptr %15, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @img1, ptr %i.bb, align 8, !tbaa !17
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.bc = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #18
  br label %.thread

.thread:                                          ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.thread159

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.bh = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.m
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %common.resume

bb.n:                                             ; preds = %bb.a
  %i.bl = icmp eq i32 %0, 4
  %i.bm = icmp ne i32 %i.b, 0
  %or.cond3 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond3, label %._crit_edge.i.i71, label %bb.q

._crit_edge.i.i71:                                ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bn, ptr %16, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bn, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 6, ptr %i.bo, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i8 0, ptr %i.bp, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.br, align 4, !tbaa !26
  store i32 16842752, ptr %17, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @img1, ptr %i.bs, align 8, !tbaa !17
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.bt = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bn
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.o
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  store i32 0, ptr @drag, align 4, !tbaa !34
  br label %.thread159

bb.p:                                             ; preds = %._crit_edge.i.i71
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.by = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bn
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.p
  %i.ca = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  switch i32 %0, label %.thread159 [
    i32 2, label %bb.r
    i32 5, label %bb.ad
    i32 3, label %bb.bf
  ]

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr @flag, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) @src)
  %i.cc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) @img1, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.s unwind label %bb.x       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.cd = load i32, ptr @var, align 4, !tbaa !34
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %._crit_edge.i.i83, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.cf, align 8
  store i32 50397184, ptr %19, align 8, !tbaa !16
  store ptr @img1, ptr %i.ce, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.cg, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.ch, align 4, !tbaa !26
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pts, i64 8), align 8, !tbaa !37
  %i.cj = load ptr, ptr @pts, align 8, !tbaa !12
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  %.not.i81 = icmp ugt i64 %i.cn, 2147483647
  br i1 %.not.i81, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.cn, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #20
          to label %.noexc82 unwind label %bb.y

.noexc82:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  store i32 -2130509788, ptr %20, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @pts, ptr %i.co, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv9polylinesERKNS_17_InputOutputArrayERKNS_11_InputArrayEbRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %._crit_edge.i.i83

bb.x:                                             ; preds = %bb.r
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %common.resume

bb.y:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

end_hunk_0
