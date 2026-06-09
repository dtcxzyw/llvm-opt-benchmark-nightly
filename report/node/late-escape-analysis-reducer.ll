inline.NumInlined: 712
inline.NumDeleted: 410
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::OpEffects" }
%"struct.v8::internal::compiler::turboshaft::OpEffects" = type { %"struct.v8::internal::compiler::turboshaft::EffectDimensions", %"struct.v8::internal::compiler::turboshaft::EffectDimensions", i8, i8 }
%"struct.v8::internal::compiler::turboshaft::EffectDimensions" = type { i8 }
%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }

$_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_ = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = comdat any

$_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE19transfer_n_slots_fnEPvSM_SM_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m = comdat any

$_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE = internal unnamed_addr constant [172 x { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } }] [{ { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 10 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 19 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 44 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 1, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 65 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 13 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 12 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 2 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 83 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 108 }, i8 6, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 71 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 77 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 1 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 4 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 32 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 17 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 100 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 19 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 108 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 17 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 100 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 2 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 3 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 8 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 74 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 15 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 79 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" zeroinitializer, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 64 }, i8 0, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 2, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 5 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 69 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 67 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 76 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 16 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 96 }, i8 4, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 95 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 111 }, i8 7, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" { %"struct.v8::internal::compiler::turboshaft::OpEffects" { %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 48 }, %"struct.v8::internal::compiler::turboshaft::EffectDimensions" { i8 112 }, i8 3, i8 0 } }, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" zeroinitializer, i8 1 } }, { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage", i8 } { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" undef, i8 0 } }], align 16
@_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE = internal unnamed_addr constant [172 x i64] [i64 24, i64 16, i64 16, i64 4, i64 8, i64 24, i64 32, i64 16, i64 8, i64 16, i64 16, i64 16, i64 8, i64 8, i64 8, i64 8, i64 12, i64 8, i64 16, i64 16, i64 8, i64 4, i64 8, i64 32, i64 32, i64 32, i64 24, i64 12, i64 16, i64 8, i64 24, i64 24, i64 8, i64 4, i64 4, i64 20, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 12, i64 12, i64 24, i64 36, i64 8, i64 12, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 16, i64 4, i64 12, i64 16, i64 4, i64 24, i64 8, i64 8, i64 16, i64 8, i64 16, i64 12, i64 4, i64 4, i64 4, i64 4, i64 8, i64 16, i64 24, i64 4, i64 24, i64 4, i64 8, i64 4, i64 16, i64 12, i64 12, i64 8, i64 16, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 12, i64 8, i64 8, i64 8, i64 16, i64 32, i64 4, i64 32, i64 16, i64 8, i64 8, i64 8, i64 4, i64 8, i64 24, i64 8, i64 8, i64 8, i64 24, i64 8, i64 24, i64 8, i64 24, i64 8, i64 4, i64 40, i64 8, i64 8, i64 4, i64 4, i64 4, i64 8, i64 8, i64 4, i64 8, i64 24, i64 12, i64 8, i64 8, i64 16, i64 8, i64 8, i64 4, i64 4, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 24, i64 32, i64 40, i64 8, i64 40, i64 8, i64 8, i64 8, i64 12, i64 8, i64 8, i64 8], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"new_capacity < std::numeric_limits<uint32_t>::max() / sizeof(OperationStorageSlot)\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 40, i32 40, i16 8, i8 0, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE19transfer_n_slots_fnEPvSM_SM_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE }, comdat, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s called on end() iterator.\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s called on default-constructed iterator.\00", align 1
@.str.9 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"operator*()\00", align 1
@.str.12 = private unnamed_addr constant [100 x i8] c"Comparing default-constructed hashtable iterator with a non-default-constructed hashtable iterator.\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Invalid iterator comparison. %s\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"absl::container_internal::raw_hash_map<>::at\00", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i16] [i16 0, i16 4128, i16 0, i16 4128], align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer3RunEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer25CollectUsesAndAllocationsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer24FindRemovableAllocationsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i
  %i.f = phi ptr [ %i.w, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.g, align 4 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %.sroa.03.0.copyload.i to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = icmp eq i8 %i.o, 104
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i: ; preds = %bb.b
  %i.t = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.u = and i32 %i.t, 262144
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7.i, !llvm.loop !7

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, %bb.b
  %i.v = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.03.0.copyload.i)
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7.i
  tail call void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.03.0.copyload.i)
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7.i, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, %.lr.ph.i
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer24FindRemovableAllocationsEv.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer24FindRemovableAllocationsEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer25CollectUsesAndAllocationsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noalias !9
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !9
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %.not4347 = icmp eq i32 %i.i, 0
  br i1 %.not4347, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

._crit_edge51:                                    ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph50, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread
  %.sroa.032.048 = phi i32 [ 0, %.lr.ph50 ], [ %i.bt, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread ] ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = zext i32 %.sroa.032.048 to i64
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = load i8, ptr %i.s, align 4               ; 2 uses
  %i.u = icmp eq i8 %i.t, 104
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.c
  %i.y = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  %i.z = and i32 %i.y, 262144
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre = load i8, ptr %i.s, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41_crit_edge, %bb.c
  %i.aa = phi i8 [ %.pre, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41_crit_edge ], [ %i.t, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.r, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = zext i8 %i.aa to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = zext i16 %i.am to i64
  %.idx = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not45 = icmp eq i16 %i.am, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre52 = load i8, ptr %i.s, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41
  %i.ap = phi i8 [ %.pre52, %._crit_edge.loopexit ], [ %i.aa, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41 ]
  %i.aq = icmp eq i8 %i.ap, -87
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41, %bb.e
  %.046 = phi ptr [ %i.ba, %bb.e ], [ %i.ak, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread41 ] ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %.046, align 4 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = zext i32 %.sroa.03.0.copyload to i64
  %i.aw = add i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = icmp eq i8 %i.ay, -87
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.03.0.copyload, i32 %i.ag)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.ao
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bc = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bd = icmp ult ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.m, align 8
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = add nsw i64 %i.bi, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bj)
  %.pre.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %bb.f, %bb.g
  %i.bk = phi ptr [ %i.bb, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store ptr %i.bl, ptr %i.j, align 8
  store i32 %i.ag, ptr %i.bk, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread: ; preds = %bb.b, %._crit_edge, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %i.bm = load ptr, ptr %i.n, align 8
  %i.bn = lshr i32 %.sroa.032.048, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 3
  %i.bt = add i32 %i.bs, %.sroa.032.048           ; 2 uses
  %.not43 = icmp eq i32 %i.bt, %i.i
  br i1 %.not43, label %._crit_edge51, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer24FindRemovableAllocationsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread
  %i.f = phi ptr [ %i.w, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %i.g, align 4 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %.sroa.03.0.copyload to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = icmp eq i8 %i.o, 104
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.b
  %i.t = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.u = and i32 %i.t, 262144
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7, !llvm.loop !7

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7: ; preds = %bb.b, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %i.v = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.03.0.copyload)
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7
  tail call void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.03.0.copyload)
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread: ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread7, %bb.c, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  store i32 %1, ptr %4, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.a, align 8, !noalias !13 ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noalias !20
  %.not.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !20 ; 3 uses
  %i.h = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !noalias !20
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !20
  store ptr %i.a, ptr %3, align 8, !noalias !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.j, align 8, !noalias !20
  %i.k = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #13, !noalias !20 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !20
  %.pre = load i32, ptr %4, align 4, !noalias !23
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !24 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noalias !24
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %i.r = zext i32 %1 to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !24 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !24 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c                     ; 2 uses
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !24
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit, label %.critedge.i, !prof !12

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i, !prof !27

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #13, !noalias !24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !24, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !24
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i
  %i.bc = phi i32 [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ]
  %.sroa.6.0 = phi ptr [ %i.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %i.bb, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ]
  store i32 %i.bc, ptr %.sroa.6.0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.be = load ptr, ptr %i.b, align 8, !noalias !23
  store ptr %i.be, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit: ; preds = %.lr.ph.i
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %6 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %6, label %7, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a, !prof !28

7:                                                ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a: ; preds = %bb.f, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  %.sroa.0.118 = phi ptr [ %5, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.0.0, %bb.f ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %i.am, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.6.0, %bb.f ] ; 6 uses
  %.sroa.11.116 = phi i1 [ false, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ true, %bb.f ]
  %i.bg = icmp eq ptr %.sroa.0.118, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.bg, label %bb.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread, !prof !29

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #13
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a
  %i.bh = load i8, ptr %.sroa.0.118, align 1
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit, label %bb.h, !prof !12

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread: ; preds = %bb.c
  %i.bj = load i8, ptr @_ZN4absl18container_internal11kSooControlE, align 1
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread, label %bb.h, !prof !12

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #13
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8 ; 4 uses
  br i1 %.sroa.11.116, label %bb.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

bb.i:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit
  %i.bn = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.sroa.0.0.copyload = load i32, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = zext i32 %.sroa.0.0.copyload to i64
  %i.bs = add i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i64                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %.not.i.i = icmp ult i64 %i.ce, %i.bw
  br i1 %.not.i.i, label %bb.j, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.bw)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread, %bb.j, %bb.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit
  %i.cf = phi ptr [ %i.bl, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread ], [ %i.bm, %bb.j ], [ %i.bm, %bb.i ], [ %i.bm, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit ]
  %.sroa.6.1174044 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread ], [ %.sroa.6.1, %bb.j ], [ %.sroa.6.1, %bb.i ], [ %.sroa.6.1, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.6.1174044, i64 24 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.6.1174044, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = icmp ult ptr %i.ch, %i.cj
  br i1 %i.ck, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.6.1174044, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.cr)
  %.pre.i = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, %bb.k
  %i.cs = phi ptr [ %i.ch, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store ptr %i.ct, ptr %i.cg, align 8
  store i32 %2, ptr %i.cs, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 3 uses
  store i32 %1, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.h = icmp eq i32 %i.g, %1
  %i.i = select i1 %i.h, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i, 48
  %i.n = zext i32 %1 to i64
  %i.o = xor i64 %i.m, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %.thread, !prof !27

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.i, %bb.c ], [ %i.al, %.thread33.i.i ] ; 3 uses
  %i.as = icmp eq ptr %.pn.i, null                ; 2 uses
  %i.at = icmp eq ptr %.pn.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  %i.au = load i8, ptr %.pn.i, align 1
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.at, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.as, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not21 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not21, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread
  %.01122 = phi ptr [ %i.bv, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread ], [ %i.ay, %bb.k ] ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %.01122, align 4
  %.sroa.01.0.copyload = load i32, ptr %2, align 4 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = zext i32 %.sroa.01.0.copyload to i64
  %i.bg = add i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = icmp eq i8 %i.bi, 104
  br i1 %i.bj, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i: ; preds = %bb.l
  %i.bn = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  %i.bo = and i32 %i.bn, 262144
  %.not15.i = icmp eq i32 %i.bo, 0
  br i1 %.not15.i, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i
  %.pre.i = load ptr, ptr %0, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre17.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre18.i = ptrtoint ptr %.pre17.i to i64
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i, %bb.l
  %.pre-phi.i = phi i64 [ %.pre18.i, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i ], [ %i.be, %bb.l ]
  %i.bp = zext i32 %.sroa.02.0.copyload to i64
  %i.bq = add i64 %.pre-phi.i, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4
  %.not.i = icmp eq i8 %i.bs, 78
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit, label %.thread

_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.01.0.copyload
  br i1 %i.bu, label %.thread, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread

_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, %.lr.ph, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.01122, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.ba
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %._crit_edge.i.i, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i, %bb.b, %bb.k, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %.3 = phi i1 [ false, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit ], [ false, %bb.k ], [ true, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit ], [ false, %bb.b ], [ false, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread ], [ true, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 2 uses
  store i32 %1, ptr %2, align 4
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  tail call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.a, i32 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8
  %i.h = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.i = icmp eq i32 %i.h, %1
  %i.j = select i1 %i.i, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %sext.i = shl i64 %i.m, 48
  %i.n = ashr exact i64 %sext.i, 48
  %i.o = zext i32 %1 to i64
  %i.p = xor i64 %i.n, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.c        ; 4 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %.loopexit, !prof !27

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.j, %bb.c ], [ %i.am, %.thread33.i.i ] ; 3 uses
  %i.at = icmp eq ptr %.pn.i, null                ; 2 uses
  %i.au = icmp eq ptr %.pn.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  %i.av = load i8, ptr %.pn.i, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not19 = icmp eq ptr %i.az, %i.bb
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.020 = phi ptr [ %i.az, %.lr.ph ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %.020, align 4 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = zext i32 %.sroa.04.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4 ; 2 uses
  %i.bo = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.bp = add i64 %i.bo, %i.bj
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp eq i8 %i.br, -87
  br i1 %i.bs, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bf, align 8
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.cb)
  %.pre.i.i = load ptr, ptr %i.bc, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit: ; preds = %bb.m, %bb.n
  %i.cc = phi ptr [ %i.bt, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store ptr %i.cd, ptr %i.bc, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.cc, align 4
  %.pre = load ptr, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, %bb.l
  %i.ce = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit ], [ %i.bg, %bb.l ]
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.ce, i32 %.sroa.04.0.copyload)
  %i.cf = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.bb
  br i1 %.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %._crit_edge.i.i, %bb.o, %bb.b, %bb.k, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.g, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.l = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.u, align 8 ; 2 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.r, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.a        ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.z = load <16 x i8>, ptr %i.y, align 1        ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.al, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.6.0.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i16 %.sroa.017.047.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.am = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i, !prof !27

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ag, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null                 ; 2 uses
  %i.as = icmp eq ptr %i.aq, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  %i.at = load i8, ptr %i.aq, align 1
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.as, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !27

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.15) #14
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %i.av = load i8, ptr %i.aq, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratordeEv.exit, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #13
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratordeEv.exit: ; preds = %bb.l
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 104
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.b
  %i.m = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.n = and i32 %i.m, 262144
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre18 = ptrtoint ptr %.pre17 to i64
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre18, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge ], [ %i.d, %bb.b ]
  %i.o = zext i32 %2 to i64
  %i.p = add i64 %.pre-phi, %i.o
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %.not = icmp eq i8 %i.r, 78
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.s, align 4
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i.i, %1
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13, %bb.a, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit ], [ %i.t, %bb.c ], [ true, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13 ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4                 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload26 = load i32, ptr %i.c, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.d, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.r [
    i8 77, label %bb.c
    i8 78, label %bb.d
    i8 93, label %bb.e
    i8 95, label %bb.f
    i8 72, label %switch.lookup
    i8 100, label %bb.g
    i8 101, label %bb.h
    i8 -85, label %bb.i
    i8 8, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
    i8 23, label %bb.j
    i8 24, label %bb.k
    i8 25, label %bb.l
    i8 28, label %bb.m
    i8 29, label %bb.n
    i8 45, label %bb.o
    i8 46, label %bb.p
    i8 50, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = and i8 %i.f, 4                           ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %spec.select.i = select i1 %.not.i, i8 3, i8 67 ; 2 uses
  %i.h = and i8 %i.f, 64
  %.not2.i = icmp eq i8 %i.h, 0                   ; 3 uses
  %.sroa.0.0.insert.insert.i17.i.i = or disjoint i8 %spec.select.i, 12
  %.sroa.014.1.i = select i1 %.not2.i, i8 %spec.select.i, i8 %.sroa.0.0.insert.insert.i17.i.i
  %.sroa.6.1.i = select i1 %.not2.i, i32 19456, i32 20224
  %.sroa.8.1.i = select i1 %.not2.i, i8 %i.g, i8 4
  %.sroa.8.0.insert.ext.i = zext nneg i8 %.sroa.8.1.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw nsw i32 %.sroa.8.0.insert.ext.i, 16
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.6.1.i
  %.sroa.014.0.insert.ext.i = zext nneg i8 %.sroa.014.1.i to i32
  %.sroa.014.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.014.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = and i8 %i.j, 4
  %.not.i1 = icmp eq i8 %i.k, 0
  %spec.select.i2 = select i1 %.not.i1, i8 12, i8 79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !32, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %i.o ; 2 uses
  %spec.select61.i = select i1 %i.n, i32 286464, i32 282368
  %i.p = and i8 %i.j, 64
  %.not3.i = icmp eq i8 %i.p, 0
  %i.q = or i8 %spec.select60.i, 3
  %.sroa.021.2.i = select i1 %.not3.i, i8 %spec.select60.i, i8 %i.q
  %.sroa.021.0.insert.ext.i = zext nneg i8 %.sroa.021.2.i to i32
  %.sroa.021.0.insert.insert.i = or disjoint i32 %spec.select61.i, %.sroa.021.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.s, align 4
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext nneg i8 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv, i64 %i.v
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 2
  %.sroa.015.0.insert.insert.i = select i1 %i.y, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 8
  %spec.select.i4 = select i1 %i.ab, i32 282380, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = icmp eq i8 %i.ad, 2
  %spec.select.i5 = select i1 %i.ae, i32 486483, i32 487263
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !range !32, !noundef !5 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select.i6 = select i1 %i.ah, i8 67, i8 3  ; 2 uses
  %spec.select28.i = shl nuw nsw i8 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !32, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %.sroa.0.0.insert.insert.i17.i.i7 = or disjoint i8 %spec.select.i6, 12
  %.sroa.013.1.i = select i1 %i.ak, i8 %.sroa.0.0.insert.insert.i17.i.i7, i8 %spec.select.i6
  %i.al = zext nneg i8 %spec.select28.i to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, 19456
  %.sroa.6.0.insert.insert.i8 = select i1 %i.ak, i32 282368, i32 %i.an
  %.sroa.013.0.insert.ext.i = zext nneg i8 %.sroa.013.1.i to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i8, %.sroa.013.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.k:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !range !32, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.09.0.insert.insert.i = select i1 %i.aq, i32 282447, i32 282380
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.l:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !32, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.015.0.insert.insert.i9 = select i1 %i.at, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.m:                                             ; preds = %bb.b
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.n:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 4, !range !32, !noundef !5 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  %spec.select17.i = shl nuw nsw i8 %i.av, 2
  %.sroa.512.0.insert.ext.i = zext nneg i8 %spec.select17.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.07.0.insert.ext.i = select i1 %i.aw, i32 67, i32 3
  %.sroa.49.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.07.0.insert.ext.i
  %.sroa.07.0.insert.insert.i = or disjoint i32 %.sroa.49.0.insert.insert.i, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.o:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !range !32, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  %.sroa.0.0.insert.insert.i.i = select i1 %i.az, i32 282380, i32 19459 ; 4 uses
  %.sroa.8.0.extract.shift21.i = and i32 %.sroa.0.0.insert.insert.i.i, 262144
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 4
  %.not.i10 = icmp eq i8 %i.bc, 0                 ; 2 uses
  %.sroa.013.0.extract.trunc.i = or i32 %.sroa.0.0.insert.insert.i.i, 67
  %spec.select.i11 = select i1 %.not.i10, i32 %.sroa.0.0.insert.insert.i.i, i32 %.sroa.013.0.extract.trunc.i
  %spec.select39.i = select i1 %.not.i10, i32 %.sroa.8.0.extract.shift21.i, i32 262144
  %.sroa.616.0.insert.ext.i = and i32 %.sroa.0.0.insert.insert.i.i, 20224
  %.sroa.616.0.insert.insert.i = or disjoint i32 %spec.select39.i, %.sroa.616.0.insert.ext.i
  %.sroa.013.0.insert.ext.i12 = and i32 %spec.select.i11, 79
  %.sroa.013.0.insert.insert.i13 = or disjoint i32 %.sroa.616.0.insert.insert.i, %.sroa.013.0.insert.ext.i12
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.p:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 4                         ; 2 uses
  %.not.i14 = icmp eq i8 %i.bf, 0
  %spec.select.i15 = select i1 %.not.i14, i32 3, i32 67
  %.sroa.512.0.insert.ext.i16 = zext nneg i8 %i.bf to i32
  %.sroa.512.0.insert.shift.i17 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i16, 16
  %.sroa.49.0.insert.insert.i18 = or disjoint i32 %.sroa.512.0.insert.shift.i17, %spec.select.i15
  %.sroa.07.0.insert.insert.i19 = or disjoint i32 %.sroa.49.0.insert.insert.i18, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, 4                         ; 2 uses
  %.not.i20 = icmp eq i8 %i.bi, 0
  %spec.select.i21 = select i1 %.not.i20, i32 3, i32 67
  %.sroa.512.0.insert.ext.i22 = zext nneg i8 %i.bi to i32
  %.sroa.512.0.insert.shift.i23 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i22, 16
  %.sroa.49.0.insert.insert.i24 = or disjoint i32 %.sroa.512.0.insert.shift.i23, %spec.select.i21
  %.sroa.07.0.insert.insert.i25 = or disjoint i32 %.sroa.49.0.insert.insert.i24, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.r:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #14
  unreachable

_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit: ; preds = %switch.lookup, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.014.0.insert.insert.i, %bb.c ], [ %.sroa.021.0.insert.insert.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0.0.copyload.i3, %bb.f ], [ %.sroa.0.0.copyload26, %bb.a ], [ %.sroa.015.0.insert.insert.i, %bb.g ], [ %spec.select.i4, %bb.h ], [ %spec.select.i5, %bb.i ], [ %switch.ext, %switch.lookup ], [ %.sroa.013.0.insert.insert.i, %bb.j ], [ %.sroa.09.0.insert.insert.i, %bb.k ], [ %.sroa.015.0.insert.insert.i9, %bb.l ], [ 282383, %bb.m ], [ %.sroa.07.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i13, %bb.o ], [ %.sroa.07.0.insert.insert.i19, %bb.p ], [ %.sroa.07.0.insert.insert.i25, %bb.q ], [ 487263, %bb.b ]
  ret i32 %.sroa.0.1
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !12

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !12

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre15 = add i64 %.pre14, %i.d                 ; 2 uses
  %.pre17 = inttoptr i64 %.pre15 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi18 = phi ptr [ %.pre17, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi16 = phi i64 [ %.pre15, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre14, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = lshr i32 %1, 4
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  store ptr %.pre-phi18, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = sub i64 %i.bd, %.pre-phi16
  %i.bf = icmp ult i64 %i.be, 9
  br i1 %i.bf, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6DeadOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !27

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bg = sub i64 %i.bd, %.pre-phi
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = add nuw nsw i64 %i.bi, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bj)
  %.pre.i.i.i.i = load ptr, ptr %i.at, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre12 = load ptr, ptr %i.a, align 8
  %.pre13 = load ptr, ptr %i.av, align 8
  %.pre19 = ptrtoint ptr %.pre12 to i64
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6DeadOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6DeadOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, %bb.e
  %.pre-phi20 = phi i64 [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ], [ %.pre19, %bb.e ]
  %i.bk = phi ptr [ %i.aw, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ], [ %.pre13, %bb.e ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre-phi16, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ], [ %.pre10.i.i.i.i, %bb.e ]
  %i.bl = phi ptr [ %.pre-phi18, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ], [ %.pre.i.i.i.i, %bb.e ]
  %i.bm = sub i64 %.pre-phi.i.i.i.i, %.pre-phi20  ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = lshr i64 %i.bm, 4
  %i.bp = and i64 %i.bo, 268435455
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bp
  store i16 2, ptr %i.bq, align 2
  %i.br = load ptr, ptr %i.av, align 8
  %i.bs = add i32 %i.bn, 16
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = add nsw i32 %i.bt, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bv
  store i16 2, ptr %i.bw, align 2
  store i32 104, ptr %i.bl, align 4
  store ptr %i.au, ptr %i.at, align 8
  %i.bx = load ptr, ptr %i.av, align 8
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ay
  store i16 %i.ba, ptr %i.by, align 2
  %i.bz = load ptr, ptr %i.av, align 8
  %i.ca = zext i16 %i.ba to i32
  %i.cb = shl nuw nsw i32 %i.ca, 3
  %i.cc = add i32 %i.cb, %1
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cf
  store i16 %i.ba, ptr %i.cg, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e
  %i.j = lshr exact i64 %i.i, 3
  %i.k = and i64 %i.j, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i64 [ %i.k, %bb.a ], [ %.0, %bb.b ] ; 3 uses
  %.0 = shl i64 %.0.in, 1                         ; 4 uses
  %i.l = icmp ult i64 %.0, %1
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !33

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %.0, 536870911
  br i1 %i.p, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = and i64 %i.o, 4294967295                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %i.s = shl i64 %.0.in, 4                        ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.s) #13
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i.i, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ac, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = and i64 %.0.in, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %i.af, 9223372036854775807
  br i1 %.not, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #14
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  %i.ag = shl nuw i64 %i.af, 1
  %i.ah = add i64 %i.ag, 6
  %i.ai = and i64 %i.ah, -8                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef %i.ai) #13
  %.pre.i.i18 = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i64 [ %.pre.i.i18, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = add i64 %i.ap, %i.ai
  store i64 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = and i64 %i.o, 4294967294
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %i.at, i64 %i.au, i1 false)
  store ptr %i.aa, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.q
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0
  store ptr %i.aw, ptr %i.f, align 8
  store ptr %i.aq, ptr %i.as, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #6

declare { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.a = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE19transfer_n_slots_fnEPvSM_SM_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.a = load i32, ptr %2, align 8
  store i32 %i.a, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.c, align 8
  store ptr %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.n = add nsw i64 %3, -1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.at, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.av, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %.01012 = phi ptr [ %i.au, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.r = load i32, ptr %.01012, align 8
  store i32 %i.r, ptr %.0913, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.x = load ptr, ptr %i.t, align 8
  store ptr %i.x, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.w, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.ag = load i32, ptr %i.ae, align 8
  store i32 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %.0913, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.am = load ptr, ptr %i.ai, align 8
  store ptr %i.am, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01012, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  store ptr %i.ao, ptr %i.aj, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01012, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.at = add i64 %.014, -2                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01012, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %.0913, i64 80
  %.not.1 = icmp eq i64 %i.at, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #8 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #13
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #8 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bm, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.t ; 6 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
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
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.ag, 15
  %i.ak = add i64 %i.aj, %i.ad
  %i.al = and i64 %i.ak, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.am = and i64 %i.b, %i.ad
  %.not.i = icmp ult i64 %i.am, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.a, %i.ad                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.an
  %i.ap = load <16 x i8>, ptr %i.ao, align 1
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ar, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %i.an, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.t, i64 noundef %i.ad) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %i.av = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 5 uses
  %i.ay = load i32, ptr %i.u, align 8
  store i32 %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.be = load ptr, ptr %i.ba, align 8
  store ptr %i.be, ptr %i.az, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  store ptr %i.bg, ptr %i.bb, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr %i.bi, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr %i.bk, ptr %i.bd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = add i16 %.sroa.052.061, -1
  %i.bm = and i16 %i.bl, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !36
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #9

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #13
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
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

; Function Attrs: noreturn
declare void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{}
!6 = !{i64 8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!11 = distinct !{!11, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!14, !16, !18}
!14 = distinct !{!14, !15, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_: argument 0"}
!15 = distinct !{!15, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_"}
!16 = distinct !{!16, !17, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE16try_emplace_implIRSI_JRPNS4_4ZoneEEEESH_INS0_12raw_hash_setISA_SD_SF_SK_E8iteratorEbEOT_DpOT0_: argument 0"}
!17 = distinct !{!17, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE16try_emplace_implIRSI_JRPNS4_4ZoneEEEESH_INS0_12raw_hash_setISA_SD_SF_SK_E8iteratorEbEOT_DpOT0_"}
!18 = distinct !{!18, !19, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_: argument 0"}
!19 = distinct !{!19, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_"}
!20 = !{!21, !14, !16, !18}
!21 = distinct !{!21, !22, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_: argument 0"}
!22 = distinct !{!22, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_"}
!23 = !{!16, !18}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_largeIS7_EESH_INSL_8iteratorEbERKT_: argument 0"}
!26 = distinct !{!26, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_largeIS7_EESH_INSL_8iteratorEbERKT_"}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!"branch_weights", !"expected", i32 3433666, i32 2144049982}
!29 = !{!"branch_weights", !"expected", i32 1226607, i32 2146257041}
!30 = distinct !{!30, !8}
!31 = !{!"branch_weights", !"expected", i32 1907946, i32 2145575702}
!32 = !{i8 0, i8 2}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = !{i64 4}
end_hunk_0
