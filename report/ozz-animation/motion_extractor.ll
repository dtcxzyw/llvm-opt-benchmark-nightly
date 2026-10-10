Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/motion_extractor?download=true
inline.NumInlined: 641
inline.NumDeleted: 405
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ozz::animation::offline::RawTrackKeyframe" = type { i32, float, %"struct.ozz::math::Quaternion" }
%"struct.ozz::math::Quaternion" = type { float, float, float, float }
%"struct.ozz::animation::offline::RawTrackKeyframe.27" = type { i32, float, %"struct.ozz::math::Float3" }
%"struct.ozz::math::Float3" = type { float, float, float }
%"struct.ozz::math::Transform" = type { %"struct.ozz::math::Float3", %"struct.ozz::math::Quaternion", %"struct.ozz::math::Float3" }

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSERKS7_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S7_EEEEPS4_mT_SF_ = comdat any

$_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m = comdat any

$__clang_call_terminate = comdat any

$_ZN3ozz9animation7offline12RawAnimation10JointTrackC2ERKS3_ = comdat any

$_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSERKS7_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.ozz::animation::offline::RawTrackKeyframe", align 4 ; 8 uses
  %7 = alloca %"struct.ozz::animation::offline::RawTrackKeyframe.27", align 4 ; 8 uses
  %8 = alloca %"struct.ozz::math::Transform", align 4 ; 5 uses
  %9 = alloca %"struct.ozz::math::Quaternion", align 16 ; 8 uses
  %i.a = icmp eq ptr %1, %5
  br i1 %i.a, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %4, null
  %or.cond4 = and i1 %i.d, %or.cond
  br i1 %or.cond4, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = load ptr, ptr %1, align 8, !tbaa !17
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 72
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68
  %i.o = trunc i64 %i.n to i32
  %.not = icmp eq i32 %i.l, %i.o
  br i1 %.not, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %0, align 4, !tbaa !73     ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  %.not90 = icmp slt i32 %i.p, %i.l
  %or.cond165 = and i1 %i.q, %.not90
  br i1 %or.cond165, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.r, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.u, ptr %i.v, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.y = load i32, ptr %0, align 4, !tbaa !73     ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %i.z ; 8 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %i.z ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN3ozz9animation26GetJointRestPoseLocalSpaceERKNS0_8SkeletonEi(ptr dead_on_unwind nonnull writable sret(%"struct.ozz::math::Transform") align 4 %8, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.y)
  switch i32 %i.ag, label %bb.i [
    i32 1, label %.sink.split.i
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !24, !noalias !81 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24, !noalias !81
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ao, %bb.h ], [ %8, %bb.f ] ; 2 uses
  %i.ap = load <2 x float>, ptr %.sink.i, align 4
  %.sroa.6139.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %.sroa.6139.0.copyload = load float, ptr %.sroa.6139.0..sink.i.sroa_idx, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g, %bb.f
  %.sroa.6139.0 = phi float [ 0.000000e+00, %bb.f ], [ %.sroa.6139.0.copyload, %.sink.split.i ], [ 0.000000e+00, %bb.g ]
  %i.aq = phi <2 x float> [ zeroinitializer, %bb.f ], [ %i.ap, %.sink.split.i ], [ zeroinitializer, %bb.g ]
  switch i32 %i.aj, label %_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %.sink.split24.i

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26, !noalias !81 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26, !noalias !81
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.sink.split24.i

.sink.split24.i:                                  ; preds = %bb.l, %bb.j
  %.sink25.i = phi ptr [ %i.ax, %bb.l ], [ %i.ar, %bb.j ] ; 2 uses
  %i.ay = load <2 x float>, ptr %.sink25.i, align 4
  %.sroa.10.12..sink25.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 8
  %.sroa.10.12.copyload = load <2 x float>, ptr %.sroa.10.12..sink25.i.sroa_idx, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit

_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit: ; preds = %bb.i, %bb.k, %.sink.split24.i
  %.sroa.10.0 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.i ], [ %.sroa.10.12.copyload, %.sink.split24.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.k ] ; 6 uses
  %i.az = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ay, %.sink.split24.i ], [ zeroinitializer, %bb.k ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.ba = load float, ptr %i.t, align 8, !tbaa !78 ; 2 uses
  %i.bb = load <2 x i8>, ptr %i.ae, align 4, !tbaa !82
  %i.bc = uitofp <2 x i8> %i.bb to <2 x float>
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !83, !range !84, !noundef !85
  %i.bf = uitofp nneg i8 %i.be to float
  %.val = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ab, i64 8
  %.val111 = load ptr, ptr %i.bg, align 8         ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !30
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i: ; preds = %bb.m, %_ZN3ozz9animation7offline12_GLOBAL__N_114BuildReferenceENS1_15MotionExtractor9ReferenceES4_RKNS_4math9TransformERKNS1_12RawAnimation10JointTrackE.exit
  %.not5.i = icmp eq ptr %.val, %.val111
  br i1 %.not5.i, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_14TranslationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_0SG_INS1_16RawTrackKeyframeINS_4math6Float3EEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.cb, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !87
  %i.bq = fsub float %i.bp, %.sroa.6139.0
  %i.br = load <2 x float>, ptr %i.bn, align 4, !tbaa !31
  %i.bs = fsub <2 x float> %i.br, %i.aq
  %i.bt = fmul <2 x float> %i.bs, %i.bc
  %i.bu = fmul float %i.bq, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i32 1, ptr %7, align 4, !tbaa !89
  %i.bv = load float, ptr %.sroa.01.06.i, align 4, !tbaa !91
  %i.bw = fdiv float %i.bv, %i.ba
  store float %i.bw, ptr %i.bk, align 4, !tbaa !92
  store <2 x float> %i.bt, ptr %i.bl, align 4, !tbaa !31
  store float %i.bu, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !31
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !30 ; 3 uses
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !33
  %.not.i.i10.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !35
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  store ptr %i.ca, ptr %i.bi, align 8, !tbaa !30
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

bb.p:                                             ; preds = %bb.n
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %7)
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, %.val111
  br i1 %.not.i, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_14TranslationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_0SG_INS1_16RawTrackKeyframeINS_4math6Float3EEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %bb.n

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_14TranslationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_0SG_INS1_16RawTrackKeyframeINS_4math6Float3EEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit": ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.cc = load <2 x i8>, ptr %i.ah, align 4, !tbaa !82
  %i.cd = shufflevector <2 x i8> %i.cc, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = uitofp <2 x i8> %i.cd to <2 x float>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !93, !range !84, !noundef !85
  %i.ch = uitofp nneg i8 %i.cg to float
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.val113 = load ptr, ptr %i.ci, align 8         ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ab, i64 32
  %.val114 = load ptr, ptr %i.cj, align 8         ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %.not.i.i.i119 = icmp eq ptr %i.cm, %i.ck
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i, label %bb.q

bb.q:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_14TranslationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_0SG_INS1_16RawTrackKeyframeINS_4math6Float3EEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i: ; preds = %bb.q, %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_14TranslationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_0SG_INS1_16RawTrackKeyframeINS_4math6Float3EEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %.not7.i = icmp eq ptr %.val113, %.val114
  br i1 %.not7.i, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = fneg <2 x float> %i.az                  ; 2 uses
  %10 = shufflevector <2 x float> %.sroa.10.0, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %11 = fneg <2 x float> %10                      ; 2 uses
  %12 = shufflevector <2 x float> %.sroa.10.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = shufflevector <2 x float> %11, <2 x float> %.sroa.10.0, <2 x i32> <i32 0, i32 3>
  %14 = shufflevector <2 x float> %i.cq, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %15 = shufflevector <2 x float> %.sroa.10.0, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %16 = shufflevector <2 x float> %i.az, <2 x float> %.sroa.10.0, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x float> %i.az, <2 x float> %.sroa.10.0, <2 x i32> <i32 1, i32 2>
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %.lr.ph.i120
  %.sroa.03.08.i = phi ptr [ %.val113, %.lr.ph.i120 ], [ %i.fo, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !95
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 8
  %19 = load <2 x float>, ptr %i.cr, align 4, !tbaa !31 ; 3 uses
  %20 = load <2 x float>, ptr %18, align 4, !tbaa !31 ; 4 uses
  %21 = shufflevector <2 x float> %20, <2 x float> %19, <2 x i32> <i32 1, i32 2> ; 2 uses
  %22 = fmul <2 x float> %15, %21
  %23 = insertelement <2 x float> poison, float %i.ct, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %13, <2 x float> %22)
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %14, <2 x float> %25)
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %16, <2 x float> %26) ; 4 uses
  %28 = extractelement <2 x float> %27, i64 1     ; 7 uses
  %29 = fmul float %28, %28                       ; 3 uses
  %30 = shufflevector <2 x float> %19, <2 x float> %20, <2 x i32> <i32 0, i32 2>
  %31 = fmul <2 x float> %12, %30
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.cq, <2 x float> %31)
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %11, <2 x float> %32)
  %34 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %17, <2 x float> %33) ; 4 uses
  %35 = fmul <2 x float> %34, %34                 ; 2 uses
  %i.cu = extractelement <2 x float> %27, i64 0   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %27, %27
  %i.cv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %36 = extractelement <2 x float> %35, i64 0     ; 3 uses
  %i.cw = extractelement <2 x float> %35, i64 1   ; 3 uses
  %i.cx = fadd float %36, %i.cw
  %37 = fadd float %i.cx, %i.cv
  %38 = fadd float %29, %37                       ; 3 uses
  %i.cy = fmul float %28, %i.cu
  %i.cz = extractelement <2 x float> %34, i64 0   ; 4 uses
  %i.da = extractelement <2 x float> %34, i64 1   ; 2 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.cz, float %i.da, float %i.cy) ; 3 uses
  %i.dc = fmul float %38, 4.990000e-01
  %i.dd = fcmp ogt float %i.db, %i.dc
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = call noundef float @atan2f(float noundef %i.cz, float noundef %28) #14
  %i.df = fmul float %i.de, 2.000000e+00
  %.sroa.041.4.vec.insert52.i.i = insertelement <2 x float> <float poison, float f0x3FC90FDB>, float %i.df, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.dg = fmul float %38, -4.990000e-01
  %i.dh = fcmp olt float %i.db, %i.dg
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = call noundef float @atan2f(float noundef %i.cz, float noundef %28) #14
  %i.dj = fmul float %i.di, -2.000000e+00
  %.sroa.041.4.vec.insert50.i.i = insertelement <2 x float> <float poison, float f0xBFC90FDB>, float %i.dj, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.dk = fmul float %i.da, 2.000000e+00          ; 2 uses
  %i.dl = fmul float %i.cz, 2.000000e+00          ; 2 uses
  %i.dm = fneg float %i.cu                        ; 2 uses
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %28, float %i.dn)
  %i.dp = fsub float %36, %i.cw
  %i.dq = fsub float %i.dp, %i.cv
  %i.dr = fadd float %29, %i.dq
  %i.ds = call noundef float @atan2f(float noundef %i.do, float noundef %i.dr) #14
  %.sroa.041.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dt = fmul float %i.db, 2.000000e+00
  %i.du = fdiv float %i.dt, %38
  %i.dv = call noundef float @asinf(float noundef %i.du) #14
  %.sroa.041.4.vec.insert.i.i = insertelement <2 x float> %.sroa.041.0.vec.insert.i.i, float %i.dv, i64 1
  %i.dw = fmul float %i.dk, %i.dm
  %i.dx = call float @llvm.fmuladd.f32(float %i.dl, float %28, float %i.dw)
  %i.dy = fsub float %i.cw, %36
  %i.dz = fsub float %i.dy, %i.cv
  %i.ea = fadd float %29, %i.dz
  %i.eb = call noundef float @atan2f(float noundef %i.dx, float noundef %i.ea) #14
  %i.ec = fmul float %i.eb, %i.ch
  %i.ed = fmul float %i.ec, 5.000000e-01
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i": ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.041.0.i.i = phi <2 x float> [ %.sroa.041.4.vec.insert52.i.i, %bb.s ], [ %.sroa.041.4.vec.insert50.i.i, %bb.u ], [ %.sroa.041.4.vec.insert.i.i, %bb.v ]
  %.sroa.1155.0.i.i = phi float [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.u ], [ %i.ed, %bb.v ] ; 2 uses
  %i.ee = fmul <2 x float> %.sroa.041.0.i.i, %i.ce
  %i.ef = fmul <2 x float> %i.ee, splat (float 5.000000e-01) ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.eh = call noundef float @cosf(float noundef %i.eg) #14
  %i.ei = call noundef float @sinf(float noundef %i.eg) #14
  %i.ej = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.ek = call noundef float @cosf(float noundef %i.ej) #14
  %i.el = call noundef float @sinf(float noundef %i.ej) #14
  %i.em = call noundef float @cosf(float noundef %.sroa.1155.0.i.i) #14
  %i.en = call noundef float @sinf(float noundef %.sroa.1155.0.i.i) #14 ; 2 uses
  %i.eo = fneg float %i.en
  %i.ep = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.ei, i64 1 ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.es = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.el, i64 1 ; 2 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ev = fmul <4 x float> %i.er, %i.eu
  %i.ew = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ex = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ey = fmul <4 x float> %i.ew, %i.ex
  %i.ez = insertelement <4 x float> poison, float %i.en, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.em, i64 1 ; 2 uses
  %i.fb = insertelement <4 x float> %i.fa, float %i.eo, i64 2
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fd = fmul <4 x float> %i.ey, %i.fc
  %i.fe = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.fe, <4 x float> %i.fd) ; 2 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 1, ptr %6, align 4, !tbaa !97
  %i.fi = load float, ptr %.sroa.03.08.i, align 4, !tbaa !99
  %i.fj = fdiv float %i.fi, %i.ba
  store float %i.fj, ptr %i.cn, align 4, !tbaa !100
  store <2 x float> %i.fg, ptr %i.co, align 4, !tbaa !31
  store <2 x float> %i.fh, ptr %.sroa.4.0..sroa_idx.i121, align 4, !tbaa !31
  %i.fk = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 3 uses
  %i.fl = load ptr, ptr %i.cp, align 8, !tbaa !40
  %.not.i.i10.i122 = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i10.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fk, ptr noundef nonnull align 4 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !41
  %i.fm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.fn, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

bb.x:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.fk, ptr noundef nonnull align 4 dereferenceable(24) %6)
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 20 ; 2 uses
  %.not.i123 = icmp eq ptr %i.fo, %.val114
  br i1 %.not.i123, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %bb.r

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit": ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !101, !range !84, !noundef !85
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %.preheader167, label %.loopexit168

.preheader167:                                    ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !43 ; 2 uses
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !44 ; 3 uses
  %.not175 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not175, label %.loopexit168, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader167
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = sdiv exact i64 %i.fy, 20
  %i.ga = load ptr, ptr %4, align 8, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.080169 = phi i64 [ 0, %.lr.ph ], [ %i.hr, %bb.y ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %.080169 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = getelementptr inbounds nuw [20 x i8], ptr %i.fv, i64 %.080169 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !95 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !95 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gm = load <2 x float>, ptr %i.gc, align 4, !tbaa !31 ; 3 uses
  %i.gn = load <2 x float>, ptr %i.gf, align 4, !tbaa !31 ; 4 uses
  %i.go = extractelement <2 x float> %i.gn, i64 1 ; 2 uses
  %i.gp = fneg <2 x float> %i.gm                  ; 2 uses
  %i.gq = fneg float %i.go
  %i.gr = fneg <2 x float> %i.gn
  %i.gs = load <2 x float>, ptr %i.gl, align 4, !tbaa !31 ; 4 uses
  %i.gt = load <2 x float>, ptr %i.ge, align 4, !tbaa !31 ; 4 uses
  %i.gu = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gv, %i.gp
  %i.gx = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gt, <2 x float> %i.gw)
  %i.ha = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 1, i32 2>
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.ha, <2 x float> %i.gz)
  %i.hc = shufflevector <2 x float> %i.gn, <2 x float> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.hd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gs, <2 x float> %i.hb)
  %i.he = fmul float %i.gj, %i.gq
  %i.hf = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.hg = call float @llvm.fmuladd.f32(float %i.gh, float %i.hf, float %i.he)
  %i.hh = extractelement <2 x float> %i.gs, i64 0 ; 2 uses
  %i.hi = extractelement <2 x float> %i.gp, i64 0
  %i.hj = call float @llvm.fmuladd.f32(float %i.hi, float %i.hh, float %i.hg)
  %i.hk = extractelement <2 x float> %i.gn, i64 0 ; 2 uses
  %i.hl = extractelement <2 x float> %i.gt, i64 0
  %i.hm = call float @llvm.fmuladd.f32(float %i.hk, float %i.hl, float %i.hj)
  %foldExtExtBinop.a = fmul <2 x float> %i.gm, %i.gt
  %i.hn = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %i.ho = call float @llvm.fmuladd.f32(float %i.gh, float %i.gj, float %i.hn)
  %i.hp = call float @llvm.fmuladd.f32(float %i.hk, float %i.hh, float %i.ho)
  %i.hq = call float @llvm.fmuladd.f32(float %i.go, float %i.hf, float %i.hp)
  %.sroa.5143.8.vec.insert = insertelement <2 x float> poison, float %i.hm, i64 0
  %.sroa.5143.12.vec.insert = insertelement <2 x float> %.sroa.5143.8.vec.insert, float %i.hq, i64 1
  store <2 x float> %i.hd, ptr %i.ge, align 4, !tbaa !31
  store <2 x float> %.sroa.5143.12.vec.insert, ptr %i.gk, align 4, !tbaa !31
  %i.hr = add nuw i64 %.080169, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %i.fz
  br i1 %exitcond.not, label %.loopexit168, label %bb.y, !llvm.loop !63

.loopexit168:                                     ; preds = %bb.y, %.preheader167, %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !102, !range !84, !noundef !85
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %.preheader166, label %.loopexit

.preheader166:                                    ; preds = %.loopexit168
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !47 ; 2 uses
  %i.hx = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 5 uses
  %.not176 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not176, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader166
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = ashr exact i64 %i.ia, 4                 ; 2 uses
  %i.ic = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.id = icmp eq i64 %i.ia, 16
  br i1 %i.id, label %.epil.preheader, label %.lr.ph171.new

.lr.ph171.new:                                    ; preds = %.lr.ph171
  %unroll_iter = and i64 %i.ib, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph171.new
  %.081170 = phi i64 [ 0, %.lr.ph171.new ], [ %i.jd, %bb.z ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph171.new ], [ %niter.next.1, %bb.z ]
  %i.ie = getelementptr inbounds nuw [20 x i8], ptr %i.ic, i64 %.081170 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %.081170 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.ii = load <2 x float>, ptr %i.ih, align 4, !tbaa !31
  %i.ij = load <2 x float>, ptr %i.if, align 4, !tbaa !31
  %i.ik = fsub <2 x float> %i.ii, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !87
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.io = load float, ptr %i.in, align 4, !tbaa !87
  %i.ip = fsub float %i.im, %i.io
  store <2 x float> %i.ik, ptr %i.ih, align 4, !tbaa !31
  store float %i.ip, ptr %i.il, align 4, !tbaa !31
  %i.iq = or disjoint i64 %.081170, 1             ; 2 uses
  %i.ir = getelementptr inbounds nuw [20 x i8], ptr %i.ic, i64 %i.iq ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.iq ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 2 uses
  %i.iv = load <2 x float>, ptr %i.iu, align 4, !tbaa !31
  %i.iw = load <2 x float>, ptr %i.is, align 4, !tbaa !31
  %i.ix = fsub <2 x float> %i.iv, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 12 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !87
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !87
  %i.jc = fsub float %i.iz, %i.jb
  store <2 x float> %i.ix, ptr %i.iu, align 4, !tbaa !31
  store float %i.jc, ptr %i.iy, align 4, !tbaa !31
end_hunk_0
