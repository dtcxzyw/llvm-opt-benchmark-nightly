begin_hunk_0
$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

@_ZTVN6google8protobuf8compiler6csharp9GeneratorE = unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8compiler6csharp9GeneratorE, ptr @_ZN6google8protobuf8compiler6csharp9GeneratorD1Ev, ptr @_ZN6google8protobuf8compiler6csharp9GeneratorD0Ev, ptr @_ZNK6google8protobuf8compiler6csharp9Generator8GenerateEPKNS0_14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSC_, ptr @_ZNK6google8protobuf8compiler13CodeGenerator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSG_, ptr @_ZNK6google8protobuf8compiler6csharp9Generator20GetSupportedFeaturesEv, ptr @_ZNK6google8protobuf8compiler13CodeGenerator14HasGenerateAllEv, ptr @_ZNK6google8protobuf8compiler13CodeGenerator20GetFeatureExtensionsEv, ptr @_ZNK6google8protobuf8compiler6csharp9Generator17GetMinimumEditionEv, ptr @_ZNK6google8protobuf8compiler6csharp9Generator17GetMaximumEditionEv] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"file_extension\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"base_namespace\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"internal_access\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"serializable\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"experimental_strip_nonfunctional_codegen\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !9    ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %i.v, ptr noundef nonnull dereferenceable(14) @.str, i64 14)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br label %bb.ac

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %i.v, ptr noundef nonnull dereferenceable(14) @.str.1, i64 14)
  %i.z = icmp eq i32 %bcmp.i49, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
end_hunk_2
