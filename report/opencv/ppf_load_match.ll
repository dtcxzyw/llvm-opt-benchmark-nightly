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
  br label %bb.fh

bb.s:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit208
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 18) ; 0 uses
  %i.cb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@main:bb.a
.invoke502:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %bb.cn
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.cont503 unwind label %bb.ef

.cont503:                                         ; preds = %.invoke502
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.pa = load i8, ptr %i.oz, align 8, !tbaa !36
  %.not.i1.i.i341 = icmp eq i8 %i.pa, 0
  br i1 %.not.i1.i.i341, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 67
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342

bb.cr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oy)
          to label %.noexc345 unwind label %bb.ef

.noexc345:                                        ; preds = %bb.cr
  %i.pd = load ptr, ptr %i.oy, align 8, !tbaa !12
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 48
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = invoke noundef signext i8 %i.pf(ptr noundef nonnull align 8 dereferenceable(570) %i.oy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342 unwind label %bb.ef, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342: ; preds = %.noexc345, %bb.cq
  %.0.i.i.i343 = phi i8 [ %i.pc, %bb.cq ], [ %i.pg, %.noexc345 ]
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef signext %.0.i.i.i343)
          to label %.noexc347 unwind label %bb.ef

.noexc347:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ph)
          to label %_ZNSolsEPFRSoS_E.exit141 unwind label %bb.ef ; 0 uses

_ZNSolsEPFRSoS_E.exit141:                         ; preds = %.noexc347
  %i.pj = invoke noundef i32 @_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.cs unwind label %bb.ef     ; 0 uses

bb.cs:                                            ; preds = %_ZNSolsEPFRSoS_E.exit141
  %i.pk = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.ct unwind label %bb.eg

bb.ct:                                            ; preds = %bb.cs
  %i.pl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.pm = getelementptr i8, ptr %i.pl, i64 -24
  %i.pn = load i64, ptr %i.pm, align 8
  %i.po = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 240
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i350 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i350, label %.invoke504, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351: ; preds = %bb.ct
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 56
  %i.ps = load i8, ptr %i.pr, align 8, !tbaa !36
  %.not.i1.i.i352 = icmp eq i8 %i.ps, 0
  br i1 %.not.i1.i.i352, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 67
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353

bb.cv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i351
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pq)
          to label %.noexc356 unwind label %bb.eg

.noexc356:                                        ; preds = %bb.cv
  %i.pv = load ptr, ptr %i.pq, align 8, !tbaa !12
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = invoke noundef signext i8 %i.px(ptr noundef nonnull align 8 dereferenceable(570) %i.pq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353 unwind label %bb.eg, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353: ; preds = %.noexc356, %bb.cu
  %.0.i.i.i354 = phi i8 [ %i.pu, %bb.cu ], [ %i.py, %.noexc356 ]
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i354)
          to label %.noexc358 unwind label %bb.eg

.noexc358:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %_ZNSolsEPFRSoS_E.exit143 unwind label %bb.eg ; 2 uses

_ZNSolsEPFRSoS_E.exit143:                         ; preds = %.noexc358
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull @.str.18, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZNSolsEPFRSoS_E.exit143
  %i.qc = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.cw unwind label %bb.eg

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.qd = sub nsw i64 %i.pk, %i.nz
  %i.qe = sitofp i64 %i.qd to double
  %i.qf = fdiv double %i.qe, %i.qc
  %i.qg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, double noundef %i.qf)
          to label %_ZNSolsEd.exit147 unwind label %bb.eg ; 4 uses

_ZNSolsEd.exit147:                                ; preds = %bb.cw
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZNSolsEd.exit147
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !12
  %i.qj = getelementptr i8, ptr %i.qi, i64 -24
  %i.qk = load i64, ptr %i.qj, align 8
  %i.ql = getelementptr inbounds i8, ptr %i.qg, i64 %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 240
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i361 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i.i361, label %.invoke504, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 56
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !36
  %.not.i1.i.i363 = icmp eq i8 %i.qp, 0
  br i1 %.not.i1.i.i363, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 67
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364

bb.cy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qn)
          to label %.noexc367 unwind label %bb.eg

.noexc367:                                        ; preds = %bb.cy
  %i.qs = load ptr, ptr %i.qn, align 8, !tbaa !12
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = invoke noundef signext i8 %i.qu(ptr noundef nonnull align 8 dereferenceable(570) %i.qn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364 unwind label %bb.eg, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364: ; preds = %.noexc367, %bb.cx
  %.0.i.i.i365 = phi i8 [ %i.qr, %bb.cx ], [ %i.qv, %.noexc367 ]
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, i8 noundef signext %.0.i.i.i365)
          to label %.noexc369 unwind label %bb.eg

.noexc369:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %_ZNSolsEPFRSoS_E.exit151 unwind label %bb.eg ; 0 uses

_ZNSolsEPFRSoS_E.exit151:                         ; preds = %.noexc369
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZNSolsEPFRSoS_E.exit151
  %i.qz = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.ra = getelementptr i8, ptr %i.qz, i64 -24
  %i.rb = load i64, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 240
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i372 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i372, label %.invoke504, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373

.invoke504:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149, %bb.ct
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.cont505 unwind label %bb.eg

.cont505:                                         ; preds = %.invoke504
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  %i.rg = load i8, ptr %i.rf, align 8, !tbaa !36
  %.not.i1.i.i374 = icmp eq i8 %i.rg, 0
  br i1 %.not.i1.i.i374, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 67
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375

bb.da:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i373
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.re)
          to label %.noexc378 unwind label %bb.eg

.noexc378:                                        ; preds = %bb.da
  %i.rj = load ptr, ptr %i.re, align 8, !tbaa !12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke noundef signext i8 %i.rl(ptr noundef nonnull align 8 dereferenceable(570) %i.re, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375 unwind label %bb.eg, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375: ; preds = %.noexc378, %bb.cz
  %.0.i.i.i376 = phi i8 [ %i.ri, %bb.cz ], [ %i.rm, %.noexc378 ]
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i376)
          to label %.noexc380 unwind label %bb.eg

.noexc380:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rn)
          to label %_ZNSolsEPFRSoS_E.exit155.preheader unwind label %bb.eg ; 0 uses

_ZNSolsEPFRSoS_E.exit155.preheader:               ; preds = %.noexc380
  %i.rp = load ptr, ptr %i.ns, align 8, !tbaa !47 ; 2 uses
  %i.rq = load ptr, ptr %10, align 8, !tbaa !48   ; 4 uses
  %.not = icmp eq ptr %i.rp, %i.rq
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit155._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSolsEPFRSoS_E.exit155.preheader
  %i.rr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !52 ; 2 uses
  %i.ru = load <2 x ptr>, ptr %i.rq, align 8, !tbaa !66
  store <2 x ptr> %i.ru, ptr %12, align 16, !tbaa !66
  %.not.i.i.i.i.peel = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i.peel, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel, label %bb.db

bb.db:                                            ; preds = %.lr.ph
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  %i.rw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.rw, 0
  br i1 %.not.i.i.i.i.i.peel, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rx = load i32, ptr %i.rv, align 4, !tbaa !53
  %i.ry = add nsw i32 %i.rx, 1
  store i32 %i.ry, ptr %i.rv, align 4, !tbaa !53
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel

bb.dd:                                            ; preds = %bb.db
  %i.rz = atomicrmw volatile add ptr %i.rv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel: ; preds = %bb.dd, %bb.dc, %.lr.ph
  %i.sa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.peel
  %i.sb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef 0)
          to label %_ZNSolsEm.exit183.peel unwind label %.loopexit.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit183.peel:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181.peel
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !12
  %i.sd = getelementptr i8, ptr %i.sc, i64 -24
  %i.se = load i64, ptr %i.sd, align 8
  %i.sf = getelementptr inbounds i8, ptr %i.sb, i64 %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 240
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i383.peel = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i383.peel, label %.loopexit420, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel: ; preds = %_ZNSolsEm.exit183.peel
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 56
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !36
  %.not.i1.i.i385.peel = icmp eq i8 %i.sj, 0
  br i1 %.not.i1.i.i385.peel, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 67
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel

bb.df:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384.peel
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sh)
          to label %.noexc389.peel unwind label %.loopexit.loopexit.split-lp

.noexc389.peel:                                   ; preds = %bb.df
  %i.sm = load ptr, ptr %i.sh, align 8, !tbaa !12
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 48
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = invoke noundef signext i8 %i.so(ptr noundef nonnull align 8 dereferenceable(570) %i.sh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !59

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel: ; preds = %.noexc389.peel, %bb.de
  %.0.i.i.i387.peel = phi i8 [ %i.sl, %bb.de ], [ %i.sp, %.noexc389.peel ]
  %i.sq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.sb, i8 noundef signext %.0.i.i.i387.peel)
          to label %.noexc391.peel unwind label %.loopexit.loopexit.split-lp

.noexc391.peel:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386.peel
  %i.sr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sq)
          to label %_ZNSolsEPFRSoS_E.exit185.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit185.peel:                    ; preds = %.noexc391.peel
  %i.ss = load ptr, ptr %12, align 16, !tbaa !77  ; 2 uses
  invoke void @_ZN2cv12ppf_match_3d6Pose3D9printPoseEv(ptr noundef nonnull align 8 dereferenceable(232) %i.ss)
          to label %bb.dg unwind label %.loopexit.loopexit.split-lp

bb.dg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit185.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.dh unwind label %bb.em

bb.dh:                                            ; preds = %bb.dg
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 40
  invoke void @_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %i.st)
          to label %bb.di unwind label %bb.en

bb.di:                                            ; preds = %bb.dh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.dj unwind label %bb.eo

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN2cv12ppf_match_3d8writePLYENS_3MatEPKc(ptr noundef nonnull align 8 %15, ptr noundef nonnull @.str.21)
          to label %bb.dk unwind label %bb.ep

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.su = load ptr, ptr %i.rr, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.peel = icmp eq ptr %i.su, null
  br i1 %.not.i.i.peel, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 4 uses
  %i.sw = load atomic i64, ptr %i.sv acquire, align 8 ; 2 uses
  %i.sx = icmp eq i64 %i.sw, 4294967297
  %i.sy = trunc i64 %i.sw to i32                  ; 2 uses
  br i1 %i.sx, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i186.peel = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i186.peel, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ta = add nsw i32 %i.sy, -1
  store i32 %i.ta, ptr %i.sv, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.do:                                            ; preds = %bb.dm
  %i.tb = atomicrmw volatile add ptr %i.sv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.peel = phi i32 [ %i.sy, %bb.dn ], [ %i.tb, %bb.do ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.tc, label %bb.dp, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !54

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.su) #15
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.dq:                                            ; preds = %bb.dl
  store i32 0, ptr %i.sv, align 8, !tbaa !56
  %i.td = getelementptr inbounds nuw i8, ptr %i.su, i64 12
  store i32 0, ptr %i.td, align 4, !tbaa !57
  %i.te = load ptr, ptr %i.su, align 8, !tbaa !12
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(16) %i.su) #15, !inline_history !61
  %i.th = load ptr, ptr %i.su, align 8, !tbaa !12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(16) %i.su) #15, !inline_history !61
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.dq, %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.tk = load ptr, ptr %i.ns, align 8, !tbaa !47 ; 2 uses
  %i.tl = load ptr, ptr %10, align 8, !tbaa !48   ; 3 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = icmp ugt i64 %i.to, 16
  br i1 %i.tp, label %.peel.next, label %_ZNSolsEPFRSoS_E.exit155._crit_edge

_ZNSolsEPFRSoS_E.exit155._crit_edge:              ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSolsEPFRSoS_E.exit155.preheader
  %.lcssa404 = phi ptr [ %i.rp, %_ZNSolsEPFRSoS_E.exit155.preheader ], [ %i.tk, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ], [ %i.xq, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.rq, %_ZNSolsEPFRSoS_E.exit155.preheader ], [ %i.tl, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ], [ %i.xr, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa404
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit155._crit_edge, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.uh, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i ], [ %.lcssa, %_ZNSolsEPFRSoS_E.exit155._crit_edge ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i156 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i.i.i.i156, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 4 uses
  %i.tt = load atomic i64, ptr %i.ts acquire, align 8 ; 2 uses
  %i.tu = icmp eq i64 %i.tt, 4294967297
  %i.tv = trunc i64 %i.tt to i32                  ; 2 uses
  br i1 %i.tu, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 0, ptr %i.ts, align 8, !tbaa !56
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 0, ptr %i.tw, align 4, !tbaa !57
  %i.tx = load ptr, ptr %i.tr, align 8, !tbaa !12
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8
  call void %i.tz(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #15, !inline_history !62
  %i.ua = load ptr, ptr %i.tr, align 8, !tbaa !12
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uc = load ptr, ptr %i.ub, align 8
  call void %i.uc(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #15, !inline_history !62
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.ud = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ud, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ue = add nsw i32 %i.tv, -1
  store i32 %i.ue, ptr %i.ts, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.uf = atomicrmw volatile add ptr %i.ts, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.tv, %bb.du ], [ %i.uf, %bb.dv ]
  %i.ug = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ug, label %bb.dw, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, !prof !54

bb.dw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tr) #15
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i: ; preds = %bb.dw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ds, %.lr.ph.i.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.uh, %.lcssa404
  br i1 %.not.i.i.i157, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit155._crit_edge
  %16 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %_ZNSolsEPFRSoS_E.exit155._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %16, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.ui = load ptr, ptr %i.mr, align 8, !tbaa !49
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %16 to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %16, i64 noundef %i.ul) #17
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.um = load ptr, ptr %9, align 8, !tbaa !48    ; 3 uses
  %i.un = load ptr, ptr %i.kf, align 8, !tbaa !47 ; 2 uses
  %.not4.i.i.i159 = icmp eq ptr %i.um, %i.un
  br i1 %.not4.i.i.i159, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166
  %.05.i.i.i161 = phi ptr [ %i.vf, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166 ], [ %i.um, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.05.i.i.i161, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i162 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i.i.i162, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i160
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8 ; 4 uses
  %i.ur = load atomic i64, ptr %i.uq acquire, align 8 ; 2 uses
  %i.us = icmp eq i64 %i.ur, 4294967297
  %i.ut = trunc i64 %i.ur to i32                  ; 2 uses
  br i1 %i.us, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.uq, align 8, !tbaa !56
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  store i32 0, ptr %i.uu, align 4, !tbaa !57
  %i.uv = load ptr, ptr %i.up, align 8, !tbaa !12
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #15, !inline_history !62
  %i.uy = load ptr, ptr %i.up, align 8, !tbaa !12
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.va = load ptr, ptr %i.uz, align 8
  call void %i.va(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #15, !inline_history !62
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166

bb.ea:                                            ; preds = %bb.dy
  %i.vb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i163 = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i.i.i.i163, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vc = add nsw i32 %i.ut, -1
  store i32 %i.vc, ptr %i.uq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164

bb.ec:                                            ; preds = %bb.ea
  %i.vd = atomicrmw volatile add ptr %i.uq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i.i.i.i.i165 = phi i32 [ %i.ut, %bb.eb ], [ %i.vd, %bb.ec ]
  %i.ve = icmp eq i32 %.0.i.i.i.i.i.i.i.i165, 1
  br i1 %i.ve, label %bb.ed, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166, !prof !54

bb.ed:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #15
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166: ; preds = %bb.ed, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i164, %bb.dz, %.lr.ph.i.i.i160
  %i.vf = getelementptr inbounds nuw i8, ptr %.05.i.i.i161, i64 16 ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.vf, %i.un
  br i1 %.not.i.i.i167, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168, label %.lr.ph.i.i.i160, !llvm.loop !1

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i166
  %.pr.i169 = load ptr, ptr %9, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit
  %i.vg = phi ptr [ %.pr.i169, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i168 ], [ %i.um, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i171 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i1.i171, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173, label %bb.ee

bb.ee:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170
  %i.vh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !49
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vg to i64
  %i.vl = sub i64 %i.vj, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vl) #17
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i170, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv12ppf_match_3d13PPF3DDetectorD1Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.vm = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.dy
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173
  %i.vo = load i64, ptr %i.dy, align 8, !tbaa !37
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.vq = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.dk
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.vs = load i64, ptr %i.dk, align 8, !tbaa !37
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 0

bb.ef:                                            ; preds = %.invoke502, %.noexc347, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342, %.noexc345, %bb.cr, %.noexc336, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331, %.noexc334, %bb.cp, %_ZNSolsEm.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135, %_ZNSolsEPFRSoS_E.exit133, %_ZNSolsEPFRSoS_E.exit141, %bb.cm
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.eg:                                            ; preds = %.invoke504, %.noexc380, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i375, %.noexc378, %bb.da, %.noexc369, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364, %.noexc367, %bb.cy, %.noexc358, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353, %.noexc356, %bb.cv, %_ZNSolsEPFRSoS_E.exit151, %_ZNSolsEd.exit147, %bb.cw, %_ZNSolsEPFRSoS_E.exit143, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145, %bb.cs
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.vw = phi ptr [ %i.xr, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.tl, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ]
  %.0412 = phi i64 [ %i.xp, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %.0412 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !52 ; 2 uses
  %i.wa = load <2 x ptr>, ptr %i.vx, align 8, !tbaa !66
  store <2 x ptr> %i.wa, ptr %12, align 16, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit, label %bb.eh

bb.eh:                                            ; preds = %.peel.next
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 3 uses
  %i.wc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i8 %i.wc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wd = load i32, ptr %i.wb, align 4, !tbaa !53
  %i.we = add nsw i32 %i.wd, 1
  store i32 %i.we, ptr %i.wb, align 4, !tbaa !53
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

bb.ej:                                            ; preds = %bb.eh
  %i.wf = atomicrmw volatile add ptr %i.wb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit: ; preds = %.peel.next, %bb.ei, %bb.ej
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181 unwind label %.loopexit.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit
  %i.wh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.0412)
          to label %_ZNSolsEm.exit183 unwind label %.loopexit.loopexit ; 3 uses

_ZNSolsEm.exit183:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !12
  %i.wj = getelementptr i8, ptr %i.wi, i64 -24
  %i.wk = load i64, ptr %i.wj, align 8
  %i.wl = getelementptr inbounds i8, ptr %i.wh, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 240
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i383 = icmp eq ptr %i.wn, null
  br i1 %.not.i.i.i383, label %.loopexit420, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384

.loopexit420:                                     ; preds = %_ZNSolsEm.exit183, %_ZNSolsEm.exit183.peel
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc388 unwind label %.loopexit.split-lp

.noexc388:                                        ; preds = %.loopexit420
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384: ; preds = %_ZNSolsEm.exit183
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 56
  %i.wp = load i8, ptr %i.wo, align 8, !tbaa !36
  %.not.i1.i.i385 = icmp eq i8 %i.wp, 0
  br i1 %.not.i1.i.i385, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i384
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 67
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i386

end_hunk_1
