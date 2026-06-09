inline.NumInlined: 917
inline.NumDeleted: 493
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::OpEffects" }
%"struct.v8::internal::compiler::turboshaft::OpEffects" = type { %"struct.v8::internal::compiler::turboshaft::EffectDimensions", %"struct.v8::internal::compiler::turboshaft::EffectDimensions", i8, i8 }
%"struct.v8::internal::compiler::turboshaft::EffectDimensions" = type { i8 }
%"class.v8::base::SmallVector" = type { ptr, ptr, ptr, [64 x i8] }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"struct.std::pair.39" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", ptr }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }
%"struct.std::pair" = type <{ %"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashSetPolicy<v8::internal::compiler::turboshaft::OpIndex>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::OpIndex>, std::equal_to<v8::internal::compiler::turboshaft::OpIndex>, v8::internal::ZoneAllocator<v8::internal::compiler::turboshaft::OpIndex>>::iterator", i8, [7 x i8] }>
%"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashSetPolicy<v8::internal::compiler::turboshaft::OpIndex>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::OpIndex>, std::equal_to<v8::internal::compiler::turboshaft::OpIndex>, v8::internal::ZoneAllocator<v8::internal::compiler::turboshaft::OpIndex>>::iterator" = type { ptr, %union.anon }
%union.anon = type { ptr }

$_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12FindOrCreateENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m = comdat any

$_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_ = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSM_PFvSM_hmmE = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value = comdat any

@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Comparing default-constructed hashtable iterator with a non-default-constructed hashtable iterator.\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid iterator comparison. %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.8 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 16, i32 16, i16 8, i8 1, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE }, comdat, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE = internal unnamed_addr constant [172 x { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } }] [{ { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 10 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 19 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 1, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 65 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 13 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 2 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 108 }, i8 6, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 71 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 77 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 1 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 4 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 17 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 100 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 19 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 108 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 17 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 100 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 2 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 5 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 69 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 48 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 112 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }], align 16
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 4, i32 4, i16 4, i8 1, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSM_PFvSM_hmmE }, comdat, align 8
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i16] [i16 0, i16 4128, i16 0, i16 4128], align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12ProcessStoreERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i15 = load i32, ptr %i.b, align 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = zext i32 %.sroa.0.0.copyload.i.i15 to i64
  %i.l = add i64 %i.g, %i.k
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %.val14 = load i8, ptr %i.j, align 4
  switch i8 %.val14, label %bb.f [
    i8 -87, label %bb.b
    i8 91, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.val = load i8, ptr %i.m, align 4
  switch i8 %.val, label %bb.f [
    i8 -87, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 4
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %.sroa.0.0.copyload.i.i15)
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12FindOrCreateENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %.sroa.0.0.copyload.i.i) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = add nsw i64 %i.ad, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.ae)
  %.pre.i = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %.thread, %bb.e
  %i.af = phi ptr [ %i.u, %.thread ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store ptr %i.ag, ptr %i.t, align 8
  store i32 %.sroa.0.0.copyload.i.i15, ptr %i.af, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i, !prof !8

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit, !prof !8

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit
  %.0 = phi ptr [ %i.ba, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit ], [ null, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12FindOrCreateENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i, !prof !8

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_8iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit, !prof !8

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %bb.n

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorESP_.exit
  %i.bb = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit
  %.0 = phi ptr [ %i.ba, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE8iteratorptEv.exit ], [ %i.bb, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer10ProcessPhiERKNS2_5PhiOpE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = zext i16 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not33 = icmp eq i16 %i.g, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8
  %.pre39 = load ptr, ptr %2, align 8
  %i.k = icmp eq ptr %.pre, %.pre39
  br i1 %i.k, label %.loopexit, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.034 = phi ptr [ %i.e, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %.sroa.013.0.copyload = load i32, ptr %.034, align 4 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = zext i32 %.sroa.013.0.copyload to i64
  %i.q = add i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i8, ptr %i.r, align 4
  switch i8 %i.s, label %bb.f [
    i8 -87, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.sink.split.sink.split, label %.sink.split, !prof !8

bb.d:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %.sroa.013.0.copyload)
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %.sink.split.sink.split, label %.sink.split, !prof !8

.sink.split.sink.split:                           ; preds = %bb.e, %bb.c
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i29 = load ptr, ptr %i.b, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.e, %bb.c
  %.sink48 = phi ptr [ %i.t, %bb.c ], [ %i.x, %bb.e ], [ %.pre.i.i29, %.sink.split.sink.split ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink48, i64 4
  store ptr %i.aa, ptr %i.b, align 8
  store i32 %.sroa.013.0.copyload, ptr %.sink48, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !6
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ae, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.aj) ; 4 uses
  %i.al = load ptr, ptr %2, align 8               ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not2735 = icmp eq ptr %i.al, %i.am
  br i1 %.not2735, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph38, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit
  %.02636 = phi ptr [ %i.al, %.lr.ph38 ], [ %i.bc, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit ] ; 2 uses
  %i.aq = load i32, ptr %.02636, align 4
  %i.ar = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = add nsw i64 %i.ay, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.az)
  %.pre.i = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %bb.h, %bb.i
  %i.ba = phi ptr [ %i.ar, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.an, align 8
  store i32 %i.aq, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.02636, i64 4 ; 2 uses
  %.not27 = icmp eq ptr %i.bc, %i.am
  br i1 %.not27, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, %bb.a, %bb.g, %._crit_edge
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.39", align 8     ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 32) #15
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 32
  store i64 %i.j, ptr %i.d, align 8
  %i.k = load ptr, ptr %0, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 %1, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.n, align 8
  %i.o = load i64, ptr %i.m, align 8, !noalias !11 ; 4 uses
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.q, align 8, !noalias !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !noalias !28
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !28
  store ptr %i.m, ptr %2, align 8, !noalias !28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.w, align 8, !noalias !28
  %i.x = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #15, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !28
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.x
  %.pre = load i32, ptr %3, align 8, !noalias !33
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !34 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !34
  %sext.i = shl i64 %i.ac, 48
  %i.ad = ashr exact i64 %sext.i, 48
  %i.ae = zext i32 %1 to i64
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw nsw i128 %i.ag, 8779197792823184629 ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %i.al = lshr i64 %i.ak, 57
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.an, align 8, !noalias !34 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.ak, %bb.g ], [ %i.bn, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.bm, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.o             ; 5 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1), !noalias !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !noalias !34 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.au, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.bd, %.critedge.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.o
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !noalias !34
  %i.bb = icmp eq i32 %i.ba, %1
  br i1 %i.bb, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !7

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = add i16 %.sroa.035.065.i, -1
  %i.bd = and i16 %i.bc, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.h
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.bf, 0
  br i1 %.not57.i, label %bb.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7, !prof !8

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7: ; preds = %.critedge19.i
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.o
  %i.bk = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ak, i64 %i.bj, i64 %.sroa.15.0.i) #15, !noalias !34 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.aa, align 8, !noalias !34
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.an, align 8, !noalias !34
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %.critedge19.i
  %i.bm = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bn = add i64 %i.bm, %.sroa.7.0.i
  br label %bb.h

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.d, %bb.f, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7
  %i.bo = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7 ], [ %1, %bb.d ], [ %.pre, %bb.f ]
  %.sroa.4.04 = phi ptr [ %i.bl, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7 ], [ %i.s, %bb.d ], [ %i.z, %bb.f ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.4.04, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.4.04, i64 8
  %i.bq = load ptr, ptr %i.n, align 8, !noalias !33
  store ptr %i.bq, ptr %i.bp, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(6) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.f, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = add nsw i64 %i.w, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.x)
  %.pre.i.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit: ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.m, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.z, ptr %i.l, align 8
  store i32 %i.k, ptr %i.y, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) ; 3 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.d, %i.f
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit
  %.01114 = phi ptr [ %i.d, %.lr.ph ], [ %i.w, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit ] ; 2 uses
  %i.k = load i32, ptr %.01114, align 4
  %i.l = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add nsw i64 %i.s, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.l, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.g, align 8
  store i32 %i.k, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01114, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.f
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer14OldifySubgraphENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) initializes((144, 152)) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 5 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 13 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1) ; 3 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.g, %i.i
  br i1 %.not13.i, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i, %.lr.ph.i
  %.01114.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.k = load i32, ptr %.01114.i, align 4
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add nsw i64 %i.s, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.t)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i: ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %i.l, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.d, align 8
  store i32 %i.k, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01114.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i, %bb.b
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16
  %i.ah = phi ptr [ %i.x, %.lr.ph ], [ %i.dw, %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 5 uses
  store i32 %i.aj, ptr %2, align 4
  store ptr %i.ai, ptr %i.d, align 8
  %i.ak = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %i.aj to i64                   ; 2 uses
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %.not = icmp eq i8 %i.ar, -87
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %bb.g, !llvm.loop !37

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.as, align 4
  %i.av = call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.aj) ; 3 uses
  %.not28 = icmp eq ptr %i.av, null
  br i1 %.not28, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not13.i10 = icmp eq ptr %i.ax, %i.az
  br i1 %.not13.i10, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.h, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14
  %.01114.i12 = phi ptr [ %i.bm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14 ], [ %i.ax, %bb.h ] ; 2 uses
  %i.ba = load i32, ptr %.01114.i12, align 4
  %i.bb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bc = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bd = icmp ult ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14, label %bb.i, !prof !7

bb.i:                                             ; preds = %.lr.ph.i11
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = add nsw i64 %i.bi, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bj)
  %.pre.i.i13 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14: ; preds = %bb.i, %.lr.ph.i11
  %i.bk = phi ptr [ %i.bb, %.lr.ph.i11 ], [ %.pre.i.i13, %bb.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store ptr %i.bl, ptr %i.d, align 8
  store i32 %i.ba, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01114.i12, i64 4 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i15, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %.lr.ph.i11

bb.j:                                             ; preds = %bb.e
  %i.bn = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.ad, align 8
  %.not.i.i.i = icmp ult i64 %i.bp, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.ac, align 8
  %i.br = icmp eq i32 %i.bq, %i.aj
  %i.bs = select i1 %i.br, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit

bb.m:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ac, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bt = load i64, ptr %i.ad, align 8
  %sext.i = shl i64 %i.bt, 48
  %i.bu = ashr exact i64 %sext.i, 48
  %i.bv = xor i64 %i.bu, %i.ao
  %i.bw = zext i64 %i.bv to i128
  %i.bx = mul nuw nsw i128 %i.bw, 8779197792823184629 ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64                 ; 2 uses
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.ae, align 8 ; 2 uses
  %i.cd = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.pn.i8.i = phi i64 [ %i.ca, %bb.m ], [ %i.cx, %bb.p ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.m ], [ %i.cw, %bb.p ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.bn       ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.cf, i32 0, i32 3, i32 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ch = load <16 x i8>, ptr %i.cg, align 1      ; 2 uses
  %i.ci = icmp eq <16 x i8> %i.ce, %i.ch
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.o
  %.sroa.017.048.i.i = phi i16 [ %i.ct, %bb.o ], [ %i.cj, %bb.n ] ; 3 uses
  %i.ck = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add i64 %.sroa.6.0.i.i, %i.cl
  %i.cn = and i64 %i.cm, %i.bn                    ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.cp, %i.aj
  br i1 %i.cq, label %.thread33.i.i, label %bb.o, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cn ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cs = add i16 %.sroa.017.048.i.i, -1
  %i.ct = and i16 %i.cs, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.n
  %i.cu = icmp eq <16 x i8> %i.ch, splat (i8 -128)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %.not44.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not44.i.i, label %bb.p, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread, !prof !8

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cw = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.6.0.i.i
  br label %bb.n, !llvm.loop !38

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit: ; preds = %.thread33.i.i, %bb.l
  %.pn.i = phi ptr [ %i.bs, %bb.l ], [ %i.cr, %.thread33.i.i ] ; 3 uses
  %i.cy = icmp eq ptr %.pn.i, null                ; 2 uses
  %i.cz = icmp eq ptr %.pn.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.cy, %i.cz
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit
  %i.da = load i8, ptr %.pn.i, align 1
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.q, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit
  br i1 %i.cz, label %bb.s, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit, !prof !39

bb.s:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.cy, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, !llvm.loop !37

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread: ; preds = %._crit_edge.i.i, %bb.k, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.dc = load i8, ptr %i.af, align 8, !range !40, !alias.scope !41, !noundef !5
  %i.dd = trunc nuw i8 %i.dc to i1
  %.sroa.0.0.copyload.pre = load i32, ptr %2, align 4 ; 2 uses
  br i1 %i.dd, label %bb.t, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE6insertIS7_Li0EEESt4pairINSG_8iteratorEbERKT_.exit

bb.t:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !41
  store i32 %.sroa.0.0.copyload.pre, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 4
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE6insertIS7_Li0EEESt4pairINSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE6insertIS7_Li0EEESt4pairINSG_8iteratorEbERKT_.exit: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.de = call noundef ptr @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %.sroa.0.0.copyload.pre) ; 3 uses
  %.not30 = icmp eq ptr %i.de, null
  br i1 %.not30, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %bb.u

bb.u:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE6insertIS7_Li0EEESt4pairINSG_8iteratorEbERKT_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not13.i17 = icmp eq ptr %i.dg, %i.di
  br i1 %.not13.i17, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.u, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21
  %.01114.i19 = phi ptr [ %i.dv, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21 ], [ %i.dg, %bb.u ] ; 2 uses
  %i.dj = load i32, ptr %.01114.i19, align 4
  %i.dk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dl = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.dm = icmp ult ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21, label %bb.v, !prof !7

bb.v:                                             ; preds = %.lr.ph.i18
  %i.dn = load ptr, ptr %i.b, align 8
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 2
  %i.ds = add nsw i64 %i.dr, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ds)
  %.pre.i.i20 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21: ; preds = %bb.v, %.lr.ph.i18
  %i.dt = phi ptr [ %i.dk, %.lr.ph.i18 ], [ %.pre.i.i20, %bb.v ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.du, ptr %i.d, align 8
  store i32 %i.dj, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.01114.i19, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.dv, %i.di
  br i1 %.not.i22, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, label %.lr.ph.i18

_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i21, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit.i14, %bb.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE6insertIS7_Li0EEESt4pairINSG_8iteratorEbERKT_.exit, %bb.h, %bb.g, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE8iteratorESJ_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.dw = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dx = load ptr, ptr %i.b, align 8
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit.thread, label %bb.e

_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit16, %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer19PushContainedValuesENS2_7OpIndexE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer24PropagateAllocationTypesEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.09, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer14OldifySubgraphENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %.sroa.01.0.copyload)
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer20BuildStoreInputGraphEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !54
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !54
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.e, %i.h
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit
  %.sroa.0.029 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit ] ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = zext i32 %.sroa.0.029 to i64
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 7 uses
  %i.u = load i8, ptr %i.t, align 4               ; 2 uses
  %i.v = icmp eq i8 %i.u, 104
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.c
  %i.z = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  %i.aa = and i32 %i.z, 262144
  %.not27 = icmp eq i32 %i.aa, 0
  br i1 %.not27, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre = load i8, ptr %i.t, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25_crit_edge, %bb.c
  %i.ab = phi i8 [ %.pre, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25_crit_edge ], [ %i.u, %bb.c ]
  switch i8 %i.ab, label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit [
    i8 78, label %bb.d
    i8 -87, label %bb.e
    i8 91, label %bb.h
  ]

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread25
  tail call void @_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12ProcessStoreERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.t)
  br label %_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer15ProcessAllocateERKNS2_10AllocateOpE.exit

end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm:bb.a
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #17
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !63
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !63
  %i.g = load i32, ptr %i.f, align 8, !noalias !63
  %i.h = icmp eq i32 %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !63
  store ptr %1, ptr %3, align 8, !noalias !63
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !63
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #15, !noalias !63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !63
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !63
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !63
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !68 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !68
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !68
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !68 ; 2 uses
  %i.r = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !68 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.x, %bb.f ], [ %i.bb, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !68
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !68 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !68
  %i.ao = icmp eq i32 %i.an, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ao, label %.critedge21.i, label %.critedge.i, !prof !7

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.066.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !8

.thread.i:                                        ; preds = %.critedge19.i
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #15, !noalias !68 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !68
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !68
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ] ; 2 uses
  %.sink81.i = phi ptr [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit
  %.sink83.i.sink = phi ptr [ %.sink83.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.d ]
  %.sink81.i.sink = phi ptr [ %.sink81.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.sink = phi i8 [ %.sink.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink83.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.be, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #7 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSM_PFvSM_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !71

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.ba, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 6 uses
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8           ; 2 uses
  %i.ag = sub i64 %i.t, %i.ad                     ; 2 uses
  %i.ah = and i64 %i.h, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.ag, 15
  %i.ak = add i64 %i.aj, %i.ad
  %i.al = and i64 %i.ak, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.am = and i64 %i.b, %i.ad
  %.not.i = icmp ult i64 %i.am, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.a, %i.ad                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.an
  %i.ap = load <16 x i8>, ptr %i.ao, align 1
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ar, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %i.an, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.t, i64 noundef %i.ad) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %i.av = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.ay = load i32, ptr %i.u, align 4
  store i32 %i.ay, ptr %i.ax, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = add i16 %.sroa.052.061, -1
  %i.ba = and i16 %i.az, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !14, !16, !18, !20, !22, !24, !26}
!12 = distinct !{!12, !13, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_: argument 0"}
!13 = distinct !{!13, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_"}
!14 = distinct !{!14, !15, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESS_IJOSA_EEEEESI_INSM_8iteratorEbERKT_DpOT0_: argument 0"}
!15 = distinct !{!15, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESS_IJOSA_EEEEESI_INSM_8iteratorEbERKT_DpOT0_"}
!16 = distinct !{!16, !17, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_10ZoneVectorIS9_EEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISt4pairIKS9_SC_EEEE19EmplaceDecomposableEOS9_St5tupleIJOSC_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E: argument 0"}
!17 = distinct !{!17, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_10ZoneVectorIS9_EEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISt4pairIKS9_SC_EEEE19EmplaceDecomposableEOS9_St5tupleIJOSC_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E"}
!18 = distinct !{!18, !19, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS5_10ZoneVectorIS8_EEEENS_13hash_internal4HashIS8_EESt8equal_toIS8_ENS5_13ZoneAllocatorISt4pairIKS8_SB_EEEE19EmplaceDecomposableEJSJ_IS8_SB_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_: argument 0"}
!19 = distinct !{!19, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS5_10ZoneVectorIS8_EEEENS_13hash_internal4HashIS8_EESt8equal_toIS8_ENS5_13ZoneAllocatorISt4pairIKS8_SB_EEEE19EmplaceDecomposableEJSJ_IS8_SB_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_"}
!20 = distinct !{!20, !21, !"_ZN4absl18container_internal17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS3_10ZoneVectorIS6_EEE5applyINS0_12raw_hash_setISA_NS_13hash_internal4HashIS6_EESt8equal_toIS6_ENS3_13ZoneAllocatorISt4pairIKS6_S9_EEEE19EmplaceDecomposableEJSJ_IS6_S9_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_: argument 0"}
!21 = distinct !{!21, !"_ZN4absl18container_internal17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS3_10ZoneVectorIS6_EEE5applyINS0_12raw_hash_setISA_NS_13hash_internal4HashIS6_EESt8equal_toIS6_ENS3_13ZoneAllocatorISt4pairIKS6_S9_EEEE19EmplaceDecomposableEJSJ_IS6_S9_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_"}
!22 = distinct !{!22, !23, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEEvE5applyINS0_12raw_hash_setISB_NS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE19EmplaceDecomposableEJSL_IS7_SA_EESB_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_: argument 0"}
!23 = distinct !{!23, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEEvE5applyINS0_12raw_hash_setISB_NS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE19EmplaceDecomposableEJSL_IS7_SA_EESB_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_"}
!24 = distinct !{!24, !25, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE7emplaceIJSI_IS7_SA_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_: argument 0"}
!25 = distinct !{!25, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE7emplaceIJSI_IS7_SA_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_"}
!26 = distinct !{!26, !27, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value: argument 0"}
!27 = distinct !{!27, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE6insertEOSI_IS7_SA_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value"}
!28 = !{!29, !31, !12, !14, !16, !18, !20, !22, !24, !26}
!29 = distinct !{!29, !30, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE26find_or_prepare_insert_sooIS7_EESI_INSM_8iteratorEbERKT_: argument 0"}
!30 = distinct !{!30, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE26find_or_prepare_insert_sooIS7_EESI_INSM_8iteratorEbERKT_"}
!31 = distinct !{!31, !32, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE28find_or_prepare_insert_smallIS7_EESI_INSM_8iteratorEbERKT_: argument 0"}
!32 = distinct !{!32, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE28find_or_prepare_insert_smallIS7_EESI_INSM_8iteratorEbERKT_"}
!33 = !{!18, !20, !22, !24, !26}
end_hunk_1
