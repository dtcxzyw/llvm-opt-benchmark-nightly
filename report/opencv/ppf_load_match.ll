Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_load_match?download=true
inline.NumInlined: 215
inline.NumDeleted: 87
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
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::ppf_match_3d::PPF3DDetector" = type <{ ptr, double, double, double, double, double, double, %"class.cv::Mat", %"class.cv::Mat", i32, [4 x i8], ptr, ptr, double, double, i8, [3 x i8], i32, i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Ptr<cv::ppf_match_3d::Pose3D>, std::allocator<cv::Ptr<cv::ppf_match_3d::Pose3D>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Ptr<cv::ppf_match_3d::Pose3D>, std::allocator<cv::Ptr<cv::ppf_match_3d::Pose3D>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Ptr<cv::ppf_match_3d::Pose3D>, std::allocator<cv::Ptr<cv::ppf_match_3d::Pose3D>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Ptr<cv::ppf_match_3d::Pose3D>, std::allocator<cv::Ptr<cv::ppf_match_3d::Pose3D>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::ppf_match_3d::ICP" = type { ptr, float, i32, float, i32, i32, i32 }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN2cv12ppf_match_3d3ICPD2Ev = comdat any

$_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev = comdat any

$_ZN2cv12ppf_match_3d3ICPD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTVN2cv12ppf_match_3d3ICPE = comdat any

$_ZTIN2cv12ppf_match_3d3ICPE = comdat any

$_ZTSN2cv12ppf_match_3d3ICPE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [53 x i8] c"****************************************************\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"* Surface Matching demonstration : demonstrates the use of surface matching using point pair features.\00", align 1
@.str.2 = private unnamed_addr constant [252 x i8] c"* The sample loads a model and a scene, where the model lies in a different pose than the training.\0A* It then trains the model and searches for it in the input scene. The detected poses are further refined by ICP\0A* and printed to the  standard output.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Not enough input arguments\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Running on 64 bits\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Running without OpenMP and without TBB\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Training...\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Training complete in \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" sec\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Loading model...\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Starting matching...\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"PPF Elapsed Time \00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Number of matching poses: \00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"No matching poses found. Exiting.\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"Reducing matching poses to be reported (as specified in code): \00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c" to the number of matches found: \00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Performing ICP on \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" poses...\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ICP Elapsed Time \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Poses: \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Pose Result \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"para6700PCTrans.ply\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Program init error : \00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"\0AUsage : ppf_matching [input model file] [input scene file]\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\0APlease start again with new parameters\00", align 1
@_ZTVN2cv12ppf_match_3d3ICPE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv12ppf_match_3d3ICPE, ptr @_ZN2cv12ppf_match_3d3ICPD2Ev, ptr @_ZN2cv12ppf_match_3d3ICPD0Ev] }, comdat, align 8
@_ZTIN2cv12ppf_match_3d3ICPE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv12ppf_match_3d3ICPE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv12ppf_match_3d3ICPE = linkonce_odr hidden constant [24 x i8] c"N2cv12ppf_match_3d3ICPE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::ppf_match_3d::PPF3DDetector", align 8 ; 8 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 15 uses
  %11 = alloca %"class.cv::ppf_match_3d::ICP", align 8 ; 11 uses
  %12 = alloca %"struct.cv::Ptr", align 16        ; 11 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 52) ; 0 uses
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 6 uses
  %.not.i.i.i193 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i193, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !36
  %.not.i1.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 67
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.i)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.i, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 102) ; 0 uses
  %i.u = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 6 uses
  %.not.i.i.i194 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i194, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !36
  %.not.i1.i.i196 = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i196, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit198

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit198

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit198: ; preds = %bb.f, %bb.g
  %.0.i.i.i197 = phi i8 [ %i.ad, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i197)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 251) ; 0 uses
  %i.al = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i199 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i199, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i200

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit198
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i200: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit198
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !36
  %.not.i1.i.i201 = icmp eq i8 %i.as, 0
  br i1 %.not.i1.i.i201, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i200
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 67
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i200
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aq)
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef signext i8 %i.ax(ptr noundef nonnull align 8 dereferenceable(570) %i.aq, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203: ; preds = %bb.i, %bb.j
  %.0.i.i.i202 = phi i8 [ %i.au, %bb.i ], [ %i.ay, %bb.j ]
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i202)
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 52) ; 0 uses
  %i.bc = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i204 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i204, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !36
  %.not.i1.i.i206 = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i206, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208: ; preds = %bb.l, %bb.m
  %.0.i.i.i207 = phi i8 [ %i.bl, %bb.l ], [ %i.bp, %bb.m ]
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i207)
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) ; 0 uses
  %i.bs = icmp slt i32 %0, 3
  br i1 %i.bs, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_ZL4helpRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @exit(i32 noundef 1) #16
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !37
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn70 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bu, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.fc

bb.s:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 18) ; 0 uses
  %i.cb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.or = load i64, ptr %i.oq, align 8
  %i.os = getelementptr inbounds i8, ptr %i.on, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 240
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i339 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i339, label %.invoke500, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.ow = load i8, ptr %i.ov, align 8, !tbaa !36
  %.not.i1.i.i341 = icmp eq i8 %i.ow, 0
  br i1 %.not.i1.i.i341, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 67
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342

bb.cn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ou)
          to label %.noexc345 unwind label %bb.eb

.noexc345:                                        ; preds = %bb.cn
  %i.oz = load ptr, ptr %i.ou, align 8, !tbaa !12
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = invoke noundef signext i8 %i.pb(ptr noundef nonnull align 8 dereferenceable(570) %i.ou, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342 unwind label %bb.eb, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342: ; preds = %.noexc345, %bb.cm
  %.0.i.i.i343 = phi i8 [ %i.oy, %bb.cm ], [ %i.pc, %.noexc345 ]
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.on, i8 noundef signext %.0.i.i.i343)
          to label %.noexc347 unwind label %bb.eb

.noexc347:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pd)
          to label %_ZNSolsEPFRSoS_E.exit141 unwind label %bb.eb ; 0 uses

_ZNSolsEPFRSoS_E.exit141:                         ; preds = %.noexc347
  %i.pf = invoke noundef i32 @_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.co unwind label %bb.eb     ; 0 uses

bb.co:                                            ; preds = %_ZNSolsEPFRSoS_E.exit141
  %i.pg = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.cp unwind label %bb.eb

bb.cp:                                            ; preds = %bb.co
  %i.ph = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.pi = getelementptr i8, ptr %i.ph, i64 -24
  %i.pj = load i64, ptr %i.pi, align 8
  %i.pk = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 240
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i350 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i350, label %.invoke500, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351: ; preds = %bb.cp
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 56
  %i.po = load i8, ptr %i.pn, align 8, !tbaa !36
  %.not.i1.i.i352 = icmp eq i8 %i.po, 0
  br i1 %.not.i1.i.i352, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 67
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353

bb.cr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pm)
          to label %.noexc356 unwind label %bb.eb

.noexc356:                                        ; preds = %bb.cr
  %i.pr = load ptr, ptr %i.pm, align 8, !tbaa !12
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 48
  %i.pt = load ptr, ptr %i.ps, align 8
  %i.pu = invoke noundef signext i8 %i.pt(ptr noundef nonnull align 8 dereferenceable(570) %i.pm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353 unwind label %bb.eb, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353: ; preds = %.noexc356, %bb.cq
  %.0.i.i.i354 = phi i8 [ %i.pq, %bb.cq ], [ %i.pu, %.noexc356 ]
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i354)
          to label %.noexc358 unwind label %bb.eb

.noexc358:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pv)
          to label %_ZNSolsEPFRSoS_E.exit143 unwind label %bb.eb ; 2 uses

_ZNSolsEPFRSoS_E.exit143:                         ; preds = %.noexc358
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pw, ptr noundef nonnull @.str.18, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZNSolsEPFRSoS_E.exit143
  %i.py = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.cs unwind label %bb.eb

bb.cs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.pz = sub nsw i64 %i.pg, %i.nv
  %i.qa = sitofp i64 %i.pz to double
  %i.qb = fdiv double %i.qa, %i.py
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pw, double noundef %i.qb)
          to label %_ZNSolsEd.exit147 unwind label %bb.eb ; 4 uses

_ZNSolsEd.exit147:                                ; preds = %bb.cs
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZNSolsEd.exit147
  %i.qe = load ptr, ptr %i.qc, align 8, !tbaa !12
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %i.qc, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 240
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i361 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i361, label %.invoke500, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.ql = load i8, ptr %i.qk, align 8, !tbaa !36
  %.not.i1.i.i363 = icmp eq i8 %i.ql, 0
  br i1 %.not.i1.i.i363, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 67
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364

bb.cu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qj)
          to label %.noexc367 unwind label %bb.eb

.noexc367:                                        ; preds = %bb.cu
  %i.qo = load ptr, ptr %i.qj, align 8, !tbaa !12
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = invoke noundef signext i8 %i.qq(ptr noundef nonnull align 8 dereferenceable(570) %i.qj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364 unwind label %bb.eb, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364: ; preds = %.noexc367, %bb.ct
  %.0.i.i.i365 = phi i8 [ %i.qn, %bb.ct ], [ %i.qr, %.noexc367 ]
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, i8 noundef signext %.0.i.i.i365)
          to label %.noexc369 unwind label %bb.eb

.noexc369:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qs)
          to label %_ZNSolsEPFRSoS_E.exit151 unwind label %bb.eb ; 0 uses

_ZNSolsEPFRSoS_E.exit151:                         ; preds = %.noexc369
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZNSolsEPFRSoS_E.exit151
  %i.qv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 240
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i372 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i372, label %.invoke500, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373

.invoke500:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149, %bb.cp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %bb.cj
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.cont501 unwind label %bb.eb

.cont501:                                         ; preds = %.invoke500
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 56
  %i.rc = load i8, ptr %i.rb, align 8, !tbaa !36
  %.not.i1.i.i374 = icmp eq i8 %i.rc, 0
  br i1 %.not.i1.i.i374, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 67
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375

bb.cw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ra)
          to label %.noexc378 unwind label %bb.eb

.noexc378:                                        ; preds = %bb.cw
  %i.rf = load ptr, ptr %i.ra, align 8, !tbaa !12
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 48
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = invoke noundef signext i8 %i.rh(ptr noundef nonnull align 8 dereferenceable(570) %i.ra, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375 unwind label %bb.eb, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375: ; preds = %.noexc378, %bb.cv
  %.0.i.i.i376 = phi i8 [ %i.re, %bb.cv ], [ %i.ri, %.noexc378 ]
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i376)
          to label %.noexc380 unwind label %bb.eb

.noexc380:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rj)
          to label %_ZNSolsEPFRSoS_E.exit155.preheader unwind label %bb.eb ; 0 uses

_ZNSolsEPFRSoS_E.exit155.preheader:               ; preds = %.noexc380
  %i.rl = load ptr, ptr %i.no, align 8, !tbaa !47 ; 2 uses
  %i.rm = load ptr, ptr %10, align 8, !tbaa !48   ; 4 uses
  %.not = icmp eq ptr %i.rl, %i.rm
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit155._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSolsEPFRSoS_E.exit155.preheader
  %i.rn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !52 ; 2 uses
  %i.rq = load <2 x ptr>, ptr %i.rm, align 8, !tbaa !66
  store <2 x ptr> %i.rq, ptr %12, align 16, !tbaa !66
  %.not.i.i.i.i.peel = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.peel, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 3 uses
  %i.rs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.rs, 0
  br i1 %.not.i.i.i.i.i.peel, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rt = load i32, ptr %i.rr, align 4, !tbaa !53
  %i.ru = add nsw i32 %i.rt, 1
  store i32 %i.ru, ptr %i.rr, align 4, !tbaa !53
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel

bb.cz:                                            ; preds = %bb.cx
  %i.rv = atomicrmw volatile add ptr %i.rr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel: ; preds = %bb.cz, %bb.cy, %.lr.ph
  %i.rw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel
  %i.rx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef 0)
          to label %_ZNSolsEm.exit183.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit183.peel:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !12
  %i.rz = getelementptr i8, ptr %i.ry, i64 -24
  %i.sa = load i64, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds i8, ptr %i.rx, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 240
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i383.peel = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i383.peel, label %.loopexit, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel: ; preds = %_ZNSolsEm.exit183.peel
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 56
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !36
  %.not.i1.i.i385.peel = icmp eq i8 %i.sf, 0
  br i1 %.not.i1.i.i385.peel, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 67
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel

bb.db:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sd)
          to label %.noexc389.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc389.peel:                                   ; preds = %bb.db
  %i.si = load ptr, ptr %i.sd, align 8, !tbaa !12
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %i.sk = load ptr, ptr %i.sj, align 8
  %i.sl = invoke noundef signext i8 %i.sk(ptr noundef nonnull align 8 dereferenceable(570) %i.sd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel: ; preds = %.noexc389.peel, %bb.da
  %.0.i.i.i387.peel = phi i8 [ %i.sh, %bb.da ], [ %i.sl, %.noexc389.peel ]
  %i.sm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.rx, i8 noundef signext %.0.i.i.i387.peel)
          to label %.noexc391.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc391.peel:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel
  %i.sn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sm)
          to label %_ZNSolsEPFRSoS_E.exit185.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit185.peel:                    ; preds = %.noexc391.peel
  %i.so = load ptr, ptr %12, align 16, !tbaa !77  ; 2 uses
  invoke void @_ZN2cv12ppf_match_3d6Pose3D9printPoseEv(ptr noundef nonnull align 8 dereferenceable(232) %i.so)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %_ZNSolsEPFRSoS_E.exit185.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.dd unwind label %bb.eh

bb.dd:                                            ; preds = %bb.dc
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  invoke void @_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %i.sp)
          to label %bb.de unwind label %bb.ei

bb.de:                                            ; preds = %bb.dd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.df unwind label %bb.ej

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN2cv12ppf_match_3d8writePLYENS_3MatEPKc(ptr noundef nonnull align 8 %15, ptr noundef nonnull @.str.21)
          to label %bb.dg unwind label %bb.ek

bb.dg:                                            ; preds = %bb.df
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.sq = load ptr, ptr %i.rn, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.peel = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.peel, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 4 uses
  %i.ss = load atomic i64, ptr %i.sr acquire, align 8 ; 2 uses
  %i.st = icmp eq i64 %i.ss, 4294967297
  %i.su = trunc i64 %i.ss to i32                  ; 2 uses
  br i1 %i.st, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i186.peel = icmp eq i8 %i.sv, 0
  br i1 %.not.i.i.i186.peel, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sw = add nsw i32 %i.su, -1
  store i32 %i.sw, ptr %i.sr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.dk:                                            ; preds = %bb.di
  %i.sx = atomicrmw volatile add ptr %i.sr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i.peel = phi i32 [ %i.su, %bb.dj ], [ %i.sx, %bb.dk ]
  %i.sy = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.sy, label %bb.dl, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !54

bb.dl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #15
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.dm:                                            ; preds = %bb.dh
  store i32 0, ptr %i.sr, align 8, !tbaa !56
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 12
  store i32 0, ptr %i.sz, align 4, !tbaa !57
  %i.ta = load ptr, ptr %i.sq, align 8, !tbaa !12
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #15, !inline_history !61
  %i.td = load ptr, ptr %i.sq, align 8, !tbaa !12
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load ptr, ptr %i.te, align 8
  call void %i.tf(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #15, !inline_history !61
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.dm, %bb.dl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.tg = load ptr, ptr %i.no, align 8, !tbaa !47 ; 2 uses
  %i.th = load ptr, ptr %10, align 8, !tbaa !48   ; 3 uses
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = sub i64 %i.ti, %i.tj
  %i.tl = icmp ugt i64 %i.tk, 16
  br i1 %i.tl, label %.peel.next, label %_ZNSolsEPFRSoS_E.exit155._crit_edge

_ZNSolsEPFRSoS_E.exit155._crit_edge:              ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSolsEPFRSoS_E.exit155.preheader
  %.lcssa404 = phi ptr [ %i.rl, %_ZNSolsEPFRSoS_E.exit155.preheader ], [ %i.tg, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ], [ %i.xl, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.rm, %_ZNSolsEPFRSoS_E.exit155.preheader ], [ %i.th, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ], [ %i.xm, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa404
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit155._crit_edge, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ud, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i ], [ %.lcssa, %_ZNSolsEPFRSoS_E.exit155._crit_edge ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i156 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i.i.i.i156, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 4 uses
  %i.tp = load atomic i64, ptr %i.to acquire, align 8 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 4294967297
  %i.tr = trunc i64 %i.tp to i32                  ; 2 uses
  br i1 %i.tq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.to, align 8, !tbaa !56
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  store i32 0, ptr %i.ts, align 4, !tbaa !57
  %i.tt = load ptr, ptr %i.tn, align 8, !tbaa !12
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(16) %i.tn) #15, !inline_history !62
  %i.tw = load ptr, ptr %i.tn, align 8, !tbaa !12
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(16) %i.tn) #15, !inline_history !62
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.tz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.tz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ua = add nsw i32 %i.tr, -1
  store i32 %i.ua, ptr %i.to, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.ub = atomicrmw volatile add ptr %i.to, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.tr, %bb.dq ], [ %i.ub, %bb.dr ]
  %i.uc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.uc, label %bb.ds, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, !prof !54

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tn) #15
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.do, %.lr.ph.i.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.ud, %.lcssa404
  br i1 %.not.i.i.i157, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit155._crit_edge
  %16 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %_ZNSolsEPFRSoS_E.exit155._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %16, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.ue = load ptr, ptr %i.mn, align 8, !tbaa !49
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %16 to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %16, i64 noundef %i.uh) #17
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.ui = load ptr, ptr %9, align 8, !tbaa !48    ; 3 uses
  %i.uj = load ptr, ptr %i.kf, align 8, !tbaa !47 ; 2 uses
  %.not4.i.i.i159 = icmp eq ptr %i.ui, %i.uj
  br i1 %.not4.i.i.i159, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166
  %.05.i.i.i161 = phi ptr [ %i.vb, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166 ], [ %i.ui, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.05.i.i.i161, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i162 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i.i.i162, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i160
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 4 uses
  %i.un = load atomic i64, ptr %i.um acquire, align 8 ; 2 uses
  %i.uo = icmp eq i64 %i.un, 4294967297
  %i.up = trunc i64 %i.un to i32                  ; 2 uses
  br i1 %i.uo, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.um, align 8, !tbaa !56
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  store i32 0, ptr %i.uq, align 4, !tbaa !57
  %i.ur = load ptr, ptr %i.ul, align 8, !tbaa !12
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load ptr, ptr %i.us, align 8
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #15, !inline_history !62
  %i.uu = load ptr, ptr %i.ul, align 8, !tbaa !12
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #15, !inline_history !62
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166

bb.dw:                                            ; preds = %bb.du
  %i.ux = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i163 = icmp eq i8 %i.ux, 0
  br i1 %.not.i.i.i.i.i.i.i163, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uy = add nsw i32 %i.up, -1
  store i32 %i.uy, ptr %i.um, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164

bb.dy:                                            ; preds = %bb.dw
  %i.uz = atomicrmw volatile add ptr %i.um, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164: ; preds = %bb.dy, %bb.dx
  %.0.i.i.i.i.i.i.i.i165 = phi i32 [ %i.up, %bb.dx ], [ %i.uz, %bb.dy ]
  %i.va = icmp eq i32 %.0.i.i.i.i.i.i.i.i165, 1
  br i1 %i.va, label %bb.dz, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166, !prof !54

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #15
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166: ; preds = %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164, %bb.dv, %.lr.ph.i.i.i160
  %i.vb = getelementptr inbounds nuw i8, ptr %.05.i.i.i161, i64 16 ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.vb, %i.uj
  br i1 %.not.i.i.i167, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168, label %.lr.ph.i.i.i160, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166
  %.pr.i169 = load ptr, ptr %9, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit
  %i.vc = phi ptr [ %.pr.i169, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168 ], [ %i.ui, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i171 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i1.i171, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170
  %i.vd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !49
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vh) #17
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv12ppf_match_3d13PPF3DDetectorD1Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.vi = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.dy
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173
  %i.vk = load i64, ptr %i.dy, align 8, !tbaa !37
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.vm = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.dk
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.vo = load i64, ptr %i.dk, align 8, !tbaa !37
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 0

bb.eb:                                            ; preds = %.invoke500, %.noexc380, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375, %.noexc378, %bb.cw, %.noexc369, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364, %.noexc367, %bb.cu, %.noexc358, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353, %.noexc356, %bb.cr, %.noexc347, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342, %.noexc345, %bb.cn, %.noexc336, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331, %.noexc334, %bb.cl, %_ZNSolsEPFRSoS_E.exit151, %_ZNSolsEd.exit147, %bb.cs, %_ZNSolsEPFRSoS_E.exit143, %_ZNSolsEm.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135, %_ZNSolsEPFRSoS_E.exit133, %bb.ci, %_ZNSolsEPFRSoS_E.exit141, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145, %bb.co
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.vr = phi ptr [ %i.xm, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.th, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ]
  %.0412 = phi i64 [ %i.xk, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %.0412 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !52 ; 2 uses
  %i.vv = load <2 x ptr>, ptr %i.vs, align 8, !tbaa !66
  store <2 x ptr> %i.vv, ptr %12, align 16, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit, label %bb.ec

bb.ec:                                            ; preds = %.peel.next
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 3 uses
  %i.vx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i8 %i.vx, 0
  br i1 %.not.i.i.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vy = load i32, ptr %i.vw, align 4, !tbaa !53
  %i.vz = add nsw i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vw, align 4, !tbaa !53
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

bb.ee:                                            ; preds = %bb.ec
  %i.wa = atomicrmw volatile add ptr %i.vw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit: ; preds = %.peel.next, %bb.ed, %bb.ee
  %i.wb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit
  %i.wc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.0412)
          to label %_ZNSolsEm.exit183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit183:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !12
  %i.we = getelementptr i8, ptr %i.wd, i64 -24
  %i.wf = load i64, ptr %i.we, align 8
  %i.wg = getelementptr inbounds i8, ptr %i.wc, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 240
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i383 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i383, label %.loopexit, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384

.loopexit:                                        ; preds = %_ZNSolsEm.exit183, %_ZNSolsEm.exit183.peel
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc388:                                        ; preds = %.loopexit
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384: ; preds = %_ZNSolsEm.exit183
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 56
  %i.wk = load i8, ptr %i.wj, align 8, !tbaa !36
  %.not.i1.i.i385 = icmp eq i8 %i.wk, 0
  br i1 %.not.i1.i.i385, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 67
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wi)
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc389:                                        ; preds = %bb.eg
end_hunk_1
