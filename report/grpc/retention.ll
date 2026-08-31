Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/retention?download=true
inline.NumInlined: 1425
inline.NumDeleted: 735
begin_hunk_0
%"class.absl::lts_20250512::container_internal::raw_hash_map.74" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set.75" }
%"class.absl::lts_20250512::container_internal::raw_hash_set.75" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple.76" }
%"class.absl::lts_20250512::container_internal::CompressedTuple.76" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.77" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.77" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"class.absl::lts_20250512::Mutex" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.88 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.88 = type { i64, [8 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr.91" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr.91" = type { %"struct.std::__uniq_ptr_data.92" }
%"struct.std::__uniq_ptr_data.92" = type { %"class.std::__uniq_ptr_impl.93" }
%"class.std::__uniq_ptr_impl.93" = type { %"class.std::tuple.94" }
%"class.std::tuple.94" = type { %"struct.std::_Tuple_impl.95" }
%"struct.std::_Tuple_impl.95" = type { %"struct.std::_Head_base.98" }
%"struct.std::_Head_base.98" = type { ptr }
%"class.google::protobuf::DescriptorProto" = type { %"class.google::protobuf::Message", %union.anon.40 }
%union.anon.40 = type { %"struct.google::protobuf::DescriptorProto::Impl_" }
%"struct.google::protobuf::DescriptorProto::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.3", %"class.google::protobuf::RepeatedPtrField.0", %"class.google::protobuf::RepeatedPtrField.1", %"class.google::protobuf::RepeatedPtrField.41", %"class.google::protobuf::RepeatedPtrField.3", %"class.google::protobuf::RepeatedPtrField.42", %"class.google::protobuf::RepeatedPtrField.43", %"class.google::protobuf::RepeatedPtrField", %"struct.google::protobuf::internal::ArenaStringPtr", ptr, i32, [4 x i8] }>
%"class.google::protobuf::RepeatedPtrField.41" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::RepeatedPtrField.42" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::RepeatedPtrField.43" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::DescriptorProto_ExtensionRange" = type { %"class.google::protobuf::Message", %union.anon.44 }
%union.anon.44 = type { %"struct.google::protobuf::DescriptorProto_ExtensionRange::Impl_" }
%"struct.google::protobuf::DescriptorProto_ExtensionRange::Impl_" = type { %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", ptr, i32, i32 }
%"class.google::protobuf::EnumDescriptorProto" = type { %"class.google::protobuf::Message", %union.anon.45 }
%union.anon.45 = type { %"struct.google::protobuf::EnumDescriptorProto::Impl_" }
%"struct.google::protobuf::EnumDescriptorProto::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.46", %"class.google::protobuf::RepeatedPtrField.47", %"class.google::protobuf::RepeatedPtrField", %"struct.google::protobuf::internal::ArenaStringPtr", ptr, i32, [4 x i8] }>
%"class.google::protobuf::RepeatedPtrField.46" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::RepeatedPtrField.47" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::FieldDescriptorProto" = type { %"class.google::protobuf::Message", %union.anon.48 }
%union.anon.48 = type { %"struct.google::protobuf::FieldDescriptorProto::Impl_" }
%"struct.google::protobuf::FieldDescriptorProto::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", ptr, i32, i32, i8, [3 x i8], i32, i32, [4 x i8] }>
%"class.google::protobuf::OneofDescriptorProto" = type { %"class.google::protobuf::Message", %union.anon.54 }
%union.anon.54 = type { %"struct.google::protobuf::OneofDescriptorProto::Impl_" }
%"struct.google::protobuf::OneofDescriptorProto::Impl_" = type { %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", ptr }
%"class.google::protobuf::EnumOptions" = type { %"class.google::protobuf::Message", %union.anon.55 }
%union.anon.55 = type { %"struct.google::protobuf::EnumOptions::Impl_" }
%"struct.google::protobuf::EnumOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", ptr, i8, i8, i8, %"class.google::protobuf::RepeatedPtrField.56" }
%"class.google::protobuf::internal::ExtensionSet" = type { i16, i16, %"union.google::protobuf::internal::ExtensionSet::AllocatedData" }
%"union.google::protobuf::internal::ExtensionSet::AllocatedData" = type { ptr }
%"class.google::protobuf::RepeatedPtrField.56" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::EnumValueOptions" = type { %"class.google::protobuf::Message", %union.anon.57 }
%union.anon.57 = type { %"struct.google::protobuf::EnumValueOptions::Impl_" }
%"struct.google::protobuf::EnumValueOptions::Impl_" = type <{ %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.56", ptr, ptr, i8, i8, [6 x i8] }>
%"class.google::protobuf::FieldOptions" = type { %"class.google::protobuf::Message", %union.anon.59 }
%union.anon.59 = type { %"struct.google::protobuf::FieldOptions::Impl_" }
%"struct.google::protobuf::FieldOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.60", %"class.google::protobuf::RepeatedPtrField.56", ptr, ptr, i32, i8, i8, i8, i8, i32, i8, i8, i32, %"class.google::protobuf::RepeatedField" }
%"class.google::protobuf::RepeatedPtrField.60" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::FileOptions" = type { %"class.google::protobuf::Message", %union.anon.61 }
%union.anon.61 = type { %"struct.google::protobuf::FileOptions::Impl_" }
%"struct.google::protobuf::FileOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", ptr, i8, i8, i8, i8, i8, i8, i8, i32, i8, %"class.google::protobuf::RepeatedPtrField.56" }
%"class.google::protobuf::MessageOptions" = type { %"class.google::protobuf::Message", %union.anon.62 }
%union.anon.62 = type { %"struct.google::protobuf::MessageOptions::Impl_" }
%"struct.google::protobuf::MessageOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", ptr, i8, i8, i8, i8, i8, %"class.google::protobuf::RepeatedPtrField.56" }
%"class.google::protobuf::ExtensionRangeOptions" = type { %"class.google::protobuf::Message", %union.anon.63 }
%union.anon.63 = type { %"struct.google::protobuf::ExtensionRangeOptions::Impl_" }
%"struct.google::protobuf::ExtensionRangeOptions::Impl_" = type <{ %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.64", %"class.google::protobuf::RepeatedPtrField.56", ptr, i32, [4 x i8] }>
%"class.google::protobuf::RepeatedPtrField.64" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::MethodOptions" = type { %"class.google::protobuf::Message", %union.anon.65 }
%union.anon.65 = type { %"struct.google::protobuf::MethodOptions::Impl_" }
%"struct.google::protobuf::MethodOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.56", ptr, i8, i32 }
%"class.google::protobuf::OneofOptions" = type { %"class.google::protobuf::Message", %union.anon.66 }
%union.anon.66 = type { %"struct.google::protobuf::OneofOptions::Impl_" }
%"struct.google::protobuf::OneofOptions::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.56", ptr }
%"class.google::protobuf::ServiceOptions" = type { %"class.google::protobuf::Message", %union.anon.67 }
%union.anon.67 = type { %"struct.google::protobuf::ServiceOptions::Impl_" }
%"struct.google::protobuf::ServiceOptions::Impl_" = type <{ %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.56", ptr, i8, [7 x i8] }>
%"class.std::vector.99" = type { %"struct.std::_Vector_base.100" }
%"struct.std::_Vector_base.100" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair" = type <{ %"class.absl::lts_20250512::Span", i32, [4 x i8] }>
%"class.absl::lts_20250512::Span" = type { ptr, i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }

$_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_SG_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEET_SG_SG_SG_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiEEmPKvPv = comdat any

$_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m = comdat any

$_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEEEEEvPNT_4TypeEPNS0_5ArenaESB_ = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPNS0_5ArenaEPNT_4TypeE = comdat any

$_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv = comdat any

$_ZN6google8protobuf5Arena16DefaultConstructINS0_14SourceCodeInfoEEEPvPS1_ = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value = comdat any

@_ZZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EEE42absl_log_internal_stateful_condition_state = internal global { { i32 }, { i64 } } zeroinitializer, align 8
@.str = private unnamed_addr constant [89 x i8] c"/opt-bench/work/grpc/grpc/third_party/protobuf/src/google/protobuf/compiler/retention.cc\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to fully strip source-retention options\00", align 1
@_ZZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EEE42absl_log_internal_stateful_condition_state_0 = internal global { { i32 }, { i64 } } zeroinitializer, align 8
@_ZZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EEE42absl_log_internal_stateful_condition_state_1 = internal global { { i32 }, { i64 } } zeroinitializer, align 8
@_ZZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EEE42absl_log_internal_stateful_condition_state_2 = internal global { { i32 }, { i64 } } zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN6google8protobuf24DescriptorProto_globals_E = external global %"struct.google::protobuf::DescriptorProtoGlobalsTypeInternal", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZN4absl12lts_2025051218container_internal11kSooControlE = external constant [17 x i8], align 16
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value = linkonce_odr dso_local constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 4, i32 4, i32 4, i16 4, i8 1, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE }, comdat, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::FileDescriptorProto") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef null)
  invoke void @_ZNK6google8protobuf14FileDescriptor6CopyToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK6google8protobuf14FileDescriptor20CopySourceCodeInfoToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #22
  resume { ptr, i32 } %i.a

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  invoke void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  ret void
}

declare void @_ZNK6google8protobuf14FileDescriptor6CopyToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK6google8protobuf14FileDescriptor20CopySourceCodeInfoToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 16 uses
  %3 = alloca %"struct.std::pair.120", align 8    ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.bi

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %5 = load ptr, ptr %i.d, align 8                ; 3 uses
  %6 = icmp ne ptr %5, null
  %7 = select i1 %.not, i1 true, i1 %6
  call void @llvm.assume(i1 %7)
  br i1 %.not, label %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %5, null
  br i1 %i.e, label %bb.d, label %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14SourceCodeInfoEEEPvPS1_(ptr noundef %.0.i.i.i.i)
          to label %.noexc unwind label %bb.bi    ; 2 uses

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  store ptr %i.m, ptr %i.d, align 8, !tbaa !38
  br label %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit

_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit: ; preds = %.noexc, %bb.c
  %i.n = phi ptr [ %i.m, %.noexc ], [ %5, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = or i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 8 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !39   ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.w = mul nuw nsw i64 %i.u, 24
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24
          to label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i unwind label %bb.j ; 5 uses

_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !39 ; 2 uses
  %i.z = icmp sgt i32 %.pre.i, 0
  br i1 %i.z, label %.lr.ph.i, label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0110.4.i, %.sroa.13.2.i
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.aa = ptrtoint ptr %.sroa.13.2.i to i64
  %i.ab = ptrtoint ptr %.sroa.0110.4.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %.sroa.0110.4.i, ptr nonnull %.sroa.13.2.i, i64 noundef %i.ag)
          to label %.noexc33.i unwind label %bb.j

.noexc33.i:                                       ; preds = %bb.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %.sroa.0110.4.i, ptr nonnull %.sroa.13.2.i)
          to label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc37.i, %bb.n, %.noexc33.i, %bb.i, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i, %bb.g
  %.sroa.23.1.i = phi ptr [ null, %bb.g ], [ %.sroa.23.0.lcssa242.i, %.noexc37.i ], [ %.sroa.23.0.lcssa242.i, %bb.n ], [ %.sroa.23.4.i, %.noexc33.i ], [ %.sroa.23.4.i, %bb.i ], [ null, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i ]
  %.sroa.0110.1.i = phi ptr [ null, %bb.g ], [ %.sroa.0110.0.lcssa247.i, %.noexc37.i ], [ %.sroa.0110.0.lcssa247.i, %bb.n ], [ %.sroa.0110.4.i, %.noexc33.i ], [ %.sroa.0110.4.i, %bb.i ], [ null, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit158.i:                                   ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit160.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp159.i:                          ; preds = %bb.m
  %lpad.loopexit.split-lp161.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i
  %i.ai = phi i32 [ %i.ce, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ], [ %.pre.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ], [ 0, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i ] ; 4 uses
  %.sroa.0110.0180.i = phi ptr [ %.sroa.0110.4.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ], [ %i.x, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i ] ; 7 uses
  %.sroa.13.0179.i = phi ptr [ %.sroa.13.2.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ], [ %i.x, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i ] ; 10 uses
  %.sroa.23.0178.i = phi ptr [ %.sroa.23.4.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ], [ %i.y, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE7reserveEm.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = add i64 %i.ak, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %.0.i.i.i.i.i = select i1 %i.am, ptr %i.r, ptr %i.aq
  %i.ar = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !43 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0179.i, %.sroa.23.0178.i
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44
  %i.au = and i32 %i.at, 1
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %.0.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.ax
  %.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0179.i, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.13.0179.i, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.13.0179.i, i64 16
  %i.bd = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !51
  br label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = ptrtoint ptr %.sroa.13.0179.i to i64
  %i.bf = ptrtoint ptr %.sroa.0110.0180.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.m, label %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc71.i unwind label %.loopexit.split-lp159.i

.noexc71.i:                                       ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 384307168202282325)
  %i.bm = select i1 %i.bk, i64 384307168202282325, i64 %i.bl ; 3 uses
  %.not.i.i61.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i61.i)
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24
          to label %.noexc72.i unwind label %.loopexit158.i ; 5 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 3 uses
  %i.bq = load i32, ptr %i.as, align 4, !tbaa !44
  %i.br = and i32 %i.bq, 1
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %.0.v.i.i.i.i.i.i.i.i.i62.i = select i1 %i.bs, ptr %i.as, ptr %i.bu
  %.0.i.i.i.i.i.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i62.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !46
  %i.bx = sext i32 %i.bw to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i63.i, ptr %i.bp, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ca = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !51
  %.not10.i.i.i.i64.i = icmp eq ptr %.sroa.0110.0180.i, %.sroa.13.0179.i
  br i1 %.not10.i.i.i.i64.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i

.lr.ph.i.i.i.i65.i:                               ; preds = %.noexc72.i, %.lr.ph.i.i.i.i65.i
  %.012.i.i.i.i66.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i65.i ], [ %i.bo, %.noexc72.i ] ; 2 uses
  %.0911.i.i.i.i67.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i65.i ], [ %.sroa.0110.0180.i, %.noexc72.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i66.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i67.i, i64 24, i1 false), !alias.scope !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i67.i, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66.i, i64 24 ; 2 uses
  %.not.i.i.i.i68.i = icmp eq ptr %i.cb, %.sroa.13.0179.i
  br i1 %.not.i.i.i.i68.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i, !llvm.loop !57

.noexc35.i:                                       ; preds = %.lr.ph.i.i.i.i65.i, %.noexc72.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bo, %.noexc72.i ], [ %i.cc, %.lr.ph.i.i.i.i65.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0180.i, i64 noundef %i.bg) #25
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  %.pre198.i = load i32, ptr %i.s, align 8, !tbaa !39
end_hunk_0
