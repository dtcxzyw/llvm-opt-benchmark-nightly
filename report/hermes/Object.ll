inline.NumInlined: 1775
inline.NumDeleted: 700
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.160", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.160" = type { %"class.llvh::SmallVectorImpl.161", %"struct.llvh::SmallVectorStorage.164" }
%"class.llvh::SmallVectorImpl.161" = type { %"class.llvh::SmallVectorTemplateBase.162" }
%"class.llvh::SmallVectorTemplateBase.162" = type { %"class.llvh::SmallVectorTemplateCommon.163" }
%"class.llvh::SmallVectorTemplateCommon.163" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.164" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.165"] }
%"struct.llvh::AlignedCharArrayUnion.165" = type { %"struct.llvh::AlignedCharArray.166" }
%"struct.llvh::AlignedCharArray.166" = type { [8 x i8] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"struct.hermes::vm::ComputedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"struct.hermes::vm::PropertyDescriptor" = type { %union.anon.148, i32 }
%union.anon.148 = type { i32 }
%"class.hermes::vm::MutableHandle.151" = type { %"class.hermes::vm::Handle.152" }
%"class.hermes::vm::Handle.152" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"class.hermes::vm::NativeArgs" = type { %"class.std::reverse_iterator", i32, ptr }
%"class.std::reverse_iterator" = type { ptr }
%"class.hermes::vm::CallResult.236" = type { %"class.llvh::Optional.237" }
%"class.llvh::Optional.237" = type { %"struct.llvh::optional_detail::OptionalStorage.238" }
%"struct.llvh::optional_detail::OptionalStorage.238" = type { %"struct.llvh::AlignedCharArrayUnion.239", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.239" = type { %"struct.llvh::AlignedCharArray.202" }
%"struct.llvh::AlignedCharArray.202" = type { [16 x i8] }
%"struct.hermes::vm::IteratorRecord" = type { %"class.hermes::vm::Handle", %"class.hermes::vm::Handle.183" }
%"class.hermes::vm::Handle" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::Handle.183" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::MutableHandle" = type { %"class.hermes::vm::Handle.146" }
%"class.hermes::vm::Handle.146" = type { %"class.hermes::vm::HandleBase" }
%"union.hermes::vm::DefinePropertyFlags" = type { i32 }
%"class.llvh::SmallVector.196" = type { %"class.llvh::SmallVectorImpl.197", %"struct.llvh::SmallVectorStorage.200" }
%"class.llvh::SmallVectorImpl.197" = type { %"class.llvh::SmallVectorTemplateBase.198" }
%"class.llvh::SmallVectorTemplateBase.198" = type { %"class.llvh::SmallVectorTemplateCommon.199" }
%"class.llvh::SmallVectorTemplateCommon.199" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.200" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.201"] }
%"struct.llvh::AlignedCharArrayUnion.201" = type { %"struct.llvh::AlignedCharArray.202" }
%"class.hermes::vm::CallResult.179" = type { %"class.llvh::Optional" }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.180", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.180" = type { %"struct.llvh::AlignedCharArray.181" }
%"struct.llvh::AlignedCharArray.181" = type { [24 x i8] }

$_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE = comdat any

$_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE = comdat any

$_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb = comdat any

$_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj = comdat any

$_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE = comdat any

@.str = private unnamed_addr constant [45 x i8] c"Object.defineProperty() called on non-object\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Object prototype argument must be an Object or null\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"fromEntries argument is not coercible to Object\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"setPrototypeOf argument is not coercible to Object\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"setPrototypeOf new prototype must be object or null\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"toString must be callable\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"'this' is not coercible to JSObject\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"__defineGetter__ getter not callable\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"__defineSetter__ setter not callable\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.10 = private unnamed_addr constant [47 x i8] c"Object.defineProperties() called on non-object\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"SmallVector capacity overflow during allocation\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"Iterator value must be an object\00", align 1
@_ZN6hermes2vm15HandleRootOwner10zeroValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner9oneValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@switch.table._ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE = private unnamed_addr constant [34 x i32] [i32 497, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 495, i32 522, i32 495, i32 524, i32 495, i32 495, i32 495, i32 495, i32 529, i32 530], align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23createObjectConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 60, ptr noundef nonnull @_ZN6hermes2vm17objectConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSObjectEEENS0_10CallResultINS0_12PseudoHandleIS3_EELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS3_EEPv, i32 noundef 26) #9 ; 23 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23objectPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 30, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm29objectPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 35, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22objectPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 31, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm29objectPrototypeHasOwnPropertyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 33, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm28objectPrototypeIsPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 34, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm35objectPrototypePropertyIsEnumerableEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 86, i32 86, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeProto_getterEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeProto_setterEPvRNS0_7RuntimeENS0_10NativeArgsE, i1 noundef zeroext false, i1 noundef zeroext true) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 87, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeDefineGetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 88, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeDefineSetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 89, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeLookupGetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 90, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectPrototypeLookupSetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 67, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20objectGetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 69, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm30objectGetOwnPropertyDescriptorEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 70, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm31objectGetOwnPropertyDescriptorsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 71, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25objectGetOwnPropertyNamesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 72, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27objectGetOwnPropertySymbolsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 32, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm12objectHasOwnEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 73, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm10objectSealEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 74, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm12objectFreezeEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 75, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm17objectFromEntriesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 79, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23objectPreventExtensionsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 80, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm8objectIsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 81, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm14objectIsSealedEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 82, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm14objectIsFrozenEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 83, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm18objectIsExtensibleEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 84, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm10objectKeysEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 258, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm12objectValuesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 211, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm13objectEntriesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 76, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm12objectCreateEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 77, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20objectDefinePropertyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 78, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22objectDefinePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 91, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm12objectAssignEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 68, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20objectSetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17objectConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.mask.i = and i64 %i.c, -140737488355328
  %i.d = icmp eq i64 %.mask.i, -1688849860263936
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.c, %i.f                  ; 2 uses
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !15, !noalias !16
  %.sroa.03.0.copyload = load i64, ptr %i.g, align 8, !tbaa !19
  %i.h = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.03.0.copyload, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %.not16 = icmp eq i32 %i.j, 0
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.sroa.02.0.i = select i1 %.not16, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l ; 2 uses
  %i.m = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !12
  %.mask.i10 = and i64 %i.m, -140737488355328
  switch i64 %.mask.i10, label %bb.g [
    i64 -1688849860263936, label %bb.d
    i64 -1548112371908608, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.02.0.copyload = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.02.0.copyload, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = tail call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #9
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -281474976710656
  %i.r = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.q, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.h, %bb.b ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23objectPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !21
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a)
  ret { i32, i64 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm29objectPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  store ptr %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !38
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !42
  store ptr %3, ptr %i.b, align 8, !tbaa !26
  %i.l = load ptr, ptr %2, align 8, !tbaa !15, !noalias !43
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = or i64 %i.p, -281474976710656            ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !40
  store i64 %i.q, ptr %i.t, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ] ; 3 uses
  %i.z = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 28, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0
  %i.ab = extractvalue { i32, i64 } %i.z, 1       ; 3 uses
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %bb.i, label %bb.e, !prof !46

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !40
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #9 ; 2 uses
  %.sroa.0.0.copyload.i.i12.pr = load i64, ptr %i.ak, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.copyload.i.i12 = phi i64 [ %i.ab, %bb.f ], [ %.sroa.0.0.copyload.i.i12.pr, %bb.g ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE:bb.a
  br i1 %i.an, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.n, !prof !46

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.ao = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.ap = and i64 %i.ao, 281474976710655
  %i.aq = or disjoint i64 %i.ap, -844424930131968 ; 2 uses
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !26, !noalias !179 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40, !noalias !179 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41, !noalias !179
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.o, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !40, !noalias !179
  store i64 %i.aq, ptr %i.at, align 8, !tbaa !19, !noalias !179
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 %i.aq) #9, !noalias !179
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.o ], [ %i.ay, %bb.p ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.az, align 8, !tbaa !182, !alias.scope !179
  %i.ba = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.ba, ptr %2, align 8, !alias.scope !179
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr               ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 4 uses
  %i.be = and i32 %i.bd, 16777216
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp ugt i32 %i.bd, 150994943           ; 2 uses
  br i1 %i.bf, label %bb.r, label %bb.w, !prof !47

bb.r:                                             ; preds = %bb.q
  br i1 %i.bg, label %bb.s, label %bb.t, !prof !46

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !186
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.t:                                             ; preds = %bb.r
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.bd, 234881024
  %i.bj = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i = phi ptr [ %i.bi, %bb.s ], [ %i.bk, %bb.u ], [ %i.bl, %bb.v ]
  store i64 2338603393739812699, ptr %.0.i.i, align 1
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.w:                                             ; preds = %bb.q
  br i1 %i.bg, label %bb.x, label %bb.y, !prof !46

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.y:                                             ; preds = %bb.w
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.bd, 251658240
  %i.bo = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i4.i = phi ptr [ %i.bn, %bb.x ], [ %i.bp, %bb.z ], [ %i.bq, %bb.aa ]
  store <8 x i16> <i16 91, i16 111, i16 98, i16 106, i16 101, i16 99, i16 116, i16 32>, ptr %.0.i4.i, align 2, !tbaa !194
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 8, ptr %i.br, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.0.i.i.i.i.i.i44, align 8, !tbaa !19
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i46, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !176
  %i.bw = and i32 %i.bv, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %.0.i.i.i.i.i.i44, i32 noundef %i.bw)
  %i.bx = load ptr, ptr %2, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i47, 281474976710655
  %i.bz = inttoptr i64 %i.by to ptr               ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 4 uses
  %i.cb = and i32 %i.ca, 16777216
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = icmp ugt i32 %i.ca, 150994943           ; 2 uses
  br i1 %i.cc, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  br i1 %i.cd, label %bb.ac, label %bb.ad, !prof !46

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !186
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i52

bb.ad:                                            ; preds = %bb.ab
  %.mask.i.i.i.i.i.i.i.i.i51 = and i32 %i.ca, 234881024
  %i.cg = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i51, 134217728
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i52

bb.af:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i52

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i52: ; preds = %bb.af, %bb.ae, %bb.ac
  %.0.i.i53 = phi ptr [ %i.cf, %bb.ac ], [ %i.ch, %bb.ae ], [ %i.ci, %bb.af ]
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !196
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i53, i64 %i.ck
  store i8 93, ptr %i.cl, align 1, !tbaa !53
  br label %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit

bb.ag:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  br i1 %i.cd, label %bb.ah, label %bb.ai, !prof !46

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i49

bb.ai:                                            ; preds = %bb.ag
  %.mask.i.i.i.i.i.i.i.i3.i48 = and i32 %i.ca, 251658240
  %i.co = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i48, 117440512
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i49

bb.ak:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i49

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i49: ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i4.i50 = phi ptr [ %i.cn, %bb.ah ], [ %i.cp, %bb.aj ], [ %i.cq, %bb.ak ]
  %i.cr = load i32, ptr %i.br, align 8, !tbaa !196
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i50, i64 %i.cs
  store i16 93, ptr %i.ct, align 2, !tbaa !194
  br label %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit

_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit: ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i52, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i49
  %i.cu = load i64, ptr %2, align 8, !tbaa !101
  %i.cv = inttoptr i64 %i.cu to ptr
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.cv, align 8, !tbaa !19
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit
  %.sroa.0100.0 = phi i32 [ 1, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.0.0.copyload.i54, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.critedge

bb.al:                                            ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i55 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i55, 281474976710655
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = tail call i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %i.cx) #9 ; 2 uses
  %.mask = and i32 %i.cy, 255
  %i.cz = icmp eq i32 %.mask, 0
  br i1 %i.cz, label %.critedge, label %bb.am, !prof !46

bb.am:                                            ; preds = %bb.al
  %i.da = and i32 %i.cy, 256
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %bb.an, label %.thread107

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload.i56 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.db = icmp ugt i64 %.sroa.0.0.copyload.i56, -844424930131969
  br i1 %i.db, label %_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit, label %.thread107

_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit: ; preds = %bb.an
  %i.dc = and i64 %.sroa.0.0.copyload.i56, 281474976710655
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %.mask.i.i.i.i.i.i.i = and i32 %i.de, -16777216
  switch i32 %.mask.i.i.i.i.i.i.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit [
    i32 922746880, label %.thread107
    i32 520093696, label %bb.ao
  ]

bb.ao:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit
  br label %.thread107

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit
  %i.df = add i32 %i.de, -1140850688
  %i.dg = icmp ult i32 %i.df, 150994944
  br i1 %i.dg, label %.thread107, label %bb.ap

bb.ap:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  %3 = add i32 %i.de, -486539264                  ; 2 uses
  %4 = icmp ult i32 %3, 570425344
  br i1 %4, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.thread, label %.thread107

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.ap
  %5 = lshr i32 %3, 24
  %trunc = zext nneg i32 %5 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE, i64 %trunc
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread107

.thread107:                                       ; preds = %bb.an, %bb.ap, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit, %bb.am, %bb.c, %bb.a, %bb.ao, %bb.b
  %.sink115 = phi i32 [ 500, %bb.am ], [ 523, %_ZN6hermes2vm5vmisaINS0_8JSStringEEEbNS0_11HermesValueE.exit ], [ %switch.load, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.thread ], [ 477, %bb.b ], [ 499, %bb.ao ], [ 478, %bb.c ], [ 476, %bb.a ], [ 537, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit ], [ 495, %bb.ap ], [ 495, %bb.an ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.di = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.dh, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sink115) #9
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = or i64 %i.dj, -844424930131968
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.al, %bb.d, %.thread107
  %.sroa.0100.3 = phi i32 [ 1, %.thread107 ], [ 0, %bb.d ], [ 0, %bb.al ], [ %.sroa.0100.0, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %.sroa.7.2 = phi i64 [ %i.dk, %.thread107 ], [ undef, %bb.d ], [ undef, %bb.al ], [ %.sroa.7.0, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0100.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !19
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp ugt i32 %i.d, 150994943             ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.j, !prof !47

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !186
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.d, 234881024
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !196
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.o ; 2 uses
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !47

bb.g:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %1, align 1, !tbaa !53
  store i8 %i.s, ptr %i.p, align 1, !tbaa !53
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.l, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i3 = and i32 %i.d, 251658240
  %i.v = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3, 117440512
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i4 = phi ptr [ %i.u, %bb.k ], [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %i.y = icmp sgt i64 %2, 0
  br i1 %i.y, label %iter.check, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !196
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %.0.i4, i64 %i.ab ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add nuw i64 %2, %i.ab
  %i.ae = shl i64 %i.ad, 1
  %scevgep = getelementptr i8, ptr %.0.i4, i64 %i.ae
  %scevgep12 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %i.ac, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %2, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.af = and i64 %2, 15
  %i.ag = shl nuw i64 %n.vec, 1
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.aj ; 2 uses
  %next.gep14 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep14, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep14, align 1, !tbaa !53, !alias.scope !201
  %wide.load15 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !53, !alias.scope !201
  %i.al = sext <8 x i8> %wide.load to <8 x i16>
  %i.am = sext <8 x i8> %wide.load15 to <8 x i16>
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.al, ptr %next.gep, align 2, !tbaa !194, !alias.scope !204, !noalias !201
  store <8 x i16> %i.am, ptr %i.an, align 2, !tbaa !194, !alias.scope !204, !noalias !201
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, 9223372036854775804      ; 4 uses
  %i.ap = and i64 %2, 3
  %i.aq = shl nuw i64 %n.vec19, 1
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.aq
  %i.as = getelementptr i8, ptr %1, i64 %n.vec19
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.at = shl i64 %index20, 1
  %next.gep21 = getelementptr i8, ptr %i.ac, i64 %i.at
  %next.gep22 = getelementptr i8, ptr %1, i64 %index20
  %wide.load23 = load <4 x i8>, ptr %next.gep22, align 1, !tbaa !53, !alias.scope !201
  %i.au = sext <4 x i8> %wide.load23 to <4 x i16>
  store <4 x i16> %i.au, ptr %next.gep21, align 2, !tbaa !194, !alias.scope !204, !noalias !201
  %index.next24 = add nuw i64 %index20, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec19
  br i1 %cmp.n25, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aw = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !53
  %i.ax = sext i8 %i.aw to i16
  store i16 %i.ax, ptr %.0811.i.i.i.i.i, align 2, !tbaa !194
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 2
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, !llvm.loop !211

_ZSt4copyIPKcPcET0_T_S4_S3_.exit:                 ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit, %bb.i, %bb.h, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
