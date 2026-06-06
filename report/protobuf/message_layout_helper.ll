inline.NumInlined: 1439
inline.NumDeleted: 477
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::nothrow_t" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.google::protobuf::compiler::cpp::MessageLayoutHelper::FieldAlignmentGroups" = type { %"struct.std::array", %"struct.std::array", %"struct.std::array" }
%"struct.std::array" = type { [5 x %"struct.std::array.1"] }
%"struct.std::array.1" = type { [6 x %"class.std::vector.2"] }
%"class.std::vector.2" = type { %"struct.std::_Vector_base.3" }
%"struct.std::_Vector_base.3" = type { %"struct.std::_Vector_base<google::protobuf::compiler::cpp::FieldGroup, std::allocator<google::protobuf::compiler::cpp::FieldGroup>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::compiler::cpp::FieldGroup, std::allocator<google::protobuf::compiler::cpp::FieldGroup>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::compiler::cpp::FieldGroup, std::allocator<google::protobuf::compiler::cpp::FieldGroup>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::compiler::cpp::FieldGroup, std::allocator<google::protobuf::compiler::cpp::FieldGroup>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FastFieldInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FastFieldInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FastFieldInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FastFieldInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FastFieldInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FastFieldInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FastFieldInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FastFieldInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.google::protobuf::compiler::cpp::FieldGroup" = type { %"class.std::vector", float, i32 }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.54" }
%"struct.std::_Head_base.54" = type { ptr }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldOptions, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldOptions>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldOptions, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldOptions>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldOptions, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldOptions>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldOptions, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldOptions>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::Span.26" = type { ptr, i64 }
%"struct.google::protobuf::internal::TailCallTableInfo" = type <{ i8, [7 x i8], %"class.std::vector.16", %"class.std::vector.27", %"class.std::vector.32", %"struct.google::protobuf::internal::TailCallTableInfo::NumToEntryTable", %"class.std::vector.42", i32, [4 x i8] }>
%"class.std::vector.27" = type { %"struct.std::_Vector_base.28" }
%"struct.std::_Vector_base.28" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo, std::allocator<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.32" = type { %"struct.std::_Vector_base.33" }
%"struct.std::_Vector_base.33" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::AuxEntry, std::allocator<google::protobuf::internal::TailCallTableInfo::AuxEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::AuxEntry, std::allocator<google::protobuf::internal::TailCallTableInfo::AuxEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::AuxEntry, std::allocator<google::protobuf::internal::TailCallTableInfo::AuxEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::AuxEntry, std::allocator<google::protobuf::internal::TailCallTableInfo::AuxEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.google::protobuf::internal::TailCallTableInfo::NumToEntryTable" = type { i32, %"class.std::vector.37" }
%"class.std::vector.37" = type { %"struct.std::_Vector_base.38" }
%"struct.std::_Vector_base.38" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock, std::allocator<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::_Temporary_buffer" = type { i64, i64, ptr }

$_ZNSt5arrayIS_ISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EELm5EED2Ev = comdat any

$_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper20FieldAlignmentGroupsD2Ev = comdat any

$_ZN6google8protobuf8internal17TailCallTableInfoD2Ev = comdat any

$_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev = comdat any

$_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_ = comdat any

$_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EEC2ERKS8_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEPS6_ET0_T_SF_SE_ = comdat any

$_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EEaSERKS6_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_ = comdat any

$_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_ = comdat any

$_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev = comdat any

$_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_ = comdat any

$_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_ = comdat any

$_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_ = comdat any

$_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_ = comdat any

$_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_ = comdat any

@.str = private unnamed_addr constant [92 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/compiler/cpp/message_layout_helper.cc\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown alignment size \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"for field \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__const._ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldDescriptorOrderEOSt5arrayIS4_ISt6vectorINS2_10FieldGroupESaIS6_EELm6EELm5EERKNS2_7OptionsE.profiled_orders = private unnamed_addr constant [2 x [5 x i32]] [[5 x i32] [i32 0, i32 1, i32 4, i32 2, i32 3], [5 x i32] [i32 3, i32 2, i32 4, i32 1, i32 0]], align 16
@__const._ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldDescriptorOrderEOSt5arrayIS4_ISt6vectorINS2_10FieldGroupESaIS6_EELm6EELm5EERKNS2_7OptionsE.default_orders = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@.str.4 = private unnamed_addr constant [29 x i8] c"target_alignment > alignment\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"target_alignment % alignment == size_t{0}\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"field_group.estimated_memory_size() <= alignment\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Field group of size \00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c" should have been merged into a group at most \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" bytes.\00", align 1
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@.str.10 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36 = private unnamed_addr constant [5 x i8] c"\01\02\03\05\04", align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZN6google8protobuf8compiler3cpp10FieldGroup43UpdatePreferredLocationAndInsertOtherFieldsERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = uitofp i64 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load float, ptr %i.n, align 8, !tbaa !11
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = uitofp i64 %i.s to float
  %i.u = fmul float %i.o, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.e, float %i.m, float %i.u)
  %i.w = add nsw i64 %i.l, %i.s
  %i.x = uitofp i64 %i.w to float
  %i.y = fdiv float %i.v, %i.x
  store float %i.y, ptr %i.d, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !20
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !20
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  tail call void @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.ae, ptr %i.a, ptr %i.c)
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroup43UpdatePreferredLocationAndInsertOtherFieldsERKS3_.exit

_ZN6google8protobuf8compiler3cpp10FieldGroup43UpdatePreferredLocationAndInsertOtherFieldsERKS3_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp10FieldGroup43UpdatePreferredLocationAndInsertOtherFieldsERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = uitofp i64 %i.m to float
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load float, ptr %i.o, align 8, !tbaa !11
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = uitofp i64 %i.t to float
  %i.v = fmul float %i.p, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.f, float %i.n, float %i.v)
  %i.x = add nsw i64 %i.m, %i.t
  %i.y = uitofp i64 %i.x to float
  %i.z = fdiv float %i.w, %i.y
  store float %i.z, ptr %i.e, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !20
  %i.af = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call void @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.af, ptr %i.a, ptr %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf8compiler3cpp10FieldGroupltERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !11
  %i.e = fcmp olt float %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper16DoOptimizeLayoutERKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EERKNS2_7OptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(217) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.google::protobuf::compiler::cpp::MessageLayoutHelper::FieldAlignmentGroups", align 8 ; 7 uses
  %5 = alloca %"struct.std::array", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldAlignmentGroupsERKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EERKNS2_7OptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.google::protobuf::compiler::cpp::MessageLayoutHelper::FieldAlignmentGroups") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(217) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper25MergeFieldAlignmentGroupsEONS3_20FieldAlignmentGroupsE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2160) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldDescriptorOrderEOSt5arrayIS4_ISt6vectorINS2_10FieldGroupESaIS6_EELm6EELm5EERKNS2_7OptionsE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(720) %5, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIS_ISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 576
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 144
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.f) #20
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(720) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper20FieldAlignmentGroupsD2Ev(ptr noundef nonnull align 8 dead_on_return(2160) dereferenceable(2160) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper20FieldAlignmentGroupsD2Ev(ptr noundef nonnull align 8 dead_on_return(2160) dereferenceable(2160) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldAlignmentGroupsERKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EERKNS2_7OptionsE(ptr dead_on_unwind noalias writable sret(%"struct.google::protobuf::compiler::cpp::MessageLayoutHelper::FieldAlignmentGroups") align 8 initializes((0, 2160)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(217) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 8 uses
  %5 = alloca %"class.google::protobuf::compiler::cpp::FieldGroup", align 8 ; 16 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %0, i8 0, i64 2160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper19BuildFastParseTableERKNS2_7OptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not102 = icmp eq ptr %i.b, %i.d
  %.pre = load ptr, ptr %4, align 8               ; 7 uses
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.pre to i64                ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 536870911
  %.not10.i.i = icmp eq ptr %.pre, null           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit, %bb.b
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pre to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.v) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit77

bb.e:                                             ; preds = %.lr.ph, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit
  %.sroa.079.0103 = phi ptr [ %i.b, %.lr.ph ], [ %i.fx, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.079.0103, align 8, !tbaa !24 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 32
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  %i.ac = select i1 %i.ab, i32 4, i32 0
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !26
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  switch i32 %i.ah, label %bb.h [
    i32 9, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit
    i32 10, label %.fold.split.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp22CanInitializeByZeroingEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %.noexc38 unwind label %bb.j

.noexc38:                                         ; preds = %bb.h
  %..i = select i1 %i.ai, i32 3, i32 4
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit

.fold.split.i:                                    ; preds = %bb.g
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit: ; preds = %.fold.split.i, %.noexc38, %bb.g, %.noexc
  %.0.i = phi i32 [ %i.ac, %.noexc ], [ %..i, %.noexc38 ], [ 1, %bb.g ], [ 2, %.fold.split.i ] ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit
  br i1 %i.aj, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread, label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.k:                                             ; preds = %bb.o, %.thread, %bb.m, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.l:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.y, align 1
  %i.an = and i8 %i.am, 32
  %.not94 = icmp eq i8 %i.an, 0
  br i1 %.not94, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %1, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %bb.n unwind label %bb.k       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %.off.i = add i32 %i.ar, -2
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %.thread, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread

.thread:                                          ; preds = %bb.l, %bb.n
  %.02686 = phi i32 [ %i.ar, %bb.n ], [ 5, %bb.l ] ; 3 uses
  %i.as = invoke noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.x)
          to label %.noexc40 unwind label %bb.k

.noexc40:                                         ; preds = %.thread
  br i1 %i.as, label %bb.o, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread

bb.o:                                             ; preds = %.noexc40
  %i.at = invoke noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.x)
          to label %.noexc41 unwind label %bb.k

.noexc41:                                         ; preds = %bb.o
  %i.au = lshr i32 %i.at, 3
  %i.av = and i32 %i.l, %i.au
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !41
  %i.ba = icmp ne i8 %i.az, 1
  %.not.i.i = or i1 %.not10.i.i, %i.ba
  br i1 %.not.i.i, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit: ; preds = %.noexc41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bd = icmp eq ptr %i.bc, %i.x
  %cond.fr = freeze i1 %i.bd
  %spec.select = select i1 %cond.fr, i32 4, i32 %.02686
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread: ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit, %bb.i, %.noexc41, %.noexc40, %bb.n
  %i.be = phi i32 [ 0, %bb.i ], [ %spec.select, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit ], [ %i.ar, %bb.n ], [ %.02686, %.noexc41 ], [ %.02686, %.noexc40 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bf = load ptr, ptr %1, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::compiler::cpp::FieldGroup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.x)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread
  %i.bi = invoke noundef i32 @_ZN6google8protobuf8compiler3cpp21EstimateAlignmentSizeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.x)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  switch i32 %i.bi, label %bb.ak [
    i32 1, label %bb.s
    i32 4, label %bb.y
    i32 8, label %bb.ae
  ]

bb.r:                                             ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE.exit.thread
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75

.loopexit:                                        ; preds = %.invoke, %bb.p, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i51, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.s:                                             ; preds = %bb.q
  %i.bk = zext nneg i32 %.0.i to i64
  %i.bl = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.bk
  %switch.tableidx = add i32 %i.be, -1            ; 2 uses
  %i.bm = icmp ult i32 %switch.tableidx, 5
  br i1 %i.bm, label %switch.lookup, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit

switch.lookup:                                    ; preds = %bb.s
  %i.bn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36, i64 %i.bn
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit: ; preds = %bb.s, %switch.lookup
  %.0.i42 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.s ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.0.i42 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50
  %.not.i43 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i43, label %.invoke, label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i.i.i.i.i, label %.noexc45, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp ugt i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %.noexc.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !51

.noexc.i.i.i.i.invoke:                            ; preds = %bb.ag, %bb.aa, %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc.i.i.i.i.cont unwind label %.loopexit.split-lp

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #23
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.t
  %i.ca = phi ptr [ null, %bb.t ], [ %i.bz, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.ca, ptr %i.bq, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !52
  %i.ce = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 4 uses
  %i.cj = icmp sgt i64 %i.ci, 8
  br i1 %i.cj, label %bb.v, label %bb.w, !prof !53

bb.v:                                             ; preds = %.noexc45
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.ce, i64 %i.ci, i1 false)
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

bb.w:                                             ; preds = %.noexc45
  %i.ck = icmp eq i64 %i.ci, 8
  br i1 %i.ck, label %bb.x, label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !24
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !24
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cm = getelementptr inbounds i8, ptr %i.ca, i64 %i.ci
  store ptr %i.cm, ptr %i.cb, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.co = load i64, ptr %i.o, align 8
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store ptr %i.cq, ptr %i.bp, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit

.invoke:                                          ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit
  %i.cr = phi ptr [ %i.cx, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48 ], [ %i.bo, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit ], [ %i.ee, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59 ]
  %i.cs = phi ptr [ %i.cz, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48 ], [ %i.bq, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit ], [ %i.eg, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59 ]
  invoke void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit

bb.y:                                             ; preds = %bb.q
  %i.ct = zext nneg i32 %.0.i to i64
  %i.cu = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.ct
  %switch.tableidx144 = add i32 %i.be, -1         ; 2 uses
  %i.cv = icmp ult i32 %switch.tableidx144, 5
  br i1 %i.cv, label %switch.lookup145, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48

switch.lookup145:                                 ; preds = %bb.y
  %i.cw = zext nneg i32 %switch.tableidx144 to i64
  %switch.gep146 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36, i64 %i.cw
  %switch.load147 = load i8, ptr %switch.gep146, align 1
  %switch.ext148 = zext i8 %switch.load147 to i64
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48: ; preds = %bb.y, %switch.lookup145
  %.0.i47 = phi i64 [ %switch.ext148, %switch.lookup145 ], [ 0, %bb.y ]
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.0.i47 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !47 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  %.not.i49 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i49, label %.invoke, label %bb.z

bb.z:                                             ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit48
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i.i.i.i.i50, label %.noexc55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = icmp ugt i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %.noexc.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i51, !prof !51

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i51: ; preds = %bb.aa
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #23
          to label %.noexc55 unwind label %.loopexit

.noexc55:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i51, %bb.z
  %i.dj = phi ptr [ null, %bb.z ], [ %i.di, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i51 ] ; 6 uses
  store ptr %i.dj, ptr %i.cz, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !52
  %i.dn = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = icmp sgt i64 %i.dr, 8
  br i1 %i.ds, label %bb.ab, label %bb.ac, !prof !53

bb.ab:                                            ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dj, ptr align 8 %i.dn, i64 %i.dr, i1 false)
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i52

bb.ac:                                            ; preds = %.noexc55
  %i.dt = icmp eq i64 %i.dr, 8
  br i1 %i.dt, label %bb.ad, label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i52

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !24
  store ptr %i.du, ptr %i.dj, align 8, !tbaa !24
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i52

_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i52: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 %i.dr
  store ptr %i.dv, ptr %i.dk, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dx = load i64, ptr %i.o, align 8
  store i64 %i.dx, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store ptr %i.dz, ptr %i.cy, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit

bb.ae:                                            ; preds = %bb.q
  %i.ea = zext nneg i32 %.0.i to i64
  %i.eb = getelementptr inbounds nuw [144 x i8], ptr %i.m, i64 %i.ea
  %switch.tableidx148 = add i32 %i.be, -1         ; 2 uses
  %i.ec = icmp ult i32 %switch.tableidx148, 5
  br i1 %i.ec, label %switch.lookup149, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59

switch.lookup149:                                 ; preds = %bb.ae
  %i.ed = zext nneg i32 %switch.tableidx148 to i64
  %switch.gep151 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36, i64 %i.ed
  %switch.load152 = load i8, ptr %switch.gep151, align 1
  %switch.ext153 = zext i8 %switch.load152 to i64
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59: ; preds = %bb.ae, %switch.lookup149
  %.0.i58 = phi i64 [ %switch.ext153, %switch.lookup149 ], [ 0, %bb.ae ]
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.0.i58 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !47 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !50
  %.not.i60 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i60, label %.invoke, label %bb.af

bb.af:                                            ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit59
  %i.ej = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.ek = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i61 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i.i.i.i.i61, label %.noexc66, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = icmp ugt i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %.noexc.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i62, !prof !51

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i62: ; preds = %bb.ag
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #23
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i62, %bb.af
  %i.eq = phi ptr [ null, %bb.af ], [ %i.ep, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i62 ] ; 6 uses
  store ptr %i.eq, ptr %i.eg, align 8, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %i.es, ptr %i.et, align 8, !tbaa !52
  %i.eu = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.ev = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp sgt i64 %i.ey, 8
  br i1 %i.ez, label %bb.ah, label %bb.ai, !prof !53

bb.ah:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.eq, ptr align 8 %i.eu, i64 %i.ey, i1 false)
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i63

bb.ai:                                            ; preds = %.noexc66
  %i.fa = icmp eq i64 %i.ey, 8
  br i1 %i.fa, label %bb.aj, label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i63

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !24
  store ptr %i.fb, ptr %i.eq, align 8, !tbaa !24
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i63

_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i63: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 %i.ey
  store ptr %i.fc, ptr %i.er, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.fe = load i64, ptr %i.o, align 8
  store i64 %i.fe, ptr %i.fd, align 8
  %i.ff = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store ptr %i.fg, ptr %i.ef, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit

bb.ak:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 206) #24
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 23, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit unwind label %bb.ar

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit: ; preds = %bb.al
  %i.fh = invoke noundef i32 @_ZN6google8protobuf8compiler3cpp21EstimateAlignmentSizeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.x)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.fh, ptr %i.a, align 4, !tbaa !3
  %i.fi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.an unwind label %bb.ar     ; 2 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 10, ptr nonnull @.str.2)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !54 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.fl, align 1
  %i.fm = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.fn = xor i64 %i.fm, -1
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 %i.fn
  %i.fp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 %i.fm, ptr nonnull %i.fo)
          to label %bb.ap unwind label %bb.ar     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.ar

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.ap
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ar

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  unreachable

bb.aq:                                            ; preds = %bb.ak
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.at

bb.ar:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ao, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  unreachable

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit: ; preds = %.invoke, %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i63, %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i52, %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i
  %i.fs = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit
  %i.ft = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit

_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.079.0103, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fx, %i.d
  br i1 %.not, label %._crit_edge, label %bb.e

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fy = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i74, label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gc) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75

_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75: ; preds = %bb.au, %bb.at, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %.pn, %bb.at ], [ %.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.av

bb.av:                                            ; preds = %bb.k, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn.pn, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit75 ], [ %i.al, %bb.k ] ; 2 uses
  br i1 %.not10.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit77, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !21
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.gg) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit77

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit77: ; preds = %bb.aw, %bb.av, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.d ], [ %.pn.pn.pn.pn, %bb.av ], [ %.pn.pn.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper20FieldAlignmentGroupsD2Ev(ptr noundef nonnull align 8 dead_on_return(2160) dereferenceable(2160) %0) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper25MergeFieldAlignmentGroupsEONS3_20FieldAlignmentGroupsE(ptr dead_on_unwind noalias writable sret(%"struct.std::array") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1", align 8     ; 18 uses
  %3 = alloca %"struct.std::array.1", align 8     ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal17TailCallTableInfoD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !84

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit: ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 536870911
  %i.l = lshr i32 %i.b, 3
  %i.m = and i32 %i.k, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !41
  %i.r = icmp ne i8 %i.q, 1
  %.not10 = icmp eq ptr %i.e, null
  %.not = or i1 %.not10, %i.r
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = icmp eq ptr %i.t, %0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.off = add i32 %1, -2
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %bb.b, label %_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  br i1 %i.a, label %bb.c, label %_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 536870911
  %i.l = lshr i32 %i.b, 3
  %i.m = and i32 %i.k, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !41
  %i.r = icmp ne i8 %i.q, 1
  %.not10.i = icmp eq ptr %i.e, null
  %.not.i = or i1 %.not10.i, %i.r
  br i1 %.not.i, label %_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = icmp eq ptr %i.t, %0
  br label %_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.exit

_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.u, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 5
  br i1 %i.a, label %switch.lookup, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %switch.tableidx4 = add i32 %1, -1              ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx4, 5
  br i1 %i.c, label %switch.lookup5, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit3

switch.lookup5:                                   ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit
  %i.d = zext nneg i32 %switch.tableidx4 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_.36, i64 %i.d
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i64
  %i.e = icmp samesign ult i64 %.0.i, %switch.ext8
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit3

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit3: ; preds = %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit, %switch.lookup5
  %.0.i2 = phi i1 [ %i.e, %switch.lookup5 ], [ false, %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper17FieldHotnessIndexENS3_12FieldHotnessE.exit ]
  ret i1 %.0.i2
}

declare noundef i32 @_ZN6google8protobuf8compiler3cpp21EstimateAlignmentSizeEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper29ConsolidateAlignedFieldGroupsERSt5arrayISt6vectorINS2_10FieldGroupESaIS6_EELm6EEmm(ptr dead_on_unwind noalias writable sret(%"struct.std::array.1") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.google::protobuf::compiler::cpp::FieldGroup", align 8 ; 15 uses
  %i.a = icmp ugt i64 %3, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.b = urem i64 %3, %2                          ; 2 uses
  %i.c = udiv i64 %3, %2                          ; 3 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.e, label %bb.f, !prof !53

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %3, i64 noundef %2, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull %i.e) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.g = add i64 %i.c, 5
  %i.h = udiv i64 %i.g, %i.c                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 288230376151711743
  %i.j = shl nuw nsw i64 %i.h, 5
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.i, label %bb.h, label %.split

bb.f:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull %i.o) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit49 unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit49: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  unreachable

.split:                                           ; preds = %bb.e, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge
  %.04276 = phi i64 [ %i.bb, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.04276 ; 5 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.04276 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !94   ; 4 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5
  %i.z = icmp ult i64 %i.y, %i.h
  br i1 %i.z, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc unwind label %.loopexit.split-lp67

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i: ; preds = %.split
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %.noexc50 unwind label %.loopexit66 ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc50, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc50 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.u, %.noexc50 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !98, !noalias !95
  store <2 x ptr> %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !7, !alias.scope !95, !noalias !98
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52, !alias.scope !98, !noalias !95
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !52, !alias.scope !95, !noalias !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !98, !noalias !95
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !98, !noalias !95
  store i64 %i.al, ptr %i.aj, align 8, !alias.scope !95, !noalias !98
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !100

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !94
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i, %.noexc50
  %i.ao = phi ptr [ %.pre.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i ], [ %i.u, %.noexc50 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ao, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ae, ptr %i.r, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.h
  store ptr %i.au, ptr %i.s, align 8, !tbaa !50
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i, %.split
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %i.av, ptr %i.ax)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader unwind label %.loopexit66

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !94  ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.az
  br i1 %.not, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br label %bb.j

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader
  %i.bb = add nuw nsw i64 %.04276, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, 6
  br i1 %exitcond.not, label %bb.w, label %.split, !llvm.loop !101

.loopexit66:                                      ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp67:                             ; preds = %bb.h
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph75, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit
  %i.bc = phi ptr [ %i.az, %.lr.ph75 ], [ %i.eg, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.ay, %.lr.ph75 ], [ %i.ef, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 2 uses
  %.03874 = phi i64 [ 0, %.lr.ph75 ], [ %i.be, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.be = add i64 %.03874, %i.c                   ; 4 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5
end_hunk_1
