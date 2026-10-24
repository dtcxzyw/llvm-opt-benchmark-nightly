Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motempl?download=true
inline.NumInlined: 251
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.5" = type { i8 }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::VideoCapture" = type <{ ptr, %"struct.cv::Ptr", i8, [7 x i8] }>
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm = comdat any

@buf = hidden global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@last = hidden local_unnamed_addr global i32 0, align 4
@mhi = hidden global %"class.cv::Mat" zeroinitializer, align 8
@orient = hidden global %"class.cv::Mat" zeroinitializer, align 8
@mask = hidden global %"class.cv::Mat" zeroinitializer, align 8
@segmask = hidden global %"class.cv::Mat" zeroinitializer, align 8
@zplane = hidden global %"class.cv::Mat" zeroinitializer, align 8
@regions = hidden global %"class.std::vector.0" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Motion\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_motempl.cpp, ptr null }]
@str = private unnamed_addr constant [35 x i8] c"Could not initialize video capture\00", align 1
@str.1 = private unnamed_addr constant [491 x i8] c"\0AThis program demonstrated the use of motion templates -- basically using the gradients\0Aof thresholded layers of decaying frame differencing. New movements are stamped on top with floating system\0Atime code and motions too old are thresholded away. This is the 'motion history file'. The program reads from the camera of your choice or from\0Aa file. Gradients of motion history are used to detect direction of motion etc\0AUsage :\0A./motempl [camera number 0-n or file name, default is camera 0]\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.cv::Rect_", align 8         ; 19 uses
  %7 = alloca %"class.cv::Scalar_", align 16      ; 11 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca [3 x %"class.cv::Mat"], align 16   ; 10 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %38 = alloca %"class.cv::_InputOutputArray", align 8 ; 11 uses
  %39 = alloca %"class.cv::_InputOutputArray", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %40 = alloca %"class.cv::VideoCapture", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %40)
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  switch i32 %0, label %.critedge [
    i32 1, label %bb.d
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 5 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #20
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1, !tbaa !21    ; 2 uses
  %48 = add i8 %i.f, -48
  %isdigit = icmp ult i8 %48, 10
  br i1 %isdigit, label %49, label %bb.f

49:                                               ; preds = %bb.c
  %50 = zext nneg i8 %i.f to i32
  %51 = add nsw i32 %50, -48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %49
  %i.g = phi i32 [ %51, %49 ], [ 0, %bb.a ]
  %i.h = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %40, i32 noundef %i.g, i32 noundef 0)
          to label %.critedge unwind label %bb.e  ; 0 uses

bb.e:                                             ; preds = %bb.p, %.critedge, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.j = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  store ptr %i.j, ptr %41, align 8, !tbaa !23
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.k, ptr %i.a, align 8, !tbaa !25
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %bb.k   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.m, ptr %41, align 8, !tbaa !27
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.n, ptr %i.j, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.f
  %i.o = phi ptr [ %i.m, %.noexc29 ], [ %i.j, %bb.f ] ; 2 uses
  switch i64 %i.k, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.c, align 1, !tbaa !21
  store i8 %i.p, ptr %i.o, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.c, i64 %i.k, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !28
  %i.s = load ptr, ptr %41, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.u = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %40, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 0)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %41, align 8, !tbaa !27    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.x = load i64, ptr %i.j, align 8, !tbaa !21
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %.critedge

bb.k:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %41, align 8, !tbaa !27   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !21
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.cn

.critedge:                                        ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.af = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %40)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %.critedge
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.cm

bb.o:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 8), align 8, !tbaa !14 ; 3 uses
  %i.ah = load ptr, ptr @buf, align 8, !tbaa !13  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = sdiv exact i64 %i.ak, 208               ; 2 uses
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = sub nuw nsw i64 2, %i.al
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @buf, i64 noundef %i.an)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.e

bb.q:                                             ; preds = %bb.o
  %.not = icmp eq i64 %i.ak, 416
  br i1 %.not, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 416 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.r ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ag
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 8), align 8, !tbaa !14
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %43) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %42, i64 84 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 432
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 432
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %23, i64 208 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %23, i64 416 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
end_hunk_0
