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
  %6 = alloca %"struct.ozz::animation::offline::RawTrackKeyframe", align 4 ; 7 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
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
  %.sroa.4.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cp = fneg <2 x float> %i.az                  ; 2 uses
  %i.cq = shufflevector <2 x float> %.sroa.10.0, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.cr = fneg <2 x float> %i.cq                  ; 2 uses
  %i.cs = shufflevector <2 x float> %.sroa.10.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %.sroa.10.0, <2 x i32> <i32 0, i32 3>
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.cv = shufflevector <2 x float> %.sroa.10.0, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %i.cw = shufflevector <2 x float> %i.az, <2 x float> %.sroa.10.0, <2 x i32> <i32 0, i32 2>
  %i.cx = shufflevector <2 x float> %i.az, <2 x float> %.sroa.10.0, <2 x i32> <i32 1, i32 2>
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %.lr.ph.i120
  %.sroa.03.08.i = phi ptr [ %.val113, %.lr.ph.i120 ], [ %i.go, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 8
  %i.dc = load <2 x float>, ptr %i.cy, align 4, !tbaa !31 ; 3 uses
  %i.dd = load <2 x float>, ptr %i.db, align 4, !tbaa !31 ; 4 uses
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> %i.dc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.df = fmul <2 x float> %i.cv, %i.de
  %i.dg = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.ct, <2 x float> %i.df)
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cu, <2 x float> %i.di)
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.cw, <2 x float> %i.dj) ; 4 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1 ; 7 uses
  %i.dm = fmul float %i.dl, %i.dl                 ; 3 uses
  %i.dn = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.do = fmul <2 x float> %i.cs, %i.dn
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cp, <2 x float> %i.do)
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.cr, <2 x float> %i.dp)
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.cx, <2 x float> %i.dq) ; 4 uses
  %i.ds = fmul <2 x float> %i.dr, %i.dr           ; 2 uses
  %i.dt = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.dk, %i.dk
  %i.du = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.dv = extractelement <2 x float> %i.ds, i64 0 ; 3 uses
  %i.dw = extractelement <2 x float> %i.ds, i64 1 ; 3 uses
  %i.dx = fadd float %i.dv, %i.dw
  %i.dy = fadd float %i.dx, %i.du
  %i.dz = fadd float %i.dm, %i.dy                 ; 3 uses
  %i.ea = fmul float %i.dl, %i.dt
  %i.eb = extractelement <2 x float> %i.dr, i64 0 ; 4 uses
  %i.ec = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.ed = call float @llvm.fmuladd.f32(float %i.eb, float %i.ec, float %i.ea) ; 3 uses
  %i.ee = fmul float %i.dz, 4.990000e-01
  %i.ef = fcmp ogt float %i.ed, %i.ee
  br i1 %i.ef, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eg = call noundef float @atan2f(float noundef %i.eb, float noundef %i.dl) #15
  %i.eh = fmul float %i.eg, 2.000000e+00
  %.sroa.041.4.vec.insert52.i.i = insertelement <2 x float> <float poison, float f0x3FC90FDB>, float %i.eh, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.ei = fmul float %i.dz, -4.990000e-01
  %i.ej = fcmp olt float %i.ed, %i.ei
  br i1 %i.ej, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ek = call noundef float @atan2f(float noundef %i.eb, float noundef %i.dl) #15
  %i.el = fmul float %i.ek, -2.000000e+00
  %.sroa.041.4.vec.insert50.i.i = insertelement <2 x float> <float poison, float f0xBFC90FDB>, float %i.el, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.em = fmul float %i.ec, 2.000000e+00          ; 2 uses
  %i.en = fmul float %i.eb, 2.000000e+00          ; 2 uses
  %i.eo = fneg float %i.dt                        ; 2 uses
  %i.ep = fmul float %i.en, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.em, float %i.dl, float %i.ep)
  %i.er = fsub float %i.dv, %i.dw
  %i.es = fsub float %i.er, %i.du
  %i.et = fadd float %i.dm, %i.es
  %i.eu = call noundef float @atan2f(float noundef %i.eq, float noundef %i.et) #15
  %.sroa.041.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ev = fmul float %i.ed, 2.000000e+00
  %i.ew = fdiv float %i.ev, %i.dz
  %i.ex = call noundef float @asinf(float noundef %i.ew) #15
  %.sroa.041.4.vec.insert.i.i = insertelement <2 x float> %.sroa.041.0.vec.insert.i.i, float %i.ex, i64 1
  %i.ey = fmul float %i.em, %i.eo
  %i.ez = call float @llvm.fmuladd.f32(float %i.en, float %i.dl, float %i.ey)
  %i.fa = fsub float %i.dw, %i.dv
  %i.fb = fsub float %i.fa, %i.du
  %i.fc = fadd float %i.dm, %i.fb
  %i.fd = call noundef float @atan2f(float noundef %i.ez, float noundef %i.fc) #15
  %i.fe = fmul float %i.fd, %i.ch
  %i.ff = fmul float %i.fe, 5.000000e-01
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i": ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.041.0.i.i = phi <2 x float> [ %.sroa.041.4.vec.insert52.i.i, %bb.s ], [ %.sroa.041.4.vec.insert50.i.i, %bb.u ], [ %.sroa.041.4.vec.insert.i.i, %bb.v ]
  %.sroa.1155.0.i.i = phi float [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.u ], [ %i.ff, %bb.v ] ; 2 uses
  %i.fg = fmul <2 x float> %.sroa.041.0.i.i, %i.ce
  %i.fh = fmul <2 x float> %i.fg, splat (float 5.000000e-01) ; 2 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0 ; 2 uses
  %i.fj = call noundef float @cosf(float noundef %i.fi) #15
  %i.fk = call noundef float @sinf(float noundef %i.fi) #15
  %i.fl = extractelement <2 x float> %i.fh, i64 1 ; 2 uses
  %i.fm = call noundef float @cosf(float noundef %i.fl) #15
  %i.fn = call noundef float @sinf(float noundef %i.fl) #15
  %i.fo = call noundef float @cosf(float noundef %.sroa.1155.0.i.i) #15
  %i.fp = call noundef float @sinf(float noundef %.sroa.1155.0.i.i) #15 ; 2 uses
  %i.fq = fneg float %i.fp
  %i.fr = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fk, i64 1 ; 2 uses
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fu = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.fn, i64 1 ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.fx = fmul <4 x float> %i.ft, %i.fw
  %i.fy = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fz = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ga = fmul <4 x float> %i.fy, %i.fz
  %i.gb = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fo, i64 1 ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float %i.fq, i64 2
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.gf = fmul <4 x float> %i.ga, %i.ge
  %i.gg = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.gg, <4 x float> %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 1, ptr %6, align 4, !tbaa !97
  %i.gi = load float, ptr %.sroa.03.08.i, align 4, !tbaa !99
  %i.gj = fdiv float %i.gi, %i.ba
  store float %i.gj, ptr %i.cn, align 4, !tbaa !100
  %10 = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  store <4 x float> %10, ptr %.sroa.4.0..sroa_idx.i121, align 4, !tbaa !31
  %i.gk = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 3 uses
  %i.gl = load ptr, ptr %i.co, align 8, !tbaa !40
  %.not.i.i10.i122 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i10.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gk, ptr noundef nonnull align 4 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !41
  %i.gm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr %i.gn, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

bb.x:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.gk, ptr noundef nonnull align 4 dereferenceable(24) %6)
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 20 ; 2 uses
  %.not.i123 = icmp eq ptr %i.go, %.val114
  br i1 %.not.i123, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %bb.r

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit": ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 4, !tbaa !101, !range !84, !noundef !85
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.preheader167, label %.loopexit168

.preheader167:                                    ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !43 ; 2 uses
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !44 ; 3 uses
  %.not175 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not175, label %.loopexit168, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader167
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 20
  %i.ha = load ptr, ptr %4, align 8, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.080169 = phi i64 [ 0, %.lr.ph ], [ %i.iq, %bb.y ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %.080169 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = getelementptr inbounds nuw [20 x i8], ptr %i.gv, i64 %.080169 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !95 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !95 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hl = load <2 x float>, ptr %i.hc, align 4, !tbaa !31 ; 3 uses
  %i.hm = load <2 x float>, ptr %i.hf, align 4, !tbaa !31 ; 4 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 1 ; 2 uses
  %i.ho = fneg <2 x float> %i.hl                  ; 2 uses
  %i.hp = fneg float %i.hn
  %i.hq = fneg <2 x float> %i.hm
  %i.hr = load <2 x float>, ptr %i.hk, align 4, !tbaa !31 ; 4 uses
  %i.hs = load <2 x float>, ptr %i.he, align 4, !tbaa !31 ; 4 uses
  %i.ht = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %i.hu, %i.ho
  %i.hw = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hs, <2 x float> %i.hv)
  %i.hz = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <2 x i32> <i32 1, i32 2>
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hz, <2 x float> %i.hy)
  %i.ib = shufflevector <2 x float> %i.hm, <2 x float> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hr, <2 x float> %i.ia)
  %i.id = fmul float %i.hj, %i.hp
  %i.ie = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.if = call float @llvm.fmuladd.f32(float %i.hh, float %i.ie, float %i.id)
  %i.ig = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.ih = extractelement <2 x float> %i.ho, i64 0
  %i.ii = call float @llvm.fmuladd.f32(float %i.ih, float %i.ig, float %i.if)
  %i.ij = extractelement <2 x float> %i.hm, i64 0 ; 2 uses
  %i.ik = extractelement <2 x float> %i.hs, i64 0
  %i.il = call float @llvm.fmuladd.f32(float %i.ij, float %i.ik, float %i.ii)
  %foldExtExtBinop198 = fmul <2 x float> %i.hl, %i.hs
  %i.im = extractelement <2 x float> %foldExtExtBinop198, i64 0
  %i.in = call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.im)
  %i.io = call float @llvm.fmuladd.f32(float %i.ij, float %i.ig, float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %i.hn, float %i.ie, float %i.io)
  %.sroa.5143.8.vec.insert = insertelement <2 x float> poison, float %i.il, i64 0
  %.sroa.5143.12.vec.insert = insertelement <2 x float> %.sroa.5143.8.vec.insert, float %i.ip, i64 1
  %11 = shufflevector <2 x float> %i.ic, <2 x float> %.sroa.5143.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %i.he, align 4, !tbaa !31
  %i.iq = add nuw i64 %.080169, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.iq, %i.gz
  br i1 %exitcond.not, label %.loopexit168, label %bb.y, !llvm.loop !63

.loopexit168:                                     ; preds = %bb.y, %.preheader167, %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.is = load i8, ptr %i.ir, align 4, !tbaa !102, !range !84, !noundef !85
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %.preheader166, label %.loopexit

.preheader166:                                    ; preds = %.loopexit168
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !47 ; 2 uses
  %i.iw = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 5 uses
  %.not176 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not176, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader166
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 3 uses
  %i.ja = ashr exact i64 %i.iz, 4                 ; 2 uses
  %i.jb = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.jc = icmp eq i64 %i.iz, 16
  br i1 %i.jc, label %.epil.preheader, label %.lr.ph171.new

.lr.ph171.new:                                    ; preds = %.lr.ph171
  %unroll_iter = and i64 %i.ja, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph171.new
  %.081170 = phi i64 [ 0, %.lr.ph171.new ], [ %i.kc, %bb.z ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph171.new ], [ %niter.next.1, %bb.z ]
  %i.jd = getelementptr inbounds nuw [20 x i8], ptr %i.jb, i64 %.081170 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %.081170 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %i.jh = load <2 x float>, ptr %i.jg, align 4, !tbaa !31
  %i.ji = load <2 x float>, ptr %i.je, align 4, !tbaa !31
  %i.jj = fsub <2 x float> %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !87
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !87
  %i.jo = fsub float %i.jl, %i.jn
  store <2 x float> %i.jj, ptr %i.jg, align 4, !tbaa !31
  store float %i.jo, ptr %i.jk, align 4, !tbaa !31
  %i.jp = or disjoint i64 %.081170, 1             ; 2 uses
  %i.jq = getelementptr inbounds nuw [20 x i8], ptr %i.jb, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.jp ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 2 uses
  %i.ju = load <2 x float>, ptr %i.jt, align 4, !tbaa !31
  %i.jv = load <2 x float>, ptr %i.jr, align 4, !tbaa !31
  %i.jw = fsub <2 x float> %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 12 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !87
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !87
  %i.kb = fsub float %i.jy, %i.ka
  store <2 x float> %i.jw, ptr %i.jt, align 4, !tbaa !31
  store float %i.kb, ptr %i.jx, align 4, !tbaa !31
  %i.kc = add nuw i64 %.081170, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.z, !llvm.loop !64

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.z
  %i.kd = and i64 %i.iz, 16
  %lcmp.mod.not = icmp eq i64 %i.kd, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph171
  %.081170.epil.init = phi i64 [ 0, %.lr.ph171 ], [ %i.kc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod202 = trunc i64 %i.ja to i1
  call void @llvm.assume(i1 %lcmp.mod202)
  %i.ke = getelementptr inbounds nuw [20 x i8], ptr %i.jb, i64 %.081170.epil.init ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %.081170.epil.init ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !31
  %i.kj = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.kk = fsub <2 x float> %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !87
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !87
  %i.kp = fsub float %i.km, %i.ko
  store <2 x float> %i.kk, ptr %i.kh, align 4, !tbaa !31
  store float %i.kp, ptr %i.kl, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader166, %.loopexit168
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !103, !range !84, !noundef !85
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %.val115 = load ptr, ptr %4, align 8, !tbaa !38
  %.val116 = load ptr, ptr %i.cl, align 8, !tbaa !39
  call fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_3ZNKS2_clES5_S8_SA_SC_SD_E3$_4EEDaRT_T0_T1_"(ptr %.val115, ptr %.val116)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !104, !range !84, !noundef !85
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.val117 = load ptr, ptr %3, align 8, !tbaa !29
  %.val118 = load ptr, ptr %i.bi, align 8, !tbaa !30
  call fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_6ZNKS2_clES5_S8_SA_SC_SD_E3$_7EEDaRT_T0_T1_"(ptr %.val117, ptr %.val118)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.kw = load i8, ptr %i.gp, align 4, !tbaa !101, !range !84, !noundef !85
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %.preheader, label %.critedge93

.preheader:                                       ; preds = %bb.ad
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47
  %i.la = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not91172.not = icmp eq ptr %i.kz, %i.la
  br i1 %.not91172.not, label %.critedge93, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 12
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph174, %bb.af
  %i.ld = phi ptr [ %i.la, %.lr.ph174 ], [ %i.ms, %bb.af ]
  %.084173 = phi i64 [ 0, %.lr.ph174 ], [ %i.mq, %bb.af ] ; 3 uses
  %i.le = load ptr, ptr %3, align 8, !tbaa !29
  %i.lf = getelementptr inbounds nuw [20 x i8], ptr %i.le, i64 %.084173
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %9, align 16, !tbaa !31
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !92
  %i.li = call noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %4, float noundef %i.lh, ptr noundef nonnull %9)
  br i1 %i.li, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %.084173 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 2 uses
  %i.ll = load float, ptr %i.lc, align 4, !tbaa !95
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 12 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lo = load <2 x float>, ptr %9, align 16, !tbaa !31 ; 3 uses
  %i.lp = load <2 x float>, ptr %i.lb, align 4, !tbaa !31 ; 4 uses
  %i.lq = fneg <2 x float> %i.lp
  %i.lr = fneg <2 x float> %i.lo                  ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lp, <2 x float> %i.lo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lt = fneg <2 x float> %i.ls
  %i.lu = load float, ptr %i.lm, align 4, !tbaa !87
  %i.lv = load <2 x float>, ptr %i.ln, align 4, !tbaa !31 ; 3 uses
  %i.lw = load <2 x float>, ptr %i.lk, align 4, !tbaa !31 ; 4 uses
  %i.lx = fmul <2 x float> %i.lp, %i.lw
  %i.ly = shufflevector <2 x float> %i.lv, <2 x float> %i.lw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lz = fmul <2 x float> %i.lo, %i.ly
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.lv, <2 x float> %i.lx)
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.lw, <2 x float> %i.lz)
  %i.mc = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> %i.md, <2 x float> %i.ma) ; 2 uses
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.md, <2 x float> %i.mb) ; 2 uses
  %i.mg = fmul <2 x float> %i.ls, %i.mf
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.me, <2 x float> %i.mg) ; 2 uses
  %shift = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop200 = fmul <2 x float> %i.lp, %shift
  %i.mi = extractelement <2 x float> %foldExtExtBinop200, i64 0
  %i.mj = extractelement <2 x float> %i.lr, i64 0
  %i.mk = extractelement <2 x float> %i.mf, i64 0
  %i.ml = call float @llvm.fmuladd.f32(float %i.mj, float %i.mk, float %i.mi) ; 2 uses
  %i.mm = fadd <2 x float> %i.lw, %i.mh
  %i.mn = fadd <2 x float> %i.mh, %i.mm
  %i.mo = fadd float %i.lu, %i.ml
  %i.mp = fadd float %i.ml, %i.mo
  store <2 x float> %i.mn, ptr %i.lk, align 4, !tbaa !31
  store float %i.mp, ptr %i.lm, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.mq = add nuw i64 %.084173, 1                 ; 2 uses
  %i.mr = load ptr, ptr %i.ky, align 8, !tbaa !47
  %i.ms = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = ashr exact i64 %i.mv, 4
  %.not91 = icmp ult i64 %i.mq, %i.mw
  br i1 %.not91, label %bb.ae, label %.critedge93, !llvm.loop !65

.critedge:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ag

.critedge93:                                      ; preds = %bb.af, %.preheader, %bb.ad
  %i.mx = call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.my = call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.mz = and i1 %i.mx, %i.my
  %i.na = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %i.nb = and i1 %i.mz, %i.na
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge93, %.critedge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.critedge ], [ %i.nb, %.critedge93 ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN3ozz9animation26GetJointRestPoseLocalSpaceERKNS0_8SkeletonEi(ptr dead_on_unwind writable sret(%"struct.ozz::math::Transform") align 4, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_3ZNKS2_clES5_S8_SA_SC_SD_E3$_4EEDaRT_T0_T1_"(ptr %.0.val, ptr %.8.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 3 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !31 ; 3 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.sroa.212.0.copyload = load <2 x float>, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.8.val, i64 -16
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !31 ; 3 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds i8, ptr %.8.val, i64 -8
  %.sroa.210.0.copyload = load <2 x float>, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload, i64 0 ; 2 uses
  %i.h = fneg float %.sroa.01.0.vec.extract.i     ; 2 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload, i64 1 ; 3 uses
  %i.i = fneg float %.sroa.01.4.vec.extract.i     ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.210.0.copyload, i64 0 ; 3 uses
  %i.j = fneg float %.sroa.3.8.vec.extract.i      ; 2 uses
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.210.0.copyload, i64 1 ; 4 uses
  %.sroa.33.12.vec.extract.i = extractelement <2 x float> %.sroa.212.0.copyload, i64 1 ; 4 uses
  %.sroa.02.0.vec.extract.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 0 ; 3 uses
  %i.k = fmul float %.sroa.02.0.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.h, float %i.k)
  %.sroa.02.4.vec.extract.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 1 ; 4 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %i.j, float %i.l)
  %.sroa.33.8.vec.extract.i = extractelement <2 x float> %.sroa.212.0.copyload, i64 0 ; 4 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.m)
  %i.o = fmul float %.sroa.02.4.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %i.h, float %i.p)
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.02.0.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.q)
  %i.s = fmul float %.sroa.33.8.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.j, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.02.0.vec.extract.i, float %i.i, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.u)
  %foldExtExtBinop = fmul <2 x float> %.sroa.011.0.copyload, %.sroa.09.0.copyload
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %.sroa.3.12.vec.extract.i, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.x)
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.y)
  %i.aa = uitofp i64 %i.d to float
  %i.ab = fadd float %i.aa, -1.000000e+00
  %i.ac = fadd float %i.z, -1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.01 = phi i64 [ 0, %bb.b ], [ %i.bp, %bb.c ]   ; 3 uses
  %i.ad = uitofp i64 %.01 to float
  %i.ae = fdiv float %i.ad, %i.ab                 ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.01 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ag, align 4, !tbaa !31 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.22.0.copyload = load <2 x float>, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.v, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float 1.000000e+00) ; 3 uses
  %i.al = fmul float %i.ai, %i.ai
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.al)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %i.ap = tail call noundef float @sqrtf(float noundef %i.ao) #15
  %i.aq = fdiv float 1.000000e+00, %i.ap          ; 4 uses
  %i.ar = fmul float %i.ah, %i.aq                 ; 4 uses
  %i.as = fmul float %i.ai, %i.aq                 ; 3 uses
  %i.at = fmul float %i.aj, %i.aq                 ; 3 uses
  %i.au = fmul float %i.ak, %i.aq                 ; 4 uses
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 4 uses
  %.sroa.35.12.vec.extract.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 1 ; 4 uses
  %i.av = fmul float %.sroa.35.12.vec.extract.i, %i.ar
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.04.0.vec.extract.i, float %i.av)
  %.sroa.35.8.vec.extract.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 0 ; 4 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.as, float %.sroa.35.8.vec.extract.i, float %i.aw)
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1 ; 4 uses
  %i.ay = fneg float %i.at                        ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %.sroa.04.4.vec.extract.i, float %i.ax)
  %i.ba = fmul float %.sroa.35.12.vec.extract.i, %i.as
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.04.4.vec.extract.i, float %i.ba)
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.04.0.vec.extract.i, float %i.bb)
  %i.bd = fneg float %i.ar
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %.sroa.35.8.vec.extract.i, float %i.bc)
  %i.bf = fmul float %.sroa.35.12.vec.extract.i, %i.at
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.35.8.vec.extract.i, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.04.4.vec.extract.i, float %i.bg)
  %i.bi = fneg float %i.as                        ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %.sroa.04.0.vec.extract.i, float %i.bh)
  %i.bk = fneg float %.sroa.04.0.vec.extract.i
  %i.bl = fmul float %i.ar, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.35.12.vec.extract.i, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bi, float %.sroa.04.4.vec.extract.i, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ay, float %.sroa.35.8.vec.extract.i, float %i.bn)
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.az, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.be, i64 1
  %.sroa.58.8.vec.insert.i = insertelement <2 x float> poison, float %i.bj, i64 0
  %.sroa.58.12.vec.insert.i = insertelement <2 x float> %.sroa.58.8.vec.insert.i, float %i.bo, i64 1
  %0 = shufflevector <2 x float> %.sroa.06.4.vec.insert.i, <2 x float> %.sroa.58.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %0, ptr %i.ag, align 4, !tbaa !31
  %i.bp = add nuw i64 %.01, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !105

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_6ZNKS2_clES5_S8_SA_SC_SD_E3$_7EEDaRT_T0_T1_"(ptr %.0.val, ptr %.8.val) unnamed_addr #4 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 20                  ; 5 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %.new

.new:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !31
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !31
  %i.g = getelementptr inbounds i8, ptr %.8.val, i64 -12
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !31
  %.sroa.224.0..sroa_idx = getelementptr inbounds i8, ptr %.8.val, i64 -4
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4, !tbaa !31
  %i.h = fsub <2 x float> %.sroa.025.0.copyload, %.sroa.023.0.copyload ; 3 uses
  %i.i = fsub float %.sroa.226.0.copyload, %.sroa.224.0.copyload ; 3 uses
  %i.j = uitofp i64 %i.d to float
  %i.k = fadd float %i.j, -1.000000e+00           ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %unroll_iter = and i64 %i.d, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.01 = phi i64 [ 0, %.new ], [ %i.ag, %bb.b ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.l = uitofp i64 %.01 to float
  %i.m = fdiv float %i.l, %i.k                    ; 2 uses
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %.01 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !31
  %i.p = fmul float %i.i, %i.m
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.h, %i.r
  %i.t = fadd <2 x float> %i.s, %.sroa.07.0.copyload
  %i.u = fadd float %i.p, %.sroa.28.0.copyload
  store <2 x float> %i.t, ptr %i.o, align 4, !tbaa !31
  store float %i.u, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !31
  %i.v = or disjoint i64 %.01, 1                  ; 2 uses
  %i.w = uitofp i64 %i.v to float
  %i.x = fdiv float %i.w, %i.k                    ; 2 uses
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.07.0.copyload.1 = load <2 x float>, ptr %i.z, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.28.0.copyload.1 = load float, ptr %.sroa.28.0..sroa_idx.1, align 4, !tbaa !31
  %i.aa = fmul float %i.i, %i.x
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.h, %i.ac
  %i.ae = fadd <2 x float> %i.ad, %.sroa.07.0.copyload.1
  %i.af = fadd float %i.aa, %.sroa.28.0.copyload.1
  store <2 x float> %i.ae, ptr %i.z, align 4, !tbaa !31
  store float %i.af, ptr %.sroa.28.0..sroa_idx.1, align 4, !tbaa !31
  %i.ag = add nuw i64 %.01, 2                     ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !106

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod2 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.ah = uitofp i64 %i.ag to float
  %i.ai = fdiv float %i.ah, %i.k                  ; 2 uses
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.07.0.copyload.epil = load <2 x float>, ptr %i.ak, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.sroa.28.0.copyload.epil = load float, ptr %.sroa.28.0..sroa_idx.epil, align 4, !tbaa !31
  %i.al = fmul float %i.i, %i.ai
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.h, %i.an
  %i.ap = fadd <2 x float> %i.ao, %.sroa.07.0.copyload.epil
  %i.aq = fadd float %i.al, %.sroa.28.0.copyload.epil
  store <2 x float> %i.ap, ptr %i.ak, align 4, !tbaa !31
  store float %i.aq, ptr %.sroa.28.0..sroa_idx.epil, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56), float noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 72
  %i.o = tail call noundef ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S7_EEEEPS4_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not5.i = icmp eq ptr %i.p, %i.r
  br i1 %.not5.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.06.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.06.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split, %bb.c
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %.not.i25 = icmp eq ptr %i.t, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit
  %i.u = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.t)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #16
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !111
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEESA_EvT_SD_RT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ae, %i.f
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.ag = udiv exact i64 %i.f, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i) ; 0 uses
end_hunk_0
