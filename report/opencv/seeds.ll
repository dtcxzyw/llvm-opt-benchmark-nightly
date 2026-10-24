Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seeds?download=true
inline.NumInlined: 200
inline.NumDeleted: 69
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
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::VideoCapture" = type <{ ptr, %"struct.cv::Ptr", i8, [7 x i8] }>
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"struct.cv::Ptr.0" = type { %"class.std::shared_ptr.1" }
%"class.std::shared_ptr.1" = type { %"class.std::__shared_ptr.2" }
%"class.std::__shared_ptr.2" = type { ptr, %"class.std::__shared_count" }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt12__shared_ptrIN2cv8ximgproc15SuperpixelSEEDSELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@_ZL4init = internal unnamed_addr global i1 false, align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [35 x i8] c"Could not initialize capturing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not open image...\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Number of Superpixels\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Smoothing Prior\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Number of Levels\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"SEEDS segmentation took %i ms with %3i superpixels\0A\00", align 1
@.str.7 = private unnamed_addr constant [273 x i8] c"\0AThis program demonstrates SEEDS superpixels using OpenCV class SuperpixelSEEDS\0AUse [space] to toggle output mode\0A\0AIt captures either from the camera of your choice: 0, 1, ... default 0\0AOr from an input image\0ACall:\0A./seeds [camera #, default 0]\0A./seeds [input image file]\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SEEDS Superpixels\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z15trackbarChangediPv(i32 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  store i1 false, ptr @_ZL4init, align 1
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.cv::VideoCapture", align 8  ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %23 = alloca %"struct.cv::Ptr.0", align 8       ; 8 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"struct.cv::Ptr.0", align 8       ; 6 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %35 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #13
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 272)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.q = load ptr, ptr @_ZSt4cout, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc117 unwind label %bb.h

.noexc117:                                        ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !53
  %.not.i1.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
          to label %.noexc118 unwind label %bb.h

.noexc118:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10)
          to label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i unwind label %bb.h, !inline_history !29

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %.noexc118, %bb.c
  %.0.i.i.i.i = phi i8 [ %i.z, %bb.c ], [ %i.ad, %.noexc118 ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc120 unwind label %bb.h

.noexc120:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZL4helpv.exit unwind label %bb.h ; 0 uses

_ZL4helpv.exit:                                   ; preds = %.noexc120
  switch i32 %0, label %bb.i [
    i32 2, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %_ZL4helpv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54 ; 3 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #15
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.f, label %.thread.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !13
  %44 = sext i8 %i.ak to i32
  %isdigittmp = add nsw i32 %44, -48              ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %bb.f, %_ZL4helpv.exit
  %i.al = phi i32 [ 0, %_ZL4helpv.exit ], [ %isdigittmp, %bb.f ]
  %i.am = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %8, i32 noundef %i.al, i32 noundef 0)
          to label %bb.u unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.invoke, %.noexc120, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %.noexc118, %bb.d, %bb.b, %bb.a, %bb.w, %bb.u, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.i:                                             ; preds = %_ZL4helpv.exit
  %i.ao = icmp sgt i32 %0, 1
  br i1 %i.ao, label %.thread, label %bb.w

.thread.thread:                                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ap, ptr %11, align 8, !tbaa !16
  br label %bb.k

.thread:                                          ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.aq, ptr %11, align 8, !tbaa !16
  %i.ar = icmp eq ptr %.pre, null
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #14
          to label %.noexc122 unwind label %bb.q

.noexc122:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.thread.thread, %.thread
  %i.as = phi ptr [ %i.ap, %.thread.thread ], [ %i.aq, %.thread ] ; 6 uses
  %i.at = phi ptr [ %i.ah, %.thread.thread ], [ %.pre, %.thread ] ; 3 uses
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store i64 %i.au, ptr %i.k, align 8, !tbaa !17
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc123 unwind label %bb.q  ; 2 uses

.noexc123:                                        ; preds = %.noexc.i
  store ptr %i.aw, ptr %11, align 8, !tbaa !19
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !17
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc123, %bb.k
  %i.ay = phi ptr [ %i.aw, %.noexc123 ], [ %i.as, %bb.k ] ; 2 uses
  switch i64 %i.au, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.az = load i8, ptr %i.at, align 1, !tbaa !13
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull align 1 %i.at, i64 %i.au, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !20
  %i.bc = load ptr, ptr %11, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  %i.bf = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.as
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.w

bb.q:                                             ; preds = %.noexc.i, %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.r:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bm = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.as
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.t
  %i.bo = load i64, ptr %i.as, align 8, !tbaa !13
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.do

bb.u:                                             ; preds = %bb.g
  %i.bq = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %8)
          to label %bb.v unwind label %bb.h

bb.v:                                             ; preds = %bb.u
  br i1 %i.bq, label %.noexc.i131, label %.invoke

bb.w:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.x unwind label %bb.h

bb.x:                                             ; preds = %bb.w
  br i1 %i.br, label %.invoke, label %.noexc.i131

.invoke:                                          ; preds = %bb.x, %bb.v
  %i.bs = phi ptr [ @.str, %bb.v ], [ @.str.1, %bb.x ]
  %i.bt = phi i64 [ 34, %bb.v ], [ 24, %bb.x ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.bs, i64 noundef %i.bt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

.noexc.i131:                                      ; preds = %bb.x, %bb.v
  %.065291 = phi i1 [ false, %bb.x ], [ true, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bv, ptr %12, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i64 17, ptr %i.j, align 8, !tbaa !17
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc132 unwind label %bb.af ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.bw, ptr %12, align 8, !tbaa !19
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bw, ptr noundef nonnull align 1 dereferenceable(17) @.str.8, i64 17, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !20
  %i.bz = load ptr, ptr %12, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 0)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %.noexc132
  %i.cb = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bv
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.y
  %i.cd = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store i32 4, ptr %i.l, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store i32 2, ptr %i.m, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store i32 400, ptr %i.n, align 4, !tbaa !21
end_hunk_0
