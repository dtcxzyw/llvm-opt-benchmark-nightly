Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/additive_animation_builder?download=true
inline.NumInlined: 492
inline.NumDeleted: 275
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ozz::animation::offline::RawAnimation" = type { %"class.std::vector", float, %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ozz::animation::offline::RawAnimation::JointTrack, ozz::StdAllocator<ozz::animation::offline::RawAnimation::JointTrack>>::_Vector_impl" }
%"struct.std::_Vector_base<ozz::animation::offline::RawAnimation::JointTrack, ozz::StdAllocator<ozz::animation::offline::RawAnimation::JointTrack>>::_Vector_impl" = type { %"struct.std::_Vector_base<ozz::animation::offline::RawAnimation::JointTrack, ozz::StdAllocator<ozz::animation::offline::RawAnimation::JointTrack>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ozz::animation::offline::RawAnimation::JointTrack, ozz::StdAllocator<ozz::animation::offline::RawAnimation::JointTrack>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, ozz::StdAllocator<char>>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, ozz::StdAllocator<char>>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.ozz::math::Quaternion" = type { float, float, float, float }
%"struct.ozz::animation::offline::RawAnimation::RotationKey" = type { float, %"struct.ozz::math::Quaternion" }
%"struct.ozz::animation::offline::RawAnimation::ScaleKey" = type { float, %"struct.ozz::math::Float3" }
%"struct.ozz::math::Float3" = type { float, float, float }
%"struct.ozz::animation::offline::RawAnimation::TranslationKey" = type { float, %"struct.ozz::math::Float3" }

$_ZN3ozz9animation7offline12RawAnimationaSEOS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE7reserveEm = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE7reserveEm = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm = comdat any

$_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationEPS3_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.ozz::animation::offline::RawAnimation", align 8 ; 10 uses
  %4 = alloca %"struct.ozz::math::Quaternion", align 8 ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.a = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !25     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %.06.i.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i
  %i.q = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.p)
          to label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZN3ozz9animation7offline12RawAnimationD2Ev.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.w = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.w, label %bb.h, label %bb.an

bb.h:                                             ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = sdiv exact i64 %i.ah, 72                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 72                ; 3 uses
  %i.aq = icmp ugt i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw nsw i64 %i.ai, %i.ap
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.ai, %i.ap
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.k, %.lr.ph.i.i.i48
  %.06.i.i.i49 = phi ptr [ %i.au, %.lr.ph.i.i.i48 ], [ %i.at, %bb.k ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i49)
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i49, i64 72 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.au, %i.ak
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51, label %.lr.ph.i.i.i48, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51: ; preds = %.lr.ph.i.i.i48
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !26
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.aw = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not107 = icmp eq ptr %i.av, %i.aw
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.ax = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.an

bb.l:                                             ; preds = %.lr.ph, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.ay = phi ptr [ %i.aw, %.lr.ph ], [ %i.gm, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ]
  %.036106 = phi i64 [ 0, %.lr.ph ], [ %i.gk, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.ay, i64 %.036106 ; 8 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %.036106 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !37 ; 4 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not38 = icmp eq ptr %i.bd, %i.be
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.bj, align 4, !tbaa !38
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.sroa.679.0.copyload = load float, ptr %.sroa.679.0..sroa_idx, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.679.0 = phi float [ %.sroa.679.0.copyload, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.sroa.078.0 = phi <2 x float> [ %.sroa.078.0.copyload, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %.not39 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !43
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store <2 x float> zeroinitializer, ptr %4, align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %5, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !47 ; 3 uses
  %.not40 = icmp eq ptr %i.br, %i.bs
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bt, align 4, !tbaa !38
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.r ], [ 1.000000e+00, %bb.q ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.r ], [ splat (float 1.000000e+00), %bb.q ]
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bi)
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !36
  %.pre109 = load ptr, ptr %i.by, align 8, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i
  %i.bz = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.do, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.ca = phi ptr [ %.pre109, %.lr.ph.i ], [ %i.dp, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 5 uses
  %i.cb = phi ptr [ %.pre, %.lr.ph.i ], [ %i.dq, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 5 uses
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dr, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.01.i ; 3 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !52 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !38
  %i.cg = fsub <2 x float> %i.cf, %.sroa.078.0    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !53
  %i.cj = fsub float %i.ci, %.sroa.679.0          ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store float %i.cd, ptr %i.cb, align 4, !tbaa !38
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store <2 x float> %i.cg, ptr %.sroa.591.0..sroa_idx, align 4, !tbaa !38
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.cj, ptr %.sroa.694.0..sroa_idx, align 4, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.bx, align 8, !tbaa !36
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 5 uses
  %i.cm = ptrtoint ptr %i.ca to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775792
  br i1 %i.cp, label %bb.w, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.cq = ashr exact i64 %i.co, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 576460752303423487)
  %i.cu = select i1 %i.cs, i64 576460752303423487, i64 %i.ct ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i60)
  %i.cv = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.cw = shl nuw nsw i64 %i.cu, 4
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i64 noundef %i.cw, i64 noundef 4)
          to label %bb.z unwind label %bb.y       ; 5 uses

bb.y:                                             ; preds = %bb.x, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.co ; 3 uses
  store float %i.cd, ptr %i.dd, align 4, !tbaa !38
  %.sroa.591.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store <2 x float> %i.cg, ptr %.sroa.591.0..sroa_idx92, align 4, !tbaa !38
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store float %i.cj, ptr %.sroa.694.0..sroa_idx95, align 4, !tbaa !38
  %.not13.i.i.i = icmp eq ptr %i.cl, %i.ca
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.z, %.lr.ph.i.i.i61
  %.015.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i61 ], [ %i.da, %bb.z ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i61 ], [ %i.cl, %bb.z ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.de, %i.ca
  br i1 %.not.i.i.i62, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i61, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i61, %bb.z
  %.0.lcssa.i.i.i = phi ptr [ %i.da, %bb.z ], [ %i.df, %.lr.ph.i.i.i61 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.cl, null
  br i1 %.not.i35.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i
  %i.dh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %i.cl)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, %bb.ab
  store ptr %i.da, ptr %i.bb, align 8, !tbaa !37
  store ptr %i.dg, ptr %i.bx, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cu ; 2 uses
  store ptr %i.dn, ptr %i.by, align 8, !tbaa !49
  %.pre110 = load ptr, ptr %i.az, align 8, !tbaa !37
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, %bb.u
  %i.do = phi ptr [ %.pre110, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.bz, %bb.u ] ; 2 uses
  %i.dp = phi ptr [ %i.dn, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.ca, %bb.u ]
  %i.dq = phi ptr [ %i.dg, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.ck, %bb.u ]
  %i.dr = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.ds = load ptr, ptr %i.bc, align 8, !tbaa !36
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dr, %i.dw
  br i1 %i.dx, label %bb.t, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !2

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEENS_4math10QuaternionEFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 3 uses
  %i.ea = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.eb = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %i.ef)
  %i.eg = load ptr, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %i.eh = load ptr, ptr %i.bq, align 8, !tbaa !54
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %.pre111 = load ptr, ptr %i.ej, align 8, !tbaa !46
  %.pre112 = load ptr, ptr %i.ek, align 8, !tbaa !55
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i54
  %i.el = phi ptr [ %i.eg, %.lr.ph.i54 ], [ %i.ga, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.em = phi ptr [ %.pre112, %.lr.ph.i54 ], [ %i.gb, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 5 uses
  %i.en = phi ptr [ %.pre111, %.lr.ph.i54 ], [ %i.gc, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 5 uses
  %.01.i56 = phi i64 [ 0, %.lr.ph.i54 ], [ %i.gd, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.01.i56 ; 3 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !57 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.er = load <2 x float>, ptr %i.eq, align 4, !tbaa !38
  %i.es = fdiv <2 x float> %i.er, %.sroa.0.0      ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eu = load float, ptr %i.et, align 4, !tbaa !53
  %i.ev = fdiv float %i.eu, %.sroa.6.0            ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i59, label %bb.af, label %bb.ae
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationEPS3_:bb.a
  store ptr %i.fz, ptr %i.ek, align 8, !tbaa !55
  %.pre113 = load ptr, ptr %i.bp, align 8, !tbaa !47
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, %bb.ae
  %i.ga = phi ptr [ %.pre113, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.el, %bb.ae ] ; 2 uses
  %i.gb = phi ptr [ %i.fz, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.em, %bb.ae ]
  %i.gc = phi ptr [ %i.fs, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.ew, %bb.ae ]
  %i.gd = add nuw i64 %.01.i56, 1                 ; 2 uses
  %i.ge = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.ga to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 4
  %i.gj = icmp ult i64 %i.gd, %i.gi
  br i1 %i.gj, label %bb.ad, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !4

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.gk = add nuw i64 %.036106, 1                 ; 2 uses
  %i.gl = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.gm = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = sdiv exact i64 %i.gp, 72
  %i.gr = icmp ult i64 %i.gk, %i.gq
  br i1 %i.gr, label %bb.l, label %._crit_edge, !llvm.loop !64

bb.an:                                            ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, %bb.a, %._crit_edge
  %.0 = phi i1 [ %i.ax, %._crit_edge ], [ false, %bb.a ], [ false, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  %i.g = load <2 x ptr>, ptr %i.b, align 8, !tbaa !65
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !65
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !58
  store ptr %i.i, ptr %i.c, align 8, !tbaa !58
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !65
  %.not5.i.i.i.i = icmp eq ptr %i.a, %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not5.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.s, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !20   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !20   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ad, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.z, align 1, !tbaa !60
  store i8 %i.af, ptr %i.w, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !59
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !60
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.u, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !59
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !60
  store i64 %i.an, ptr %i.x, align 8, !tbaa !60
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !60
  store ptr %i.z, ptr %i.u, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !60
  store i64 %i.as, ptr %i.x, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i
  store ptr %i.w, ptr %i.v, align 8, !tbaa !20
  store i64 %i.ao, ptr %i.aa, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i, %.thread.i
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.at = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.i ], [ %i.aa, %bb.j ], [ %i.z, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !59
  store i8 0, ptr %i.at, align 1, !tbaa !60
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEENS_4math10QuaternionEFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.ozz::animation::offline::RawAnimation::RotationKey", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %0, align 8, !tbaa !42
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 20
  tail call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.g)
  %i.h = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit ]
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %.01 ; 4 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !70
  store float %i.r, ptr %3, align 4, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load float, ptr %i.m, align 4, !tbaa !71 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !71 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load <2 x float>, ptr %1, align 4, !tbaa !38 ; 3 uses
  %i.y = load <2 x float>, ptr %i.l, align 4, !tbaa !38 ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1   ; 2 uses
  %i.aa = fneg <2 x float> %i.x                   ; 2 uses
  %i.ab = fneg float %i.z
  %i.ac = fneg <2 x float> %i.y
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !38 ; 4 uses
  %i.ae = load <2 x float>, ptr %i.s, align 4, !tbaa !38 ; 4 uses
  %i.af = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.aa
  %i.ai = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ae, <2 x float> %i.ah)
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.am = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ad, <2 x float> %i.am)
  %i.ap = fmul float %i.v, %i.ab
  %i.aq = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.t, float %i.aq, float %i.ap)
  %i.as = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.at = extractelement <2 x float> %i.aa, i64 0
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float %i.as, float %i.ar)
  %i.av = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.aw = extractelement <2 x float> %i.ae, i64 0
  %i.ax = call float @llvm.fmuladd.f32(float %i.av, float %i.aw, float %i.au)
  %foldExtExtBinop = fmul <2 x float> %i.x, %i.ae
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.ay)
  %i.ba = call float @llvm.fmuladd.f32(float %i.av, float %i.as, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %i.z, float %i.aq, float %i.ba)
  %.sroa.59.8.vec.insert.i = insertelement <2 x float> poison, float %i.ax, i64 0
  %.sroa.59.12.vec.insert.i = insertelement <2 x float> %.sroa.59.8.vec.insert.i, float %i.bb, i64 1
  store <2 x float> %i.ao, ptr %i.k, align 4
  store <2 x float> %.sroa.59.12.vec.insert.i, ptr %4, align 4
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !63
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store ptr %i.bf, ptr %i.n, align 8, !tbaa !41
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bc, ptr noundef nonnull align 4 dereferenceable(20) %3)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.bg = add nuw i64 %.01, 1                     ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.bi = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 20
  %i.bn = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationERKNS_4spanIKNS_4math9TransformEEEPS3_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.ozz::animation::offline::RawAnimation::ScaleKey", align 4 ; 7 uses
  %5 = alloca %"struct.ozz::animation::offline::RawAnimation::TranslationKey", align 4 ; 7 uses
  %6 = alloca %"struct.ozz::animation::offline::RawAnimation", align 8 ; 10 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  %i.a = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %6) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %6, align 8, !tbaa !25     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %.06.i.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i
  %i.q = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.p)
          to label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZN3ozz9animation7offline12RawAnimationD2Ev.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.w = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.w, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = load ptr, ptr %1, align 8, !tbaa !25
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 72
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load float, ptr %i.al, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.am, ptr %i.an, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ap = load ptr, ptr %1, align 8, !tbaa !25
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = sdiv exact i64 %i.as, 72                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 72                ; 3 uses
  %i.bb = icmp ugt i64 %i.at, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = sub nuw nsw i64 %i.at, %i.ba
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bc)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp ult i64 %i.at, %i.ba
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as ; 3 uses
  %.not.i.i = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %.lr.ph.i.i.i35
  %.06.i.i.i36 = phi ptr [ %i.bf, %.lr.ph.i.i.i35 ], [ %i.be, %bb.l ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.06.i.i.i36)
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i36, i64 72 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i37, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38, label %.lr.ph.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38: ; preds = %.lr.ph.i.i.i35
  store ptr %i.be, ptr %i.au, align 8, !tbaa !26
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.bh = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not47 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.2.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.bk = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.bl = phi ptr [ %i.bh, %.lr.ph ], [ %i.fh, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ]
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ] ; 10 uses
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.bl, i64 %.046 ; 4 uses
end_hunk_1
