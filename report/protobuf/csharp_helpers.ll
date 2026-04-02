begin_hunk_0
@.str.16 = private unnamed_addr constant [15 x i8] c"OnConstruction\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Parser\00", align 1
@constinit = private unnamed_addr constant [11 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"None_\00", align 1
@_ZN6google8protobuf8compiler6csharpL12base64_charsE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.20 = private unnamed_addr constant [34 x i8] c"fdp.SerializeToString(&fdp_bytes)\00", align 1
end_hunk_0
begin_hunk_1
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 16, i32 16, i32 16, i16 8, i8 1, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSI_PFvSI_hmmE }, comdat, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZN4absl12lts_2025051218container_internal11kSooControlE = external constant [17 x i8], align 16
@.str.27 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@switch.table._ZN6google8protobuf8compiler6csharp13GetCSharpTypeENS0_8internal19FieldDescriptorLite4TypeE = private unnamed_addr constant [18 x i32] [i32 6, i32 5, i32 2, i32 3, i32 1, i32 4, i32 3, i32 7, i32 8, i32 10, i32 10, i32 9, i32 3, i32 11, i32 1, i32 2, i32 1, i32 2], align 4
@switch.table._ZN6google8protobuf8compiler6csharp12GetFixedSizeENS0_8internal19FieldDescriptorLite4TypeE = private unnamed_addr constant [18 x i32] [i32 8, i32 4, i32 -1, i32 -1, i32 -1, i32 8, i32 4, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 4, i32 8, i32 -1, i32 -1], align 4
end_hunk_1
begin_hunk_2
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %3 = load i32, ptr %.pre, align 1
  %4 = icmp ne i32 %3, 1701736270
  %5 = zext i1 %4 to i32
  %i.e = icmp eq i32 %5, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !7
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge.i.i10.thread
end_hunk_2
begin_hunk_3
  br i1 %i.t, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %3 = load i128, ptr %i.u, align 1
  %4 = xor i128 %3, 63005710922238749866870542373108019047
  %5 = getelementptr i8, ptr %i.u, i64 14
  %6 = load i128, ptr %5, align 1
  %7 = xor i128 %6, 148148874381910710728860405884568153958
  %8 = or i128 %4, %7
  %9 = icmp ne i128 %8, 0
  %10 = zext i1 %9 to i32
  %i.v = icmp eq i32 %10, 0
  br i1 %i.v, label %bb.j, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit
end_hunk_3
