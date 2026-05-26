inline.NumInlined: 800
inline.NumDeleted: 298
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.hermes::vm::(anonymous namespace)::ToStringOptions" = type { ptr, i8, i8 }
%"struct.hermes::vm::(anonymous namespace)::ToLocaleStringOptions" = type { ptr }
%"struct.hermes::vm::(anonymous namespace)::GetterOptions" = type { i32, i8 }
%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.hermes::vm::NativeArgs" = type { %"class.std::reverse_iterator", i32, ptr }
%"class.std::reverse_iterator" = type { ptr }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.161" }
%"class.llvh::SmallVector.161" = type { %"class.llvh::SmallVectorImpl.162", %"struct.llvh::SmallVectorStorage.165" }
%"class.llvh::SmallVectorImpl.162" = type { %"class.llvh::SmallVectorTemplateBase.163" }
%"class.llvh::SmallVectorTemplateBase.163" = type { %"class.llvh::SmallVectorTemplateCommon.164" }
%"class.llvh::SmallVectorTemplateCommon.164" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.165" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.166"] }
%"struct.llvh::AlignedCharArrayUnion.166" = type { %"struct.llvh::AlignedCharArray.167" }
%"struct.llvh::AlignedCharArray.167" = type { [1 x i8] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.std::__cxx11::basic_string.188" = type { %"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider", i64, %union.anon.192 }
%"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider" = type { ptr }
%union.anon.192 = type { i64, [8 x i8] }
%"class.hermes::vm::SmallXString" = type { %"class.llvh::SmallVector.170" }
%"class.llvh::SmallVector.170" = type { %"class.llvh::SmallVectorImpl.171", %"struct.llvh::SmallVectorStorage.174" }
%"class.llvh::SmallVectorImpl.171" = type { %"class.llvh::SmallVectorTemplateBase.172" }
%"class.llvh::SmallVectorTemplateBase.172" = type { %"class.llvh::SmallVectorTemplateCommon.173" }
%"class.llvh::SmallVectorTemplateCommon.173" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.174" = type { [128 x %"struct.llvh::AlignedCharArrayUnion.175"] }
%"struct.llvh::AlignedCharArrayUnion.175" = type { %"struct.llvh::AlignedCharArray.176" }
%"struct.llvh::AlignedCharArray.176" = type { [2 x i8] }

$_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

$_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

@_ZZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE15toStringOptions = internal unnamed_addr constant [5 x %"struct.hermes::vm::(anonymous namespace)::ToStringOptions"] [%"struct.hermes::vm::(anonymous namespace)::ToStringOptions" { ptr @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE, i8 0, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::ToStringOptions" { ptr @_ZN6hermes2vm10dateStringEddRN4llvh15SmallVectorImplIcEE, i8 0, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::ToStringOptions" { ptr @_ZN6hermes2vm12timeTZStringEddRN4llvh15SmallVectorImplIcEE, i8 0, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::ToStringOptions" { ptr @_ZN6hermes2vm19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEE, i8 1, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::ToStringOptions" { ptr @_ZN6hermes2vm17dateTimeUTCStringEddRN4llvh15SmallVectorImplIcEE, i8 1, i8 0 }], align 16
@.str = private unnamed_addr constant [52 x i8] c"Date.prototype.toString() called on non-Date object\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Date value out of bounds\00", align 1
@_ZZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE21toLocaleStringOptions = internal unnamed_addr constant [3 x %"struct.hermes::vm::(anonymous namespace)::ToLocaleStringOptions"] [%"struct.hermes::vm::(anonymous namespace)::ToLocaleStringOptions" { ptr @_ZN6hermes2vm22datetimeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE }, %"struct.hermes::vm::(anonymous namespace)::ToLocaleStringOptions" { ptr @_ZN6hermes2vm18dateToLocaleStringEdRN4llvh15SmallVectorImplIDsEE }, %"struct.hermes::vm::(anonymous namespace)::ToLocaleStringOptions" { ptr @_ZN6hermes2vm18timeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE }], align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"Date.prototype.getTime() called on non-Date object\00", align 1
@_ZZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE13getterOptions = internal unnamed_addr constant [18 x %"struct.hermes::vm::(anonymous namespace)::GetterOptions"] [%"struct.hermes::vm::(anonymous namespace)::GetterOptions" zeroinitializer, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 1, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 2, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 3, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 4, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 5, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 6, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 7, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 8, i8 0 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 0, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 2, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 3, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 4, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 5, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 6, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 7, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 8, i8 1 }, %"struct.hermes::vm::(anonymous namespace)::GetterOptions" { i32 9, i8 0 }], align 16
@.str.3 = private unnamed_addr constant [51 x i8] c"Date.prototype.setTime() called on non-Date object\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Date.prototype.setMilliseconds() called on non-Date object\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Date.prototype.setSeconds() called on non-Date object\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Date.prototype.setMinutes() called on non-Date object\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Date.prototype.setHours() called on non-Date object\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Date.prototype.setDate() called on non-Date object\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Date.prototype.setMonth() called on non-Date object\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Date.prototype.setFullYear() called on non-Date object\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Date.prototype.setYear() called on non-Date object\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"toISOString is not callable in Date.prototype.toJSON()\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Date[Symbol.toPrimitive]() must be called on an object\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Date[Symbol.toPrimitive]() argument must be a string\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"Type hint to Date[Symbol.primitive] must be 'number', 'string', or 'default'\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm21createDateConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 48 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 278, ptr noundef nonnull @_ZN6hermes2vm19dateConstructor_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 7, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_6JSDateEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 61) #9 ; 4 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 35, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20datePrototypeGetTimeEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 288, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20datePrototypeGetTimeEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 323, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 324, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 282, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 283, ptr noundef nonnull inttoptr (i64 4 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 284, ptr noundef nonnull inttoptr (i64 4 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 30, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 285, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 286, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef nonnull @_ZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 289, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 290, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 291, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 292, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 293, ptr noundef nonnull inttoptr (i64 4 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 294, ptr noundef nonnull inttoptr (i64 5 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 295, ptr noundef nonnull inttoptr (i64 6 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 296, ptr noundef nonnull inttoptr (i64 7 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 297, ptr noundef nonnull inttoptr (i64 8 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 298, ptr noundef nonnull inttoptr (i64 9 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 299, ptr noundef nonnull inttoptr (i64 10 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 300, ptr noundef nonnull inttoptr (i64 11 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 301, ptr noundef nonnull inttoptr (i64 12 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 302, ptr noundef nonnull inttoptr (i64 13 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 303, ptr noundef nonnull inttoptr (i64 14 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 304, ptr noundef nonnull inttoptr (i64 15 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 305, ptr noundef nonnull inttoptr (i64 16 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 306, ptr noundef nonnull inttoptr (i64 17 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 307, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24datePrototypeSetTime_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 315, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm32datePrototypeSetMilliseconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 322, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm32datePrototypeSetMilliseconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 314, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27datePrototypeSetSeconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 321, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeSetSeconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 313, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27datePrototypeSetMinutes_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 320, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm27datePrototypeSetMinutes_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 312, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25datePrototypeSetHours_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 4) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 319, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeSetHours_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 4) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 311, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24datePrototypeSetDate_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 318, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm24datePrototypeSetDate_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 310, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25datePrototypeSetMonth_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 317, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm25datePrototypeSetMonth_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 308, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm28datePrototypeSetFullYear_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 316, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm28datePrototypeSetFullYear_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 309, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24datePrototypeSetYear_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 287, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23datePrototypeToJSON_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436019, i32 481, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm30datePrototypeSymbolToPrimitiveEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1, i32 316) #9 ; 0 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 280, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm13dateParse_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 279, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm11dateUTC_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 7) #9
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 281, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm7dateNowEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #9
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19dateConstructor_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %5 = alloca %"class.llvh::SmallString", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.mask.i.i.i = and i64 %i.c, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  switch i32 %i.f, label %bb.i [
    i32 0, label %bb.c
    i32 1, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_ZN6hermes2vm7curTimeEv() #9
  %i.h = sitofp i64 %i.g to double
  br label %bb.k

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !20 ; 2 uses
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.j, label %bb.d, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.k = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.m, -16777216
  %i.n = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.n, label %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !21
  br label %bb.k

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.q = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.i, i32 noundef 0) #9 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = extractvalue { i32, i64 } %i.q, 1        ; 3 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !36
  store i64 %i.s, ptr %i.x, align 8, !tbaa !20
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.s) #9 ; 2 uses
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %i.ad = phi i64 [ %i.s, %bb.f ], [ %.pre, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %.mask.i = and i64 %i.ad, -281474976710656
  %i.ae = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.ae, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.af = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2512
  %i.al = tail call noundef double @_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE(ptr %i.ag, i64 %i.ah, ptr noundef nonnull align 8 dereferenceable(793) %i.ak) #9
  %i.am = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.al) #9
  br label %bb.k

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.an = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.ao = extractvalue { i32, i64 } %i.an, 0
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.critedge, label %.thread62

.thread62:                                        ; preds = %bb.h
  %i.aq = extractvalue { i32, i64 } %i.an, 1
  %i.ar = bitcast i64 %i.aq to double
  %i.as = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.ar) #9
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  store ptr %i.d, ptr %4, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.au = call fastcc { i32, double } @_ZN6hermes2vmL20makeTimeFromArgs_RJSERNS0_7RuntimeENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %4) ; 2 uses
  %i.av = extractvalue { i32, double } %i.au, 0
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = extractvalue { i32, double } %i.au, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2512
  %i.bb = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(793) %i.ba) #9
  %i.bc = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.bb) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %bb.c
  %.7 = phi double [ %i.h, %bb.c ], [ %i.bc, %bb.j ], [ %i.p, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ], [ %i.as, %.thread62 ], [ %i.am, %.thread ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %i.bd = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store double %.7, ptr %i.bf, align 8, !tbaa !21
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.bj, align 4, !tbaa !51
  %i.bk = call noundef i64 @_ZN6hermes2vm7curTimeEv() #9
  %i.bl = sitofp i64 %i.bk to double              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2512
  %i.bp = call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(793) %i.bo) #9 ; 2 uses
  %i.bq = fsub double %i.bp, %i.bl
  call void @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE(double noundef %i.bp, double noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  %i.br = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.bs = load i32, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.bs, 65536
  br i1 %.not.i, label %bb.m, label %bb.n, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.bu = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.br, i64 %i.bt) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.br, i64 %i.bt)
  %i.bv = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.bw = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !56
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.bu, %bb.m ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.cb = extractvalue { i32, i64 } %.pn.i, 0
  %i.cc = extractvalue { i32, i64 } %.pn.i, 1
  %i.cd = icmp eq i32 %i.cb, 0
  br i1 %i.cd, label %bb.o, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !57

bb.o:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.ce = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bh
  br i1 %i.cf, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  call void @free(ptr noundef %i.ce) #9
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, %bb.h, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  %.sroa.058.4 = phi i32 [ 1, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ 0, %bb.h ], [ 1, %bb.k ], [ 0, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ], [ 0, %bb.i ]
  %.sroa.6.1 = phi i64 [ %i.cc, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ undef, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.k ], [ undef, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ], [ undef, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.058.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm20datePrototypeGetTimeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !58
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.01.0.copyload, -844424930131969
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.sroa.01.0.copyload, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.f = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.f, label %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.g, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !65
  store ptr @.str.2, ptr %3, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.j, align 8, !tbaa !66
  %i.k = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !21 ; 2 uses
  %i.n = fcmp uno double %i.m, 0.000000e+00
  %i.o = bitcast double %i.m to i64
  %.sroa.0.0.i = select i1 %i.n, i64 9221120237041090560, i64 %i.o, !prof !57
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.3.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.sroa.0.0 = phi i32 [ %i.k, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24datePrototypeSetTime_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !67 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.f = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.f, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !12 ; 2 uses
  %.pre10 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre10, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !65
  store ptr @.str.3, ptr %3, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !66
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.d

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !19
  %.not = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.r
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = extractvalue { i32, i64 } %i.s, 1
  %i.w = bitcast i64 %i.v to double
  %i.x = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.w) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !20
  %i.y = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store double %i.x, ptr %i.aa, align 8, !tbaa !21
  %i.ab = fcmp uno double %i.x, 0.000000e+00
  %i.ac = bitcast double %i.x to i64
  %.sroa.0.0.i = select i1 %i.ab, i64 9221120237041090560, i64 %i.ac, !prof !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.08.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.49.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %bb.c ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.08.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.49.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm32datePrototypeSetMilliseconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !70 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.f = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.f, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !12 ; 2 uses
  %.pre27 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre27, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 58, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !65
  store ptr @.str.4, ptr %3, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !66
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !21 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre26 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre26, %bb.c ]
  %.0 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %.not25 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not25, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = tail call noundef double @_ZN6hermes2vm3dayEd(double noundef %.0) #9
  %i.ag = tail call noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %.0) #9
  %i.ah = tail call noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %.0) #9
  %i.ai = tail call noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %.0) #9
  %i.aj = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.ag, double noundef %i.ah, double noundef %i.ai, double noundef %i.ae) #9
  %i.ak = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.af, double noundef %i.aj) #9 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11dateUTC_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !15
  store ptr %i.m, ptr %3, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.o = call fastcc { i32, double } @_ZN6hermes2vmL20makeTimeFromArgs_RJSERNS0_7RuntimeENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3) ; 2 uses
  %i.p = extractvalue { i32, double } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i32, double } %i.o, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi double [ %i.r, %bb.e ], [ %i.l, %bb.c ]
  %i.s = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 2 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  %i.u = bitcast double %i.s to i64
  %.sroa.0.0.i6 = select i1 %i.t, i64 9221120237041090560, i64 %i.u, !prof !57
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.d, %bb.b
  %.sroa.013.2 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 0, %bb.d ], [ 1, %.sink.split ]
  %.sroa.6.2 = phi i64 [ undef, %bb.b ], [ 9221120237041090560, %bb.a ], [ undef, %bb.d ], [ %.sroa.0.0.i6, %.sink.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7dateNowEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6hermes2vm7curTimeEv() #9
  %i.b = sitofp i64 %i.a to double
  %i.c = bitcast double %i.b to i64
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.c, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i64 @_ZN6hermes2vm7curTimeEv() local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm8timeClipEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(793)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, double } @_ZN6hermes2vmL20makeTimeFromArgs_RJSERNS0_7RuntimeENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull readonly captures(none) dead_on_return %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x double> splat (double +qnan), ptr %i.a, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store double 1.000000e+00, ptr %i.f, align 16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 7)
  %i.g = zext nneg i32 %.sroa.speculated to i64
  %.not1630.not = icmp eq i32 %i.c, 0
  br i1 %.not1630.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.031 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.c ] ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !100  ; 4 uses
  %i.n = trunc nuw nsw i64 %.031 to i32
  %i.o = load i32, ptr %i.b, align 8, !tbaa !19
  %i.p = icmp ugt i32 %i.o, %i.n
  %i.q = load ptr, ptr %1, align 8
  %i.r = sub nsw i64 0, %.031
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.sroa.02.0.i = select i1 %i.p, ptr %i.t, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.u = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.v = extractvalue { i32, i64 } %i.u, 0
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = extractvalue { i32, i64 } %i.u, 1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.031
  store i64 %i.x, ptr %i.y, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aa = zext i32 %i.m to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i32 %i.m, ptr %i.l, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !45
  store ptr %i.k, ptr %i.j, align 8, !tbaa !36
  %i.ag = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.b, !llvm.loop !103

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ai = zext i32 %i.m to i64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 %i.m, ptr %i.l, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  store ptr %i.am, ptr %i.an, align 8, !tbaa !45
  store ptr %i.k, ptr %i.j, align 8, !tbaa !36
  br label %bb.e

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load double, ptr %i.a, align 16, !tbaa !101
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.ao = phi double [ %.pre, %.critedge.loopexit ], [ +qnan, %bb.a ] ; 3 uses
  %i.ap = tail call double @llvm.trunc.f64(double %i.ao) ; 3 uses
  %i.aq = fcmp ord double %i.ao, 0.000000e+00
  %i.ar = fcmp oge double %i.ap, 0.000000e+00
  %or.cond = and i1 %i.aq, %i.ar
  %i.as = fcmp ole double %i.ap, 9.900000e+01
  %or.cond4 = and i1 %i.as, %or.cond
  %i.at = fadd double %i.ap, 1.900000e+03
  %.sink = select i1 %or.cond4, double %i.at, double %i.ao
  %i.au = load double, ptr %i.e, align 8, !tbaa !101
  %i.av = load double, ptr %i.f, align 16, !tbaa !101
  %i.aw = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %.sink, double noundef %i.au, double noundef %i.av) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !101
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = load double, ptr %i.az, align 16, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = load double, ptr %i.bd, align 16, !tbaa !101
  %i.bf = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.ay, double noundef %i.ba, double noundef %i.bc, double noundef %i.be) #9
  %i.bg = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.aw, double noundef %i.bf) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.sroa.023.2 = phi i32 [ 0, %bb.d ], [ 1, %.critedge ]
  %.sroa.3.0 = phi double [ undef, %bb.d ], [ %i.bg, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.fca.0.insert = insertvalue { i32, double } poison, i32 %.sroa.023.2, 0
  %.fca.1.insert = insertvalue { i32, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { i32, double } %.fca.1.insert
}

declare noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef, ptr noundef nonnull align 8 dereferenceable(793)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef, ptr noundef nonnull align 8 dereferenceable(793)) local_unnamed_addr #2

declare void @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE(double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm8makeDateEdd(double noundef, double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm7makeDayEddd(double noundef, double noundef, double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.llvh::SmallString", align 8 ; 11 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE15toStringOptions, i64 %i.a ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !105
  %.sroa.08.0.copyload = load i64, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.d = icmp ugt i64 %.sroa.08.0.copyload, -844424930131969
  br i1 %i.d, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.sroa.08.0.copyload, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !65
  store ptr @.str, ptr %4, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !66
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.m

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !21 ; 4 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ueq double %i.p, +inf
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !108, !range !111, !noundef !112
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit23:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 24, ptr %i.v, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !65
  store ptr @.str.1, ptr %5, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !66
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.aa = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.z, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 325) #9
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968
  br label %bb.m

bb.e:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.ag, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !113, !range !111, !noundef !112
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2512
  %i.an = call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.o, ptr noundef nonnull align 8 dereferenceable(793) %i.am) #9 ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 16, !tbaa !114
  %i.ap = fsub double %i.an, %i.o
  call void %i.ao(double noundef %i.an, double noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !114
  call void %i.aq(double noundef %i.o, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.as = load i32, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.as, 65536
  br i1 %.not.i, label %bb.i, label %bb.j, !prof !46

bb.i:                                             ; preds = %bb.h
  %i.au = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ar, i64 %i.at) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.ar, i64 %i.at)
  %i.av = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.aw = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.au, %bb.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.bb = extractvalue { i32, i64 } %.pn.i, 0
  %i.bc = extractvalue { i32, i64 } %.pn.i, 1
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %bb.k, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !57

bb.k:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ae
  br i1 %i.bf, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  call void @free(ptr noundef %i.be) #9
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, %bb.d, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.024.0 = phi i32 [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ %i.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23 ], [ 1, %bb.d ]
  %.sroa.5.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.bc, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23 ], [ %i.ac, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm10dateStringEddRN4llvh15SmallVectorImplIcEE(double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare void @_ZN6hermes2vm12timeTZStringEddRN4llvh15SmallVectorImplIcEE(double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare void @_ZN6hermes2vm19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare void @_ZN6hermes2vm17dateTimeUTCStringEddRN4llvh15SmallVectorImplIcEE(double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.188", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::SmallXString", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE21toLocaleStringOptions, i64 %i.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !115
  %.sroa.02.0.copyload = load i64, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.d = icmp ugt i64 %.sroa.02.0.copyload, -844424930131969
  br i1 %i.d, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.sroa.02.0.copyload, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !65
  store ptr @.str, ptr %4, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !66
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.n = insertvalue { i32, i64 } poison, i32 %i.m, 0
  %i.o = insertvalue { i32, i64 } %i.n, i64 undef, 1
  br label %bb.h

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !21 ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ueq double %i.r, +inf
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.u = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.t, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 325) #9
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, -844424930131968
  %i.x = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.w, 1
  br label %bb.h

bb.d:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 128, ptr %i.aa, align 4, !tbaa !51
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !118
  call void %i.ab(double noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  %i.ac = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.ad, 65536
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.af = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ac, i64 %i.ae) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.188") align 8 %3, ptr %i.ac, i64 %i.ae)
  %i.ag = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.ah = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !56
  %i.al = shl i64 %i.ak, 1
  %i.am = add i64 %i.al, 2
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #10
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.af, %bb.e ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ]
  %i.an = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.y
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIDsLj128EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  call void @free(ptr noundef %i.an) #9
  br label %_ZN4llvh11SmallVectorIDsLj128EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj128EED2Ev.exit:         ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4llvh11SmallVectorIDsLj128EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.pn.i, %_ZN4llvh11SmallVectorIDsLj128EED2Ev.exit ], [ %i.x, %bb.c ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare void @_ZN6hermes2vm22datetimeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare void @_ZN6hermes2vm18dateToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

declare void @_ZN6hermes2vm18timeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef, ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE13getterOptions, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !124
  %.sroa.016.0.copyload = load i64, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.d = icmp ugt i64 %.sroa.016.0.copyload, -844424930131969
  br i1 %i.d, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.sroa.016.0.copyload, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1023410176
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !65
  store ptr @.str, ptr %3, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !66
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.q

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !21 ; 4 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !127, !range !111, !noundef !112
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2512
  %i.w = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.o, ptr noundef nonnull align 8 dereferenceable(793) %i.v) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024 = phi double [ %i.o, %bb.c ], [ %i.w, %bb.d ] ; 10 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !129
  switch i32 %i.x, label %bb.p [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.z = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.024) #9
  %i.aa = fadd double %i.z, -1.900000e+03
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.ab = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %.024) #9
  %i.ac = uitofp i32 %i.ab to double
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.ad = tail call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @_ZN6hermes2vm7weekDayEd(double noundef %.024) #9
  %i.af = sitofp i32 %i.ae to double
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.ag = tail call noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.l:                                             ; preds = %bb.e
  %i.ah = tail call noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.ai = tail call noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.n:                                             ; preds = %bb.e
  %i.aj = tail call noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  %i.ak = fsub double %i.o, %.024
  %i.al = fdiv double %i.ak, 6.000000e+04
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi double [ +qnan, %bb.e ], [ %i.y, %bb.f ], [ %i.aa, %bb.g ], [ %i.ac, %bb.h ], [ %i.ad, %bb.i ], [ %i.af, %bb.j ], [ %i.ag, %bb.k ], [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.al, %bb.o ] ; 2 uses
  %i.am = fcmp uno double %.0, 0.000000e+00
  %i.an = bitcast double %.0 to i64
  %.sroa.0.0.i = select i1 %i.am, i64 9221120237041090560, i64 %i.an, !prof !57
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %bb.p ], [ 9221120237041090560, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.sroa.0.0 = phi i32 [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.p ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7weekDayEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm3dayEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #4

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19ordinaryToPrimitiveENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_13PreferredTypeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #9 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !52
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.f, ptr %i.b, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !56
  store i8 %i.h, ptr %i.g, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !131
  %i.j = load ptr, ptr %0, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

end_hunk_1
