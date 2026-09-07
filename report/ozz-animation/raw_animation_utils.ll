Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 361
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::pair" = type { i8, %"class.std::vector.14" }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::pair<float, ozz::math::Float4x4>, ozz::StdAllocator<std::pair<float, ozz::math::Float4x4>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<float, ozz::math::Float4x4>, ozz::StdAllocator<std::pair<float, ozz::math::Float4x4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<float, ozz::math::Float4x4>, ozz::StdAllocator<std::pair<float, ozz::math::Float4x4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<float, ozz::math::Float4x4>, ozz::StdAllocator<std::pair<float, ozz::math::Float4x4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<short, ozz::StdAllocator<short>>::_Vector_impl" }
%"struct.std::_Vector_base<short, ozz::StdAllocator<short>>::_Vector_impl" = type { %"struct.std::_Vector_base<short, ozz::StdAllocator<short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<short, ozz::StdAllocator<short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair.26" = type { i8, %"class.std::vector.28" }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::span.25" = type { ptr, i64 }
%"struct.ozz::math::Transform" = type { %"struct.ozz::math::Float3", %"struct.ozz::math::Quaternion", %"struct.ozz::math::Float3" }
%"struct.ozz::math::Quaternion" = type { float, float, float, float }
%"struct.ozz::math::Float3" = type { float, float, float }
%"struct.std::pair.33" = type { float, %"struct.ozz::math::Float4x4" }
%"struct.ozz::math::Float4x4" = type { [4 x <4 x float>] }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev = comdat any

$_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev = comdat any

$_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev = comdat any

$_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS3_EEDpOT_ = comdat any

$_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN3ozz9animation7offline21FixedRateSamplingTimeC1Eff = dso_local unnamed_addr alias void (ptr, float, float), ptr @_ZN3ozz9animation7offline21FixedRateSamplingTimeC2Eff

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3ozz9animation7offline15LerpTranslationERKNS_4math6Float3ES5_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !12
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !12 ; 2 uses
  %i.c = fsub <2 x float> %i.a, %i.b
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.e, <2 x float> %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fsub float %i.h, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %2, float %i.j)
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.f, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load <4 x float>, ptr %0, align 4, !tbaa !12 ; 6 uses
  %i.d = extractelement <4 x float> %i.c, i64 1
  %i.e = extractelement <2 x float> %i.a, i64 1
  %i.f = fmul float %i.d, %i.e
  %i.g = extractelement <4 x float> %i.c, i64 0
  %i.h = extractelement <2 x float> %i.a, i64 0
  %i.i = tail call float @llvm.fmuladd.f32(float %i.g, float %i.h, float %i.f)
  %i.j = extractelement <4 x float> %i.c, i64 2
  %i.k = load <2 x float>, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.i)
  %i.n = extractelement <4 x float> %i.c, i64 3
  %i.o = extractelement <2 x float> %i.k, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.o, float %i.m)
  %i.q = fcmp olt float %i.p, 0.000000e+00        ; 2 uses
  %i.r = fneg <2 x float> %i.a
  %i.s = fneg <2 x float> %i.k
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.6.0.copyload = load <2 x float>, ptr %i.b, align 4
  %.sroa.6.0 = select i1 %i.q, <2 x float> %i.s, <2 x float> %.sroa.6.0.copyload
  %.sroa.0.0 = select i1 %i.q, <2 x float> %i.r, <2 x float> %.sroa.0.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.0.0, <2 x float> %.sroa.6.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fsub <4 x float> %i.t, %i.c
  %i.v = insertelement <4 x float> poison, float %2, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.c) ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.x, %i.x
  %i.y = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.z = extractelement <4 x float> %i.x, i64 0   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.y)
  %i.ab = extractelement <4 x float> %i.x, i64 2  ; 2 uses
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.aa)
  %i.ad = extractelement <4 x float> %i.x, i64 3  ; 2 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ae)
  %i.af = fdiv float 1.000000e+00, %sqrt
  %i.ag = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x float> %i.x, %i.ah            ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aj, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.ak, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3ozz9animation7offline9LerpScaleERKNS_4math6Float3ES5_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !12
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !12 ; 2 uses
  %i.c = fsub <2 x float> %i.a, %i.b
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.e, <2 x float> %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fsub float %i.h, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %2, float %i.j)
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.f, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation10JointTrack8ValidateEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef +inf) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation10JointTrack8ValidateEf(ptr noundef nonnull align 8 dereferenceable(72), float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, float noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !54    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !55 ; 5 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = icmp eq ptr %.val18, %.val
  br i1 %i.c, label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %.val, align 4, !tbaa !57 ; 2 uses
  %i.e = fcmp ugt float %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %.sroa.030.0.copyload.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !12
  %i.g = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload.i, 0
  %i.h = insertvalue { <2 x float>, float } %i.g, float %.sroa.5.0.copyload.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.val18, i64 -16
  %i.j = load float, ptr %i.i, align 4, !tbaa !57
  %i.k = fcmp ult float %1, %i.j
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %.val18, i64 -12
  %.sroa.030.0.copyload31.i = load <2 x float>, ptr %i.l, align 4
  %.sroa.5.0..sroa_idx32.i = getelementptr inbounds i8, ptr %.val18, i64 -4
  %.sroa.5.0.copyload33.i = load float, ptr %.sroa.5.0..sroa_idx32.i, align 4, !tbaa !12
  %i.m = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload31.i, 0
  %i.n = insertvalue { <2 x float>, float } %i.m, float %.sroa.5.0.copyload33.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.f:                                             ; preds = %bb.d
  %3 = ptrtoint ptr %.val18 to i64
  %4 = sub i64 %3, %i.b
  %5 = ashr exact i64 %4, 4                       ; 2 uses
  %i.o = icmp sgt i64 %5, 0
  br i1 %i.o, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %5, %bb.f ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !57
  %i.s = fcmp olt float %i.r, %1                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = xor i64 %i.p, -1
  %i.v = add nsw i64 %.017.i.i.i, %i.u
  %.112.i.i.i = select i1 %i.s, ptr %i.t, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.s, i64 %i.v, i64 %i.p  ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !50

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i = load float, ptr %.112.i.i.i, align 4, !tbaa !57
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.f
  %i.x = phi float [ %i.d, %bb.f ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.f ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  %i.z = load float, ptr %i.y, align 4, !tbaa !57 ; 2 uses
  %i.aa = fsub float %1, %i.z
  %i.ab = fsub float %i.x, %i.z
  %i.ac = fdiv float %i.aa, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 4
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !12
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !14
  %i.an = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !14 ; 2 uses
  %i.ap = fsub float %i.am, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ac, float %i.ao)
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ak, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.aq, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %bb.a, %bb.c, %bb.e, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %.fca.1.insert.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.fca.0.extract4 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0
  %.fca.1.extract5 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1
  store <2 x float> %.fca.0.extract4, ptr %2, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.fca.1.extract5, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.as, align 8, !tbaa !60 ; 5 uses
  %i.at = ptrtoint ptr %.val19 to i64
  %i.au = icmp eq ptr %.val20, %.val19
  br i1 %i.au, label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit
  %i.av = load float, ptr %.val19, align 4, !tbaa !63 ; 2 uses
  %i.aw = fcmp ugt float %1, %i.av
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.val19, i64 4
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ax, align 4
  %.sroa.5.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.val19, i64 12
  %.sroa.5.0.copyload.i24 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i23, align 4
  %i.ay = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %i.az = insertvalue { <2 x float>, <2 x float> } %i.ay, <2 x float> %.sroa.5.0.copyload.i24, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds i8, ptr %.val20, i64 -20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !63
  %i.bc = fcmp ult float %1, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds i8, ptr %.val20, i64 -16
  %.sroa.0.0.copyload20.i = load <2 x float>, ptr %i.bd, align 4
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds i8, ptr %.val20, i64 -8
  %.sroa.5.0.copyload22.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx21.i, align 4
  %i.be = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload20.i, 0
  %i.bf = insertvalue { <2 x float>, <2 x float> } %i.be, <2 x float> %.sroa.5.0.copyload22.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.k:                                             ; preds = %bb.i
  %6 = ptrtoint ptr %.val20 to i64
  %7 = sub i64 %6, %i.at                          ; 2 uses
  %i.bg = icmp sgt i64 %7, 0
  br i1 %i.bg, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.k
  %i.bh = udiv exact i64 %7, 20
  br label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i29 = phi i64 [ %.1.i.i.i34, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bh, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i30 = phi ptr [ %.112.i.i.i33, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val19, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.bi = lshr i64 %.017.i.i.i29, 1               ; 3 uses
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %.01116.i.i.i30, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !63
  %i.bl = fcmp olt float %i.bk, %1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bn = xor i64 %i.bi, -1
  %i.bo = add nsw i64 %.017.i.i.i29, %i.bn
  %.112.i.i.i33 = select i1 %i.bl, ptr %i.bm, ptr %.01116.i.i.i30 ; 3 uses
  %.1.i.i.i34 = select i1 %i.bl, i64 %i.bo, i64 %i.bi ; 2 uses
  %i.bp = icmp sgt i64 %.1.i.i.i34, 0
  br i1 %i.bp, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !51

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i35 = load float, ptr %.112.i.i.i33, align 4, !tbaa !63
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.k
  %i.bq = phi float [ %i.av, %bb.k ], [ %.pre.i35, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i26 = phi ptr [ %.val19, %bb.k ], [ %.112.i.i.i33, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i26, i64 -20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !63 ; 2 uses
  %i.bt = fsub float %1, %i.bs
  %i.bu = fsub float %i.bq, %i.bs
  %i.bv = fdiv float %i.bt, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i26, i64 -16
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i26, i64 4 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !12 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i26, i64 12 ; 2 uses
  %i.ca = load <4 x float>, ptr %i.bw, align 4, !tbaa !12 ; 6 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 1
  %i.cc = extractelement <2 x float> %i.by, i64 1
  %i.cd = fmul float %i.cb, %i.cc
  %i.ce = extractelement <4 x float> %i.ca, i64 0
  %i.cf = extractelement <2 x float> %i.by, i64 0
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %i.cd)
  %i.ch = extractelement <4 x float> %i.ca, i64 2
  %i.ci = load <2 x float>, ptr %i.bz, align 4, !tbaa !12 ; 3 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cj, float %i.cg)
  %i.cl = extractelement <4 x float> %i.ca, i64 3
  %i.cm = extractelement <2 x float> %i.ci, i64 1
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.ck)
  %i.co = fcmp olt float %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %i.cp = fneg <2 x float> %i.by
  %i.cq = fneg <2 x float> %i.ci
  br label %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i

bb.m:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.bx, align 4
  %.sroa.6.0.copyload.i.i = load <2 x float>, ptr %i.bz, align 4
  br label %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i

_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.6.0.i.i = phi <2 x float> [ %i.cq, %bb.l ], [ %.sroa.6.0.copyload.i.i, %bb.m ]
  %.sroa.0.0.i.i = phi <2 x float> [ %i.cp, %bb.l ], [ %.sroa.0.0.copyload.i.i, %bb.m ]
  %i.cr = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.6.0.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = fsub <4 x float> %i.cr, %i.ca
  %i.ct = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cu, <4 x float> %i.ca) ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.cv, %i.cv
  %i.cw = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.cx = extractelement <4 x float> %i.cv, i64 0 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cw)
  %i.cz = extractelement <4 x float> %i.cv, i64 2 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy)
  %i.db = extractelement <4 x float> %i.cv, i64 3 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.da)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.dc)
  %i.dd = fdiv float 1.000000e+00, %sqrt.i.i
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = fmul <4 x float> %i.cv, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i.i27 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert.i.i.i28 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i.i27, <2 x float> %i.di, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, %bb.h, %bb.j, %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i
  %.fca.1.insert.merged.i25 = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i.i28, %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i ], [ %i.az, %bb.h ], [ %i.bf, %bb.j ], [ { <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit ] ; 2 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i25, 0
  %i.dk = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i25, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x float> %i.dj, ptr %i.dl, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <2 x float> %i.dk, ptr %.sroa.43.0..sroa_idx, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val21 = load ptr, ptr %i.dm, align 8, !tbaa !65 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val22 = load ptr, ptr %i.dn, align 8, !tbaa !66 ; 5 uses
  %i.do = ptrtoint ptr %.val21 to i64
  %i.dp = icmp eq ptr %.val22, %.val21
  br i1 %i.dp, label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit
  %i.dq = load float, ptr %.val21, align 4, !tbaa !68 ; 2 uses
  %i.dr = fcmp ugt float %1, %i.dq
  br i1 %i.dr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %.val21, i64 4
  %.sroa.030.0.copyload.i36 = load <2 x float>, ptr %i.ds, align 4
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %.val21, i64 12
  %.sroa.5.0.copyload.i38 = load float, ptr %.sroa.5.0..sroa_idx.i37, align 4, !tbaa !12
  %i.dt = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload.i36, 0
  %i.du = insertvalue { <2 x float>, float } %i.dt, float %.sroa.5.0.copyload.i38, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.p:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !68
  %i.dx = fcmp ult float %1, %i.dw
  br i1 %i.dx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds i8, ptr %.val22, i64 -12
  %.sroa.030.0.copyload31.i40 = load <2 x float>, ptr %i.dy, align 4
  %.sroa.5.0..sroa_idx32.i41 = getelementptr inbounds i8, ptr %.val22, i64 -4
  %.sroa.5.0.copyload33.i42 = load float, ptr %.sroa.5.0..sroa_idx32.i41, align 4, !tbaa !12
  %i.dz = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload31.i40, 0
  %i.ea = insertvalue { <2 x float>, float } %i.dz, float %.sroa.5.0.copyload33.i42, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.r:                                             ; preds = %bb.p
  %8 = ptrtoint ptr %.val22 to i64
  %9 = sub i64 %8, %i.do
  %10 = ashr exact i64 %9, 4                      ; 2 uses
  %i.eb = icmp sgt i64 %10, 0
  br i1 %i.eb, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.r, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i48 = phi i64 [ %.1.i.i.i53, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %10, %bb.r ] ; 2 uses
  %.01116.i.i.i49 = phi ptr [ %.112.i.i.i52, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val21, %bb.r ] ; 2 uses
  %i.ec = lshr i64 %.017.i.i.i48, 1               ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i49, i64 %i.ec ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !68
  %i.ef = fcmp olt float %i.ee, %1                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eh = xor i64 %i.ec, -1
  %i.ei = add nsw i64 %.017.i.i.i48, %i.eh
  %.112.i.i.i52 = select i1 %i.ef, ptr %i.eg, ptr %.01116.i.i.i49 ; 3 uses
  %.1.i.i.i53 = select i1 %i.ef, i64 %i.ei, i64 %i.ec ; 2 uses
  %i.ej = icmp sgt i64 %.1.i.i.i53, 0
  br i1 %i.ej, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !52

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i54 = load float, ptr %.112.i.i.i52, align 4, !tbaa !68
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.r
  %i.ek = phi float [ %i.dq, %bb.r ], [ %.pre.i54, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i43 = phi ptr [ %.val21, %bb.r ], [ %.112.i.i.i52, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 5 uses
  %i.el = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -16
  %i.em = load float, ptr %i.el, align 4, !tbaa !68 ; 2 uses
  %i.en = fsub float %1, %i.em
  %i.eo = fsub float %i.ek, %i.em
  %i.ep = fdiv float %i.en, %i.eo                 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -12
  %i.er = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i43, i64 4
  %i.es = load <2 x float>, ptr %i.er, align 4, !tbaa !12
  %i.et = load <2 x float>, ptr %i.eq, align 4, !tbaa !12 ; 2 uses
  %i.eu = fsub <2 x float> %i.es, %i.et
  %i.ev = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.et)
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i43, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !14
  %i.fa = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !14 ; 2 uses
  %i.fc = fsub float %i.ez, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ep, float %i.fb)
  %.fca.0.insert.i.i.i46 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ex, 0
  %.fca.1.insert.i.i.i47 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i46, float %i.fd, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, %bb.o, %bb.q, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.fca.1.insert.merged.i39 = phi { <2 x float>, float } [ %.fca.1.insert.i.i.i47, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.du, %bb.o ], [ %i.ea, %bb.q ], [ { <2 x float> splat (float 1.000000e+00), float 1.000000e+00 }, %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.fca.0.extract, ptr %i.fe, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz9animation7offline15SampleAnimationERKNS1_12RawAnimationEfRKNS_4spanINS_4math9TransformEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %.preheader37

.preheader37:                                     ; preds = %bb.b
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.i, align 8, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader37
  %i.l = phi i64 [ %i.j, %.preheader37 ], [ %.pre, %.preheader.loopexit ]
  %.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.x, %.preheader.loopexit ] ; 2 uses
  %i.m = icmp ult i64 %.lcssa, %i.l
  br i1 %i.m, label %.lr.ph40, label %.loopexit

.lr.ph:                                           ; preds = %.preheader37, %.lr.ph
  %i.n = phi ptr [ %i.t, %.lr.ph ], [ %i.d, %.preheader37 ]
  %.01738 = phi i64 [ %i.r, %.lr.ph ], [ 0, %.preheader37 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.01738
  %i.p = load ptr, ptr %2, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.01738
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %i.o, float noundef %1, ptr noundef %i.q)
  %i.r = add nuw i64 %.01738, 1                   ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.t = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 72                  ; 2 uses
  %i.y = icmp ult i64 %i.r, %i.x
  br i1 %i.y, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !69

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %.039 = phi i64 [ %i.ab, %.lr.ph40 ], [ %.lcssa, %.preheader ] ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %.039 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12
  %i.ab = add nuw i64 %.039, 1                    ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !73
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph40, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %.lr.ph40, %.preheader, %bb.b, %bb.a
  %.018 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ true, %.lr.ph40 ]
  ret i1 %.018
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation7offline21SampleTrackModelSpaceERKNS1_12RawAnimationERKNS0_8SkeletonEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.21", align 8    ; 13 uses
  %i.a = alloca i16, align 2                      ; 8 uses
  %5 = alloca %"struct.std::pair.26", align 8     ; 8 uses
  %6 = alloca %"struct.ozz::span.25", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.14", align 8    ; 11 uses
  %8 = alloca %"struct.ozz::math::Transform", align 16 ; 12 uses
  %9 = alloca %"struct.std::pair.33", align 16    ; 10 uses
  %i.b = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load ptr, ptr %1, align 8, !tbaa !23
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 72
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq i32 %i.j, %i.m
  %i.o = icmp sgt i32 %3, -1
  %or.cond.not116 = and i1 %i.o, %i.n
  %.not = icmp slt i32 %3, %i.m
  %or.cond113 = and i1 %.not, %or.cond.not116
  br i1 %or.cond113, label %bb.c, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.q = trunc i32 %3 to i16                      ; 3 uses
  store i16 %i.q, ptr %i.a, align 2, !tbaa !30
  %.not30123 = icmp eq i16 %i.q, -1
  br i1 %.not30123, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.loopexit119

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8, !tbaa !91    ; 15 uses
  %.pre190 = ptrtoaddr ptr %.pre to i64           ; 6 uses
  %.pre152 = load ptr, ptr %i.s, align 8, !tbaa !91 ; 9 uses
  %.pre152189 = ptrtoaddr ptr %.pre152 to i64     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.w = icmp ne ptr %.pre, %.pre152
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.pre152, i64 -2 ; 7 uses
  %i.x = icmp ult ptr %.pre, %.sroa.0.08.i.i
end_hunk_0
