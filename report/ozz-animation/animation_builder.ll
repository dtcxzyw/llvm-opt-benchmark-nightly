Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_builder?download=true
inline.NumInlined: 2405
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::vector.41" = type { %"struct.std::_Vector_base.42" }
%"struct.std::_Vector_base.42" = type { %"struct.std::_Vector_base<unsigned int, ozz::StdAllocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, ozz::StdAllocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, ozz::StdAllocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, ozz::StdAllocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::span.87" = type { ptr, i64 }
%"struct.ozz::span.4" = type { ptr, i64 }
%"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrame" = type { %"class.std::vector.37", i64 }
%"class.std::vector.37" = type { %"struct.std::_Vector_base.38" }
%"struct.std::_Vector_base.38" = type { %"struct.std::_Vector_base<unsigned char, ozz::StdAllocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, ozz::StdAllocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, ozz::StdAllocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, ozz::StdAllocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::animation::offline::RawAnimation::ScaleKey" = type { float, %"struct.ozz::math::Float3" }
%"struct.ozz::math::Float3" = type { float, float, float }
%"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52" = type { i16, float, %"struct.ozz::animation::offline::RawAnimation::ScaleKey" }
%"class.std::vector.66" = type { %"struct.std::_Vector_base.67" }
%"struct.std::_Vector_base.67" = type { %"struct.std::_Vector_base<std::pair<int, int>, ozz::StdAllocator<std::pair<int, int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<int, int>, ozz::StdAllocator<std::pair<int, int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<int, int>, ozz::StdAllocator<std::pair<int, int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<int, int>, ozz::StdAllocator<std::pair<int, int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::animation::offline::RawAnimation::RotationKey" = type { float, %"struct.ozz::math::Quaternion" }
%"struct.ozz::math::Quaternion" = type { float, float, float, float }
%"struct.ozz::animation::offline::(anonymous namespace)::SortingKey" = type { i16, float, %"struct.ozz::animation::offline::RawAnimation::RotationKey" }
%"struct.ozz::animation::offline::RawAnimation::TranslationKey" = type { float, %"struct.ozz::math::Float3" }
%"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49" = type { i16, float, %"struct.ozz::animation::offline::RawAnimation::TranslationKey" }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>>>::_Vector_impl" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>>>::_Vector_impl" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::TranslationKey>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>>>::_Vector_impl" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>>>::_Vector_impl" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::RotationKey>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.29" = type { %"struct.std::_Vector_base.30" }
%"struct.std::_Vector_base.30" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>>>::_Vector_impl" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>>>::_Vector_impl" = type { %"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>, ozz::StdAllocator<ozz::animation::offline::(anonymous namespace)::SortingKey<ozz::animation::offline::RawAnimation::ScaleKey>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, ozz::StdAllocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrames" = type <{ %"class.std::vector.37", %"class.std::vector.41", float, [4 x i8] }>
%"struct.ozz::animation::Animation::AllocateParams" = type { i64, i64, i64, i64, i64, %"struct.ozz::animation::Animation::AllocateParams::IFrames", %"struct.ozz::animation::Animation::AllocateParams::IFrames", %"struct.ozz::animation::Animation::AllocateParams::IFrames" }
%"struct.ozz::animation::Animation::AllocateParams::IFrames" = type { i64, i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev = comdat any

$_ZNSt10unique_ptrIN3ozz9animation9AnimationENS0_7DeleterIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_ = comdat any

$_ZNSt6vectorIjN3ozz12StdAllocatorIjEEED2Ev = comdat any

$_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEED2Ev = comdat any

$_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_ = comdat any

$_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag = comdat any

@.str = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__const._ZN3ozz9animation7offline12_GLOBAL__N_118CompressQuaternionERKNS_4math10QuaternionEPNS0_8internal13QuaternionKeyE.kMapping = private unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 0, i32 2, i32 3], [3 x i32] [i32 0, i32 1, i32 3], [3 x i32] [i32 0, i32 1, i32 2]], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 12 uses
  %3 = alloca %"class.std::vector.41", align 8    ; 7 uses
  %4 = alloca %"struct.ozz::span.87", align 8     ; 6 uses
  %5 = alloca %"struct.ozz::span.87", align 8     ; 6 uses
  %6 = alloca %"struct.ozz::span.4", align 8      ; 6 uses
  %7 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrame", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::vector.41", align 8    ; 7 uses
  %9 = alloca %"struct.ozz::span.87", align 8     ; 6 uses
  %10 = alloca %"struct.ozz::span.87", align 8    ; 6 uses
  %11 = alloca %"struct.ozz::span.4", align 8     ; 6 uses
  %12 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrame", align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::vector.41", align 8   ; 7 uses
  %14 = alloca %"struct.ozz::span.87", align 8    ; 6 uses
  %15 = alloca %"struct.ozz::span.87", align 8    ; 6 uses
  %16 = alloca %"struct.ozz::span.4", align 8     ; 6 uses
  %17 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrame", align 8 ; 14 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %.sroa.8984 = alloca %"struct.ozz::animation::offline::RawAnimation::ScaleKey", align 8 ; 4 uses
  %18 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 4 uses
  %.sroa.8975 = alloca %"struct.ozz::animation::offline::RawAnimation::ScaleKey", align 8 ; 4 uses
  %.sroa.8966 = alloca %"struct.ozz::animation::offline::RawAnimation::ScaleKey", align 8 ; 4 uses
  %19 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 4 uses
  %20 = alloca %"class.std::vector.66", align 8   ; 10 uses
  %21 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 9 uses
  %22 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 6 uses
  %.sroa.8957 = alloca %"struct.ozz::animation::offline::RawAnimation::RotationKey", align 8 ; 4 uses
  %23 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 4 uses
  %.sroa.8948 = alloca %"struct.ozz::animation::offline::RawAnimation::RotationKey", align 8 ; 4 uses
  %.sroa.8939 = alloca %"struct.ozz::animation::offline::RawAnimation::RotationKey", align 8 ; 4 uses
  %24 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 4 uses
  %25 = alloca %"class.std::vector.66", align 8   ; 9 uses
  %26 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 9 uses
  %27 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 6 uses
  %.sroa.8930 = alloca %"struct.ozz::animation::offline::RawAnimation::TranslationKey", align 8 ; 4 uses
  %28 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 4 uses
  %.sroa.8921 = alloca %"struct.ozz::animation::offline::RawAnimation::TranslationKey", align 8 ; 4 uses
  %.sroa.8 = alloca %"struct.ozz::animation::offline::RawAnimation::TranslationKey", align 8 ; 4 uses
  %29 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 4 uses
  %30 = alloca %"class.std::vector.66", align 8   ; 10 uses
  %31 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 9 uses
  %32 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %33 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 8 uses
  %34 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 8 uses
  %35 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 8 uses
  %36 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 8 uses
  %37 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 8 uses
  %38 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %39 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 8 uses
  %40 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 8 uses
  %41 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 6 uses
  %42 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 6 uses
  %43 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 6 uses
  %44 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.52", align 4 ; 7 uses
  %45 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 8 uses
  %46 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 8 uses
  %47 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 6 uses
  %48 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 6 uses
  %49 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 6 uses
  %50 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey", align 4 ; 7 uses
  %51 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 8 uses
  %52 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %53 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %54 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %55 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 6 uses
  %56 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::SortingKey.49", align 4 ; 7 uses
  %57 = alloca %"class.std::unique_ptr", align 8  ; 11 uses
  %58 = alloca %"class.std::vector.21", align 8   ; 37 uses
  %59 = alloca %"class.std::vector.25", align 8   ; 39 uses
  %60 = alloca %"class.std::vector.29", align 8   ; 37 uses
  %61 = alloca %"class.std::vector.33", align 8   ; 27 uses
  %62 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrames", align 8 ; 21 uses
  %63 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrames", align 8 ; 24 uses
  %64 = alloca %"struct.ozz::animation::offline::(anonymous namespace)::BuilderIFrames", align 8 ; 20 uses
  %65 = alloca %"struct.ozz::animation::Animation::AllocateParams", align 8 ; 15 uses
  %i.h = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !177
  br label %bb.uy

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.i = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv(), !noalias !178 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48, !noalias !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !178
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 304, i64 noundef 8), !noalias !178, !inline_history !114 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.m, i8 0, i64 304, i1 false), !noalias !178
  store ptr %i.m, ptr %57, align 8, !tbaa !49, !alias.scope !178
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load float, ptr %i.n, align 8, !tbaa !188 ; 21 uses
  %i.p = fdiv float 1.000000e+00, %i.o            ; 7 uses
  store float %i.o, ptr %i.m, align 8, !tbaa !200
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !201
  %i.s = load ptr, ptr %2, align 8, !tbaa !202    ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 72                  ; 5 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = trunc i64 %i.w to i16
  %i.z = and i32 %i.x, 65535                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !203
  %i.ab = add i16 %i.y, 3
  %i.ac = and i16 %i.ab, -4                       ; 4 uses
  %.not1151 = icmp eq i32 %i.z, 0
  br i1 %.not1151, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.w, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %i.ad = icmp ugt i64 %i.ay, 384307168202282325
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %.not1546.a = icmp eq i64 %i.ay, 0
  br i1 %.not1546.a, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ag = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = mul nuw nsw i64 %i.ay, 24
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.ah, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE13_M_deallocateEPS7_m.exit.i unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE13_M_deallocateEPS7_m.exit.i: ; preds = %bb.g
  store ptr %i.al, ptr %58, align 8, !tbaa !56
  store ptr %i.al, ptr %i.af, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ay
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !58
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.01001132 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ay, %.lr.ph ]
  %.01021130 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bs, %.lr.ph ]
  %.01031129 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bi, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.s, i64 %indvars.iv ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !206
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = add i64 %.01001132, 2
  %i.ay = add i64 %i.ax, %i.aw                    ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !211
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 20
  %i.bh = add i64 %.01031129, 2
  %i.bi = add i64 %i.bh, %i.bg                    ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !214
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !215
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 4
  %i.br = add i64 %.01021130, 2
  %i.bs = add i64 %i.br, %i.bq                    ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE13_M_deallocateEPS7_m.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  %i.bt = icmp ugt i64 %i.bi, 329406144173384850
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc188 unwind label %bb.bw

.noexc188:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %.not1547.a = icmp eq i64 %i.bi, 0
  br i1 %.not1547.a, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bw = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bx = mul nuw nsw i64 %i.bi, 28
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i64 noundef %i.bx, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE13_M_deallocateEPS7_m.exit.i unwind label %bb.m ; 3 uses

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #22
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  %.not.i279 = icmp eq i64 %.090.i, %i.sk
  br i1 %.not.i279, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit42.i
  %.sroa.12.12.vec.extract63.i = extractelement <2 x float> %.sroa.675.0.i, i64 1
  %i.sl = fcmp olt float %.sroa.12.12.vec.extract63.i, 0.000000e+00
  br i1 %i.sl, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.sm = fneg <2 x float> %.sroa.073.0.i
  %i.sn = fneg <2 x float> %.sroa.675.0.i
  br label %bb.dd

bb.da:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit42.i
  %i.so = add i64 %.01889.i, -1                   ; 3 uses
  %.not.i.i43.i = icmp ult i64 %i.so, %i.rq
  br i1 %.not.i.i43.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.so, i64 noundef %i.rq) #21
          to label %.noexc282 unwind label %.loopexit.split-lp

.noexc282:                                        ; preds = %bb.db
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i: ; preds = %bb.da
  %i.sp = getelementptr inbounds nuw [28 x i8], ptr %.val87.i, i64 %i.so ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !227
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.st = load float, ptr %i.ss, align 4, !tbaa !228
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 20
  %i.sv = load float, ptr %i.su, align 4, !tbaa !229
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !230
  %.sroa.049.0.vec.extract.i = extractelement <2 x float> %.sroa.073.0.i, i64 0
  %.sroa.049.4.vec.extract.i = extractelement <2 x float> %.sroa.073.0.i, i64 1
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %.sroa.675.0.i, i64 0
  %.sroa.12.12.vec.extract.i = extractelement <2 x float> %.sroa.675.0.i, i64 1
  %i.sy = fmul float %.sroa.049.4.vec.extract.i, %i.st
  %i.sz = tail call float @llvm.fmuladd.f32(float %i.sr, float %.sroa.049.0.vec.extract.i, float %i.sy)
  %i.ta = tail call float @llvm.fmuladd.f32(float %i.sv, float %.sroa.12.8.vec.extract.i, float %i.sz)
  %i.tb = tail call noundef float @llvm.fmuladd.f32(float %i.sx, float %.sroa.12.12.vec.extract.i, float %i.ta)
  %i.tc = fcmp olt float %i.tb, 0.000000e+00
  br i1 %i.tc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i
  %i.td = fneg <2 x float> %.sroa.073.0.i
  %i.te = fneg <2 x float> %.sroa.675.0.i
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i, %bb.cz, %bb.cy
  %.sroa.12.1.i = phi <2 x float> [ %.sroa.675.0.i, %bb.cy ], [ %i.sn, %bb.cz ], [ %i.te, %bb.dc ], [ %.sroa.675.0.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i ]
  %.sroa.049.1.i = phi <2 x float> [ %.sroa.073.0.i, %bb.cy ], [ %i.sm, %bb.cz ], [ %i.td, %bb.dc ], [ %.sroa.073.0.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit44.i ]
  store <2 x float> %.sroa.049.1.i, ptr %i.rs, align 4
  store <2 x float> %.sroa.12.1.i, ptr %i.rx, align 4
  %i.tf = add nuw i64 %.01889.i, 1                ; 2 uses
  %exitcond1261.not = icmp eq i64 %i.tf, %i.rq
  br i1 %exitcond1261.not, label %_ZN3ozz9animation7offline12_GLOBAL__N_116FixupQuaternionsEPSt6vectorINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEENS_12StdAllocatorIS7_EEE.exit, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE2atEm.exit.i, !llvm.loop !121

_ZN3ozz9animation7offline12_GLOBAL__N_116FixupQuaternionsEPSt6vectorINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEENS_12StdAllocatorIS7_EEE.exit: ; preds = %bb.dd, %._crit_edge1150
  %i.tg = zext i16 %i.ac to i64                   ; 24 uses
  %.val62.i = load ptr, ptr %58, align 8, !tbaa !216 ; 18 uses
  %i.th = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 9 uses
  %.val58.i = load ptr, ptr %i.th, align 8, !tbaa !216 ; 7 uses
  %.not.i.i.i283 = icmp eq ptr %.val62.i, %.val58.i
  br i1 %.not.i.i.i283, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %bb.de

bb.de:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_116FixupQuaternionsEPSt6vectorINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEENS_12StdAllocatorIS7_EEE.exit
  %i.ti = ptrtoint ptr %.val58.i to i64
  %i.tj = ptrtoint ptr %.val62.i to i64           ; 2 uses
  %i.tk = sub i64 %i.ti, %i.tj                    ; 2 uses
  %i.tl = sdiv exact i64 %i.tk, 24
  %i.tm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.tl, i1 true)
  %i.tn = shl nuw nsw i64 %i.tm, 1
  %i.to = xor i64 %i.tn, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_T1_(ptr %.val62.i, ptr %.val58.i, i64 noundef %i.to, ptr nonnull readonly @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_)
          to label %.noexc290 unwind label %bb.mo

.noexc290:                                        ; preds = %bb.de
  %i.tp = icmp sgt i64 %i.tk, 384
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val62.i, i64 24 ; 3 uses
  br i1 %i.tp, label %.lr.ph.i.i.i.i.i.preheader, label %bb.dn

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc290
  %i.tq = getelementptr inbounds nuw i8, ptr %.val62.i, i64 4
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.dk
  %.sroa.0.023.i.idx.i.i.i.i = phi i64 [ %.sroa.0.023.i.add.i.i.i.i, %bb.dk ], [ 24, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.pn22.i.i.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i, %bb.dk ], [ %.val62.i, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.023.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val62.i, i64 %.sroa.0.023.i.idx.i.i.i.i ; 9 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !75 ; 4 uses
  %i.tt = load float, ptr %i.tq, align 4, !tbaa !75
  %i.tu = fsub float %i.ts, %i.tt                 ; 2 uses
  %i.tv = fcmp olt float %i.tu, 0.000000e+00
  br i1 %i.tv, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tw = fcmp oeq float %i.tu, 0.000000e+00
  %.sroa.0905.0.copyload.pre = load i16, ptr %.sroa.0.023.i.ptr.i.i.i.i, align 4, !tbaa !77 ; 4 uses
  br i1 %i.tw, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread985

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830: ; preds = %bb.df
  %i.tx = load i16, ptr %.val62.i, align 4, !tbaa !74
  %i.ty = icmp ult i16 %.sroa.0905.0.copyload.pre, %i.tx
  br i1 %i.ty, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread985

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread: ; preds = %.lr.ph.i.i.i.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %29, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.023.i.ptr.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.tz = icmp samesign ugt i64 %.sroa.0.023.i.idx.i.i.i.i, 24
  br i1 %i.tz, label %bb.dg, label %bb.dh, !prof !89

bb.dg:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val62.i, i64 %.sroa.0.023.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

bb.dh:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread
  %i.ua = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ua, ptr noundef nonnull readonly align 4 dereferenceable(24) %.val62.i, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i: ; preds = %bb.dh, %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.val62.i, ptr noundef nonnull align 4 dereferenceable(24) %29, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %bb.dk

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread985: ; preds = %bb.df, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %.sroa.6908.0..sroa.0.023.i.ptr.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i, i64 2
  %.sroa.6908.0.copyload = load i16, ptr %.sroa.6908.0..sroa.0.023.i.ptr.i.i.i.i.sroa_idx, align 2
  %.sroa.8.0..sroa.0.023.i.ptr.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa.0.023.i.ptr.i.i.i.i.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %i.ub = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i, i64 4
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !75
  %i.ud = fsub float %i.ts, %i.uc                 ; 2 uses
  %i.ue = fcmp olt float %i.ud, 0.000000e+00
  br i1 %i.ue, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.di

bb.di:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread985
  %i.uf = fcmp oeq float %i.ud, 0.000000e+00
  br i1 %i.uf, label %.split, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split:                                           ; preds = %bb.di
  %i.ug = load i16, ptr %.pn22.i.i.i.i.i, align 4, !tbaa !74
  %i.uh = icmp ult i16 %.sroa.0905.0.copyload.pre, %i.ug
  br i1 %i.uh, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.split, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit830.thread985
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.pn22.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ] ; 6 uses
  %.sroa.07.09.i.i.i.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 -20
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !75
  %i.uk = fsub float %i.ts, %i.uj                 ; 2 uses
  %i.ul = fcmp olt float %i.uk, 0.000000e+00
  br i1 %i.ul, label %.lr.ph.i.i.i.i.i.i.backedge, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.um = fcmp oeq float %i.uk, 0.000000e+00
  br i1 %i.um, label %.split986, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split986:                                        ; preds = %bb.dj
  %i.un = load i16, ptr %.sroa.0.0.i.i.i.i.i.i, align 4, !tbaa !74
  %i.uo = icmp ult i16 %.sroa.0905.0.copyload.pre, %i.un
  br i1 %i.uo, label %.lr.ph.i.i.i.i.i.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.backedge:                      ; preds = %.split986, %.lr.ph.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i: ; preds = %bb.dj, %.split986, %bb.di, %.split
  %.sroa.07.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i, %.split ], [ %.sroa.0.023.i.ptr.i.i.i.i, %bb.di ], [ %.sroa.0.010.i.i.i.i.i.i, %.split986 ], [ %.sroa.0.010.i.i.i.i.i.i, %bb.dj ] ; 4 uses
  store i16 %.sroa.0905.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, align 4, !tbaa !77
  %.sroa.6908.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, i64 2
  store i16 %.sroa.6908.0.copyload, ptr %.sroa.6908.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx, align 2
  %.sroa.6910.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, i64 4
  store float %i.ts, ptr %.sroa.6910.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx, align 4, !tbaa !76
  %.sroa.8.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa.07.0.lcssa.i.i.i.i.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.dk

bb.dk:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i
  %.sroa.0.023.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.023.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.023.i.add.i.i.i.i, 384
  br i1 %.not.i.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !123

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i: ; preds = %bb.dk
  %i.up = getelementptr inbounds nuw i8, ptr %.val62.i, i64 384 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.up, %.val58.i
  br i1 %.not7.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.vf, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i ], [ %i.up, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8921)
  %i.uq = load <2 x i16>, ptr %.sroa.0.08.i.i.i.i.i, align 4
  %.sroa.0913.0.copyload = load i16, ptr %.sroa.0.08.i.i.i.i.i, align 4, !tbaa !77 ; 2 uses
  %.sroa.6918.0..sroa.0.08.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 4
  %.sroa.6918.0.copyload = load float, ptr %.sroa.6918.0..sroa.0.08.i.i.i.i.i.sroa_idx, align 4, !tbaa !76 ; 3 uses
  %.sroa.8921.0..sroa.0.08.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8921, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8921.0..sroa.0.08.i.i.i.i.i.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %.sroa.0.08.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ur = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i, i64 -20
  %i.us = load float, ptr %i.ur, align 4, !tbaa !75
  %i.ut = fsub float %.sroa.6918.0.copyload, %i.us ; 2 uses
  %i.uu = fcmp olt float %i.ut, 0.000000e+00
  br i1 %i.uu, label %.lr.ph.i.i17.i.i.i.i.preheader, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i13.i.i.i.i
  %i.uv = fcmp oeq float %i.ut, 0.000000e+00
  br i1 %i.uv, label %.split987, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split987:                                        ; preds = %bb.dl
  %i.uw = load i16, ptr %.sroa.0.08.i.i.i.i.i.i, align 4, !tbaa !74
  %i.ux = icmp ult i16 %.sroa.0913.0.copyload, %i.uw
  br i1 %i.ux, label %.lr.ph.i.i17.i.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i.preheader:                   ; preds = %.split987, %.lr.ph.i13.i.i.i.i
  br label %.lr.ph.i.i17.i.i.i.i

.lr.ph.i.i17.i.i.i.i:                             ; preds = %.lr.ph.i.i17.i.i.i.i.backedge, %.lr.ph.i.i17.i.i.i.i.preheader
  %.sroa.0.010.i.i18.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.preheader ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.backedge ] ; 6 uses
  %.sroa.07.09.i.i19.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.preheader ], [ %.sroa.0.010.i.i18.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i19.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i18.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i, i64 -24 ; 2 uses
  %i.uy = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i, i64 -20
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !75
  %i.va = fsub float %.sroa.6918.0.copyload, %i.uz ; 2 uses
  %i.vb = fcmp olt float %i.va, 0.000000e+00
  br i1 %i.vb, label %.lr.ph.i.i17.i.i.i.i.backedge, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i17.i.i.i.i
  %i.vc = fcmp oeq float %i.va, 0.000000e+00
  br i1 %i.vc, label %.split988, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split988:                                        ; preds = %bb.dm
  %i.vd = load i16, ptr %.sroa.0.0.i.i20.i.i.i.i, align 4, !tbaa !74
  %i.ve = icmp ult i16 %.sroa.0913.0.copyload, %i.vd
  br i1 %i.ve, label %.lr.ph.i.i17.i.i.i.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i.backedge:                    ; preds = %.split988, %.lr.ph.i.i17.i.i.i.i
  br label %.lr.ph.i.i17.i.i.i.i, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i: ; preds = %bb.dm, %.split988, %bb.dl, %.split987
  %.sroa.07.0.lcssa.i.i15.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i, %.split987 ], [ %.sroa.0.08.i.i.i.i.i, %bb.dl ], [ %.sroa.0.010.i.i18.i.i.i.i, %.split988 ], [ %.sroa.0.010.i.i18.i.i.i.i, %bb.dm ] ; 3 uses
  store <2 x i16> %i.uq, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i, align 4
  %.sroa.6918.0..sroa.07.0.lcssa.i.i15.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i, i64 4
  store float %.sroa.6918.0.copyload, ptr %.sroa.6918.0..sroa.07.0.lcssa.i.i15.i.i.i.i.sroa_idx, align 4, !tbaa !76
  %.sroa.8921.0..sroa.07.0.lcssa.i.i15.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8921.0..sroa.07.0.lcssa.i.i15.i.i.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8921, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8921)
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i16.i.i.i.i = icmp eq ptr %i.vf, %.val58.i
  br i1 %.not.i16.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i, !llvm.loop !124

bb.dn:                                            ; preds = %.noexc290
  %.not21.i23.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i, %.val58.i
  br i1 %.not21.i23.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.preheader:                     ; preds = %bb.dn
  %i.vg = getelementptr inbounds nuw i8, ptr %.val62.i, i64 4
  br label %.lr.ph.i24.i.i.i.i

.lr.ph.i24.i.i.i.i:                               ; preds = %.lr.ph.i24.i.i.i.i.preheader, %bb.du
  %.sroa.0.023.i25.i.i.i.i = phi ptr [ %.sroa.0.0.i29.i.i.i.i, %bb.du ], [ %scevgep.i.i.i.i, %.lr.ph.i24.i.i.i.i.preheader ] ; 11 uses
  %.pn22.i26.i.i.i.i = phi ptr [ %.sroa.0.023.i25.i.i.i.i, %bb.du ], [ %.val62.i, %.lr.ph.i24.i.i.i.i.preheader ] ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i, i64 4
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !75 ; 4 uses
  %i.vj = load float, ptr %i.vg, align 4, !tbaa !75
  %i.vk = fsub float %i.vi, %i.vj                 ; 2 uses
  %i.vl = fcmp olt float %i.vk, 0.000000e+00
  br i1 %i.vl, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i24.i.i.i.i
  %i.vm = fcmp oeq float %i.vk, 0.000000e+00
  %.sroa.0922.0.copyload.pre = load i16, ptr %.sroa.0.023.i25.i.i.i.i, align 4, !tbaa !77 ; 4 uses
  br i1 %i.vm, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread989

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825: ; preds = %bb.do
  %i.vn = load i16, ptr %.val62.i, align 4, !tbaa !74
  %i.vo = icmp ult i16 %.sroa.0922.0.copyload.pre, %i.vn
  br i1 %i.vo, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread989

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread: ; preds = %.lr.ph.i24.i.i.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %28, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.023.i25.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.vp = ptrtoint ptr %.sroa.0.023.i25.i.i.i.i to i64
  %i.vq = sub i64 %i.vp, %i.tj                    ; 4 uses
  %i.vr = icmp sgt i64 %i.vq, 24
  br i1 %i.vr, label %bb.dp, label %bb.dq, !prof !89

bb.dp:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread
  %i.vs = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i, i64 48
  %.neg27.i36.i.i.i.i = udiv exact i64 %i.vq, 24
  %.neg27.neg.i37.i.i.i.i = sub nsw i64 0, %.neg27.i36.i.i.i.i
  %i.vt = getelementptr inbounds [24 x i8], ptr %i.vs, i64 %.neg27.neg.i37.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.vt, ptr noundef nonnull align 4 dereferenceable(1) %.val62.i, i64 %i.vq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.dq:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread
  %i.vu = icmp eq i64 %i.vq, 24
  br i1 %i.vu, label %bb.dr, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.vv = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.vv, ptr noundef nonnull readonly align 4 dereferenceable(24) %.val62.i, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.val62.i, ptr noundef nonnull align 4 dereferenceable(24) %28, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %bb.du

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread989: ; preds = %bb.do, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8930)
  %.sroa.6925.0..sroa.0.023.i25.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i, i64 2
  %.sroa.6925.0.copyload = load i16, ptr %.sroa.6925.0..sroa.0.023.i25.i.i.i.i.sroa_idx, align 2
  %.sroa.8930.0..sroa.0.023.i25.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8930, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8930.0..sroa.0.023.i25.i.i.i.i.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %i.vw = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i, i64 4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !75
  %i.vy = fsub float %i.vi, %i.vx                 ; 2 uses
  %i.vz = fcmp olt float %i.vy, 0.000000e+00
  br i1 %i.vz, label %.lr.ph.i.i31.i.i.i.i.preheader, label %bb.ds

bb.ds:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread989
  %i.wa = fcmp oeq float %i.vy, 0.000000e+00
  br i1 %i.wa, label %.split990, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split990:                                        ; preds = %bb.ds
  %i.wb = load i16, ptr %.pn22.i26.i.i.i.i, align 4, !tbaa !74
  %i.wc = icmp ult i16 %.sroa.0922.0.copyload.pre, %i.wb
  br i1 %i.wc, label %.lr.ph.i.i31.i.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i.preheader:                   ; preds = %.split990, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_.exit825.thread989
  br label %.lr.ph.i.i31.i.i.i.i

.lr.ph.i.i31.i.i.i.i:                             ; preds = %.lr.ph.i.i31.i.i.i.i.backedge, %.lr.ph.i.i31.i.i.i.i.preheader
  %.sroa.0.010.i.i32.i.i.i.i = phi ptr [ %.pn22.i26.i.i.i.i, %.lr.ph.i.i31.i.i.i.i.preheader ], [ %.sroa.0.0.i.i34.i.i.i.i, %.lr.ph.i.i31.i.i.i.i.backedge ] ; 6 uses
  %.sroa.07.09.i.i33.i.i.i.i = phi ptr [ %.sroa.0.023.i25.i.i.i.i, %.lr.ph.i.i31.i.i.i.i.preheader ], [ %.sroa.0.010.i.i32.i.i.i.i, %.lr.ph.i.i31.i.i.i.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i33.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i32.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i34.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i, i64 -24 ; 2 uses
  %i.wd = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i, i64 -20
  %i.we = load float, ptr %i.wd, align 4, !tbaa !75
  %i.wf = fsub float %i.vi, %i.we                 ; 2 uses
  %i.wg = fcmp olt float %i.wf, 0.000000e+00
  br i1 %i.wg, label %.lr.ph.i.i31.i.i.i.i.backedge, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i31.i.i.i.i
  %i.wh = fcmp oeq float %i.wf, 0.000000e+00
  br i1 %i.wh, label %.split991, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split991:                                        ; preds = %bb.dt
  %i.wi = load i16, ptr %.sroa.0.0.i.i34.i.i.i.i, align 4, !tbaa !74
  %i.wj = icmp ult i16 %.sroa.0922.0.copyload.pre, %i.wi
  br i1 %i.wj, label %.lr.ph.i.i31.i.i.i.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i.backedge:                    ; preds = %.split991, %.lr.ph.i.i31.i.i.i.i
  br label %.lr.ph.i.i31.i.i.i.i, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i: ; preds = %bb.dt, %.split991, %bb.ds, %.split990
  %.sroa.07.0.lcssa.i.i28.i.i.i.i = phi ptr [ %.sroa.0.023.i25.i.i.i.i, %.split990 ], [ %.sroa.0.023.i25.i.i.i.i, %bb.ds ], [ %.sroa.0.010.i.i32.i.i.i.i, %.split991 ], [ %.sroa.0.010.i.i32.i.i.i.i, %bb.dt ] ; 4 uses
  store i16 %.sroa.0922.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i, align 4, !tbaa !77
  %.sroa.6925.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i, i64 2
  store i16 %.sroa.6925.0.copyload, ptr %.sroa.6925.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx, align 2
  %.sroa.6927.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i, i64 4
  store float %i.vi, ptr %.sroa.6927.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx, align 4, !tbaa !76
  %.sroa.8930.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8930.0..sroa.07.0.lcssa.i.i28.i.i.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8930, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8930)
  br label %bb.du

bb.du:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i
  %.sroa.0.0.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i, i64 24 ; 2 uses
  %.not.i30.i.i.i.i = icmp eq ptr %.sroa.0.0.i29.i.i.i.i, %.val58.i
  br i1 %.not.i30.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i, !llvm.loop !123

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i: ; preds = %bb.du, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i, %bb.dn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_116FixupQuaternionsEPSt6vectorINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEENS_12StdAllocatorIS7_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %.not.i.i.i.i69.i = icmp eq i16 %i.ac, 0        ; 9 uses
  br i1 %.not.i.i.i.i69.i, label %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i, label %bb.dv

_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i

bb.dv:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  %i.wk = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.dw unwind label %bb.dx     ; 2 uses

bb.dw:                                            ; preds = %bb.dv
  %i.wl = shl nuw nsw i64 %i.tg, 3                ; 3 uses
  %i.wm = load ptr, ptr %i.wk, align 8, !tbaa !48
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8
  %i.wp = invoke noundef ptr %i.wo(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, i64 noundef %i.wl, i64 noundef 4)
          to label %.lr.ph.preheader.i.i.i.i unwind label %bb.dx ; 5 uses

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  tail call void @__clang_call_terminate(ptr %i.wr) #22
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.dw
  store ptr %i.wp, ptr %30, align 8, !tbaa !92
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.tg
  %i.wt = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.ws, ptr %i.wt, align 8, !tbaa !231
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.wp, i8 0, i64 %i.wl, i1 false), !tbaa !93
  %scevgep.i.i.i70.i = getelementptr i8, ptr %i.wp, i64 %i.wl
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i

_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i
  %.pre99.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i ], [ %i.wp, %.lr.ph.preheader.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i ], [ %scevgep.i.i.i70.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i, ptr %i.wu, align 8, !tbaa !232
  %i.wv = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.wy = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.wz = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %bb.eb

.loopexit127.i:                                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i, %bb.fz
  %i.xa = load ptr, ptr %30, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.xa, null
  br i1 %.not.i.i.i.i, label %bb.ga, label %bb.dy

bb.dy:                                            ; preds = %.loopexit127.i
  %i.xb = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.dz unwind label %bb.ea     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !48
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8
  invoke void %i.xe(ptr noundef nonnull align 8 dereferenceable(8) %i.xb, ptr noundef nonnull %i.xa)
          to label %bb.ga unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #22
  unreachable

bb.eb:                                            ; preds = %.loopexit30.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i
  %.pre1268 = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i ], [ %.pre, %.loopexit30.i ] ; 3 uses
  %i.xh = phi ptr [ %.pre99.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i ], [ %i.aeg, %.loopexit30.i ] ; 5 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.xh, %.pre1268
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i, label %.lr.ph.i.i.i.i71.preheader.i

.lr.ph.i.i.i.i71.preheader.i:                     ; preds = %bb.eb
  %i.xi = ptrtoaddr ptr %.pre1268 to i64
  %i.xj = ptrtoaddr ptr %i.xh to i64
  %reass.sub = sub i64 %i.xi, %i.xj
  %i.xk = and i64 %reass.sub, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.xh, i8 -1, i64 %i.xk, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i71.preheader.i, %bb.eb
  %.val.i284 = load ptr, ptr %58, align 8, !tbaa !56 ; 9 uses
  %.val55.i = load ptr, ptr %i.th, align 8, !tbaa !57 ; 10 uses
  %.not67.i = icmp eq ptr %.val55.i, %.val.i284
  br i1 %.not67.i, label %.loopexit127.i, label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i
  %i.xl = ptrtoint ptr %.val55.i to i64           ; 2 uses
  %i.xm = ptrtoint ptr %.val.i284 to i64          ; 2 uses
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = sdiv exact i64 %i.xn, 24
  br label %bb.ec

bb.ec:                                            ; preds = %bb.fz, %.lr.ph.i285
  %.04966.i = phi i64 [ 0, %.lr.ph.i285 ], [ %i.aef, %bb.fz ] ; 4 uses
  %i.xp = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %.04966.i
  %i.xq = load i16, ptr %i.xp, align 4, !tbaa !74 ; 3 uses
  %i.xr = zext i16 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %i.xr ; 6 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !234 ; 3 uses
  %.not.i286 = icmp ne i32 %i.xt, -1
  %i.xu = sext i32 %i.xt to i64
  %i.xv = sub i64 %.04966.i, %i.xu
  %i.xw = icmp ugt i64 %i.xv, 65535
  %or.cond.i = and i1 %.not.i286, %i.xw
  br i1 %or.cond.i, label %bb.ed, label %bb.fz

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.xx = load i32, ptr %i.xs, align 4, !tbaa !234
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %i.xy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %31, ptr noundef nonnull align 4 dereferenceable(24) %i.xz, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !235
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %i.yc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %32, ptr noundef nonnull align 4 dereferenceable(24) %i.yd, i64 24, i1 false), !tbaa.struct !78
  %i.ye = load float, ptr %i.wv, align 4, !tbaa !217 ; 3 uses
  %i.yf = load float, ptr %i.ww, align 4, !tbaa !217
  %i.yg = fadd float %i.ye, %i.yf
  %i.yh = fmul float %i.yg, 5.000000e-01          ; 3 uses
  %i.yi = invoke { <2 x float>, float } @_ZN3ozz9animation7offline15LerpTranslationERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.wx, ptr noundef nonnull align 4 dereferenceable(12) %i.wy, float noundef 5.000000e-01)
          to label %bb.ee unwind label %.loopexit31.i ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.yi, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.yi, 1 ; 2 uses
  %i.yj = load i32, ptr %i.xs, align 4, !tbaa !234
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [24 x i8], ptr %.val.i284, i64 %i.yk ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24 ; 4 uses
  %.not.i.i73.i = icmp eq ptr %i.ym, %.val55.i
  br i1 %.not.i.i73.i, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.yn = ptrtoint ptr %i.ym to i64
  %i.yo = sub i64 %i.xl, %i.yn                    ; 3 uses
  %i.yp = icmp sgt i64 %i.yo, 24
  br i1 %i.yp, label %bb.eg, label %bb.eh, !prof !89

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.yl, ptr nonnull align 4 %i.ym, i64 %i.yo, i1 false)
  br label %bb.ej

bb.eh:                                            ; preds = %bb.ef
  %i.yq = icmp eq i64 %i.yo, 24
  br i1 %i.yq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.yl, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ym, i64 24, i1 false), !tbaa.struct !78
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee
  %i.yr = getelementptr inbounds i8, ptr %.val55.i, i64 -24 ; 6 uses
  store ptr %i.yr, ptr %i.th, align 8, !tbaa !57
  %i.ys = load ptr, ptr %i.et, align 8, !tbaa !58 ; 2 uses
  %.not.i.i287 = icmp eq ptr %i.yr, %i.ys
  br i1 %.not.i.i287, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store i16 %i.xq, ptr %i.yr, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -20
  store float %i.ye, ptr %.sroa.611.0..sroa_idx.i, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -16
  store float %i.yh, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -12
  store <2 x float> %.fca.0.extract.i, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -4
  store float %.fca.1.extract.i, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !76
  store ptr %.val55.i, ptr %i.th, align 8, !tbaa !57
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.el:                                            ; preds = %bb.ej
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.yt, %i.xm                    ; 3 uses
  %i.yv = icmp eq i64 %i.yu, 9223372036854775800
  br i1 %i.yv, label %.invoke.i, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

.invoke.i:                                        ; preds = %bb.es, %bb.el
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i unwind label %.loopexit.split-lp32.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

end_hunk_1
begin_hunk_2_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !75
  %i.adb = load float, ptr %i.acy, align 4, !tbaa !75
  %i.adc = fsub float %i.ada, %i.adb              ; 2 uses
  %i.add = fcmp olt float %i.adc, 0.000000e+00
  br i1 %i.add, label %.noexc98.i.thread, label %bb.fo

.noexc98.i.thread:                                ; preds = %bb.fn
  %i.ade = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i, i64 -24
  br label %.loopexit1948

bb.fo:                                            ; preds = %bb.fn
  %i.adf = fcmp oeq float %i.adc, 0.000000e+00
  br i1 %i.adf, label %.noexc98.i, label %.noexc98.i.thread993

.noexc98.i.thread993:                             ; preds = %bb.fo
  %i.adg = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i, i64 -24
  br label %bb.fu

.noexc98.i:                                       ; preds = %bb.fo
  %i.adh = load i16, ptr %.0.i.i.i, align 4, !tbaa !74
  %i.adi = load i16, ptr %.sroa.028.0.i.i.i.ph, align 4, !tbaa !74
  %i.adj = icmp ult i16 %i.adh, %i.adi
  %i.adk = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i, i64 -24 ; 2 uses
  br i1 %i.adj, label %.loopexit1948, label %bb.fu

.loopexit1948:                                    ; preds = %.noexc98.i, %.noexc98.i.thread
  %i.adl = phi ptr [ %i.ade, %.noexc98.i.thread ], [ %i.adk, %.noexc98.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.adl, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.028.0.i.i.i.ph, i64 24, i1 false), !tbaa.struct !78
  %i.adm = icmp eq ptr %i.abd, %.sroa.028.0.i.i.i.ph
  br i1 %i.adm, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %.loopexit1948
  %i.adn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ado = ptrtoint ptr %i.adn to i64
  %i.adp = ptrtoint ptr %.sroa.11.0.i.i.i to i64
  %i.adq = sub i64 %i.ado, %i.adp                 ; 4 uses
  %i.adr = icmp sgt i64 %i.adq, 24
  br i1 %i.adr, label %bb.fq, label %bb.fr, !prof !89

bb.fq:                                            ; preds = %bb.fp
  %i.ads = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i, i64 -24
  %.neg46.i.i.i = udiv exact i64 %i.adq, 24
  %.neg46.neg.i.i.i = sub nsw i64 0, %.neg46.i.i.i
  %i.adt = getelementptr inbounds [24 x i8], ptr %i.ads, i64 %.neg46.neg.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.adt, ptr nonnull align 4 %.sroa.11.0.i.i.i, i64 %i.adq, i1 false)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.fr:                                            ; preds = %bb.fp
  %i.adu = icmp eq i64 %i.adq, 24
  br i1 %i.adu, label %bb.fs, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.fs:                                            ; preds = %bb.fr
  %i.adv = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.adv, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.11.0.i.i.i, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.ft:                                            ; preds = %.loopexit1948
  %i.adw = getelementptr inbounds i8, ptr %.sroa.028.0.i.i.i.ph, i64 -24
  br label %.outer1947, !llvm.loop !4

bb.fu:                                            ; preds = %.noexc98.i.thread993, %.noexc98.i
  %i.adx = phi ptr [ %i.adg, %.noexc98.i.thread993 ], [ %i.adk, %.noexc98.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.adx, ptr noundef nonnull align 4 dereferenceable(24) %.0.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.ady = icmp eq ptr %.sroa.11.0.i.i.i, %.0.i.i.i
  br i1 %i.ady, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.adz = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -24
  br label %bb.fn, !llvm.loop !4

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.fy, %bb.fx
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  %i.aea = mul nuw nsw i64 %.sroa.5.0.i.i.i, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i, i64 noundef %i.aea) #20
  br label %.body.i

bb.fw:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %i.aeb = icmp eq ptr %.sroa.11.0.i.i.i, null
  br i1 %i.aeb, label %bb.fx, label %bb.fy, !prof !236

bb.fx:                                            ; preds = %bb.fw
  invoke fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %i.abd, ptr nonnull %i.abe, ptr nonnull %.val57.i, i64 noundef %i.abj, i64 noundef 2, ptr nonnull @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_)
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.fy:                                            ; preds = %bb.fw
  invoke fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %i.abd, ptr nonnull %i.abe, ptr nonnull %.val57.i, i64 noundef %i.abj, i64 noundef 2, ptr noundef nonnull %.sroa.11.0.i.i.i, i64 noundef %.sroa.5.0.i.i.i, i64 ptrtoint (ptr @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEEEEbRKT_SA_ to i64))
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i: ; preds = %bb.fi, %bb.fu, %bb.fy, %bb.fx, %bb.fs, %bb.fr, %bb.fq, %bb.fl, %bb.fk, %bb.fj
  %i.aec = mul nuw nsw i64 %.sroa.5.0.i.i.i, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i, i64 noundef %i.aec) #20
  %.pre.i288 = load ptr, ptr %30, align 8, !tbaa !237
  %.pre.pre = load ptr, ptr %i.wu, align 8, !tbaa !237
  br label %.loopexit30.i

.loopexit31.i:                                    ; preds = %bb.ed
  %lpad.loopexit33.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp32.i:                           ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp32.i, %.loopexit31.i, %.loopexit.split-lp.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit33.i, %.loopexit31.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp32.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.body

bb.fz:                                            ; preds = %bb.ec
  %i.aed = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  store i32 %i.xt, ptr %i.aed, align 4, !tbaa !235
  %i.aee = trunc i64 %.04966.i to i32
  store i32 %i.aee, ptr %i.xs, align 4, !tbaa !234
  %i.aef = add nuw i64 %.04966.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aef, %i.xo
  br i1 %exitcond.not.i, label %.loopexit127.i, label %bb.ec, !llvm.loop !128

.loopexit30.i:                                    ; preds = %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i
  %.pre = phi ptr [ %.pre1268, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre.pre, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %i.aeg = phi ptr [ %i.xh, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre.i288, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.eb, !llvm.loop !129

bb.ga:                                            ; preds = %bb.dz, %.loopexit127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %.val61.i291 = load ptr, ptr %59, align 8, !tbaa !220 ; 18 uses
  %.val57.i292 = load ptr, ptr %i.rm, align 8, !tbaa !220 ; 7 uses
  %.not.i.i.i293 = icmp eq ptr %.val61.i291, %.val57.i292
  br i1 %.not.i.i.i293, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aeh = ptrtoint ptr %.val57.i292 to i64
  %i.aei = ptrtoint ptr %.val61.i291 to i64       ; 2 uses
  %i.aej = sub i64 %i.aeh, %i.aei                 ; 2 uses
  %i.aek = sdiv exact i64 %i.aej, 28
  %i.ael = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aek, i1 true)
  %i.aem = shl nuw nsw i64 %i.ael, 1
  %i.aen = xor i64 %i.aem, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_T1_(ptr %.val61.i291, ptr %.val57.i292, i64 noundef %i.aen, ptr nonnull readonly @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_)
          to label %.noexc410 unwind label %bb.mp

.noexc410:                                        ; preds = %bb.gb
  %i.aeo = icmp sgt i64 %i.aej, 448
  %scevgep.i.i.i.i294 = getelementptr i8, ptr %.val61.i291, i64 28 ; 3 uses
  br i1 %i.aeo, label %.lr.ph.i.i.i.i.i389.preheader, label %bb.gk

.lr.ph.i.i.i.i.i389.preheader:                    ; preds = %.noexc410
  %i.aep = getelementptr inbounds nuw i8, ptr %.val61.i291, i64 4
  br label %.lr.ph.i.i.i.i.i389

.lr.ph.i.i.i.i.i389:                              ; preds = %.lr.ph.i.i.i.i.i389.preheader, %bb.gh
  %.sroa.0.023.i.idx.i.i.i.i390 = phi i64 [ %.sroa.0.023.i.add.i.i.i.i394, %bb.gh ], [ 28, %.lr.ph.i.i.i.i.i389.preheader ] ; 4 uses
  %.pn22.i.i.i.i.i391 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i392, %bb.gh ], [ %.val61.i291, %.lr.ph.i.i.i.i.i389.preheader ] ; 4 uses
  %.sroa.0.023.i.ptr.i.i.i.i392 = getelementptr inbounds nuw i8, ptr %.val61.i291, i64 %.sroa.0.023.i.idx.i.i.i.i390 ; 9 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i392, i64 4
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !83 ; 4 uses
  %i.aes = load float, ptr %i.aep, align 4, !tbaa !83
  %i.aet = fsub float %i.aer, %i.aes              ; 2 uses
  %i.aeu = fcmp olt float %i.aet, 0.000000e+00
  br i1 %i.aeu, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i.i.i389
  %i.aev = fcmp oeq float %i.aet, 0.000000e+00
  %.sroa.0931.0.copyload.pre = load i16, ptr %.sroa.0.023.i.ptr.i.i.i.i392, align 4, !tbaa !77 ; 4 uses
  br i1 %i.aev, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread994

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839: ; preds = %bb.gc
  %i.aew = load i16, ptr %.val61.i291, align 4, !tbaa !82
  %i.aex = icmp ult i16 %.sroa.0931.0.copyload.pre, %i.aew
  br i1 %i.aex, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread994

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread: ; preds = %.lr.ph.i.i.i.i.i389, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %24, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.023.i.ptr.i.i.i.i392, i64 28, i1 false), !tbaa.struct !84
  %i.aey = icmp samesign ugt i64 %.sroa.0.023.i.idx.i.i.i.i390, 28
  br i1 %i.aey, label %bb.gd, label %bb.ge, !prof !89

bb.gd:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i294, ptr noundef nonnull align 4 dereferenceable(1) %.val61.i291, i64 %.sroa.0.023.i.idx.i.i.i.i390, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

bb.ge:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread
  %i.aez = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i391, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aez, ptr noundef nonnull readonly align 4 dereferenceable(28) %.val61.i291, i64 28, i1 false), !tbaa.struct !84
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i: ; preds = %bb.ge, %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.val61.i291, ptr noundef nonnull align 4 dereferenceable(28) %24, i64 28, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %bb.gh

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread994: ; preds = %bb.gc, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8939)
  %.sroa.6934.0..sroa.0.023.i.ptr.i.i.i.i392.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i392, i64 2
  %.sroa.6934.0.copyload = load i16, ptr %.sroa.6934.0..sroa.0.023.i.ptr.i.i.i.i392.sroa_idx, align 2
  %.sroa.8939.0..sroa.0.023.i.ptr.i.i.i.i392.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i392, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8939, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8939.0..sroa.0.023.i.ptr.i.i.i.i392.sroa_idx, i64 20, i1 false), !tbaa.struct !238
  %i.afa = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i391, i64 4
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !83
  %i.afc = fsub float %i.aer, %i.afb              ; 2 uses
  %i.afd = fcmp olt float %i.afc, 0.000000e+00
  br i1 %i.afd, label %.lr.ph.i.i.i.i.i.i406.preheader, label %bb.gf

bb.gf:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread994
  %i.afe = fcmp oeq float %i.afc, 0.000000e+00
  br i1 %i.afe, label %.split995, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split995:                                        ; preds = %bb.gf
  %i.aff = load i16, ptr %.pn22.i.i.i.i.i391, align 4, !tbaa !82
  %i.afg = icmp ult i16 %.sroa.0931.0.copyload.pre, %i.aff
  br i1 %i.afg, label %.lr.ph.i.i.i.i.i.i406.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i406.preheader:                  ; preds = %.split995, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit839.thread994
  br label %.lr.ph.i.i.i.i.i.i406

.lr.ph.i.i.i.i.i.i406:                            ; preds = %.lr.ph.i.i.i.i.i.i406.backedge, %.lr.ph.i.i.i.i.i.i406.preheader
  %.sroa.0.010.i.i.i.i.i.i407 = phi ptr [ %.pn22.i.i.i.i.i391, %.lr.ph.i.i.i.i.i.i406.preheader ], [ %.sroa.0.0.i.i.i.i.i.i409, %.lr.ph.i.i.i.i.i.i406.backedge ] ; 6 uses
  %.sroa.07.09.i.i.i.i.i.i408 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i392, %.lr.ph.i.i.i.i.i.i406.preheader ], [ %.sroa.0.010.i.i.i.i.i.i407, %.lr.ph.i.i.i.i.i.i406.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.07.09.i.i.i.i.i.i408, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.010.i.i.i.i.i.i407, i64 28, i1 false), !tbaa.struct !84
  %.sroa.0.0.i.i.i.i.i.i409 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i407, i64 -28 ; 2 uses
  %i.afh = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i407, i64 -24
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !83
  %i.afj = fsub float %i.aer, %i.afi              ; 2 uses
  %i.afk = fcmp olt float %i.afj, 0.000000e+00
  br i1 %i.afk, label %.lr.ph.i.i.i.i.i.i406.backedge, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i.i.i406
  %i.afl = fcmp oeq float %i.afj, 0.000000e+00
  br i1 %i.afl, label %.split996, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split996:                                        ; preds = %bb.gg
  %i.afm = load i16, ptr %.sroa.0.0.i.i.i.i.i.i409, align 4, !tbaa !82
  %i.afn = icmp ult i16 %.sroa.0931.0.copyload.pre, %i.afm
  br i1 %i.afn, label %.lr.ph.i.i.i.i.i.i406.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i406.backedge:                   ; preds = %.split996, %.lr.ph.i.i.i.i.i.i406
  br label %.lr.ph.i.i.i.i.i.i406, !llvm.loop !130

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i: ; preds = %bb.gg, %.split996, %bb.gf, %.split995
  %.sroa.07.0.lcssa.i.i.i.i.i.i393 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i392, %.split995 ], [ %.sroa.0.023.i.ptr.i.i.i.i392, %bb.gf ], [ %.sroa.0.010.i.i.i.i.i.i407, %.split996 ], [ %.sroa.0.010.i.i.i.i.i.i407, %bb.gg ] ; 4 uses
  store i16 %.sroa.0931.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i393, align 4, !tbaa !77
  %.sroa.6934.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i393, i64 2
  store i16 %.sroa.6934.0.copyload, ptr %.sroa.6934.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx, align 2
  %.sroa.6936.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i393, i64 4
  store float %i.aer, ptr %.sroa.6936.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx, align 4, !tbaa !76
  %.sroa.8939.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i393, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8939.0..sroa.07.0.lcssa.i.i.i.i.i.i393.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8939, i64 20, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8939)
  br label %bb.gh

bb.gh:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i
  %.sroa.0.023.i.add.i.i.i.i394 = add nuw nsw i64 %.sroa.0.023.i.idx.i.i.i.i390, 28 ; 2 uses
  %.not.i.i.i.i.i395 = icmp eq i64 %.sroa.0.023.i.add.i.i.i.i394, 448
  br i1 %.not.i.i.i.i.i395, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i389, !llvm.loop !131

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i: ; preds = %bb.gh
  %i.afo = getelementptr inbounds nuw i8, ptr %.val61.i291, i64 448 ; 2 uses
  %.not7.i.i.i.i.i396 = icmp eq ptr %i.afo, %.val57.i292
  br i1 %.not7.i.i.i.i.i396, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i397

.lr.ph.i13.i.i.i.i397:                            ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i
  %.sroa.0.08.i.i.i.i.i398 = phi ptr [ %i.age, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i ], [ %i.afo, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8948)
  %i.afp = load <2 x i16>, ptr %.sroa.0.08.i.i.i.i.i398, align 4
  %.sroa.0940.0.copyload = load i16, ptr %.sroa.0.08.i.i.i.i.i398, align 4, !tbaa !77 ; 2 uses
  %.sroa.6945.0..sroa.0.08.i.i.i.i.i398.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 4
  %.sroa.6945.0.copyload = load float, ptr %.sroa.6945.0..sroa.0.08.i.i.i.i.i398.sroa_idx, align 4, !tbaa !76 ; 3 uses
  %.sroa.8948.0..sroa.0.08.i.i.i.i.i398.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8948, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8948.0..sroa.0.08.i.i.i.i.i398.sroa_idx, i64 20, i1 false), !tbaa.struct !238
  %.sroa.0.08.i.i.i.i.i.i399 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 -28 ; 2 uses
  %i.afq = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 -24
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !83
  %i.afs = fsub float %.sroa.6945.0.copyload, %i.afr ; 2 uses
  %i.aft = fcmp olt float %i.afs, 0.000000e+00
  br i1 %i.aft, label %.lr.ph.i.i17.i.i.i.i402.preheader, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i13.i.i.i.i397
  %i.afu = fcmp oeq float %i.afs, 0.000000e+00
  br i1 %i.afu, label %.split997, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split997:                                        ; preds = %bb.gi
  %i.afv = load i16, ptr %.sroa.0.08.i.i.i.i.i.i399, align 4, !tbaa !82
  %i.afw = icmp ult i16 %.sroa.0940.0.copyload, %i.afv
  br i1 %i.afw, label %.lr.ph.i.i17.i.i.i.i402.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i402.preheader:                ; preds = %.split997, %.lr.ph.i13.i.i.i.i397
  br label %.lr.ph.i.i17.i.i.i.i402

.lr.ph.i.i17.i.i.i.i402:                          ; preds = %.lr.ph.i.i17.i.i.i.i402.backedge, %.lr.ph.i.i17.i.i.i.i402.preheader
  %.sroa.0.010.i.i18.i.i.i.i403 = phi ptr [ %.sroa.0.08.i.i.i.i.i.i399, %.lr.ph.i.i17.i.i.i.i402.preheader ], [ %.sroa.0.0.i.i20.i.i.i.i405, %.lr.ph.i.i17.i.i.i.i402.backedge ] ; 6 uses
  %.sroa.07.09.i.i19.i.i.i.i404 = phi ptr [ %.sroa.0.08.i.i.i.i.i398, %.lr.ph.i.i17.i.i.i.i402.preheader ], [ %.sroa.0.010.i.i18.i.i.i.i403, %.lr.ph.i.i17.i.i.i.i402.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.07.09.i.i19.i.i.i.i404, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.010.i.i18.i.i.i.i403, i64 28, i1 false), !tbaa.struct !84
  %.sroa.0.0.i.i20.i.i.i.i405 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i403, i64 -28 ; 2 uses
  %i.afx = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i403, i64 -24
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !83
  %i.afz = fsub float %.sroa.6945.0.copyload, %i.afy ; 2 uses
  %i.aga = fcmp olt float %i.afz, 0.000000e+00
  br i1 %i.aga, label %.lr.ph.i.i17.i.i.i.i402.backedge, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph.i.i17.i.i.i.i402
  %i.agb = fcmp oeq float %i.afz, 0.000000e+00
  br i1 %i.agb, label %.split998, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split998:                                        ; preds = %bb.gj
  %i.agc = load i16, ptr %.sroa.0.0.i.i20.i.i.i.i405, align 4, !tbaa !82
  %i.agd = icmp ult i16 %.sroa.0940.0.copyload, %i.agc
  br i1 %i.agd, label %.lr.ph.i.i17.i.i.i.i402.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i402.backedge:                 ; preds = %.split998, %.lr.ph.i.i17.i.i.i.i402
  br label %.lr.ph.i.i17.i.i.i.i402, !llvm.loop !130

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i: ; preds = %bb.gj, %.split998, %bb.gi, %.split997
  %.sroa.07.0.lcssa.i.i15.i.i.i.i400 = phi ptr [ %.sroa.0.08.i.i.i.i.i398, %.split997 ], [ %.sroa.0.08.i.i.i.i.i398, %bb.gi ], [ %.sroa.0.010.i.i18.i.i.i.i403, %.split998 ], [ %.sroa.0.010.i.i18.i.i.i.i403, %bb.gj ] ; 3 uses
  store <2 x i16> %i.afp, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i400, align 4
  %.sroa.6945.0..sroa.07.0.lcssa.i.i15.i.i.i.i400.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i400, i64 4
  store float %.sroa.6945.0.copyload, ptr %.sroa.6945.0..sroa.07.0.lcssa.i.i15.i.i.i.i400.sroa_idx, align 4, !tbaa !76
  %.sroa.8948.0..sroa.07.0.lcssa.i.i15.i.i.i.i400.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i400, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8948.0..sroa.07.0.lcssa.i.i15.i.i.i.i400.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8948, i64 20, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8948)
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i398, i64 28 ; 2 uses
  %.not.i16.i.i.i.i401 = icmp eq ptr %i.age, %.val57.i292
  br i1 %.not.i16.i.i.i.i401, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i397, !llvm.loop !132

bb.gk:                                            ; preds = %.noexc410
  %.not21.i23.i.i.i.i295 = icmp eq ptr %scevgep.i.i.i.i294, %.val57.i292
  br i1 %.not21.i23.i.i.i.i295, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i296.preheader

.lr.ph.i24.i.i.i.i296.preheader:                  ; preds = %bb.gk
  %i.agf = getelementptr inbounds nuw i8, ptr %.val61.i291, i64 4
  br label %.lr.ph.i24.i.i.i.i296

.lr.ph.i24.i.i.i.i296:                            ; preds = %.lr.ph.i24.i.i.i.i296.preheader, %bb.gr
  %.sroa.0.023.i25.i.i.i.i297 = phi ptr [ %.sroa.0.0.i29.i.i.i.i300, %bb.gr ], [ %scevgep.i.i.i.i294, %.lr.ph.i24.i.i.i.i296.preheader ] ; 11 uses
  %.pn22.i26.i.i.i.i298 = phi ptr [ %.sroa.0.023.i25.i.i.i.i297, %bb.gr ], [ %.val61.i291, %.lr.ph.i24.i.i.i.i296.preheader ] ; 5 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i297, i64 4
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !83 ; 4 uses
  %i.agi = load float, ptr %i.agf, align 4, !tbaa !83
  %i.agj = fsub float %i.agh, %i.agi              ; 2 uses
  %i.agk = fcmp olt float %i.agj, 0.000000e+00
  br i1 %i.agk, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph.i24.i.i.i.i296
  %i.agl = fcmp oeq float %i.agj, 0.000000e+00
  %.sroa.0949.0.copyload.pre = load i16, ptr %.sroa.0.023.i25.i.i.i.i297, align 4, !tbaa !77 ; 4 uses
  br i1 %i.agl, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread999

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834: ; preds = %bb.gl
  %i.agm = load i16, ptr %.val61.i291, align 4, !tbaa !82
  %i.agn = icmp ult i16 %.sroa.0949.0.copyload.pre, %i.agm
  br i1 %i.agn, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread999

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread: ; preds = %.lr.ph.i24.i.i.i.i296, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %23, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.023.i25.i.i.i.i297, i64 28, i1 false), !tbaa.struct !84
  %i.ago = ptrtoint ptr %.sroa.0.023.i25.i.i.i.i297 to i64
  %i.agp = sub i64 %i.ago, %i.aei                 ; 4 uses
  %i.agq = icmp sgt i64 %i.agp, 28
  br i1 %i.agq, label %bb.gm, label %bb.gn, !prof !89

bb.gm:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread
  %i.agr = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i298, i64 56
  %.neg27.i36.i.i.i.i387 = udiv exact i64 %i.agp, 28
  %.neg27.neg.i37.i.i.i.i388 = sub nsw i64 0, %.neg27.i36.i.i.i.i387
  %i.ags = getelementptr inbounds [28 x i8], ptr %i.agr, i64 %.neg27.neg.i37.i.i.i.i388
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ags, ptr noundef nonnull align 4 dereferenceable(1) %.val61.i291, i64 %i.agp, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.gn:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread
  %i.agt = icmp eq i64 %i.agp, 28
  br i1 %i.agt, label %bb.go, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.agu = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i298, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.agu, ptr noundef nonnull readonly align 4 dereferenceable(28) %.val61.i291, i64 28, i1 false), !tbaa.struct !84
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i: ; preds = %bb.go, %bb.gn, %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.val61.i291, ptr noundef nonnull align 4 dereferenceable(28) %23, i64 28, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.gr

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread999: ; preds = %bb.gl, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8957)
  %.sroa.6952.0..sroa.0.023.i25.i.i.i.i297.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i297, i64 2
  %.sroa.6952.0.copyload = load i16, ptr %.sroa.6952.0..sroa.0.023.i25.i.i.i.i297.sroa_idx, align 2
  %.sroa.8957.0..sroa.0.023.i25.i.i.i.i297.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i297, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8957, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8957.0..sroa.0.023.i25.i.i.i.i297.sroa_idx, i64 20, i1 false), !tbaa.struct !238
  %i.agv = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i298, i64 4
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !83
  %i.agx = fsub float %i.agh, %i.agw              ; 2 uses
  %i.agy = fcmp olt float %i.agx, 0.000000e+00
  br i1 %i.agy, label %.lr.ph.i.i31.i.i.i.i383.preheader, label %bb.gp

bb.gp:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread999
  %i.agz = fcmp oeq float %i.agx, 0.000000e+00
  br i1 %i.agz, label %.split1000, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1000:                                       ; preds = %bb.gp
  %i.aha = load i16, ptr %.pn22.i26.i.i.i.i298, align 4, !tbaa !82
  %i.ahb = icmp ult i16 %.sroa.0949.0.copyload.pre, %i.aha
  br i1 %i.ahb, label %.lr.ph.i.i31.i.i.i.i383.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i383.preheader:                ; preds = %.split1000, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_.exit834.thread999
  br label %.lr.ph.i.i31.i.i.i.i383

.lr.ph.i.i31.i.i.i.i383:                          ; preds = %.lr.ph.i.i31.i.i.i.i383.backedge, %.lr.ph.i.i31.i.i.i.i383.preheader
  %.sroa.0.010.i.i32.i.i.i.i384 = phi ptr [ %.pn22.i26.i.i.i.i298, %.lr.ph.i.i31.i.i.i.i383.preheader ], [ %.sroa.0.0.i.i34.i.i.i.i386, %.lr.ph.i.i31.i.i.i.i383.backedge ] ; 6 uses
  %.sroa.07.09.i.i33.i.i.i.i385 = phi ptr [ %.sroa.0.023.i25.i.i.i.i297, %.lr.ph.i.i31.i.i.i.i383.preheader ], [ %.sroa.0.010.i.i32.i.i.i.i384, %.lr.ph.i.i31.i.i.i.i383.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.07.09.i.i33.i.i.i.i385, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.010.i.i32.i.i.i.i384, i64 28, i1 false), !tbaa.struct !84
  %.sroa.0.0.i.i34.i.i.i.i386 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i384, i64 -28 ; 2 uses
  %i.ahc = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i384, i64 -24
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !83
  %i.ahe = fsub float %i.agh, %i.ahd              ; 2 uses
  %i.ahf = fcmp olt float %i.ahe, 0.000000e+00
  br i1 %i.ahf, label %.lr.ph.i.i31.i.i.i.i383.backedge, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i.i31.i.i.i.i383
  %i.ahg = fcmp oeq float %i.ahe, 0.000000e+00
  br i1 %i.ahg, label %.split1001, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1001:                                       ; preds = %bb.gq
  %i.ahh = load i16, ptr %.sroa.0.0.i.i34.i.i.i.i386, align 4, !tbaa !82
  %i.ahi = icmp ult i16 %.sroa.0949.0.copyload.pre, %i.ahh
  br i1 %i.ahi, label %.lr.ph.i.i31.i.i.i.i383.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i383.backedge:                 ; preds = %.split1001, %.lr.ph.i.i31.i.i.i.i383
  br label %.lr.ph.i.i31.i.i.i.i383, !llvm.loop !130

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i: ; preds = %bb.gq, %.split1001, %bb.gp, %.split1000
  %.sroa.07.0.lcssa.i.i28.i.i.i.i299 = phi ptr [ %.sroa.0.023.i25.i.i.i.i297, %.split1000 ], [ %.sroa.0.023.i25.i.i.i.i297, %bb.gp ], [ %.sroa.0.010.i.i32.i.i.i.i384, %.split1001 ], [ %.sroa.0.010.i.i32.i.i.i.i384, %bb.gq ] ; 4 uses
  store i16 %.sroa.0949.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i299, align 4, !tbaa !77
  %.sroa.6952.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i299, i64 2
  store i16 %.sroa.6952.0.copyload, ptr %.sroa.6952.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx, align 2
  %.sroa.6954.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i299, i64 4
  store float %i.agh, ptr %.sroa.6954.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx, align 4, !tbaa !76
  %.sroa.8957.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i299, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8957.0..sroa.07.0.lcssa.i.i28.i.i.i.i299.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8957, i64 20, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8957)
  br label %bb.gr

bb.gr:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i
  %.sroa.0.0.i29.i.i.i.i300 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i297, i64 28 ; 2 uses
  %.not.i30.i.i.i.i301 = icmp eq ptr %.sroa.0.0.i29.i.i.i.i300, %.val57.i292
  br i1 %.not.i30.i.i.i.i301, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i296, !llvm.loop !131

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i: ; preds = %bb.gr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i, %bb.gk, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  br i1 %.not.i.i.i.i69.i, label %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i382, label %bb.gs

_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i382: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303

bb.gs:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  %i.ahj = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.gt unwind label %bb.gu     ; 2 uses

bb.gt:                                            ; preds = %bb.gs
  %i.ahk = shl nuw nsw i64 %i.tg, 3               ; 3 uses
  %i.ahl = load ptr, ptr %i.ahj, align 8, !tbaa !48
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = invoke noundef ptr %i.ahn(ptr noundef nonnull align 8 dereferenceable(8) %i.ahj, i64 noundef %i.ahk, i64 noundef 4)
          to label %.lr.ph.preheader.i.i.i.i302 unwind label %bb.gu ; 5 uses

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #22
  unreachable

.lr.ph.preheader.i.i.i.i302:                      ; preds = %bb.gt
  store ptr %i.aho, ptr %25, align 8, !tbaa !92
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.aho, i64 %i.tg
  %i.ahs = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.ahr, ptr %i.ahs, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr align 4 %i.aho, i8 0, i64 %i.ahk, i1 false), !tbaa !93
  %scevgep.i.i.i69.i = getelementptr i8, ptr %i.aho, i64 %i.ahk
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303

_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303: ; preds = %.lr.ph.preheader.i.i.i.i302, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i382
  %.pre99.i304 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i382 ], [ %i.aho, %.lr.ph.preheader.i.i.i.i302 ] ; 2 uses
  %.0.lcssa.i.i.i.i305 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i382 ], [ %scevgep.i.i.i69.i, %.lr.ph.preheader.i.i.i.i302 ] ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i305, ptr %i.aht, align 8, !tbaa !232
  %i.ahu = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.ahx = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.ahy = getelementptr inbounds nuw i8, ptr %26, i64 4
  br label %bb.gy

.loopexit127.i314:                                ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i307, %bb.iw
  %.not.i.i.i.i315 = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i.i315, label %bb.ix, label %bb.gv

bb.gv:                                            ; preds = %.loopexit127.i314
  %i.ahz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.gw unwind label %bb.gx     ; 2 uses

bb.gw:                                            ; preds = %bb.gv
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !48
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 24
  %i.aic = load ptr, ptr %i.aib, align 8
  invoke void %i.aic(ptr noundef nonnull align 8 dereferenceable(8) %i.ahz, ptr noundef nonnull %i.aif)
          to label %bb.ix unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.aid = landingpad { ptr, i32 }
          catch ptr null
  %i.aie = extractvalue { ptr, i32 } %i.aid, 0
  call void @__clang_call_terminate(ptr %i.aie) #22
  unreachable

bb.gy:                                            ; preds = %.loopexit30.i337, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303
  %.pre1270.pre1297 = phi ptr [ %.0.lcssa.i.i.i.i305, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303 ], [ %.pre1270.pre1298, %.loopexit30.i337 ] ; 10 uses
  %.pre12701274 = phi ptr [ %.0.lcssa.i.i.i.i305, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303 ], [ %.pre1270, %.loopexit30.i337 ] ; 3 uses
  %i.aif = phi ptr [ %.pre99.i304, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303 ], [ %.pre.i3361272, %.loopexit30.i337 ] ; 12 uses
  %i.aig = phi ptr [ %.pre99.i304, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i303 ], [ %i.aph, %.loopexit30.i337 ] ; 5 uses
  %.not5.i.i.i.i.i306 = icmp eq ptr %i.aig, %.pre12701274
  br i1 %.not5.i.i.i.i.i306, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i307, label %.lr.ph.i.i.i.i70.preheader.i

.lr.ph.i.i.i.i70.preheader.i:                     ; preds = %bb.gy
  %i.aih = ptrtoaddr ptr %.pre12701274 to i64
  %i.aii = ptrtoaddr ptr %i.aig to i64
  %reass.sub1153 = sub i64 %i.aih, %i.aii
  %i.aij = and i64 %reass.sub1153, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.aig, i8 -1, i64 %i.aij, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i307

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i307: ; preds = %.lr.ph.i.i.i.i70.preheader.i, %bb.gy
  %.val.i308 = load ptr, ptr %59, align 8, !tbaa !62 ; 9 uses
  %.val54.i = load ptr, ptr %i.rm, align 8, !tbaa !63 ; 10 uses
  %.not67.i309 = icmp eq ptr %.val54.i, %.val.i308
  br i1 %.not67.i309, label %.loopexit127.i314, label %.lr.ph.i310

.lr.ph.i310:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i307
  %i.aik = ptrtoint ptr %.val54.i to i64          ; 2 uses
  %i.ail = ptrtoint ptr %.val.i308 to i64         ; 2 uses
  %i.aim = sub i64 %i.aik, %i.ail
  %i.ain = sdiv exact i64 %i.aim, 28
  br label %bb.gz

bb.gz:                                            ; preds = %bb.iw, %.lr.ph.i310
  %.04866.i = phi i64 [ 0, %.lr.ph.i310 ], [ %i.apg, %bb.iw ] ; 4 uses
  %i.aio = getelementptr inbounds nuw [28 x i8], ptr %.val.i308, i64 %.04866.i
  %i.aip = load i16, ptr %i.aio, align 4, !tbaa !82 ; 3 uses
  %i.aiq = zext i16 %i.aip to i64
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aig, i64 %i.aiq ; 6 uses
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !234 ; 3 uses
  %.not.i311 = icmp ne i32 %i.ais, -1
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = sub i64 %.04866.i, %i.ait
  %i.aiv = icmp ugt i64 %i.aiu, 65535
  %or.cond.i312 = and i1 %.not.i311, %i.aiv
  br i1 %or.cond.i312, label %bb.ha, label %bb.iw

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.aiw = load i32, ptr %i.air, align 4, !tbaa !234
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [28 x i8], ptr %.val.i308, i64 %i.aix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %26, ptr noundef nonnull align 4 dereferenceable(28) %i.aiy, i64 28, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.air, i64 4 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !235
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw [28 x i8], ptr %.val.i308, i64 %i.ajb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %27, ptr noundef nonnull align 4 dereferenceable(28) %i.ajc, i64 28, i1 false), !tbaa.struct !84
  %i.ajd = load float, ptr %i.ahu, align 4, !tbaa !221 ; 3 uses
  %i.aje = load float, ptr %i.ahv, align 4, !tbaa !221
  %i.ajf = fadd float %i.ajd, %i.aje
  %i.ajg = fmul float %i.ajf, 5.000000e-01        ; 3 uses
  %i.ajh = invoke { <2 x float>, <2 x float> } @_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f(ptr noundef nonnull align 4 dereferenceable(16) %i.ahw, ptr noundef nonnull align 4 dereferenceable(16) %i.ahx, float noundef 5.000000e-01)
          to label %bb.hb unwind label %.loopexit31.i316 ; 2 uses

bb.hb:                                            ; preds = %bb.ha
  %i.aji = extractvalue { <2 x float>, <2 x float> } %i.ajh, 0 ; 2 uses
  %i.ajj = extractvalue { <2 x float>, <2 x float> } %i.ajh, 1 ; 2 uses
  %i.ajk = load i32, ptr %i.air, align 4, !tbaa !234
  %i.ajl = sext i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds [28 x i8], ptr %.val.i308, i64 %i.ajl ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 28 ; 4 uses
  %.not.i.i72.i = icmp eq ptr %i.ajn, %.val54.i
  br i1 %.not.i.i72.i, label %bb.hg, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ajo = ptrtoint ptr %i.ajn to i64
  %i.ajp = sub i64 %i.aik, %i.ajo                 ; 3 uses
  %i.ajq = icmp sgt i64 %i.ajp, 28
  br i1 %i.ajq, label %bb.hd, label %bb.he, !prof !89

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ajm, ptr nonnull align 4 %i.ajn, i64 %i.ajp, i1 false)
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %i.ajr = icmp eq i64 %i.ajp, 28
  br i1 %i.ajr, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ajm, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.ajn, i64 28, i1 false), !tbaa.struct !84
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hb
  %i.ajs = getelementptr inbounds i8, ptr %.val54.i, i64 -28 ; 6 uses
  store ptr %i.ajs, ptr %i.rm, align 8, !tbaa !63
  %i.ajt = load ptr, ptr %i.eu, align 8, !tbaa !64 ; 2 uses
  %.not.i.i322 = icmp eq ptr %i.ajs, %i.ajt
  br i1 %.not.i.i322, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store i16 %i.aip, ptr %i.ajs, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i323 = getelementptr inbounds i8, ptr %.val54.i, i64 -24
  store float %i.ajd, ptr %.sroa.611.0..sroa_idx.i323, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i324 = getelementptr inbounds i8, ptr %.val54.i, i64 -20
  store float %i.ajg, ptr %.sroa.7.0..sroa_idx.i324, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i325 = getelementptr inbounds i8, ptr %.val54.i, i64 -16
  store <2 x float> %i.aji, ptr %.sroa.9.0..sroa_idx.i325, align 4
  %.sroa.10.0..sroa_idx.i326 = getelementptr inbounds i8, ptr %.val54.i, i64 -8
  store <2 x float> %i.ajj, ptr %.sroa.10.0..sroa_idx.i326, align 4
  store ptr %.val54.i, ptr %i.rm, align 8, !tbaa !63
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.hi:                                            ; preds = %bb.hg
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = sub i64 %i.aju, %i.ail                 ; 3 uses
  %i.ajw = icmp eq i64 %i.ajv, 9223372036854775800
  br i1 %i.ajw, label %.invoke.i368, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

.invoke.i368:                                     ; preds = %bb.hp, %bb.hi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i371 unwind label %.loopexit.split-lp32.i369

.cont.i371:                                       ; preds = %.invoke.i368
  unreachable

end_hunk_2
begin_hunk_3_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  br i1 %i.aoe, label %.noexc97.i353.thread, label %bb.il

.noexc97.i353.thread:                             ; preds = %bb.ik
  %i.aof = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i348, i64 -28
  br label %.loopexit1913

bb.il:                                            ; preds = %bb.ik
  %i.aog = fcmp oeq float %i.aod, 0.000000e+00
  br i1 %i.aog, label %.noexc97.i353, label %.noexc97.i353.thread1003

.noexc97.i353.thread1003:                         ; preds = %bb.il
  %i.aoh = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i348, i64 -28
  br label %bb.ir

.noexc97.i353:                                    ; preds = %bb.il
  %i.aoi = load i16, ptr %.0.i.i.i350, align 4, !tbaa !82
  %i.aoj = load i16, ptr %.sroa.028.0.i.i.i349.ph, align 4, !tbaa !82
  %i.aok = icmp ult i16 %i.aoi, %i.aoj
  %i.aol = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i348, i64 -28 ; 2 uses
  br i1 %i.aok, label %.loopexit1913, label %bb.ir

.loopexit1913:                                    ; preds = %.noexc97.i353, %.noexc97.i353.thread
  %i.aom = phi ptr [ %i.aof, %.noexc97.i353.thread ], [ %i.aol, %.noexc97.i353 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aom, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.028.0.i.i.i349.ph, i64 28, i1 false), !tbaa.struct !84
  %i.aon = icmp eq ptr %i.ame, %.sroa.028.0.i.i.i349.ph
  br i1 %i.aon, label %bb.im, label %bb.iq

bb.im:                                            ; preds = %.loopexit1913
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0.i.i.i350, i64 28
  %i.aop = ptrtoint ptr %i.aoo to i64
  %i.aoq = ptrtoint ptr %.sroa.11.0.i.i.i330 to i64
  %i.aor = sub i64 %i.aop, %i.aoq                 ; 4 uses
  %i.aos = icmp sgt i64 %i.aor, 28
  br i1 %i.aos, label %bb.in, label %bb.io, !prof !89

bb.in:                                            ; preds = %bb.im
  %i.aot = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i348, i64 -28
  %.neg46.i.i.i356 = udiv exact i64 %i.aor, 28
  %.neg46.neg.i.i.i357 = sub nsw i64 0, %.neg46.i.i.i356
  %i.aou = getelementptr inbounds [28 x i8], ptr %i.aot, i64 %.neg46.neg.i.i.i357
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aou, ptr nonnull align 4 %.sroa.11.0.i.i.i330, i64 %i.aor, i1 false)
  %.pre.i336.pre = load ptr, ptr %25, align 8, !tbaa !237
  %.pre1270.pre.pre = load ptr, ptr %i.aht, align 8, !tbaa !237
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.io:                                            ; preds = %bb.im
  %i.aov = icmp eq i64 %i.aor, 28
  br i1 %i.aov, label %bb.ip, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.ip:                                            ; preds = %bb.io
  %i.aow = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i348, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aow, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.11.0.i.i.i330, i64 28, i1 false), !tbaa.struct !84
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.iq:                                            ; preds = %.loopexit1913
  %i.aox = getelementptr inbounds i8, ptr %.sroa.028.0.i.i.i349.ph, i64 -28
  br label %.outer1912, !llvm.loop !6

bb.ir:                                            ; preds = %.noexc97.i353.thread1003, %.noexc97.i353
  %i.aoy = phi ptr [ %i.aoh, %.noexc97.i353.thread1003 ], [ %i.aol, %.noexc97.i353 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aoy, ptr noundef nonnull align 4 dereferenceable(28) %.0.i.i.i350, i64 28, i1 false), !tbaa.struct !84
  %i.aoz = icmp eq ptr %.sroa.11.0.i.i.i330, %.0.i.i.i350
  br i1 %i.aoz, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apa = getelementptr inbounds i8, ptr %.0.i.i.i350, i64 -28
  br label %bb.ik, !llvm.loop !6

.loopexit.split-lp.loopexit.split-lp.i331:        ; preds = %bb.iv, %bb.iu
  %lpad.loopexit.split-lp27.i332 = landingpad { ptr, i32 }
          cleanup
  %i.apb = mul nuw nsw i64 %.sroa.5.0.i.i.i329, 28
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i330, i64 noundef %i.apb) #20
  br label %.body.i318

bb.it:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %i.apc = icmp eq ptr %.sroa.11.0.i.i.i330, null
  br i1 %i.apc, label %bb.iu, label %bb.iv, !prof !236

bb.iu:                                            ; preds = %bb.it
  invoke fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %i.ame, ptr nonnull %i.amf, ptr nonnull %.val56.i, i64 noundef %i.amk, i64 noundef 2, ptr nonnull @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_)
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i331

bb.iv:                                            ; preds = %bb.it
  invoke fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %i.ame, ptr nonnull %i.amf, ptr nonnull %.val56.i, i64 noundef %i.amk, i64 noundef 2, ptr noundef nonnull %.sroa.11.0.i.i.i330, i64 noundef %.sroa.5.0.i.i.i329, i64 ptrtoint (ptr @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation11RotationKeyEEEEEbRKT_SA_ to i64))
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i331

_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i: ; preds = %bb.if, %bb.ir, %bb.iv, %bb.iu, %bb.ip, %bb.io, %bb.in, %bb.ii, %bb.ih, %bb.ig
  %.pre1270.pre = phi ptr [ %.pre1270.pre1297, %bb.ir ], [ %.pre1270.pre1297, %bb.ig ], [ %.pre1270.pre1297, %bb.iv ], [ %.pre1270.pre1297, %bb.iu ], [ %.pre1270.pre1297, %bb.ip ], [ %.pre1270.pre1297, %bb.io ], [ %.pre1270.pre.pre, %bb.in ], [ %.pre1270.pre1297, %bb.ii ], [ %.pre1270.pre1297, %bb.ih ], [ %.pre1270.pre1297, %bb.if ] ; 2 uses
  %.pre.i336 = phi ptr [ %i.aif, %bb.ir ], [ %i.aif, %bb.ig ], [ %i.aif, %bb.iv ], [ %i.aif, %bb.iu ], [ %i.aif, %bb.ip ], [ %i.aif, %bb.io ], [ %.pre.i336.pre, %bb.in ], [ %i.aif, %bb.ii ], [ %i.aif, %bb.ih ], [ %i.aif, %bb.if ] ; 2 uses
  %i.apd = mul nuw nsw i64 %.sroa.5.0.i.i.i329, 28
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i330, i64 noundef %i.apd) #20
  br label %.loopexit30.i337

.loopexit31.i316:                                 ; preds = %bb.ha
  %lpad.loopexit33.i317 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i318

.loopexit.split-lp32.i369:                        ; preds = %.invoke.i368
  %lpad.loopexit.split-lp.i370 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i318

.body.i318:                                       ; preds = %.loopexit.split-lp32.i369, %.loopexit31.i316, %.loopexit.split-lp.loopexit.split-lp.i331
  %.pn.i319 = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i332, %.loopexit.split-lp.loopexit.split-lp.i331 ], [ %lpad.loopexit33.i317, %.loopexit31.i316 ], [ %lpad.loopexit.split-lp.i370, %.loopexit.split-lp32.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.body

bb.iw:                                            ; preds = %bb.gz
  %i.ape = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  store i32 %i.ais, ptr %i.ape, align 4, !tbaa !235
  %i.apf = trunc i64 %.04866.i to i32
  store i32 %i.apf, ptr %i.air, align 4, !tbaa !234
  %i.apg = add nuw i64 %.04866.i, 1               ; 2 uses
  %exitcond.not.i313 = icmp eq i64 %i.apg, %i.ain
  br i1 %exitcond.not.i313, label %.loopexit127.i314, label %bb.gz, !llvm.loop !136

.loopexit30.i337:                                 ; preds = %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i
  %.pre1270.pre1298 = phi ptr [ %.pre1270.pre1297, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i ], [ %.pre1270.pre, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %.pre1270 = phi ptr [ %.pre12701274, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i ], [ %.pre1270.pre, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %.pre.i3361272 = phi ptr [ %i.aif, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i ], [ %.pre.i336, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %i.aph = phi ptr [ %i.aig, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i ], [ %.pre.i336, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.gy, !llvm.loop !137

bb.ix:                                            ; preds = %bb.gw, %.loopexit127.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %.val62.i413 = load ptr, ptr %60, align 8, !tbaa !224 ; 18 uses
  %i.api = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 9 uses
  %.val58.i414 = load ptr, ptr %i.api, align 8, !tbaa !224 ; 7 uses
  %.not.i.i.i415 = icmp eq ptr %.val62.i413, %.val58.i414
  br i1 %.not.i.i.i415, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.apj = ptrtoint ptr %.val58.i414 to i64
  %i.apk = ptrtoint ptr %.val62.i413 to i64       ; 2 uses
  %i.apl = sub i64 %i.apj, %i.apk                 ; 2 uses
  %i.apm = sdiv exact i64 %i.apl, 24
  %i.apn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.apm, i1 true)
  %i.apo = shl nuw nsw i64 %i.apn, 1
  %i.app = xor i64 %i.apo, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_T1_(ptr %.val62.i413, ptr %.val58.i414, i64 noundef %i.app, ptr nonnull readonly @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_)
          to label %.noexc562 unwind label %bb.mq

.noexc562:                                        ; preds = %bb.iy
  %i.apq = icmp sgt i64 %i.apl, 384
  %scevgep.i.i.i.i416 = getelementptr i8, ptr %.val62.i413, i64 24 ; 3 uses
  br i1 %i.apq, label %.lr.ph.i.i.i.i.i541.preheader, label %bb.jh

.lr.ph.i.i.i.i.i541.preheader:                    ; preds = %.noexc562
  %i.apr = getelementptr inbounds nuw i8, ptr %.val62.i413, i64 4
  br label %.lr.ph.i.i.i.i.i541

.lr.ph.i.i.i.i.i541:                              ; preds = %.lr.ph.i.i.i.i.i541.preheader, %bb.je
  %.sroa.0.023.i.idx.i.i.i.i542 = phi i64 [ %.sroa.0.023.i.add.i.i.i.i546, %bb.je ], [ 24, %.lr.ph.i.i.i.i.i541.preheader ] ; 4 uses
  %.pn22.i.i.i.i.i543 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i544, %bb.je ], [ %.val62.i413, %.lr.ph.i.i.i.i.i541.preheader ] ; 4 uses
  %.sroa.0.023.i.ptr.i.i.i.i544 = getelementptr inbounds nuw i8, ptr %.val62.i413, i64 %.sroa.0.023.i.idx.i.i.i.i542 ; 9 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i544, i64 4
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !88 ; 4 uses
  %i.apu = load float, ptr %i.apr, align 4, !tbaa !88
  %i.apv = fsub float %i.apt, %i.apu              ; 2 uses
  %i.apw = fcmp olt float %i.apv, 0.000000e+00
  br i1 %i.apw, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread, label %bb.iz

bb.iz:                                            ; preds = %.lr.ph.i.i.i.i.i541
  %i.apx = fcmp oeq float %i.apv, 0.000000e+00
  %.sroa.0958.0.copyload.pre = load i16, ptr %.sroa.0.023.i.ptr.i.i.i.i544, align 4, !tbaa !77 ; 4 uses
  br i1 %i.apx, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread1004

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848: ; preds = %bb.iz
  %i.apy = load i16, ptr %.val62.i413, align 4, !tbaa !87
  %i.apz = icmp ult i16 %.sroa.0958.0.copyload.pre, %i.apy
  br i1 %i.apz, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread1004

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread: ; preds = %.lr.ph.i.i.i.i.i541, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.023.i.ptr.i.i.i.i544, i64 24, i1 false), !tbaa.struct !78
  %i.aqa = icmp samesign ugt i64 %.sroa.0.023.i.idx.i.i.i.i542, 24
  br i1 %i.aqa, label %bb.ja, label %bb.jb, !prof !89

bb.ja:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i416, ptr noundef nonnull align 4 dereferenceable(1) %.val62.i413, i64 %.sroa.0.023.i.idx.i.i.i.i542, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

bb.jb:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread
  %i.aqb = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i543, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aqb, ptr noundef nonnull readonly align 4 dereferenceable(24) %.val62.i413, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i: ; preds = %bb.jb, %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.val62.i413, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.je

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread1004: ; preds = %bb.iz, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8966)
  %.sroa.6961.0..sroa.0.023.i.ptr.i.i.i.i544.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i544, i64 2
  %.sroa.6961.0.copyload = load i16, ptr %.sroa.6961.0..sroa.0.023.i.ptr.i.i.i.i544.sroa_idx, align 2
  %.sroa.8966.0..sroa.0.023.i.ptr.i.i.i.i544.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.ptr.i.i.i.i544, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8966, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8966.0..sroa.0.023.i.ptr.i.i.i.i544.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %i.aqc = getelementptr inbounds nuw i8, ptr %.pn22.i.i.i.i.i543, i64 4
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !88
  %i.aqe = fsub float %i.apt, %i.aqd              ; 2 uses
  %i.aqf = fcmp olt float %i.aqe, 0.000000e+00
  br i1 %i.aqf, label %.lr.ph.i.i.i.i.i.i558.preheader, label %bb.jc

bb.jc:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread1004
  %i.aqg = fcmp oeq float %i.aqe, 0.000000e+00
  br i1 %i.aqg, label %.split1005, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split1005:                                       ; preds = %bb.jc
  %i.aqh = load i16, ptr %.pn22.i.i.i.i.i543, align 4, !tbaa !87
  %i.aqi = icmp ult i16 %.sroa.0958.0.copyload.pre, %i.aqh
  br i1 %i.aqi, label %.lr.ph.i.i.i.i.i.i558.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i558.preheader:                  ; preds = %.split1005, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit848.thread1004
  br label %.lr.ph.i.i.i.i.i.i558

.lr.ph.i.i.i.i.i.i558:                            ; preds = %.lr.ph.i.i.i.i.i.i558.backedge, %.lr.ph.i.i.i.i.i.i558.preheader
  %.sroa.0.010.i.i.i.i.i.i559 = phi ptr [ %.pn22.i.i.i.i.i543, %.lr.ph.i.i.i.i.i.i558.preheader ], [ %.sroa.0.0.i.i.i.i.i.i561, %.lr.ph.i.i.i.i.i.i558.backedge ] ; 6 uses
  %.sroa.07.09.i.i.i.i.i.i560 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i544, %.lr.ph.i.i.i.i.i.i558.preheader ], [ %.sroa.0.010.i.i.i.i.i.i559, %.lr.ph.i.i.i.i.i.i558.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i.i.i.i.i560, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i.i.i.i.i559, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i.i.i.i.i561 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i559, i64 -24 ; 2 uses
  %i.aqj = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i559, i64 -20
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !88
  %i.aql = fsub float %i.apt, %i.aqk              ; 2 uses
  %i.aqm = fcmp olt float %i.aql, 0.000000e+00
  br i1 %i.aqm, label %.lr.ph.i.i.i.i.i.i558.backedge, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph.i.i.i.i.i.i558
  %i.aqn = fcmp oeq float %i.aql, 0.000000e+00
  br i1 %i.aqn, label %.split1006, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.split1006:                                       ; preds = %bb.jd
  %i.aqo = load i16, ptr %.sroa.0.0.i.i.i.i.i.i561, align 4, !tbaa !87
  %i.aqp = icmp ult i16 %.sroa.0958.0.copyload.pre, %i.aqo
  br i1 %i.aqp, label %.lr.ph.i.i.i.i.i.i558.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i558.backedge:                   ; preds = %.split1006, %.lr.ph.i.i.i.i.i.i558
  br label %.lr.ph.i.i.i.i.i.i558, !llvm.loop !138

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i: ; preds = %bb.jd, %.split1006, %bb.jc, %.split1005
  %.sroa.07.0.lcssa.i.i.i.i.i.i545 = phi ptr [ %.sroa.0.023.i.ptr.i.i.i.i544, %.split1005 ], [ %.sroa.0.023.i.ptr.i.i.i.i544, %bb.jc ], [ %.sroa.0.010.i.i.i.i.i.i559, %.split1006 ], [ %.sroa.0.010.i.i.i.i.i.i559, %bb.jd ] ; 4 uses
  store i16 %.sroa.0958.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i545, align 4, !tbaa !77
  %.sroa.6961.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i545, i64 2
  store i16 %.sroa.6961.0.copyload, ptr %.sroa.6961.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx, align 2
  %.sroa.6963.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i545, i64 4
  store float %i.apt, ptr %.sroa.6963.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx, align 4, !tbaa !76
  %.sroa.8966.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i545, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8966.0..sroa.07.0.lcssa.i.i.i.i.i.i545.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8966, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8966)
  br label %bb.je

bb.je:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i.i.i.i.i
  %.sroa.0.023.i.add.i.i.i.i546 = add nuw nsw i64 %.sroa.0.023.i.idx.i.i.i.i542, 24 ; 2 uses
  %.not.i.i.i.i.i547 = icmp eq i64 %.sroa.0.023.i.add.i.i.i.i546, 384
  br i1 %.not.i.i.i.i.i547, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i541, !llvm.loop !139

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i: ; preds = %bb.je
  %i.aqq = getelementptr inbounds nuw i8, ptr %.val62.i413, i64 384 ; 2 uses
  %.not7.i.i.i.i.i548 = icmp eq ptr %i.aqq, %.val58.i414
  br i1 %.not7.i.i.i.i.i548, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i549

.lr.ph.i13.i.i.i.i549:                            ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i
  %.sroa.0.08.i.i.i.i.i550 = phi ptr [ %i.arg, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i ], [ %i.aqq, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8975)
  %i.aqr = load <2 x i16>, ptr %.sroa.0.08.i.i.i.i.i550, align 4
  %.sroa.0967.0.copyload = load i16, ptr %.sroa.0.08.i.i.i.i.i550, align 4, !tbaa !77 ; 2 uses
  %.sroa.6972.0..sroa.0.08.i.i.i.i.i550.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i550, i64 4
  %.sroa.6972.0.copyload = load float, ptr %.sroa.6972.0..sroa.0.08.i.i.i.i.i550.sroa_idx, align 4, !tbaa !76 ; 3 uses
  %.sroa.8975.0..sroa.0.08.i.i.i.i.i550.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i550, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8975, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8975.0..sroa.0.08.i.i.i.i.i550.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %.sroa.0.08.i.i.i.i.i.i551 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i550, i64 -24 ; 2 uses
  %i.aqs = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i550, i64 -20
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !88
  %i.aqu = fsub float %.sroa.6972.0.copyload, %i.aqt ; 2 uses
  %i.aqv = fcmp olt float %i.aqu, 0.000000e+00
  br i1 %i.aqv, label %.lr.ph.i.i17.i.i.i.i554.preheader, label %bb.jf

bb.jf:                                            ; preds = %.lr.ph.i13.i.i.i.i549
  %i.aqw = fcmp oeq float %i.aqu, 0.000000e+00
  br i1 %i.aqw, label %.split1007, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split1007:                                       ; preds = %bb.jf
  %i.aqx = load i16, ptr %.sroa.0.08.i.i.i.i.i.i551, align 4, !tbaa !87
  %i.aqy = icmp ult i16 %.sroa.0967.0.copyload, %i.aqx
  br i1 %i.aqy, label %.lr.ph.i.i17.i.i.i.i554.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i554.preheader:                ; preds = %.split1007, %.lr.ph.i13.i.i.i.i549
  br label %.lr.ph.i.i17.i.i.i.i554

.lr.ph.i.i17.i.i.i.i554:                          ; preds = %.lr.ph.i.i17.i.i.i.i554.backedge, %.lr.ph.i.i17.i.i.i.i554.preheader
  %.sroa.0.010.i.i18.i.i.i.i555 = phi ptr [ %.sroa.0.08.i.i.i.i.i.i551, %.lr.ph.i.i17.i.i.i.i554.preheader ], [ %.sroa.0.0.i.i20.i.i.i.i557, %.lr.ph.i.i17.i.i.i.i554.backedge ] ; 6 uses
  %.sroa.07.09.i.i19.i.i.i.i556 = phi ptr [ %.sroa.0.08.i.i.i.i.i550, %.lr.ph.i.i17.i.i.i.i554.preheader ], [ %.sroa.0.010.i.i18.i.i.i.i555, %.lr.ph.i.i17.i.i.i.i554.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i19.i.i.i.i556, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i18.i.i.i.i555, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i20.i.i.i.i557 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i555, i64 -24 ; 2 uses
  %i.aqz = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i.i555, i64 -20
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !88
  %i.arb = fsub float %.sroa.6972.0.copyload, %i.ara ; 2 uses
  %i.arc = fcmp olt float %i.arb, 0.000000e+00
  br i1 %i.arc, label %.lr.ph.i.i17.i.i.i.i554.backedge, label %bb.jg

bb.jg:                                            ; preds = %.lr.ph.i.i17.i.i.i.i554
  %i.ard = fcmp oeq float %i.arb, 0.000000e+00
  br i1 %i.ard, label %.split1008, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split1008:                                       ; preds = %bb.jg
  %i.are = load i16, ptr %.sroa.0.0.i.i20.i.i.i.i557, align 4, !tbaa !87
  %i.arf = icmp ult i16 %.sroa.0967.0.copyload, %i.are
  br i1 %i.arf, label %.lr.ph.i.i17.i.i.i.i554.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i554.backedge:                 ; preds = %.split1008, %.lr.ph.i.i17.i.i.i.i554
  br label %.lr.ph.i.i17.i.i.i.i554, !llvm.loop !138

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i: ; preds = %bb.jg, %.split1008, %bb.jf, %.split1007
  %.sroa.07.0.lcssa.i.i15.i.i.i.i552 = phi ptr [ %.sroa.0.08.i.i.i.i.i550, %.split1007 ], [ %.sroa.0.08.i.i.i.i.i550, %bb.jf ], [ %.sroa.0.010.i.i18.i.i.i.i555, %.split1008 ], [ %.sroa.0.010.i.i18.i.i.i.i555, %bb.jg ] ; 3 uses
  store <2 x i16> %i.aqr, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i552, align 4
  %.sroa.6972.0..sroa.07.0.lcssa.i.i15.i.i.i.i552.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i552, i64 4
  store float %.sroa.6972.0.copyload, ptr %.sroa.6972.0..sroa.07.0.lcssa.i.i15.i.i.i.i552.sroa_idx, align 4, !tbaa !76
  %.sroa.8975.0..sroa.07.0.lcssa.i.i15.i.i.i.i552.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i552, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8975.0..sroa.07.0.lcssa.i.i15.i.i.i.i552.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8975, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8975)
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i550, i64 24 ; 2 uses
  %.not.i16.i.i.i.i553 = icmp eq ptr %i.arg, %.val58.i414
  br i1 %.not.i16.i.i.i.i553, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i549, !llvm.loop !140

bb.jh:                                            ; preds = %.noexc562
  %.not21.i23.i.i.i.i417 = icmp eq ptr %scevgep.i.i.i.i416, %.val58.i414
  br i1 %.not21.i23.i.i.i.i417, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i418.preheader

.lr.ph.i24.i.i.i.i418.preheader:                  ; preds = %bb.jh
  %i.arh = getelementptr inbounds nuw i8, ptr %.val62.i413, i64 4
  br label %.lr.ph.i24.i.i.i.i418

.lr.ph.i24.i.i.i.i418:                            ; preds = %.lr.ph.i24.i.i.i.i418.preheader, %bb.jo
  %.sroa.0.023.i25.i.i.i.i419 = phi ptr [ %.sroa.0.0.i29.i.i.i.i422, %bb.jo ], [ %scevgep.i.i.i.i416, %.lr.ph.i24.i.i.i.i418.preheader ] ; 11 uses
  %.pn22.i26.i.i.i.i420 = phi ptr [ %.sroa.0.023.i25.i.i.i.i419, %bb.jo ], [ %.val62.i413, %.lr.ph.i24.i.i.i.i418.preheader ] ; 5 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i419, i64 4
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !88 ; 4 uses
  %i.ark = load float, ptr %i.arh, align 4, !tbaa !88
  %i.arl = fsub float %i.arj, %i.ark              ; 2 uses
  %i.arm = fcmp olt float %i.arl, 0.000000e+00
  br i1 %i.arm, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread, label %bb.ji

bb.ji:                                            ; preds = %.lr.ph.i24.i.i.i.i418
  %i.arn = fcmp oeq float %i.arl, 0.000000e+00
  %.sroa.0976.0.copyload.pre = load i16, ptr %.sroa.0.023.i25.i.i.i.i419, align 4, !tbaa !77 ; 4 uses
  br i1 %i.arn, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread1009

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843: ; preds = %bb.ji
  %i.aro = load i16, ptr %.val62.i413, align 4, !tbaa !87
  %i.arp = icmp ult i16 %.sroa.0976.0.copyload.pre, %i.aro
  br i1 %i.arp, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread1009

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread: ; preds = %.lr.ph.i24.i.i.i.i418, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %18, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.023.i25.i.i.i.i419, i64 24, i1 false), !tbaa.struct !78
  %i.arq = ptrtoint ptr %.sroa.0.023.i25.i.i.i.i419 to i64
  %i.arr = sub i64 %i.arq, %i.apk                 ; 4 uses
  %i.ars = icmp sgt i64 %i.arr, 24
  br i1 %i.ars, label %bb.jj, label %bb.jk, !prof !89

bb.jj:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread
  %i.art = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i420, i64 48
  %.neg27.i36.i.i.i.i539 = udiv exact i64 %i.arr, 24
  %.neg27.neg.i37.i.i.i.i540 = sub nsw i64 0, %.neg27.i36.i.i.i.i539
  %i.aru = getelementptr inbounds [24 x i8], ptr %i.art, i64 %.neg27.neg.i37.i.i.i.i540
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aru, ptr noundef nonnull align 4 dereferenceable(1) %.val62.i413, i64 %i.arr, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.jk:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread
  %i.arv = icmp eq i64 %i.arr, 24
  br i1 %i.arv, label %bb.jl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.jl:                                            ; preds = %bb.jk
  %i.arw = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i420, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.arw, ptr noundef nonnull readonly align 4 dereferenceable(24) %.val62.i413, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i: ; preds = %bb.jl, %bb.jk, %bb.jj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.val62.i413, ptr noundef nonnull align 4 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.jo

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread1009: ; preds = %bb.ji, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8984)
  %.sroa.6979.0..sroa.0.023.i25.i.i.i.i419.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i419, i64 2
  %.sroa.6979.0.copyload = load i16, ptr %.sroa.6979.0..sroa.0.023.i25.i.i.i.i419.sroa_idx, align 2
  %.sroa.8984.0..sroa.0.023.i25.i.i.i.i419.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i419, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8984, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8984.0..sroa.0.023.i25.i.i.i.i419.sroa_idx, i64 16, i1 false), !tbaa.struct !223
  %i.arx = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i420, i64 4
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !88
  %i.arz = fsub float %i.arj, %i.ary              ; 2 uses
  %i.asa = fcmp olt float %i.arz, 0.000000e+00
  br i1 %i.asa, label %.lr.ph.i.i31.i.i.i.i535.preheader, label %bb.jm

bb.jm:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread1009
  %i.asb = fcmp oeq float %i.arz, 0.000000e+00
  br i1 %i.asb, label %.split1010, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1010:                                       ; preds = %bb.jm
  %i.asc = load i16, ptr %.pn22.i26.i.i.i.i420, align 4, !tbaa !87
  %i.asd = icmp ult i16 %.sroa.0976.0.copyload.pre, %i.asc
  br i1 %i.asd, label %.lr.ph.i.i31.i.i.i.i535.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i535.preheader:                ; preds = %.split1010, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit843.thread1009
  br label %.lr.ph.i.i31.i.i.i.i535

.lr.ph.i.i31.i.i.i.i535:                          ; preds = %.lr.ph.i.i31.i.i.i.i535.backedge, %.lr.ph.i.i31.i.i.i.i535.preheader
  %.sroa.0.010.i.i32.i.i.i.i536 = phi ptr [ %.pn22.i26.i.i.i.i420, %.lr.ph.i.i31.i.i.i.i535.preheader ], [ %.sroa.0.0.i.i34.i.i.i.i538, %.lr.ph.i.i31.i.i.i.i535.backedge ] ; 6 uses
  %.sroa.07.09.i.i33.i.i.i.i537 = phi ptr [ %.sroa.0.023.i25.i.i.i.i419, %.lr.ph.i.i31.i.i.i.i535.preheader ], [ %.sroa.0.010.i.i32.i.i.i.i536, %.lr.ph.i.i31.i.i.i.i535.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i33.i.i.i.i537, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i32.i.i.i.i536, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i34.i.i.i.i538 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i536, i64 -24 ; 2 uses
  %i.ase = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i536, i64 -20
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !88
  %i.asg = fsub float %i.arj, %i.asf              ; 2 uses
  %i.ash = fcmp olt float %i.asg, 0.000000e+00
  br i1 %i.ash, label %.lr.ph.i.i31.i.i.i.i535.backedge, label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.i.i31.i.i.i.i535
  %i.asi = fcmp oeq float %i.asg, 0.000000e+00
  br i1 %i.asi, label %.split1011, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1011:                                       ; preds = %bb.jn
  %i.asj = load i16, ptr %.sroa.0.0.i.i34.i.i.i.i538, align 4, !tbaa !87
  %i.ask = icmp ult i16 %.sroa.0976.0.copyload.pre, %i.asj
  br i1 %i.ask, label %.lr.ph.i.i31.i.i.i.i535.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i535.backedge:                 ; preds = %.split1011, %.lr.ph.i.i31.i.i.i.i535
  br label %.lr.ph.i.i31.i.i.i.i535, !llvm.loop !138

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i: ; preds = %bb.jn, %.split1011, %bb.jm, %.split1010
  %.sroa.07.0.lcssa.i.i28.i.i.i.i421 = phi ptr [ %.sroa.0.023.i25.i.i.i.i419, %.split1010 ], [ %.sroa.0.023.i25.i.i.i.i419, %bb.jm ], [ %.sroa.0.010.i.i32.i.i.i.i536, %.split1011 ], [ %.sroa.0.010.i.i32.i.i.i.i536, %bb.jn ] ; 4 uses
  store i16 %.sroa.0976.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i421, align 4, !tbaa !77
  %.sroa.6979.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i421, i64 2
  store i16 %.sroa.6979.0.copyload, ptr %.sroa.6979.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx, align 2
  %.sroa.6981.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i421, i64 4
  store float %i.arj, ptr %.sroa.6981.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx, align 4, !tbaa !76
  %.sroa.8984.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i421, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8984.0..sroa.07.0.lcssa.i.i28.i.i.i.i421.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8984, i64 16, i1 false), !tbaa.struct !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8984)
  br label %bb.jo

bb.jo:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i
  %.sroa.0.0.i29.i.i.i.i422 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i419, i64 24 ; 2 uses
  %.not.i30.i.i.i.i423 = icmp eq ptr %.sroa.0.0.i29.i.i.i.i422, %.val58.i414
  br i1 %.not.i30.i.i.i.i423, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i418, !llvm.loop !139

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i: ; preds = %bb.jo, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i, %bb.jh, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  br i1 %.not.i.i.i.i69.i, label %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i534, label %bb.jp

_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i534: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427

bb.jp:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  %i.asl = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.jq unwind label %bb.jr     ; 2 uses

bb.jq:                                            ; preds = %bb.jp
  %i.asm = shl nuw nsw i64 %i.tg, 3               ; 3 uses
  %i.asn = load ptr, ptr %i.asl, align 8, !tbaa !48
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  %i.asp = load ptr, ptr %i.aso, align 8
  %i.asq = invoke noundef ptr %i.asp(ptr noundef nonnull align 8 dereferenceable(8) %i.asl, i64 noundef %i.asm, i64 noundef 4)
          to label %.lr.ph.preheader.i.i.i.i425 unwind label %bb.jr ; 5 uses

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.asr = landingpad { ptr, i32 }
          catch ptr null
  %i.ass = extractvalue { ptr, i32 } %i.asr, 0
  call void @__clang_call_terminate(ptr %i.ass) #22
  unreachable

.lr.ph.preheader.i.i.i.i425:                      ; preds = %bb.jq
  store ptr %i.asq, ptr %20, align 8, !tbaa !92
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.asq, i64 %i.tg
  %i.asu = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.ast, ptr %i.asu, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr align 4 %i.asq, i8 0, i64 %i.asm, i1 false), !tbaa !93
  %scevgep.i.i.i70.i426 = getelementptr i8, ptr %i.asq, i64 %i.asm
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427

_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427: ; preds = %.lr.ph.preheader.i.i.i.i425, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i534
  %.pre99.i428 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i534 ], [ %i.asq, %.lr.ph.preheader.i.i.i.i425 ]
  %.0.lcssa.i.i.i.i429 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i534 ], [ %scevgep.i.i.i70.i426, %.lr.ph.preheader.i.i.i.i425 ] ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i429, ptr %i.asv, align 8, !tbaa !232
  %i.asw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.asx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.asy = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.asz = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.ata = getelementptr inbounds nuw i8, ptr %21, i64 4
  br label %bb.jv

.loopexit127.i441:                                ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432, %bb.lt
  %.val55.i4341198 = phi ptr [ %.val55.i434, %bb.lt ], [ %.val.i433, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432 ] ; 2 uses
  %i.atb = load ptr, ptr %20, align 8, !tbaa !92  ; 2 uses
  %.not.i.i.i.i442 = icmp eq ptr %i.atb, null
  br i1 %.not.i.i.i.i442, label %bb.lu, label %bb.js

bb.js:                                            ; preds = %.loopexit127.i441
  %i.atc = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.jt unwind label %bb.ju     ; 2 uses

bb.jt:                                            ; preds = %bb.js
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !48
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  %i.atf = load ptr, ptr %i.ate, align 8
  invoke void %i.atf(ptr noundef nonnull align 8 dereferenceable(8) %i.atc, ptr noundef nonnull %i.atb)
          to label %bb.lu unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.atg = landingpad { ptr, i32 }
          catch ptr null
  %i.ath = extractvalue { ptr, i32 } %i.atg, 0
  call void @__clang_call_terminate(ptr %i.ath) #22
  unreachable

bb.jv:                                            ; preds = %.loopexit30.i471, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427
  %.pre12761277 = phi ptr [ %.0.lcssa.i.i.i.i429, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427 ], [ %.pre1276, %.loopexit30.i471 ] ; 3 uses
  %i.ati = phi ptr [ %.pre99.i428, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i427 ], [ %i.bah, %.loopexit30.i471 ] ; 5 uses
  %.not5.i.i.i.i.i430 = icmp eq ptr %i.ati, %.pre12761277
  br i1 %.not5.i.i.i.i.i430, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432, label %.lr.ph.i.i.i.i71.preheader.i431

.lr.ph.i.i.i.i71.preheader.i431:                  ; preds = %bb.jv
  %i.atj = ptrtoaddr ptr %.pre12761277 to i64
  %i.atk = ptrtoaddr ptr %i.ati to i64
  %reass.sub1154 = sub i64 %i.atj, %i.atk
  %i.atl = and i64 %reass.sub1154, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ati, i8 -1, i64 %i.atl, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432: ; preds = %.lr.ph.i.i.i.i71.preheader.i431, %bb.jv
  %.val.i433 = load ptr, ptr %60, align 8, !tbaa !67 ; 12 uses
  %.val55.i434 = load ptr, ptr %i.api, align 8, !tbaa !68 ; 11 uses
  %.not67.i435 = icmp eq ptr %.val55.i434, %.val.i433 ; 2 uses
  br i1 %.not67.i435, label %.loopexit127.i441, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i432
  %i.atm = ptrtoint ptr %.val55.i434 to i64       ; 2 uses
  %i.atn = ptrtoint ptr %.val.i433 to i64         ; 2 uses
  %i.ato = sub i64 %i.atm, %i.atn
  %i.atp = sdiv exact i64 %i.ato, 24
  br label %bb.jw

bb.jw:                                            ; preds = %bb.lt, %.lr.ph.i436
  %.04966.i437 = phi i64 [ 0, %.lr.ph.i436 ], [ %i.bag, %bb.lt ] ; 4 uses
  %i.atq = getelementptr inbounds nuw [24 x i8], ptr %.val.i433, i64 %.04966.i437
  %i.atr = load i16, ptr %i.atq, align 4, !tbaa !87 ; 3 uses
  %i.ats = zext i16 %i.atr to i64
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.ati, i64 %i.ats ; 6 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !234 ; 3 uses
  %.not.i438 = icmp ne i32 %i.atu, -1
  %i.atv = sext i32 %i.atu to i64
  %i.atw = sub i64 %.04966.i437, %i.atv
  %i.atx = icmp ugt i64 %i.atw, 65535
  %or.cond.i439 = and i1 %.not.i438, %i.atx
  br i1 %or.cond.i439, label %bb.jx, label %bb.lt

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.aty = load i32, ptr %i.att, align 4, !tbaa !234
  %i.atz = sext i32 %i.aty to i64
  %i.aua = getelementptr inbounds nuw [24 x i8], ptr %.val.i433, i64 %i.atz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(24) %i.aua, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.aub = getelementptr inbounds nuw i8, ptr %i.att, i64 4 ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !235
  %i.aud = sext i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw [24 x i8], ptr %.val.i433, i64 %i.aud
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %22, ptr noundef nonnull align 4 dereferenceable(24) %i.aue, i64 24, i1 false), !tbaa.struct !78
  %i.auf = load float, ptr %i.asw, align 4, !tbaa !225 ; 3 uses
  %i.aug = load float, ptr %i.asx, align 4, !tbaa !225
  %i.auh = fadd float %i.auf, %i.aug
  %i.aui = fmul float %i.auh, 5.000000e-01        ; 3 uses
  %i.auj = invoke { <2 x float>, float } @_ZN3ozz9animation7offline9LerpScaleERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.asy, ptr noundef nonnull align 4 dereferenceable(12) %i.asz, float noundef 5.000000e-01)
          to label %bb.jy unwind label %.loopexit31.i443 ; 2 uses

bb.jy:                                            ; preds = %bb.jx
  %.fca.0.extract.i447 = extractvalue { <2 x float>, float } %i.auj, 0 ; 2 uses
  %.fca.1.extract.i448 = extractvalue { <2 x float>, float } %i.auj, 1 ; 2 uses
  %i.auk = load i32, ptr %i.att, align 4, !tbaa !234
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds [24 x i8], ptr %.val.i433, i64 %i.aul ; 3 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 24 ; 4 uses
  %.not.i.i73.i451 = icmp eq ptr %i.aun, %.val55.i434
  br i1 %.not.i.i73.i451, label %bb.kd, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = sub i64 %i.atm, %i.auo                 ; 3 uses
  %i.auq = icmp sgt i64 %i.aup, 24
  br i1 %i.auq, label %bb.ka, label %bb.kb, !prof !89

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aum, ptr nonnull align 4 %i.aun, i64 %i.aup, i1 false)
  br label %bb.kd

bb.kb:                                            ; preds = %bb.jz
  %i.aur = icmp eq i64 %i.aup, 24
  br i1 %i.aur, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aum, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.aun, i64 24, i1 false), !tbaa.struct !78
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb, %bb.ka, %bb.jy
  %i.aus = getelementptr inbounds i8, ptr %.val55.i434, i64 -24 ; 6 uses
  store ptr %i.aus, ptr %i.api, align 8, !tbaa !68
  %i.aut = load ptr, ptr %i.ev, align 8, !tbaa !69 ; 2 uses
  %.not.i.i452 = icmp eq ptr %i.aus, %i.aut
  br i1 %.not.i.i452, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  store i16 %i.atr, ptr %i.aus, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i453 = getelementptr inbounds i8, ptr %.val55.i434, i64 -20
  store float %i.auf, ptr %.sroa.611.0..sroa_idx.i453, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i454 = getelementptr inbounds i8, ptr %.val55.i434, i64 -16
  store float %i.aui, ptr %.sroa.7.0..sroa_idx.i454, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i455 = getelementptr inbounds i8, ptr %.val55.i434, i64 -12
  store <2 x float> %.fca.0.extract.i447, ptr %.sroa.9.0..sroa_idx.i455, align 4
  %.sroa.10.0..sroa_idx.i456 = getelementptr inbounds i8, ptr %.val55.i434, i64 -4
  store float %.fca.1.extract.i448, ptr %.sroa.10.0..sroa_idx.i456, align 4, !tbaa !76
  store ptr %.val55.i434, ptr %i.api, align 8, !tbaa !68
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.kf:                                            ; preds = %bb.kd
  %i.auu = ptrtoint ptr %i.aus to i64
  %i.auv = sub i64 %i.auu, %i.atn                 ; 3 uses
  %i.auw = icmp eq i64 %i.auv, 9223372036854775800
  br i1 %i.auw, label %.invoke.i517, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

.invoke.i517:                                     ; preds = %bb.km, %bb.kf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i520 unwind label %.loopexit.split-lp32.i518

.cont.i520:                                       ; preds = %.invoke.i517
  unreachable

end_hunk_3
begin_hunk_4_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !177
  br label %bb.uh

bb.mo:                                            ; preds = %bb.de
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mp:                                            ; preds = %bb.gb
  %i.bct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mq:                                            ; preds = %bb.iy
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mr:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit
  %i.bcv = ptrtoint ptr %.val142 to i64
  %i.bcw = ptrtoint ptr %.val141 to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw
  %i.bcy = sdiv exact i64 %i.bcx, 24              ; 2 uses
  %i.bcz = icmp ugt i64 %i.bcy, 4294967295
  br i1 %i.bcz, label %bb.ms, label %bb.mv

bb.ms:                                            ; preds = %bb.mr
  %i.bda = ptrtoint ptr %.val25.i to i64
  %i.bdb = ptrtoint ptr %.val27.i to i64
  %i.bdc = sub i64 %i.bda, %i.bdb
  %i.bdd = sdiv exact i64 %i.bdc, 28
  %i.bde = icmp ugt i64 %i.bdd, 4294967295
  br i1 %i.bde, label %bb.mt, label %bb.mv

bb.mt:                                            ; preds = %bb.ms
  %i.bdf = ptrtoint ptr %.val55.i4341198 to i64
  %i.bdg = ptrtoint ptr %.val.i433 to i64
  %i.bdh = sub i64 %i.bdf, %i.bdg
  %i.bdi = sdiv exact i64 %i.bdh, 24
  %i.bdj = icmp ugt i64 %i.bdi, 4294967295
  br i1 %i.bdj, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  store ptr null, ptr %0, align 8, !tbaa !177
  br label %bb.uh

bb.mv:                                            ; preds = %bb.mr, %bb.ms, %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20
  %i.bdk = load float, ptr %1, align 4, !tbaa !242 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bdl = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %62, i8 0, i64 48, i1 false), !alias.scope !243
  store float 1.000000e+00, ptr %i.bdl, align 8, !tbaa !251, !alias.scope !243
  %i.bdm = fcmp ole float %i.bdk, 0.000000e+00
  %or.cond.i575 = or i1 %.not.i.i.i.i69.i, %i.bdm
  br i1 %or.cond.i575, label %bb.oi, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bdn = fdiv float %i.o, %i.bdk                ; 2 uses
  %i.bdo = fcmp olt float %i.bdn, 1.000000e+00
  %i.bdp = select i1 %i.bdo, float 1.000000e+00, float %i.bdn
  %i.bdq = fptoui float %i.bdp to i64             ; 3 uses
  %.not3.i = icmp eq i64 %i.bdq, 0
  br i1 %.not3.i, label %._crit_edge.thread.i, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %bb.mw
  %i.bdr = uitofp i64 %i.bdq to float
  %i.bds = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bdu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bdv = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bdx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bdz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bea = shl nuw nsw i64 %i.tg, 1
  %i.beb = add nsw i64 %i.bea, -1
  %i.bec = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 4 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 5 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %62, i64 40 ; 2 uses
  br label %bb.my

._crit_edge.i583:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i
  %.pre6.i = load ptr, ptr %i.bed, align 8, !tbaa !101, !alias.scope !243
  %.pre8.i = load ptr, ptr %i.bec, align 8, !tbaa !102, !alias.scope !243
  %.pre9.i = load ptr, ptr %62, align 8, !tbaa !252, !alias.scope !243
  %.pre11.i = load ptr, ptr %i.bee, align 8, !tbaa !252, !alias.scope !243
  %i.beg = ptrtoint ptr %.pre6.i to i64
  %i.beh = ptrtoint ptr %.pre8.i to i64
  %i.bei = sub i64 %i.beg, %i.beh
  %i.bej = ashr exact i64 %i.bei, 2
  %i.bek = lshr i64 %i.bej, 1
  %i.bel = icmp eq ptr %.pre9.i, %.pre11.i
  %i.bem = uitofp nneg i64 %i.bek to float
  %i.ben = fdiv float 1.000000e+00, %i.bem
  %cond.fr.i = freeze i1 %i.bel
  br i1 %cond.fr.i, label %._crit_edge.thread.i, label %bb.mx

._crit_edge.thread.i:                             ; preds = %._crit_edge.i583, %bb.mw
  br label %bb.mx

bb.mx:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i583
  %i.beo = phi float [ 1.000000e+00, %._crit_edge.thread.i ], [ %i.ben, %._crit_edge.i583 ]
  store float %i.beo, ptr %i.bdl, align 8, !tbaa !251, !alias.scope !243
  %.pre1280 = load float, ptr %1, align 4, !tbaa !242
  br label %bb.oi

bb.my:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i, %.lr.ph.i576
  %.0262.i = phi i64 [ 0, %.lr.ph.i576 ], [ %i.bep, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i ]
  %i.bep = add nuw i64 %.0262.i, 1                ; 3 uses
  %i.beq = uitofp i64 %i.bep to float
  %i.ber = fmul float %i.o, %i.beq
  %i.bes = fdiv float %i.ber, %i.bdr
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !243
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false), !alias.scope !253, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !254
  %i.bet = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.mz unwind label %bb.na, !noalias !253 ; 2 uses

bb.mz:                                            ; preds = %bb.my
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !48, !noalias !253
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8, !noalias !253
  %i.bex = invoke noundef ptr %i.bew(ptr noundef nonnull align 8 dereferenceable(8) %i.bet, i64 noundef %i.bds, i64 noundef 4)
          to label %bb.nb unwind label %bb.na, !noalias !253 ; 8 uses

bb.na:                                            ; preds = %bb.mz, %bb.my
  %i.bey = landingpad { ptr, i32 }
          catch ptr null
  %i.bez = extractvalue { ptr, i32 } %i.bey, 0
  call void @__clang_call_terminate(ptr %i.bez) #22, !noalias !253
  unreachable

bb.nb:                                            ; preds = %bb.mz
  store ptr %i.bex, ptr %13, align 8, !tbaa !102, !noalias !254
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.bex, i64 %i.tg
  store ptr %i.bfa, ptr %i.bdt, align 8, !tbaa !103, !noalias !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bex, i8 0, i64 %i.bds, i1 false), !tbaa !93, !noalias !253
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bex, i64 %i.bds
  store ptr %scevgep.i.i.i.i.i, ptr %i.bdu, align 8, !tbaa !101, !noalias !254
  br i1 %.not15.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.nb, %bb.nc
  %.044.i.i = phi i64 [ %i.bfj, %bb.nc ], [ 0, %bb.nb ] ; 4 uses
  %i.bfb = getelementptr inbounds nuw [24 x i8], ptr %.val141, i64 %.044.i.i ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 4
  %i.bfd = load float, ptr %i.bfc, align 4, !tbaa !75, !noalias !254
  %i.bfe = fcmp ugt float %i.bfd, %i.bes
  br i1 %i.bfe, label %._crit_edge.i.i, label %bb.nc

bb.nc:                                            ; preds = %.lr.ph.i.i
  %i.bff = trunc i64 %.044.i.i to i32
  %i.bfg = load i16, ptr %i.bfb, align 4, !tbaa !74, !noalias !254
  %i.bfh = zext i16 %i.bfg to i64
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.bex, i64 %i.bfh
  store i32 %i.bff, ptr %i.bfi, align 4, !tbaa !93, !noalias !253
  store i64 %.044.i.i, ptr %i.bdv, align 8, !tbaa !256, !alias.scope !253, !noalias !243
  %i.bfj = add nuw i64 %.044.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bfj, %i.bcy
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.nc, %.lr.ph.i.i, %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !254
  store ptr %i.bex, ptr %14, align 8, !noalias !254
  store i64 %i.tg, ptr %i.bdw, align 8, !noalias !254
  %i.bfk = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.nd unwind label %bb.nn, !noalias !253 ; 2 uses

bb.nd:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !254
  %.not55.i.i = icmp eq i64 %i.bfk, 0
  br i1 %.not55.i.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.bfk)
          to label %._crit_edge47.i.i unwind label %bb.no

._crit_edge47.i.i:                                ; preds = %bb.ne
  %.pre.i.i = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243
  %.pre48.i.i = load ptr, ptr %i.bdx, align 8, !tbaa !105, !alias.scope !253, !noalias !243
  %i.bfl = ptrtoint ptr %.pre48.i.i to i64
  br label %bb.nf

bb.nf:                                            ; preds = %._crit_edge47.i.i, %bb.nd
  %i.bfm = phi i64 [ %i.bfl, %._crit_edge47.i.i ], [ 0, %bb.nd ]
  %i.bfn = phi ptr [ %.pre.i.i, %._crit_edge47.i.i ], [ null, %bb.nd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !254
  store ptr %i.bex, ptr %15, align 8, !noalias !254
  store i64 %i.tg, ptr %i.bdy, align 8, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !254
  %i.bfo = ptrtoint ptr %i.bfn to i64
  %i.bfp = sub i64 %i.bfm, %i.bfo
  store ptr %i.bfn, ptr %16, align 8, !noalias !254
  store i64 %i.bfp, ptr %i.bdz, align 8, !noalias !254
  %i.bfq = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ng unwind label %bb.np

bb.ng:                                            ; preds = %bb.nf
  %i.bfr = extractvalue { ptr, i64 } %i.bfq, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !254
  %i.bfs = load ptr, ptr %i.bdx, align 8, !tbaa !105, !alias.scope !253, !noalias !243 ; 2 uses
  %i.bft = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243 ; 2 uses
  %i.bfu = ptrtoint ptr %i.bfs to i64
  %i.bfv = ptrtoint ptr %i.bft to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv                 ; 3 uses
  %i.bfx = sub i64 %i.bfw, %i.bfr                 ; 2 uses
  %i.bfy = icmp ugt i64 %i.bfr, %i.bfw
  br i1 %i.bfy, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.bfz = sub i64 0, %i.bfr
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.bfz)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i unwind label %bb.nq

bb.ni:                                            ; preds = %bb.ng
  %66 = icmp ult i64 %i.bfx, %i.bfw
  br i1 %66, label %bb.nj, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i

bb.nj:                                            ; preds = %bb.ni
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bfx ; 2 uses
  %.not.i.i37.i.i = icmp eq ptr %i.bfs, %i.bga
  br i1 %.not.i.i37.i.i, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  store ptr %i.bga, ptr %i.bdx, align 8, !tbaa !105, !alias.scope !253, !noalias !243
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i: ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.nh
  %i.bgb = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.nl unwind label %bb.nm     ; 2 uses

bb.nl:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !48
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 24
  %i.bge = load ptr, ptr %i.bgd, align 8
  invoke void %i.bge(ptr noundef nonnull align 8 dereferenceable(8) %i.bgb, ptr noundef nonnull %i.bex)
          to label %bb.ns unwind label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i
  %i.bgf = landingpad { ptr, i32 }
          catch ptr null
  %i.bgg = extractvalue { ptr, i32 } %i.bgf, 0
  call void @__clang_call_terminate(ptr %i.bgg) #22
  unreachable

bb.nn:                                            ; preds = %._crit_edge.i.i
  %i.bgh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !254
  br label %bb.nr

bb.no:                                            ; preds = %bb.ne
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.np:                                            ; preds = %bb.nf
  %i.bgj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !254
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nh
  %i.bgk = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.np, %bb.no, %bb.nn
  %.pn22.pn.i.i = phi { ptr, i32 } [ %i.bgh, %bb.nn ], [ %i.bgi, %bb.no ], [ %i.bgk, %bb.nq ], [ %i.bgj, %bb.np ]
  call void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !254
  %.val28.i.i = load ptr, ptr %17, align 8, !tbaa !104, !alias.scope !253, !noalias !243
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val28.i.i) #20
  br label %.body.i578

bb.ns:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !254
  %i.bgl = load i64, ptr %i.bdv, align 8, !tbaa !256, !noalias !243 ; 3 uses
  %.not.i579 = icmp ugt i64 %i.bgl, %i.beb
  br i1 %.not.i579, label %bb.nt, label %bb.oa

bb.nt:                                            ; preds = %bb.ns
  %i.bgm = load ptr, ptr %i.bec, align 8, !tbaa !257, !alias.scope !243
  %i.bgn = load ptr, ptr %i.bed, align 8, !tbaa !257, !alias.scope !243 ; 6 uses
  %i.bgo = icmp eq ptr %i.bgm, %i.bgn
  br i1 %i.bgo, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bgp = getelementptr inbounds i8, ptr %i.bgn, i64 -4
  %i.bgq = load i32, ptr %i.bgp, align 4, !tbaa !93
  %i.bgr = zext i32 %i.bgq to i64
  %.not31.i = icmp ugt i64 %i.bgl, %i.bgr
  br i1 %.not31.i, label %bb.nv, label %bb.oa

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !243
  %i.bgs = load ptr, ptr %i.bee, align 8, !tbaa !105, !alias.scope !243
  %i.bgt = load ptr, ptr %62, align 8, !tbaa !104, !alias.scope !243
  %i.bgu = ptrtoint ptr %i.bgs to i64
  %i.bgv = ptrtoint ptr %i.bgt to i64
  %i.bgw = sub i64 %i.bgu, %i.bgv
  %i.bgx = trunc i64 %i.bgw to i32                ; 2 uses
  store i32 %i.bgx, ptr %i.f, align 4, !tbaa !93, !noalias !243
  %i.bgy = load ptr, ptr %i.bef, align 8, !tbaa !103, !alias.scope !243 ; 2 uses
  %.not.i.i.i584 = icmp eq ptr %i.bgn, %i.bgy
  br i1 %.not.i.i.i584, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  store i32 %i.bgx, ptr %i.bgn, align 4, !tbaa !93
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgn, i64 4 ; 2 uses
  store ptr %i.bgz, ptr %i.bed, align 8, !tbaa !101, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i

bb.nx:                                            ; preds = %bb.nv
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bec, ptr %i.bgn, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i unwind label %bb.oe

._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i: ; preds = %bb.nx
  %.pre.i587 = load i64, ptr %i.bdv, align 8, !tbaa !256, !noalias !243
  %.pre4.i = load ptr, ptr %i.bed, align 8, !tbaa !101, !alias.scope !243
  %.pre5.i = load ptr, ptr %i.bef, align 8, !tbaa !103, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i: ; preds = %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i, %bb.nw
  %i.bha = phi ptr [ %.pre5.i, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bgy, %bb.nw ]
  %i.bhb = phi ptr [ %.pre4.i, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bgz, %bb.nw ] ; 4 uses
  %i.bhc = phi i64 [ %.pre.i587, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i ], [ %i.bgl, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !243
  %i.bhd = trunc i64 %i.bhc to i32                ; 2 uses
  store i32 %i.bhd, ptr %i.g, align 4, !tbaa !93, !noalias !243
  %.not.i.i35.i = icmp eq ptr %i.bhb, %i.bha
  br i1 %.not.i.i35.i, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i
  store i32 %i.bhd, ptr %i.bhb, align 4, !tbaa !93
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhb, i64 4
  store ptr %i.bhe, ptr %i.bed, align 8, !tbaa !101, !alias.scope !243
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i

bb.nz:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bec, ptr %i.bhb, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i unwind label %bb.of

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i: ; preds = %bb.nz, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !243
  %i.bhf = load ptr, ptr %i.bee, align 8, !tbaa !252, !alias.scope !243
  %i.bhg = load ptr, ptr %17, align 8, !tbaa !252, !noalias !243
  %i.bhh = load ptr, ptr %i.bdx, align 8, !tbaa !252, !noalias !243
  %i.bhi = load ptr, ptr %62, align 8, !tbaa !252, !alias.scope !243 ; 2 uses
  %i.bhj = ptrtoint ptr %i.bhf to i64
  %i.bhk = ptrtoint ptr %i.bhi to i64
  %i.bhl = sub i64 %i.bhj, %i.bhk
  %i.bhm = getelementptr inbounds i8, ptr %i.bhi, i64 %i.bhl
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr %i.bhm, ptr %i.bhg, ptr %i.bhh)
          to label %bb.oa unwind label %bb.og

bb.oa:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i, %bb.nu, %bb.ns
  %.val34.i580 = load ptr, ptr %17, align 8, !tbaa !104, !noalias !243 ; 2 uses
  %.not.i.i.i.i.i581 = icmp eq ptr %.val34.i580, null
  br i1 %.not.i.i.i.i.i581, label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bhn = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.oc unwind label %bb.od     ; 2 uses

bb.oc:                                            ; preds = %bb.ob
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !48
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 24
  %i.bhq = load ptr, ptr %i.bhp, align 8
  invoke void %i.bhq(ptr noundef nonnull align 8 dereferenceable(8) %i.bhn, ptr noundef nonnull %.val34.i580)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i unwind label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.bhr = landingpad { ptr, i32 }
          catch ptr null
  %i.bhs = extractvalue { ptr, i32 } %i.bhr, 0
  call void @__clang_call_terminate(ptr %i.bhs) #22
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i: ; preds = %bb.oc, %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !243
  %exitcond.not.i582 = icmp eq i64 %i.bep, %i.bdq
  br i1 %exitcond.not.i582, label %._crit_edge.i583, label %bb.my, !llvm.loop !155

bb.oe:                                            ; preds = %bb.nx
  %i.bht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !243
  br label %bb.oh

bb.of:                                            ; preds = %bb.nz
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !243
  br label %bb.oh

bb.og:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of, %bb.oe
  %.pn.i585 = phi { ptr, i32 } [ %i.bhv, %bb.og ], [ %i.bhu, %bb.of ], [ %i.bht, %bb.oe ]
  %.val.i586 = load ptr, ptr %17, align 8, !tbaa !104, !noalias !243
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i586) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !243
  br label %.body.i578

.body.i578:                                       ; preds = %bb.oh, %bb.nr
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i585, %bb.oh ], [ %.pn22.pn.i.i, %bb.nr ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_114BuilderIFramesD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %62) #20
  br label %.body588

bb.oi:                                            ; preds = %bb.mv, %bb.mx
  %i.bhw = phi float [ %i.bdk, %bb.mv ], [ %.pre1280, %bb.mx ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #20
  %i.bhx = ptrtoint ptr %.val25.i to i64
  %i.bhy = ptrtoint ptr %.val27.i to i64
  %i.bhz = sub i64 %i.bhx, %i.bhy
  %i.bia = sdiv exact i64 %i.bhz, 28
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.bib = getelementptr inbounds nuw i8, ptr %63, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %63, i8 0, i64 48, i1 false), !alias.scope !258
  store float 1.000000e+00, ptr %i.bib, align 8, !tbaa !251, !alias.scope !258
  %i.bic = fcmp ole float %i.bhw, 0.000000e+00
  %or.cond.i592 = or i1 %.not.i.i.i.i69.i, %i.bic
  br i1 %or.cond.i592, label %bb.pu, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bid = fdiv float %i.o, %i.bhw                ; 2 uses
  %i.bie = fcmp olt float %i.bid, 1.000000e+00
  %i.bif = select i1 %i.bie, float 1.000000e+00, float %i.bid
  %i.big = fptoui float %i.bif to i64             ; 3 uses
  %.not3.i593 = icmp eq i64 %i.big, 0
  br i1 %.not3.i593, label %._crit_edge.thread.i621, label %.lr.ph.i594

.lr.ph.i594:                                      ; preds = %bb.oj
  %i.bih = uitofp i64 %i.big to float
  %i.bii = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bik = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bil = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bin = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bip = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.biq = shl nuw nsw i64 %i.tg, 1
  %i.bir = add nsw i64 %i.biq, -1
  %i.bis = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 4 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 5 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 2 uses
  br label %bb.ok

._crit_edge.i615:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613
  %.pre6.i616 = load ptr, ptr %i.bit, align 8, !tbaa !101, !alias.scope !258 ; 2 uses
  %.pre8.i617 = load ptr, ptr %i.bis, align 8, !tbaa !102, !alias.scope !258 ; 2 uses
  %.pre9.i618 = load ptr, ptr %63, align 8, !tbaa !252, !alias.scope !258 ; 2 uses
  %.pre11.i619 = load ptr, ptr %i.biu, align 8, !tbaa !252, !alias.scope !258 ; 2 uses
  %i.biw = ptrtoint ptr %.pre6.i616 to i64
  %i.bix = ptrtoint ptr %.pre8.i617 to i64
  %i.biy = sub i64 %i.biw, %i.bix
  %i.biz = ashr exact i64 %i.biy, 2
  %i.bja = lshr i64 %i.biz, 1
  %i.bjb = icmp eq ptr %.pre9.i618, %.pre11.i619
  %i.bjc = uitofp nneg i64 %i.bja to float
  %i.bjd = fdiv float 1.000000e+00, %i.bjc
  %cond.fr.i620 = freeze i1 %i.bjb
  %spec.select = select i1 %cond.fr.i620, float 1.000000e+00, float %i.bjd
  br label %._crit_edge.thread.i621

._crit_edge.thread.i621:                          ; preds = %._crit_edge.i615, %bb.oj
  %i.bje = phi ptr [ %.pre8.i617, %._crit_edge.i615 ], [ null, %bb.oj ]
  %i.bjf = phi ptr [ %.pre6.i616, %._crit_edge.i615 ], [ null, %bb.oj ]
  %i.bjg = phi ptr [ %.pre9.i618, %._crit_edge.i615 ], [ null, %bb.oj ]
  %i.bjh = phi ptr [ %.pre11.i619, %._crit_edge.i615 ], [ null, %bb.oj ]
  %i.bji = phi float [ %spec.select, %._crit_edge.i615 ], [ 1.000000e+00, %bb.oj ]
  store float %i.bji, ptr %i.bib, align 8, !tbaa !251, !alias.scope !258
  %.pre1281 = load float, ptr %1, align 4, !tbaa !242
  br label %bb.pu

bb.ok:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613, %.lr.ph.i594
  %.0252.i = phi i64 [ 0, %.lr.ph.i594 ], [ %i.bjj, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613 ]
  %i.bjj = add nuw i64 %.0252.i, 1                ; 3 uses
  %i.bjk = uitofp i64 %i.bjj to float
  %i.bjl = fmul float %i.o, %i.bjk
  %i.bjm = fdiv float %i.bjl, %i.bih
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !258
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 24, i1 false), !alias.scope !259, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !260
  %i.bjn = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ol unwind label %bb.om, !noalias !259 ; 2 uses

bb.ol:                                            ; preds = %bb.ok
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !48, !noalias !259
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16
  %i.bjq = load ptr, ptr %i.bjp, align 8, !noalias !259
  %i.bjr = invoke noundef ptr %i.bjq(ptr noundef nonnull align 8 dereferenceable(8) %i.bjn, i64 noundef %i.bii, i64 noundef 4)
          to label %bb.on unwind label %bb.om, !noalias !259 ; 8 uses

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %i.bjs = landingpad { ptr, i32 }
          catch ptr null
  %i.bjt = extractvalue { ptr, i32 } %i.bjs, 0
  call void @__clang_call_terminate(ptr %i.bjt) #22, !noalias !259
  unreachable

bb.on:                                            ; preds = %bb.ol
  store ptr %i.bjr, ptr %8, align 8, !tbaa !102, !noalias !260
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.tg
  store ptr %i.bju, ptr %i.bij, align 8, !tbaa !103, !noalias !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bjr, i8 0, i64 %i.bii, i1 false), !tbaa !93, !noalias !259
  %scevgep.i.i.i.i.i596 = getelementptr i8, ptr %i.bjr, i64 %i.bii
  store ptr %scevgep.i.i.i.i.i596, ptr %i.bik, align 8, !tbaa !101, !noalias !260
  br i1 %.not1217.i, label %._crit_edge.i.i600, label %.lr.ph.i.i597

.lr.ph.i.i597:                                    ; preds = %bb.on, %bb.oo
  %.044.i.i598 = phi i64 [ %i.bkd, %bb.oo ], [ 0, %bb.on ] ; 4 uses
  %i.bjv = getelementptr inbounds nuw [28 x i8], ptr %.val27.i, i64 %.044.i.i598 ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 4
  %i.bjx = load float, ptr %i.bjw, align 4, !tbaa !83, !noalias !260
  %i.bjy = fcmp ugt float %i.bjx, %i.bjm
  br i1 %i.bjy, label %._crit_edge.i.i600, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph.i.i597
  %i.bjz = trunc i64 %.044.i.i598 to i32
  %i.bka = load i16, ptr %i.bjv, align 4, !tbaa !82, !noalias !260
  %i.bkb = zext i16 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bkb
  store i32 %i.bjz, ptr %i.bkc, align 4, !tbaa !93, !noalias !259
  store i64 %.044.i.i598, ptr %i.bil, align 8, !tbaa !256, !alias.scope !259, !noalias !258
  %i.bkd = add nuw i64 %.044.i.i598, 1            ; 2 uses
  %exitcond.not.i.i599 = icmp eq i64 %i.bkd, %i.bia
  br i1 %exitcond.not.i.i599, label %._crit_edge.i.i600, label %.lr.ph.i.i597, !llvm.loop !160

._crit_edge.i.i600:                               ; preds = %bb.oo, %.lr.ph.i.i597, %bb.on
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !260
  store ptr %i.bjr, ptr %9, align 8, !noalias !260
  store i64 %i.tg, ptr %i.bim, align 8, !noalias !260
  %i.bke = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.op unwind label %bb.oz, !noalias !259 ; 2 uses

bb.op:                                            ; preds = %._crit_edge.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !260
  %.not55.i.i605 = icmp eq i64 %i.bke, 0
  br i1 %.not55.i.i605, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.bke)
          to label %._crit_edge47.i.i606 unwind label %bb.pa

._crit_edge47.i.i606:                             ; preds = %bb.oq
  %.pre.i.i607 = load ptr, ptr %12, align 8, !tbaa !104, !alias.scope !259, !noalias !258
  %.pre48.i.i608 = load ptr, ptr %i.bin, align 8, !tbaa !105, !alias.scope !259, !noalias !258
  %i.bkf = ptrtoint ptr %.pre48.i.i608 to i64
  br label %bb.or

bb.or:                                            ; preds = %._crit_edge47.i.i606, %bb.op
  %i.bkg = phi i64 [ %i.bkf, %._crit_edge47.i.i606 ], [ 0, %bb.op ]
  %i.bkh = phi ptr [ %.pre.i.i607, %._crit_edge47.i.i606 ], [ null, %bb.op ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !260
  store ptr %i.bjr, ptr %10, align 8, !noalias !260
  store i64 %i.tg, ptr %i.bio, align 8, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !260
  %i.bki = ptrtoint ptr %i.bkh to i64
  %i.bkj = sub i64 %i.bkg, %i.bki
  store ptr %i.bkh, ptr %11, align 8, !noalias !260
  store i64 %i.bkj, ptr %i.bip, align 8, !noalias !260
  %i.bkk = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.os unwind label %bb.pb

bb.os:                                            ; preds = %bb.or
  %i.bkl = extractvalue { ptr, i64 } %i.bkk, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !260
  %i.bkm = load ptr, ptr %i.bin, align 8, !tbaa !105, !alias.scope !259, !noalias !258 ; 2 uses
  %i.bkn = load ptr, ptr %12, align 8, !tbaa !104, !alias.scope !259, !noalias !258 ; 2 uses
  %i.bko = ptrtoint ptr %i.bkm to i64
  %i.bkp = ptrtoint ptr %i.bkn to i64
  %i.bkq = sub i64 %i.bko, %i.bkp                 ; 3 uses
  %i.bkr = sub i64 %i.bkq, %i.bkl                 ; 2 uses
  %i.bks = icmp ugt i64 %i.bkl, %i.bkq
  br i1 %i.bks, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.bkt = sub i64 0, %i.bkl
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.bkt)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609 unwind label %bb.pc

bb.ou:                                            ; preds = %bb.os
  %67 = icmp ult i64 %i.bkr, %i.bkq
  br i1 %67, label %bb.ov, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609

bb.ov:                                            ; preds = %bb.ou
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkn, i64 %i.bkr ; 2 uses
  %.not.i.i37.i.i633 = icmp eq ptr %i.bkm, %i.bku
  br i1 %.not.i.i37.i.i633, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  store ptr %i.bku, ptr %i.bin, align 8, !tbaa !105, !alias.scope !259, !noalias !258
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609: ; preds = %bb.ow, %bb.ov, %bb.ou, %bb.ot
  %i.bkv = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ox unwind label %bb.oy     ; 2 uses

bb.ox:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !48
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 24
  %i.bky = load ptr, ptr %i.bkx, align 8
  invoke void %i.bky(ptr noundef nonnull align 8 dereferenceable(8) %i.bkv, ptr noundef nonnull %i.bjr)
          to label %bb.pe unwind label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i609
  %i.bkz = landingpad { ptr, i32 }
          catch ptr null
  %i.bla = extractvalue { ptr, i32 } %i.bkz, 0
  call void @__clang_call_terminate(ptr %i.bla) #22
  unreachable

bb.oz:                                            ; preds = %._crit_edge.i.i600
  %i.blb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !260
  br label %bb.pd

bb.pa:                                            ; preds = %bb.oq
  %i.blc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pb:                                            ; preds = %bb.or
  %i.bld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !260
  br label %bb.pd

bb.pc:                                            ; preds = %bb.ot
  %i.ble = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb, %bb.pa, %bb.oz
  %.pn22.pn.i.i601 = phi { ptr, i32 } [ %i.blb, %bb.oz ], [ %i.blc, %bb.pa ], [ %i.ble, %bb.pc ], [ %i.bld, %bb.pb ]
  call void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !260
  %.val.i.i602 = load ptr, ptr %12, align 8, !tbaa !104, !alias.scope !259, !noalias !258
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i.i602) #20
  br label %.body.i603

bb.pe:                                            ; preds = %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !260
  %i.blf = load i64, ptr %i.bil, align 8, !tbaa !256, !noalias !258 ; 3 uses
  %.not.i610 = icmp ugt i64 %i.blf, %i.bir
  br i1 %.not.i610, label %bb.pf, label %bb.pm

bb.pf:                                            ; preds = %bb.pe
  %i.blg = load ptr, ptr %i.bis, align 8, !tbaa !257, !alias.scope !258
  %i.blh = load ptr, ptr %i.bit, align 8, !tbaa !257, !alias.scope !258 ; 6 uses
  %i.bli = icmp eq ptr %i.blg, %i.blh
  br i1 %i.bli, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.blj = getelementptr inbounds i8, ptr %i.blh, i64 -4
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !93
  %i.bll = zext i32 %i.blk to i64
  %.not31.i622 = icmp ugt i64 %i.blf, %i.bll
  br i1 %.not31.i622, label %bb.ph, label %bb.pm

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !258
  %i.blm = load ptr, ptr %i.biu, align 8, !tbaa !105, !alias.scope !258
  %i.bln = load ptr, ptr %63, align 8, !tbaa !104, !alias.scope !258
  %i.blo = ptrtoint ptr %i.blm to i64
  %i.blp = ptrtoint ptr %i.bln to i64
  %i.blq = sub i64 %i.blo, %i.blp
  %i.blr = trunc i64 %i.blq to i32                ; 2 uses
  store i32 %i.blr, ptr %i.d, align 4, !tbaa !93, !noalias !258
  %i.bls = load ptr, ptr %i.biv, align 8, !tbaa !103, !alias.scope !258 ; 2 uses
  %.not.i.i.i623 = icmp eq ptr %i.blh, %i.bls
  br i1 %.not.i.i.i623, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  store i32 %i.blr, ptr %i.blh, align 4, !tbaa !93
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blh, i64 4 ; 2 uses
  store ptr %i.blt, ptr %i.bit, align 8, !tbaa !101, !alias.scope !258
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i624

bb.pj:                                            ; preds = %bb.ph
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bis, ptr %i.blh, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629 unwind label %bb.pq

._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629: ; preds = %bb.pj
  %.pre.i630 = load i64, ptr %i.bil, align 8, !tbaa !256, !noalias !258
  %.pre4.i631 = load ptr, ptr %i.bit, align 8, !tbaa !101, !alias.scope !258
  %.pre5.i632 = load ptr, ptr %i.biv, align 8, !tbaa !103, !alias.scope !258
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i624

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i624: ; preds = %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629, %bb.pi
  %i.blu = phi ptr [ %.pre5.i632, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629 ], [ %i.bls, %bb.pi ]
  %i.blv = phi ptr [ %.pre4.i631, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629 ], [ %i.blt, %bb.pi ] ; 4 uses
  %i.blw = phi i64 [ %.pre.i630, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i629 ], [ %i.blf, %bb.pi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !258
  %i.blx = trunc i64 %i.blw to i32                ; 2 uses
  store i32 %i.blx, ptr %i.e, align 4, !tbaa !93, !noalias !258
  %.not.i.i35.i625 = icmp eq ptr %i.blv, %i.blu
  br i1 %.not.i.i35.i625, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i624
  store i32 %i.blx, ptr %i.blv, align 4, !tbaa !93
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  store ptr %i.bly, ptr %i.bit, align 8, !tbaa !101, !alias.scope !258
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i626

bb.pl:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i624
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bis, ptr %i.blv, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i626 unwind label %bb.pr

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i626: ; preds = %bb.pl, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !258
  %i.blz = load ptr, ptr %i.biu, align 8, !tbaa !252, !alias.scope !258
  %i.bma = load ptr, ptr %12, align 8, !tbaa !252, !noalias !258
  %i.bmb = load ptr, ptr %i.bin, align 8, !tbaa !252, !noalias !258
  %i.bmc = load ptr, ptr %63, align 8, !tbaa !252, !alias.scope !258 ; 2 uses
  %i.bmd = ptrtoint ptr %i.blz to i64
  %i.bme = ptrtoint ptr %i.bmc to i64
  %i.bmf = sub i64 %i.bmd, %i.bme
  %i.bmg = getelementptr inbounds i8, ptr %i.bmc, i64 %i.bmf
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr %i.bmg, ptr %i.bma, ptr %i.bmb)
          to label %bb.pm unwind label %bb.ps

bb.pm:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i626, %bb.pg, %bb.pe
  %.val34.i611 = load ptr, ptr %12, align 8, !tbaa !104, !noalias !258 ; 2 uses
  %.not.i.i.i.i.i612 = icmp eq ptr %.val34.i611, null
  br i1 %.not.i.i.i.i.i612, label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.bmh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.po unwind label %bb.pp     ; 2 uses

bb.po:                                            ; preds = %bb.pn
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !48
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 24
  %i.bmk = load ptr, ptr %i.bmj, align 8
  invoke void %i.bmk(ptr noundef nonnull align 8 dereferenceable(8) %i.bmh, ptr noundef nonnull %.val34.i611)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613 unwind label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %i.bml = landingpad { ptr, i32 }
          catch ptr null
  %i.bmm = extractvalue { ptr, i32 } %i.bml, 0
  call void @__clang_call_terminate(ptr %i.bmm) #22
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i613: ; preds = %bb.po, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !258
  %exitcond.not.i614 = icmp eq i64 %i.bjj, %i.big
  br i1 %exitcond.not.i614, label %._crit_edge.i615, label %bb.ok, !llvm.loop !161

bb.pq:                                            ; preds = %bb.pj
  %i.bmn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !258
  br label %bb.pt

bb.pr:                                            ; preds = %bb.pl
  %i.bmo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !258
  br label %bb.pt

bb.ps:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i626
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr, %bb.pq
  %.pn.i627 = phi { ptr, i32 } [ %i.bmp, %bb.ps ], [ %i.bmo, %bb.pr ], [ %i.bmn, %bb.pq ]
  %.val.i628 = load ptr, ptr %12, align 8, !tbaa !104, !noalias !258
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i628) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !258
  br label %.body.i603

.body.i603:                                       ; preds = %bb.pt, %bb.pd
  %.pn.pn.i604 = phi { ptr, i32 } [ %.pn.i627, %bb.pt ], [ %.pn22.pn.i.i601, %bb.pd ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_114BuilderIFramesD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %63) #20
  br label %.body634

bb.pu:                                            ; preds = %bb.oi, %._crit_edge.thread.i621
  %i.bmq = phi ptr [ null, %bb.oi ], [ %i.bje, %._crit_edge.thread.i621 ]
  %i.bmr = phi ptr [ null, %bb.oi ], [ %i.bjf, %._crit_edge.thread.i621 ]
  %i.bms = phi ptr [ null, %bb.oi ], [ %i.bjg, %._crit_edge.thread.i621 ]
  %i.bmt = phi ptr [ null, %bb.oi ], [ %i.bjh, %._crit_edge.thread.i621 ]
  %i.bmu = phi float [ %i.bhw, %bb.oi ], [ %.pre1281, %._crit_edge.thread.i621 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20
  %.val157 = load ptr, ptr %60, align 8, !tbaa !67 ; 3 uses
  %.val158 = load ptr, ptr %i.api, align 8, !tbaa !68 ; 2 uses
  %i.bmv = ptrtoint ptr %.val158 to i64
  %i.bmw = ptrtoint ptr %.val157 to i64
  %i.bmx = sub i64 %i.bmv, %i.bmw
  %i.bmy = sdiv exact i64 %i.bmx, 24              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.bmz = getelementptr inbounds nuw i8, ptr %64, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %64, i8 0, i64 48, i1 false), !alias.scope !261
  store float 1.000000e+00, ptr %i.bmz, align 8, !tbaa !251, !alias.scope !261
  %i.bna = fcmp ole float %i.bmu, 0.000000e+00
  %or.cond.i638 = or i1 %.not.i.i.i.i69.i, %i.bna
  br i1 %or.cond.i638, label %_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff.exit, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bnb = fdiv float %i.o, %i.bmu                ; 2 uses
  %i.bnc = fcmp olt float %i.bnb, 1.000000e+00
  %i.bnd = select i1 %i.bnc, float 1.000000e+00, float %i.bnb
  %i.bne = fptoui float %i.bnd to i64             ; 3 uses
  %.not3.i639 = icmp eq i64 %i.bne, 0
  br i1 %.not3.i639, label %._crit_edge.thread.i668, label %.lr.ph.i640

.lr.ph.i640:                                      ; preds = %bb.pv
  %i.bnf = uitofp i64 %i.bne to float
  %i.bng = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bni = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i.i641 = icmp eq ptr %.val158, %.val157
  %i.bnj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bnl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bnn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bno = shl nuw nsw i64 %i.tg, 1
  %i.bnp = add nsw i64 %i.bno, -1
  %i.bnq = getelementptr inbounds nuw i8, ptr %64, i64 24 ; 4 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %64, i64 32 ; 5 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %64, i64 40 ; 2 uses
  br label %bb.pw

._crit_edge.i662:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660
  %.pre6.i663 = load ptr, ptr %i.bnr, align 8, !tbaa !101, !alias.scope !261 ; 2 uses
  %.pre8.i664 = load ptr, ptr %i.bnq, align 8, !tbaa !102, !alias.scope !261 ; 2 uses
  %.pre9.i665 = load ptr, ptr %64, align 8, !tbaa !252, !alias.scope !261 ; 2 uses
  %.pre11.i666 = load ptr, ptr %i.bns, align 8, !tbaa !252, !alias.scope !261 ; 2 uses
  %i.bnu = ptrtoint ptr %.pre6.i663 to i64
  %i.bnv = ptrtoint ptr %.pre8.i664 to i64
  %i.bnw = sub i64 %i.bnu, %i.bnv
  %i.bnx = ashr exact i64 %i.bnw, 2
  %i.bny = lshr i64 %i.bnx, 1
  %i.bnz = icmp eq ptr %.pre9.i665, %.pre11.i666
  %i.boa = uitofp nneg i64 %i.bny to float
  %i.bob = fdiv float 1.000000e+00, %i.boa
  %cond.fr.i667 = freeze i1 %i.bnz
  %spec.select1697 = select i1 %cond.fr.i667, float 1.000000e+00, float %i.bob
  %i.boc = ptrtoint ptr %.pre11.i666 to i64
  %i.bod = ptrtoint ptr %.pre9.i665 to i64
  %i.boe = sub i64 %i.boc, %i.bod
  %i.bof = ptrtoint ptr %.pre6.i663 to i64
  %i.bog = ptrtoint ptr %.pre8.i664 to i64
  %i.boh = sub i64 %i.bof, %i.bog
  %i.boi = ashr exact i64 %i.boh, 2
  br label %._crit_edge.thread.i668

._crit_edge.thread.i668:                          ; preds = %._crit_edge.i662, %bb.pv
  %i.boj = phi float [ %spec.select1697, %._crit_edge.i662 ], [ 1.000000e+00, %bb.pv ]
  %i.bok = phi i64 [ %i.boe, %._crit_edge.i662 ], [ 0, %bb.pv ]
  %i.bol = phi i64 [ %i.boi, %._crit_edge.i662 ], [ 0, %bb.pv ]
  store float %i.boj, ptr %i.bmz, align 8, !tbaa !251, !alias.scope !261
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %63, i64 8
  %.pre1282 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !105
  %.pre1283 = load ptr, ptr %63, align 8, !tbaa !104
  %.phi.trans.insert1284 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %.pre1285 = load ptr, ptr %.phi.trans.insert1284, align 8, !tbaa !101
  %.phi.trans.insert1286 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %.pre1287 = load ptr, ptr %.phi.trans.insert1286, align 8, !tbaa !102
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff.exit

bb.pw:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660, %.lr.ph.i640
  %.0252.i642 = phi i64 [ 0, %.lr.ph.i640 ], [ %i.bom, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660 ]
  %i.bom = add nuw i64 %.0252.i642, 1             ; 3 uses
  %i.bon = uitofp i64 %i.bom to float
  %i.boo = fmul float %i.o, %i.bon
  %i.bop = fdiv float %i.boo, %i.bnf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !261
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false), !alias.scope !262, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !263
  %i.boq = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.px unwind label %bb.py, !noalias !262 ; 2 uses

bb.px:                                            ; preds = %bb.pw
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !48, !noalias !262
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 16
  %i.bot = load ptr, ptr %i.bos, align 8, !noalias !262
  %i.bou = invoke noundef ptr %i.bot(ptr noundef nonnull align 8 dereferenceable(8) %i.boq, i64 noundef %i.bng, i64 noundef 4)
          to label %bb.pz unwind label %bb.py, !noalias !262 ; 8 uses

bb.py:                                            ; preds = %bb.px, %bb.pw
  %i.bov = landingpad { ptr, i32 }
          catch ptr null
  %i.bow = extractvalue { ptr, i32 } %i.bov, 0
  call void @__clang_call_terminate(ptr %i.bow) #22, !noalias !262
  unreachable

bb.pz:                                            ; preds = %bb.px
  store ptr %i.bou, ptr %3, align 8, !tbaa !102, !noalias !263
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.tg
  store ptr %i.box, ptr %i.bnh, align 8, !tbaa !103, !noalias !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bou, i8 0, i64 %i.bng, i1 false), !tbaa !93, !noalias !262
  %scevgep.i.i.i.i.i643 = getelementptr i8, ptr %i.bou, i64 %i.bng
  store ptr %scevgep.i.i.i.i.i643, ptr %i.bni, align 8, !tbaa !101, !noalias !263
  br i1 %.not.i.i641, label %._crit_edge.i.i647, label %.lr.ph.i.i644

.lr.ph.i.i644:                                    ; preds = %bb.pz, %bb.qa
  %.044.i.i645 = phi i64 [ %i.bpg, %bb.qa ], [ 0, %bb.pz ] ; 4 uses
  %i.boy = getelementptr inbounds nuw [24 x i8], ptr %.val157, i64 %.044.i.i645 ; 2 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 4
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !88, !noalias !263
  %i.bpb = fcmp ugt float %i.bpa, %i.bop
  br i1 %i.bpb, label %._crit_edge.i.i647, label %bb.qa

bb.qa:                                            ; preds = %.lr.ph.i.i644
  %i.bpc = trunc i64 %.044.i.i645 to i32
  %i.bpd = load i16, ptr %i.boy, align 4, !tbaa !87, !noalias !263
  %i.bpe = zext i16 %i.bpd to i64
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bpe
  store i32 %i.bpc, ptr %i.bpf, align 4, !tbaa !93, !noalias !262
  store i64 %.044.i.i645, ptr %i.bnj, align 8, !tbaa !256, !alias.scope !262, !noalias !261
  %i.bpg = add nuw i64 %.044.i.i645, 1            ; 2 uses
  %exitcond.not.i.i646 = icmp eq i64 %i.bpg, %i.bmy
  br i1 %exitcond.not.i.i646, label %._crit_edge.i.i647, label %.lr.ph.i.i644, !llvm.loop !166

._crit_edge.i.i647:                               ; preds = %bb.qa, %.lr.ph.i.i644, %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !263
  store ptr %i.bou, ptr %4, align 8, !noalias !263
  store i64 %i.tg, ptr %i.bnk, align 8, !noalias !263
  %i.bph = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.qb unwind label %bb.ql, !noalias !262 ; 2 uses

bb.qb:                                            ; preds = %._crit_edge.i.i647
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !263
  %.not55.i.i652 = icmp eq i64 %i.bph, 0
  br i1 %.not55.i.i652, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.bph)
          to label %._crit_edge47.i.i653 unwind label %bb.qm

._crit_edge47.i.i653:                             ; preds = %bb.qc
  %.pre.i.i654 = load ptr, ptr %7, align 8, !tbaa !104, !alias.scope !262, !noalias !261
  %.pre48.i.i655 = load ptr, ptr %i.bnl, align 8, !tbaa !105, !alias.scope !262, !noalias !261
  %i.bpi = ptrtoint ptr %.pre48.i.i655 to i64
  br label %bb.qd

bb.qd:                                            ; preds = %._crit_edge47.i.i653, %bb.qb
  %i.bpj = phi i64 [ %i.bpi, %._crit_edge47.i.i653 ], [ 0, %bb.qb ]
  %i.bpk = phi ptr [ %.pre.i.i654, %._crit_edge47.i.i653 ], [ null, %bb.qb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !263
  store ptr %i.bou, ptr %5, align 8, !noalias !263
  store i64 %i.tg, ptr %i.bnm, align 8, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !263
  %i.bpl = ptrtoint ptr %i.bpk to i64
  %i.bpm = sub i64 %i.bpj, %i.bpl
  store ptr %i.bpk, ptr %6, align 8, !noalias !263
  store i64 %i.bpm, ptr %i.bnn, align 8, !noalias !263
  %i.bpn = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.qe unwind label %bb.qn

bb.qe:                                            ; preds = %bb.qd
  %i.bpo = extractvalue { ptr, i64 } %i.bpn, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !263
  %i.bpp = load ptr, ptr %i.bnl, align 8, !tbaa !105, !alias.scope !262, !noalias !261 ; 2 uses
  %i.bpq = load ptr, ptr %7, align 8, !tbaa !104, !alias.scope !262, !noalias !261 ; 2 uses
  %i.bpr = ptrtoint ptr %i.bpp to i64
  %i.bps = ptrtoint ptr %i.bpq to i64
  %i.bpt = sub i64 %i.bpr, %i.bps                 ; 3 uses
  %i.bpu = sub i64 %i.bpt, %i.bpo                 ; 2 uses
  %i.bpv = icmp ugt i64 %i.bpo, %i.bpt
  br i1 %i.bpv, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.bpw = sub i64 0, %i.bpo
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.bpw)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656 unwind label %bb.qo

bb.qg:                                            ; preds = %bb.qe
  %68 = icmp ult i64 %i.bpu, %i.bpt
  br i1 %68, label %bb.qh, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656

bb.qh:                                            ; preds = %bb.qg
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpq, i64 %i.bpu ; 2 uses
  %.not.i.i37.i.i680 = icmp eq ptr %i.bpp, %i.bpx
  br i1 %.not.i.i37.i.i680, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  store ptr %i.bpx, ptr %i.bnl, align 8, !tbaa !105, !alias.scope !262, !noalias !261
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656: ; preds = %bb.qi, %bb.qh, %bb.qg, %bb.qf
  %i.bpy = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.qj unwind label %bb.qk     ; 2 uses

bb.qj:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !48
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 24
  %i.bqb = load ptr, ptr %i.bqa, align 8
  invoke void %i.bqb(ptr noundef nonnull align 8 dereferenceable(8) %i.bpy, ptr noundef nonnull %i.bou)
          to label %bb.qq unwind label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i656
  %i.bqc = landingpad { ptr, i32 }
          catch ptr null
  %i.bqd = extractvalue { ptr, i32 } %i.bqc, 0
  call void @__clang_call_terminate(ptr %i.bqd) #22
  unreachable

bb.ql:                                            ; preds = %._crit_edge.i.i647
  %i.bqe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !263
  br label %bb.qp

bb.qm:                                            ; preds = %bb.qc
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qn:                                            ; preds = %bb.qd
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !263
  br label %bb.qp

bb.qo:                                            ; preds = %bb.qf
  %i.bqh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn, %bb.qm, %bb.ql
  %.pn22.pn.i.i648 = phi { ptr, i32 } [ %i.bqe, %bb.ql ], [ %i.bqf, %bb.qm ], [ %i.bqh, %bb.qo ], [ %i.bqg, %bb.qn ]
  call void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !263
  %.val.i.i649 = load ptr, ptr %7, align 8, !tbaa !104, !alias.scope !262, !noalias !261
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i.i649) #20
  br label %.body.i650

bb.qq:                                            ; preds = %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !263
  %i.bqi = load i64, ptr %i.bnj, align 8, !tbaa !256, !noalias !261 ; 3 uses
  %.not.i657 = icmp ugt i64 %i.bqi, %i.bnp
  br i1 %.not.i657, label %bb.qr, label %bb.qy

bb.qr:                                            ; preds = %bb.qq
  %i.bqj = load ptr, ptr %i.bnq, align 8, !tbaa !257, !alias.scope !261
  %i.bqk = load ptr, ptr %i.bnr, align 8, !tbaa !257, !alias.scope !261 ; 6 uses
  %i.bql = icmp eq ptr %i.bqj, %i.bqk
  br i1 %i.bql, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bqm = getelementptr inbounds i8, ptr %i.bqk, i64 -4
  %i.bqn = load i32, ptr %i.bqm, align 4, !tbaa !93
  %i.bqo = zext i32 %i.bqn to i64
  %.not31.i669 = icmp ugt i64 %i.bqi, %i.bqo
  br i1 %.not31.i669, label %bb.qt, label %bb.qy

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !261
  %i.bqp = load ptr, ptr %i.bns, align 8, !tbaa !105, !alias.scope !261
  %i.bqq = load ptr, ptr %64, align 8, !tbaa !104, !alias.scope !261
  %i.bqr = ptrtoint ptr %i.bqp to i64
  %i.bqs = ptrtoint ptr %i.bqq to i64
  %i.bqt = sub i64 %i.bqr, %i.bqs
  %i.bqu = trunc i64 %i.bqt to i32                ; 2 uses
  store i32 %i.bqu, ptr %i.b, align 4, !tbaa !93, !noalias !261
  %i.bqv = load ptr, ptr %i.bnt, align 8, !tbaa !103, !alias.scope !261 ; 2 uses
  %.not.i.i.i670 = icmp eq ptr %i.bqk, %i.bqv
  br i1 %.not.i.i.i670, label %bb.qv, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  store i32 %i.bqu, ptr %i.bqk, align 4, !tbaa !93
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqk, i64 4 ; 2 uses
  store ptr %i.bqw, ptr %i.bnr, align 8, !tbaa !101, !alias.scope !261
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i671

bb.qv:                                            ; preds = %bb.qt
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bnq, ptr %i.bqk, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676 unwind label %bb.rc

._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676: ; preds = %bb.qv
  %.pre.i677 = load i64, ptr %i.bnj, align 8, !tbaa !256, !noalias !261
  %.pre4.i678 = load ptr, ptr %i.bnr, align 8, !tbaa !101, !alias.scope !261
  %.pre5.i679 = load ptr, ptr %i.bnt, align 8, !tbaa !103, !alias.scope !261
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i671

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i671: ; preds = %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676, %bb.qu
  %i.bqx = phi ptr [ %.pre5.i679, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676 ], [ %i.bqv, %bb.qu ]
  %i.bqy = phi ptr [ %.pre4.i678, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676 ], [ %i.bqw, %bb.qu ] ; 4 uses
  %i.bqz = phi i64 [ %.pre.i677, %._ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit_crit_edge.i676 ], [ %i.bqi, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !261
  %i.bra = trunc i64 %i.bqz to i32                ; 2 uses
  store i32 %i.bra, ptr %i.c, align 4, !tbaa !93, !noalias !261
  %.not.i.i35.i672 = icmp eq ptr %i.bqy, %i.bqx
  br i1 %.not.i.i35.i672, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i671
  store i32 %i.bra, ptr %i.bqy, align 4, !tbaa !93
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqy, i64 4
  store ptr %i.brb, ptr %i.bnr, align 8, !tbaa !101, !alias.scope !261
  br label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i673

bb.qx:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit.i671
  invoke void @_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bnq, ptr %i.bqy, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i673 unwind label %bb.rd

_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i673: ; preds = %bb.qx, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !261
  %i.brc = load ptr, ptr %i.bns, align 8, !tbaa !252, !alias.scope !261
  %i.brd = load ptr, ptr %7, align 8, !tbaa !252, !noalias !261
  %i.bre = load ptr, ptr %i.bnl, align 8, !tbaa !252, !noalias !261
  %i.brf = load ptr, ptr %64, align 8, !tbaa !252, !alias.scope !261 ; 2 uses
  %i.brg = ptrtoint ptr %i.brc to i64
  %i.brh = ptrtoint ptr %i.brf to i64
  %i.bri = sub i64 %i.brg, %i.brh
  %i.brj = getelementptr inbounds i8, ptr %i.brf, i64 %i.bri
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS3_EEEEvNS6_IPhS3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr %i.brj, ptr %i.brd, ptr %i.bre)
          to label %bb.qy unwind label %bb.re

bb.qy:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i673, %bb.qs, %bb.qq
  %.val34.i658 = load ptr, ptr %7, align 8, !tbaa !104, !noalias !261 ; 2 uses
  %.not.i.i.i.i.i659 = icmp eq ptr %.val34.i658, null
  br i1 %.not.i.i.i.i.i659, label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.brk = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ra unwind label %bb.rb     ; 2 uses

bb.ra:                                            ; preds = %bb.qz
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !48
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 24
  %i.brn = load ptr, ptr %i.brm, align 8
  invoke void %i.brn(ptr noundef nonnull align 8 dereferenceable(8) %i.brk, ptr noundef nonnull %.val34.i658)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660 unwind label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  %i.bro = landingpad { ptr, i32 }
          catch ptr null
  %i.brp = extractvalue { ptr, i32 } %i.bro, 0
  call void @__clang_call_terminate(ptr %i.brp) #22
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i660: ; preds = %bb.ra, %bb.qy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !261
  %exitcond.not.i661 = icmp eq i64 %i.bom, %i.bne
  br i1 %exitcond.not.i661, label %._crit_edge.i662, label %bb.pw, !llvm.loop !167

bb.rc:                                            ; preds = %bb.qv
  %i.brq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !261
  br label %bb.rf

bb.rd:                                            ; preds = %bb.qx
  %i.brr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !261
  br label %bb.rf

bb.re:                                            ; preds = %_ZNSt6vectorIjN3ozz12StdAllocatorIjEEE9push_backEOj.exit37.i673
  %i.brs = landingpad { ptr, i32 }
          cleanup
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd, %bb.rc
  %.pn.i674 = phi { ptr, i32 } [ %i.brs, %bb.re ], [ %i.brr, %bb.rd ], [ %i.brq, %bb.rc ]
  %.val.i675 = load ptr, ptr %7, align 8, !tbaa !104, !noalias !261
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev(ptr %.val.i675) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !261
  br label %.body.i650

.body.i650:                                       ; preds = %bb.rf, %bb.qp
  %.pn.pn.i651 = phi { ptr, i32 } [ %.pn.i674, %bb.rf ], [ %.pn22.pn.i.i648, %bb.qp ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_114BuilderIFramesD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %64) #20
  br label %.body681

_ZN3ozz9animation7offline12_GLOBAL__N_112BuildIFramesINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEENS2_14BuilderIFramesERKNS_4spanIT_EEmff.exit: ; preds = %._crit_edge.thread.i668, %bb.pu
  %i.brt = phi ptr [ %.pre1287, %._crit_edge.thread.i668 ], [ %i.bmq, %bb.pu ]
end_hunk_4
