Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/align?download=true
inline.NumInlined: 143
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN2cv13wechat_qrcode5AlignC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv13wechat_qrcode5AlignC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv13wechat_qrcode5AlignC2Ev(ptr noundef nonnull align 8 dereferenceable(425) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 0, ptr %i.b, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv13wechat_qrcode5Align14calcWarpMatrixENS_3MatES2_(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(425) %1, ptr noundef align 8 %2, ptr noundef align 8 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !22
  store i32 16842752, ptr %5, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !22
  store i32 16842752, ptr %6, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZN2cv23getPerspectiveTransformERKNS_11_InputArrayES2_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.i = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(688) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.h, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.g, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #14
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn7 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn.pn, %bb.f ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN2cv23getPerspectiveTransformERKNS_11_InputArrayES2_i(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #14
  ret void
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv13wechat_qrcode5Align8warpBackERKSt6vectorINS_6Point_IfEESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.j = phi ptr [ %i.b, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ]
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.az, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ] ; 10 uses
  %i.n = load i8, ptr %i.d, align 8, !tbaa !19, !range !35, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.033 ; 4 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !38
  %i.s = load i32, ptr %i.e, align 8, !tbaa !39
  %i.t = sitofp i32 %i.s to float
  %i.u = fadd float %i.r, %i.t
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = load float, ptr %i.p, align 4, !tbaa !38
  %i.w = load i32, ptr %i.e, align 8, !tbaa !39
  %i.x = sitofp i32 %i.w to float
  %i.y = fadd float %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi float [ %i.u, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %.in16 = phi ptr [ %i.p, %bb.c ], [ %i.z, %bb.d ]
  %i.ab = load float, ptr %.in16, align 4, !tbaa !38
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !40
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fadd float %i.ab, %i.ad                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.aa, ptr %i.l, align 4, !tbaa !38
  %.sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.ae, ptr %.sroa_idx18, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.g, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.k to i64
  %i.ah = ptrtoint ptr %i.m to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #16
          to label %.noexc17 unwind label %.loopexit ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store float %i.aa, ptr %i.ar, align 4, !tbaa !38
  %.sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store float %i.ae, ptr %.sroa_idx20, align 4, !tbaa !38
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc17, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %.noexc17 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc17 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !38, !alias.scope !57, !noalias !56
  store i64 %i.as, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !38, !alias.scope !56, !noalias !57
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !50

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc17
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc17 ], [ %i.au, %.lr.ph.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ai) #17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.av, ptr %i.g, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !59
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54
  %.pre43 = load ptr, ptr %2, align 8, !tbaa !55
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  %i.ax = phi ptr [ %.pre43, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.az = phi ptr [ %i.aw, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.k, %bb.f ]
  %i.ba = phi ptr [ %i.av, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.af, %bb.f ]
  %i.bb = phi ptr [ %i.aq, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.bc = add nuw i64 %.033, 1                    ; 2 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp ult i64 %i.bc, %i.bg
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !51

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ai) #17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa30 = phi ptr [ null, %bb.a ], [ %i.bb, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ]
  store ptr %.lcssa30, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv13wechat_qrcode5Align4cropERKNS_3MatEii(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(425) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.a = load i32, ptr %2, align 8, !tbaa !62
  %i.b = and i32 %i.a, 4095
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, i32 noundef %4, i32 noundef %3, i32 noundef %i.b)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #14
  %i.c = load ptr, ptr %7, align 8, !tbaa !32, !noalias !63 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(688) %7, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #14
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !22
  store i32 16842752, ptr %8, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !24
  store ptr %0, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !22
  store i32 16842752, ptr %10, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64   ; 6 uses
  %i.u = icmp slt i32 %i.t, 3
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 109) #15
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %5, align 8, !tbaa !44     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.body17

bb.f:                                             ; preds = %bb.b
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.ac = icmp eq i32 %i.t, 0
  %i.ad = zext i1 %i.ac to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.af = icmp eq i32 %i.t, 2
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 2 uses
  %.not.i = icmp eq i32 %i.t, 1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !46
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.thread.i
  %i.ak = phi i32 [ %i.ad, %.thread.i ], [ %i.ai, %bb.g ]
  %i.al = icmp sgt i32 %i.t, -1
  %i.am = zext i1 %i.al to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.an = phi i32 [ %i.ai, %bb.h ], [ %i.ak, %bb.i ]
  %i.ao = phi i32 [ %i.aj, %bb.h ], [ %i.am, %bb.i ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ao to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store double 2.550000e+02, ptr %11, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.0.0.insert.insert.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.m:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.body17

.body17:                                          ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %bb.m ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #14
  br label %bb.n

bb.n:                                             ; preds = %.body17, %.body
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body17 ], [ %i.g, %.body ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv13wechat_qrcode5Align4cropERKNS_3MatES4_ffi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(425) initializes((416, 424)) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.f = icmp slt i32 %i.b, 2
  %i.g = load i64, ptr %i.e, align 8
  %i.h = shl i64 %i.g, 1
  %.sink.idx.i = select i1 %i.f, i64 0, i64 %i.h
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink.idx.i
  %i.i = sitofp i32 %6 to float
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 416
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !38
  %i.o = fptosi <2 x float> %i.n to <2 x i32>     ; 2 uses
  %i.p = load <2 x float>, ptr %.sink.i, align 4, !tbaa !38
  %i.q = fptosi <2 x float> %i.p to <2 x i32>     ; 2 uses
  %i.r = sub <2 x i32> %i.q, %i.o
  %i.s = add <2 x i32> %i.r, splat (i32 1)
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = insertelement <2 x float> poison, float %4, i64 0
  %i.v = insertelement <2 x float> %i.u, float %5, i64 1
  %i.w = fmul <2 x float> %i.v, %i.t              ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fcmp olt <2 x float> %i.w, %i.y
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.y, <2 x float> %i.w
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>   ; 2 uses
  %i.ac = sub nsw <2 x i32> %i.o, %i.ab
  %i.ad = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ac, <2 x i32> zeroinitializer) ; 3 uses
  %11 = extractelement <2 x i32> %i.ad, i64 0     ; 2 uses
  store i32 %11, ptr %i.j, align 8, !tbaa !39
  %12 = extractelement <2 x i32> %i.ad, i64 1     ; 2 uses
  store i32 %12, ptr %10, align 4, !tbaa !40
  %i.ae = add nsw <2 x i32> %i.ab, %i.q
  %i.af = load <2 x i32>, ptr %i.k, align 8, !tbaa !46
  %i.ag = add nsw <2 x i32> %i.af, splat (i32 -1)
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ah, <2 x i32> %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.aj = sub <2 x i32> %i.ai, %i.ad
  %i.ak = add <2 x i32> %i.aj, splat (i32 1)
  store i32 %11, ptr %7, align 4, !tbaa !69
  store i32 %12, ptr %i.l, align 4, !tbaa !70
  store <2 x i32> %i.ak, ptr %i.m, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(16) %7)
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.am = load i8, ptr %i.al, align 8, !tbaa !19, !range !35, !noundef !36
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.g, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #14
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #14
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.aw, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.av, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !71
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !72
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !44
  %i.g = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.g, ptr %i.b, align 8, !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.i, ptr %i.h, align 1, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !73
  %i.l = load ptr, ptr %0, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!12 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!13 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!14 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !13, i64 4, !6, i64 8, !5, i64 12}
!15 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!16 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !12, i64 64, !14, i64 72, !15, i64 128}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTSN2cv13wechat_qrcode5AlignE", !16, i64 0, !16, i64 208, !6, i64 416, !6, i64 420, !17, i64 424}
!19 = !{!18, !17, i64 424}
!20 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!21 = !{!20, !6, i64 0}
!22 = !{!20, !6, i64 4}
!23 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !20, i64 16}
!24 = !{!23, !6, i64 0}
!25 = !{!23, !9, i64 8}
!26 = !{!"p1 _ZTSN2cv5MatOpE", !9, i64 0}
!27 = !{!"double", !5, i64 0}
!28 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!29 = !{!"_ZTSN2cv3VecIdLi4EEE", !28, i64 0}
!30 = !{!"_ZTSN2cv7Scalar_IdEE", !29, i64 0}
!31 = !{!"_ZTSN2cv7MatExprE", !26, i64 0, !6, i64 8, !16, i64 16, !16, i64 224, !16, i64 432, !27, i64 640, !27, i64 648, !30, i64 656}
!32 = !{!31, !26, i64 0}
!33 = !{!"vtable pointer", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!"float", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!18, !6, i64 416}
!40 = !{!18, !6, i64 420}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!42 = !{!"long", !5, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !42, i64 8, !5, i64 16}
!44 = !{!43, !10, i64 0}
!45 = !{!5, !5, i64 0}
!46 = !{!6, !6, i64 0}
!47 = distinct !{!47, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!48 = distinct !{!48, !47, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, !47, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!50 = distinct !{!50, !58}
!51 = distinct !{!51, !58}
!52 = !{!"p1 _ZTSN2cv6Point_IfEE", !9, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 8}
!55 = !{!53, !52, i64 0}
!56 = !{!48}
!57 = !{!49}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!53, !52, i64 16}
!60 = distinct !{!60, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!61 = distinct !{!61, !60, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!62 = !{!16, !6, i64 0}
!63 = !{!61}
!64 = !{!14, !6, i64 0}
!65 = !{!27, !27, i64 0}
!66 = !{!16, !6, i64 4}
!67 = !{!16, !10, i64 24}
!68 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!69 = !{!68, !6, i64 0}
!70 = !{!68, !6, i64 4}
!71 = !{!41, !10, i64 0}
!72 = !{!42, !42, i64 0}
!73 = !{!43, !42, i64 8}
end_hunk_0
