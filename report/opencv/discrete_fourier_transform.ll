inline.NumInlined: 202
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::Mat_" = type { %"class.cv::Mat" }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZN2cv4Mat_IfEaSERKNS_3MatE = comdat any

$_ZN2cv4Mat_IfEaSEONS_3MatE = comdat any

@.str = private unnamed_addr constant [9 x i8] c"lena.jpg\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Error opening image\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Input Image\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"spectrum magnitude\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"This program demonstrated the use of the discrete Fourier transform (DFT). \00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"The dft of an image is taken and it's power spectrum is displayed.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c" [image_name -- default lena.jpg]\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"DataType<_Tp>::channels == m.channels() || m.empty()\00", align 1
@__func__._ZN2cv4Mat_IfEaSERKNS_3MatE = private unnamed_addr constant [10 x i8] c"operator=\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %14 = alloca [2 x %"class.cv::Mat"], align 16   ; 15 uses
  %15 = alloca %"class.cv::Mat_", align 8         ; 12 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %25 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Rect_", align 4        ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %31 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %33 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %35 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %37 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %39 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %46 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %50 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.c = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !29
  %.not.i1.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10), !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i8 [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.4, i64 noundef 75) ; 0 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 6 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !29
  %.not.i1.i.i3.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i4.i = phi i8 [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i4.i)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 4 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.5, i64 noundef 66) ; 0 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 6 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i6.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7.i

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !29
  %.not.i1.i.i8.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i9.i = phi i8 [ %i.at, %bb.i ], [ %i.ax, %bb.j ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext %.0.i.i.i9.i)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11 ; 6 uses
  %.not.i.i.i11.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i11.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12.i

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !29
  %.not.i1.i.i13.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i13.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf)
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10), !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i14.i = phi i8 [ %i.bj, %bb.l ], [ %i.bn, %bb.m ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i14.i)
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) ; 4 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.6, i64 noundef 6) ; 0 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !9
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !11 ; 6 uses
  %.not.i.i.i16.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i16.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17.i

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15.i
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !29
  %.not.i1.i.i18.i = icmp eq i8 %i.by, 0
  br i1 %.not.i1.i.i18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 67
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bw)
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10), !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i19.i = phi i8 [ %i.ca, %bb.o ], [ %i.ce, %bb.p ]
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef signext %.0.i.i.i19.i)
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) ; 7 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !37    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.hm = icmp eq i32 %i.ha, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = select i1 %i.hm, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ha, 1
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %.thread.i
  %i.ho = phi i32 [ %i.hk, %.thread.i ], [ %i.hn, %bb.ax ]
  %i.hp = icmp sgt i32 %i.ha, -1
  %i.hq = zext i1 %i.hp to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.hr = phi i32 [ %i.ho, %bb.ay ], [ %i.hn, %bb.ax ]
  %i.hs = phi i32 [ %i.hq, %bb.ay ], [ %.val, %bb.ax ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.hs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.hr to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %bb.ba unwind label %bb.cb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.gy) #12
  %i.ht = load ptr, ptr %16, align 8, !tbaa !63, !noalias !70 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.gy, i32 noundef -1)
          to label %bb.bb unwind label %.body138

.body138:                                         ; preds = %bb.ba
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gy) #12
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #12
  br label %.body

bb.bb:                                            ; preds = %bb.ba
  %i.hy = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hy) #12
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hz) #12
  %i.ia = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ia) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.ic, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !58
  store ptr %17, ptr %i.ib, align 8, !tbaa !60
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %14, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bc unwind label %bb.cc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.id, align 8, !tbaa !55
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.ie, align 4, !tbaa !57
  store i32 16842752, ptr %19, align 8, !tbaa !58
  %i.if = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %17, ptr %i.if, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.ig = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.ih, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !58
  store ptr %17, ptr %i.ig, align 8, !tbaa !60
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 0, i32 noundef 0)
          to label %bb.bd unwind label %bb.cd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull %14)
          to label %bb.be unwind label %bb.ce

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.ii = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.ii, align 8, !tbaa !55
  %i.ij = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.ij, align 4, !tbaa !57
  store i32 16842752, ptr %21, align 8, !tbaa !58
  %i.ik = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %14, ptr %i.ik, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.il, align 8, !tbaa !55
  %i.im = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.im, align 4, !tbaa !57
  store i32 16842752, ptr %22, align 8, !tbaa !58
  %i.in = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.gy, ptr %i.in, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ip, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !58
  store ptr %14, ptr %i.io, align 8, !tbaa !60
  invoke void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.bf unwind label %bb.cf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #12
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.bg unwind label %bb.cg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #12
  store <2 x double> splat (double 1.000000e+00), ptr %25, align 16, !tbaa !73, !alias.scope !74
  %i.iq = getelementptr inbounds nuw i8, ptr %25, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.iq, align 16, !tbaa !73, !alias.scope !74
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ir, align 8, !tbaa !55
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.is, align 4, !tbaa !57
  store i32 16842752, ptr %2, align 8, !tbaa !58
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %24, ptr %i.it, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !58
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %25, ptr %i.iv, align 8, !tbaa !60
  store i64 17179869185, ptr %i.iu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ix, align 8
  store i32 -1040121856, ptr %4, align 8, !tbaa !58
  store ptr %24, ptr %i.iw, align 8, !tbaa !60
  %i.iy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc140 unwind label %bb.ch

.noexc140:                                        ; preds = %bb.bg
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i32 noundef -1)
          to label %bb.bh unwind label %bb.ch

bb.bh:                                            ; preds = %.noexc140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #12
  %i.iz = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.iz, align 8, !tbaa !55
  %i.ja = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.ja, align 4, !tbaa !57
  store i32 16842752, ptr %26, align 8, !tbaa !58
  %i.jb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %24, ptr %i.jb, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #12
  %i.jc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.jd, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !58
  store ptr %24, ptr %i.jc, align 8, !tbaa !60
  invoke void @_ZN2cv3logERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.bi unwind label %bb.ci

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  %i.je = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i32 0, ptr %29, align 4, !tbaa !77
  %i.jf = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 0, ptr %i.jf, align 4, !tbaa !79
  %i.jg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jh = load <2 x i32>, ptr %i.je, align 8, !tbaa !80
  %i.ji = and <2 x i32> %i.jh, splat (i32 -2)
  %i.jj = shufflevector <2 x i32> %i.ji, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.jj, ptr %i.jg, align 4, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(16) %29)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.cj

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.bi
  %i.jk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.bj unwind label %bb.ck     ; 0 uses

bb.bj:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #12
  %i.jl = load <2 x i32>, ptr %i.je, align 8, !tbaa !80
  %i.jm = sdiv <2 x i32> %i.jl, splat (i32 2)     ; 2 uses
  %i.jn = shufflevector <2 x i32> %i.jm, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #12
  %51 = shufflevector <2 x i32> %i.jm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %52 = shufflevector <4 x i32> %51, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  store <4 x i32> %52, ptr %31, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(16) %31)
          to label %bb.bk unwind label %bb.cm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  %53 = shufflevector <4 x i32> %51, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 0>
  store <4 x i32> %53, ptr %33, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(16) %33)
          to label %bb.bl unwind label %bb.cn

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #12
  %54 = shufflevector <4 x i32> %51, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  store <4 x i32> %54, ptr %35, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %34, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(16) %35)
          to label %bb.bm unwind label %bb.co

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #12
  store <4 x i32> %i.jn, ptr %37, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(16) %37)
          to label %bb.bn unwind label %bb.cp

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %38) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #12
  %i.jo = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.jp, align 8
  store i32 33619968, ptr %39, align 8, !tbaa !58
  store ptr %38, ptr %i.jo, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.bo unwind label %bb.cq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #12
  %i.jq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.jr, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !58
  store ptr %30, ptr %i.jq, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.bp unwind label %bb.cr

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #12
  %i.js = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.jt, align 8
  store i32 33619968, ptr %41, align 8, !tbaa !58
  store ptr %36, ptr %i.js, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %bb.bq unwind label %bb.cs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #12
  %i.ju = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.jv, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !58
  store ptr %38, ptr %i.ju, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.br unwind label %bb.ct

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #12
  %i.jw = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.jx, align 8
  store i32 33619968, ptr %43, align 8, !tbaa !58
  store ptr %32, ptr %i.jw, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %34, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %bb.bs unwind label %bb.cu

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #12
  %i.jy = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 0, ptr %i.jz, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !58
  store ptr %34, ptr %i.jy, align 8, !tbaa !60
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.bt unwind label %bb.cv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #12
  %i.ka = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.ka, align 8, !tbaa !55
  %i.kb = getelementptr inbounds nuw i8, ptr %45, i64 20
  store i32 0, ptr %i.kb, align 4, !tbaa !57
  store i32 16842752, ptr %45, align 8, !tbaa !58
  %i.kc = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %24, ptr %i.kc, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #12
  %i.kd = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 0, ptr %i.ke, align 8
  store i32 50397184, ptr %46, align 8, !tbaa !58
  store ptr %24, ptr %i.kd, align 8, !tbaa !60
  %i.kf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bu unwind label %bb.cw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 32, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %._crit_edge.i.i143 unwind label %bb.cw

._crit_edge.i.i143:                               ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #12
  %i.kg = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  store ptr %i.kg, ptr %47, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.kg, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 11, ptr %i.kh, align 8, !tbaa !45
  %i.ki = getelementptr inbounds nuw i8, ptr %47, i64 27
  store i8 0, ptr %i.ki, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #12
  %i.kj = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.kj, align 8, !tbaa !55
  %i.kk = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.kk, align 4, !tbaa !57
  store i32 16842752, ptr %48, align 8, !tbaa !58
  %i.kl = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %7, ptr %i.kl, align 8, !tbaa !60
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.bv unwind label %bb.cx

bb.bv:                                            ; preds = %._crit_edge.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #12
  %i.km = load ptr, ptr %47, align 8, !tbaa !43   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.kg
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bv
  %i.ko = load i64, ptr %i.kg, align 8, !tbaa !35
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #12
  %i.kq = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.kq, ptr %49, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 18, ptr %i.a, align 8, !tbaa !42
  %i.kr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc152 unwind label %bb.cy ; 2 uses

.noexc152:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  store ptr %i.kr, ptr %49, align 8, !tbaa !43
  %i.ks = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.kr, ptr noundef nonnull align 1 dereferenceable(18) @.str.3, i64 18, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !45
  %i.ku = load ptr, ptr %49, align 8, !tbaa !43
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ks
  store i8 0, ptr %i.kv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #12
  %i.kw = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 0, ptr %i.kw, align 8, !tbaa !55
  %i.kx = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.kx, align 4, !tbaa !57
  store i32 16842752, ptr %50, align 8, !tbaa !58
  %i.ky = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %24, ptr %i.ky, align 8, !tbaa !60
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.bw unwind label %bb.cz

bb.bw:                                            ; preds = %.noexc152
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #12
  %i.kz = load ptr, ptr %49, align 8, !tbaa !43   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.kq
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.bw
  %i.lb = load i64, ptr %i.kq, align 8, !tbaa !35
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #12
  %i.ld = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.bx unwind label %bb.da     ; 0 uses

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
end_hunk_1
begin_hunk_2_@main:bb.a
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.dj ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %.pn120.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !40
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !42
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !43
  %i.g = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.g, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.i, ptr %i.h, align 1, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !45
  %i.l = load ptr, ptr %0, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3logERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !61
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !61
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !81
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_IfEaSERKNS_3MatE, ptr noundef nonnull @.str.9, i32 noundef 1630) #11
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !35
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.n ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 -2113863675, ptr %5, align 8, !tbaa !58
  store ptr %0, ptr %i.y, align 8, !tbaa !60
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.d, %bb.b
  %.014 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %i.m, %bb.g ], [ %0, %bb.p ]
  ret ptr %.014

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn16
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !61
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !61
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !81
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !58
  store ptr %0, ptr %i.o, align 8, !tbaa !60
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
!36 = distinct !{null, null, null, null, null}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 omnipotent char", !18, i64 0}
!39 = !{!13, !16, i64 32}
!40 = !{!41, !38, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!44, !38, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !14, i64 8, !7, i64 16}
!45 = !{!44, !14, i64 8}
!46 = distinct !{null, null}
!47 = !{!48, !6, i64 8}
!48 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !49, i64 56, !50, i64 64, !51, i64 72, !53, i64 128}
!49 = !{!"p1 _ZTSN2cv12MatAllocatorE", !18, i64 0}
!50 = !{!"p1 _ZTSN2cv8UMatDataE", !18, i64 0}
!51 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !52, i64 4, !6, i64 8, !7, i64 12}
!52 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!53 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!54 = !{!48, !6, i64 12}
!55 = !{!56, !6, i64 0}
!56 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!57 = !{!56, !6, i64 4}
!58 = !{!59, !6, i64 0}
!59 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !18, i64 8, !56, i64 16}
!60 = !{!59, !18, i64 8}
!61 = !{!48, !6, i64 0}
!62 = !{!51, !6, i64 0}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN2cv7MatExprE", !65, i64 0, !6, i64 8, !48, i64 16, !48, i64 224, !48, i64 432, !66, i64 640, !66, i64 648, !67, i64 656}
!65 = !{!"p1 _ZTSN2cv5MatOpE", !18, i64 0}
!66 = !{!"double", !7, i64 0}
!67 = !{!"_ZTSN2cv7Scalar_IdEE", !68, i64 0}
!68 = !{!"_ZTSN2cv3VecIdLi4EEE", !69, i64 0}
!69 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!72 = distinct !{!72, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!73 = !{!66, !66, i64 0}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!76 = distinct !{!76, !"_ZN2cv7Scalar_IdE3allEd"}
!77 = !{!78, !6, i64 0}
!78 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!79 = !{!78, !6, i64 4}
!80 = !{!6, !6, i64 0}
!81 = !{!48, !6, i64 4}
end_hunk_2
