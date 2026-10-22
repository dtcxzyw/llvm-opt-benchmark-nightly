Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Date?download=true
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
define hidden { i32, i64 } @_ZN6hermes2vm19dateConstructor_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %5 = alloca %"class.llvh::SmallString", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %.mask.i.i.i = and i64 %i.c, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !14, !noalias !70 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
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
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !16 ; 2 uses
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
  %i.p = load double, ptr %i.o, align 8, !tbaa !28
  br label %bb.k

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.q = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.i, i32 noundef 0) #9 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = extractvalue { i32, i64 } %i.q, 1        ; 3 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !40
  store i64 %i.s, ptr %i.x, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.s) #9 ; 2 uses
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !13
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
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
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
  store ptr %i.d, ptr %4, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.au = call fastcc { i32, double } @_ZN6hermes2vmL20makeTimeFromArgs_RJSERNS0_7RuntimeENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %4) ; 2 uses
  %i.av = extractvalue { i32, double } %i.au, 0
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = extractvalue { i32, double } %i.au, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2512
  %i.bb = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(793) %i.ba) #9
  %i.bc = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.bb) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %bb.c
  %.7 = phi double [ %i.h, %bb.c ], [ %i.bc, %bb.j ], [ %i.p, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ], [ %i.as, %.thread62 ], [ %i.am, %.thread ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.bd = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store double %.7, ptr %i.bf, align 8, !tbaa !28
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.bj, align 4, !tbaa !47
  %i.bk = call noundef i64 @_ZN6hermes2vm7curTimeEv() #9
  %i.bl = sitofp i64 %i.bk to double              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2512
  %i.bp = call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(793) %i.bo) #9 ; 2 uses
  %i.bq = fsub double %i.bp, %i.bl
  call void @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE(double noundef %i.bp, double noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  %i.br = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bs = load i32, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.bs, 65536
  br i1 %.not.i, label %bb.m, label %bb.n, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.bu = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.br, i64 %i.bt) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.br, i64 %i.bt)
  %i.bv = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.bw = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !52
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
  br i1 %i.cd, label %bb.o, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !53

bb.o:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.ce = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
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
define hidden { i32, i64 } @_ZN6hermes2vm20datePrototypeGetTimeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !73
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  store i32 1, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !58
  store ptr @.str.2, ptr %3, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.j, align 8, !tbaa !59
  %i.k = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !28 ; 2 uses
  %i.n = fcmp uno double %i.m, 0.000000e+00
  %i.o = bitcast double %i.m to i64
  %spec.select.i = select i1 %i.n, i64 9221120237041090560, i64 %i.o, !prof !53
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.3.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.sroa.0.0 = phi i32 [ %i.k, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24datePrototypeSetTime_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !76 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
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
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.3, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.d

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
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
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.y = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store double %i.x, ptr %i.aa, align 8, !tbaa !28
  %i.ab = fcmp uno double %i.x, 0.000000e+00
  %i.ac = bitcast double %i.x to i64
  %spec.select.i = select i1 %i.ab, i64 9221120237041090560, i64 %i.ac, !prof !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.08.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.49.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.c ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.08.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.49.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm32datePrototypeSetMilliseconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !79 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
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
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 58, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.4, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
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
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
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
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi double [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  %i.am = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i18 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.an = and i64 %.sroa.0.0.copyload.i.i18, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store double %i.am, ptr %i.ap, align 8, !tbaa !28
  %i.aq = fcmp uno double %i.am, 0.000000e+00
  %i.ar = bitcast double %i.am to i64
  %spec.select.i = select i1 %i.aq, i64 9221120237041090560, i64 %i.ar, !prof !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.023.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.g ], [ 0, %bb.d ]
  %.sroa.424.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.g ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.023.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.424.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27datePrototypeSetSeconds_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !82 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre35 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre35, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.5, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre34 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre34, %bb.c ]
  %.021 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not33 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not33, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ai) #9 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = extractvalue { i32, i64 } %i.aj, 1
  %i.an = bitcast i64 %i.am to double
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ao = tail call noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %.021) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi double [ %i.an, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = tail call noundef double @_ZN6hermes2vm3dayEd(double noundef %.021) #9
  %i.aq = tail call noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %.021) #9
  %i.ar = tail call noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %.021) #9
  %i.as = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.aq, double noundef %i.ar, double noundef %i.ae, double noundef %.0) #9
  %i.at = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.ap, double noundef %i.as) #9 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.at, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi double [ %i.au, %bb.j ], [ %i.at, %bb.i ]
  %i.av = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.aw = and i64 %.sroa.0.0.copyload.i.i23, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store double %i.av, ptr %i.ay, align 8, !tbaa !28
  %i.az = fcmp uno double %i.av, 0.000000e+00
  %i.ba = bitcast double %i.av to i64
  %spec.select.i = select i1 %i.az, i64 9221120237041090560, i64 %i.ba, !prof !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.032.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.k ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.sroa.5.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.k ], [ undef, %bb.d ], [ undef, %bb.f ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.032.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27datePrototypeSetMinutes_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !85 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre45 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre45, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.6, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.p

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre44 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre44, %bb.c ]
  %.024 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not43 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not43, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ai) #9 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = extractvalue { i32, i64 } %i.aj, 1
  %i.an = bitcast i64 %i.am to double
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ao = tail call noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %.024) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.025 = phi double [ %i.an, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = load i32, ptr %i.x, align 8, !tbaa !15
  %i.aq = icmp ugt i32 %i.ap, 2
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %2, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.at = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.as) #9 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = extractvalue { i32, i64 } %i.at, 1
  %i.ax = bitcast i64 %i.aw to double
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ay = tail call noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %.024) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi double [ %i.ax, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = tail call noundef double @_ZN6hermes2vm3dayEd(double noundef %.024) #9
  %i.ba = tail call noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %.024) #9
  %i.bb = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.ba, double noundef %i.ae, double noundef %.025, double noundef %.0) #9
  %i.bc = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.az, double noundef %i.bb) #9 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink = phi double [ %i.bd, %bb.n ], [ %i.bc, %bb.m ]
  %i.be = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i28 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.bf = and i64 %.sroa.0.0.copyload.i.i28, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store double %i.be, ptr %i.bh, align 8, !tbaa !28
  %i.bi = fcmp uno double %i.be, 0.000000e+00
  %i.bj = bitcast double %i.be to i64
  %spec.select.i = select i1 %i.bi, i64 9221120237041090560, i64 %i.bj, !prof !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d, %bb.f, %bb.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.042.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.o ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.sroa.6.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.o ], [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.j ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.042.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25datePrototypeSetHours_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !88 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre55 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre55, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.7, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.t

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre54 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre54, %bb.c ]
  %.027 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not53 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not53, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ai) #9 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = extractvalue { i32, i64 } %i.aj, 1
  %i.an = bitcast i64 %i.am to double
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ao = tail call noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %.027) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.029 = phi double [ %i.an, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = load i32, ptr %i.x, align 8, !tbaa !15
  %i.aq = icmp ugt i32 %i.ap, 2
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %2, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.at = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.as) #9 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = extractvalue { i32, i64 } %i.at, 1
  %i.ax = bitcast i64 %i.aw to double
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ay = tail call noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %.027) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.028 = phi double [ %i.ax, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ba = icmp ugt i32 %i.az, 3
  br i1 %i.ba, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %2, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  %i.bd = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.bc) #9 ; 2 uses
  %i.be = extractvalue { i32, i64 } %i.bd, 0
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = extractvalue { i32, i64 } %i.bd, 1
  %i.bh = bitcast i64 %i.bg to double
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bi = tail call noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %.027) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.bh, %bb.o ], [ %i.bi, %bb.p ]
  %i.bj = tail call noundef double @_ZN6hermes2vm3dayEd(double noundef %.027) #9
  %i.bk = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.ae, double noundef %.029, double noundef %.028, double noundef %.0) #9
  %i.bl = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.bj, double noundef %i.bk) #9 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink = phi double [ %i.bm, %bb.r ], [ %i.bl, %bb.q ]
  %i.bn = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i33 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.bo = and i64 %.sroa.0.0.copyload.i.i33, 281474976710655
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store double %i.bn, ptr %i.bq, align 8, !tbaa !28
  %i.br = fcmp uno double %i.bn, 0.000000e+00
  %i.bs = bitcast double %i.bn to i64
  %spec.select.i = select i1 %i.br, i64 9221120237041090560, i64 %i.bs, !prof !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.d, %bb.f, %bb.j, %bb.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.052.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.s ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.n ]
  %.sroa.7.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.s ], [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.j ], [ undef, %bb.n ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.052.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24datePrototypeSetDate_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !91 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre26 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre26, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.8, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre25 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre25, %bb.c ]
  %.0 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not24 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not24, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.0) #9
  %i.ag = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %.0) #9
  %i.ah = uitofp i32 %i.ag to double
  %i.ai = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.af, double noundef %i.ah, double noundef %i.ae) #9
  %i.aj = tail call noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef %.0) #9
  %i.ak = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.ai, double noundef %i.aj) #9 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi double [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  %i.am = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.an = and i64 %.sroa.0.0.copyload.i.i17, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store double %i.am, ptr %i.ap, align 8, !tbaa !28
  %i.aq = fcmp uno double %i.am, 0.000000e+00
  %i.ar = bitcast double %i.am to i64
  %spec.select.i = select i1 %i.aq, i64 9221120237041090560, i64 %i.ar, !prof !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.022.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.g ], [ 0, %bb.d ]
  %.sroa.423.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.g ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.022.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.423.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25datePrototypeSetMonth_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !94 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre34 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre34, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.9, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre33 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre33, %bb.c ]
  %.020 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not32 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not32, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ai) #9 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = extractvalue { i32, i64 } %i.aj, 1
  %i.an = bitcast i64 %i.am to double
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ao = tail call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %.020) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi double [ %i.an, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.020) #9
  %i.aq = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.ap, double noundef %i.ae, double noundef %.0) #9
  %i.ar = tail call noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef %.020) #9
  %i.as = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.aq, double noundef %i.ar) #9 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.as, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi double [ %i.at, %bb.j ], [ %i.as, %bb.i ]
  %i.au = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i22 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.av = and i64 %.sroa.0.0.copyload.i.i22, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store double %i.au, ptr %i.ax, align 8, !tbaa !28
  %i.ay = fcmp uno double %i.au, 0.000000e+00
  %i.az = bitcast double %i.au to i64
  %spec.select.i = select i1 %i.ay, i64 9221120237041090560, i64 %i.az, !prof !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.031.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.k ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.sroa.5.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.k ], [ undef, %bb.d ], [ undef, %bb.f ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28datePrototypeSetFullYear_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !97 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre45 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre45, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.10, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.p

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %.pre44 = load ptr, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.a, %bb.b ], [ %.pre44, %bb.c ]
  %.024 = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %.inv = fcmp ord double %.024, 0.000000e+00
  %.1 = select i1 %.inv, double %.024, double 0.000000e+00 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %.not43 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not43, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double
  %i.af = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ai) #9 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = extractvalue { i32, i64 } %i.aj, 1
  %i.an = bitcast i64 %i.am to double
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ao = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %.1) #9
  %i.ap = uitofp i32 %i.ao to double
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.025 = phi double [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !15
  %i.ar = icmp ugt i32 %i.aq, 2
  br i1 %i.ar, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %2, align 8
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.at) #9 ; 2 uses
  %i.av = extractvalue { i32, i64 } %i.au, 0
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = extractvalue { i32, i64 } %i.au, 1
  %i.ay = bitcast i64 %i.ax to double
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.az = tail call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %.1) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi double [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  %i.ba = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.ae, double noundef %.025, double noundef %.0) #9
  %i.bb = tail call noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef %.1) #9
  %i.bc = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.ba, double noundef %i.bb) #9 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink = phi double [ %i.bd, %bb.n ], [ %i.bc, %bb.m ]
  %i.be = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %.sink) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i28 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.bf = and i64 %.sroa.0.0.copyload.i.i28, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store double %i.be, ptr %i.bh, align 8, !tbaa !28
  %i.bi = fcmp uno double %i.be, 0.000000e+00
  %i.bj = bitcast double %i.be to i64
  %spec.select.i = select i1 %i.bi, i64 9221120237041090560, i64 %i.bj, !prof !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d, %bb.f, %bb.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.042.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.o ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.sroa.6.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.o ], [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.j ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.042.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24datePrototypeSetYear_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !100 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre31 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %.pre31, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_6JSDateEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !58
  store ptr @.str.11, ptr %3, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !59
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.f

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_6JSDateEEENS0_6HandleIT_EEv.exit
  %i.p = inttoptr i64 %.pre-phi to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2512 ; 2 uses
  %i.v = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9 ; 2 uses
  %.inv = fcmp ord double %i.v, 0.000000e+00
  %.0 = select i1 %.inv, double %i.v, double 0.000000e+00 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !15
  %.not = icmp eq i32 %i.x, 0
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = extractvalue { i32, i64 } %i.aa, 1
  %i.ae = bitcast i64 %i.ad to double             ; 3 uses
  %i.af = fcmp uno double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.ag = and i64 %.sroa.0.0.copyload.i.i23, 281474976710655
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store double +qnan, ptr %i.ai, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = tail call double @llvm.trunc.f64(double %i.ae) ; 3 uses
  %i.ak = fcmp oge double %i.aj, 0.000000e+00
  %i.al = fcmp ole double %i.aj, 9.900000e+01
  %or.cond = and i1 %i.ak, %i.al
  %i.am = fadd double %i.aj, 1.900000e+03
  %i.an = select i1 %or.cond, double %i.am, double %i.ae
  %i.ao = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %.0) #9
  %i.ap = uitofp i32 %i.ao to double
  %i.aq = tail call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %.0) #9
  %i.ar = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.an, double noundef %i.ap, double noundef %i.aq) #9
  %i.as = tail call noundef double @_ZN6hermes2vm13timeWithinDayEd(double noundef %.0) #9
  %i.at = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.ar, double noundef %i.as) #9
  %i.au = tail call noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.at, ptr noundef nonnull align 8 dereferenceable(793) %i.u) #9
  %i.av = tail call noundef double @_ZN6hermes2vm8timeClipEd(double noundef %i.au) #9 ; 3 uses
  %.sroa.0.0.copyload.i.i24 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !16
  %i.aw = and i64 %.sroa.0.0.copyload.i.i24, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store double %i.av, ptr %i.ay, align 8, !tbaa !28
  %i.az = fcmp uno double %i.av, 0.000000e+00
  %i.ba = bitcast double %i.av to i64
  %spec.select.i = select i1 %i.az, i64 9221120237041090560, i64 %i.ba, !prof !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.030.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.e ], [ 9221120237041090560, %bb.d ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23datePrototypeToJSON_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !103
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a) #9 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i32, i64 } %i.b, 1
  %i.f = or i64 %i.e, -281474976710656            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !40
  store i64 %i.f, ptr %i.j, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 4 uses
  %i.p = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef 2) #9 ; 2 uses
  %i.q = extractvalue { i32, i64 } %i.p, 0
  %i.r = extractvalue { i32, i64 } %i.p, 1        ; 2 uses
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.t = icmp ult i64 %i.r, -1970324836974592
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = bitcast i64 %i.r to double
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp ueq double %i.v, +inf
  br i1 %i.w, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 282, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0
  %i.z = extractvalue { i32, i64 } %i.x, 1        ; 3 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.l, label %bb.h, !prof !53

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !31  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.z) #9 ; 2 uses
  %.sroa.0.0.copyload.i.i14.pr = load i64, ptr %i.ai, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i14 = phi i64 [ %i.z, %bb.i ], [ %.sroa.0.0.copyload.i.i14.pr, %bb.j ] ; 2 uses
  %.0.i.i.i.i.i.i13 = phi ptr [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp ugt i64 %.sroa.0.0.copyload.i.i14, -844424930131969
  br i1 %i.aj, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ak = and i64 %.sroa.0.0.copyload.i.i14, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, -1140850688
  %i.ao = icmp ult i32 %i.an, 150994944
  %spec.select.i = select i1 %i.ao, ptr %.0.i.i.i.i.i.i13, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !16
  %i.ap = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.k

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.aq, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.ar, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !58
  store ptr @.str.12, ptr %3, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.at, align 8, !tbaa !59
  %i.au = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.k:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.av = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i1 noundef zeroext false) #9 ; 2 uses
  %i.aw = extractvalue { i32, i64 } %i.av, 0
  %i.ax = extractvalue { i32, i64 } %i.av, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.g, %bb.k, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.f, %bb.a
  %.sroa.035.4 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 1, %bb.f ], [ 0, %bb.g ], [ %i.au, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.aw, %bb.k ]
  %.sroa.7.4 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ -1548112371908608, %bb.f ], [ undef, %bb.g ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ax, %bb.k ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.035.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm30datePrototypeSymbolToPrimitiveEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14, !noalias !106 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -436207616
  %i.g = icmp ult i32 %i.f, 855638016
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre19 = and i64 %.pre, 281474976710655
  %i.h = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre19, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.h, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.j = icmp ne i64 %.pre-phi, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !58
  store ptr @.str.13, ptr %3, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.o, align 8, !tbaa !59
  %i.p = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.q = insertvalue { i32, i64 } poison, i32 %i.p, 0
  %i.r = insertvalue { i32, i64 } %i.q, i64 undef, 1
  br label %bb.g

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !15
  %.not = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.u ; 3 uses
  %i.v = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !13 ; 2 uses
  %.mask.i = and i64 %i.v, -281474976710656
  %i.w = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.w, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit11, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit11:          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 52, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !58
  store ptr @.str.14, ptr %4, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.aa, align 8, !tbaa !59
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ac = insertvalue { i32, i64 } poison, i32 %i.ab, 0
  %i.ad = insertvalue { i32, i64 } %i.ac, i64 undef, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ae = and i64 %i.v, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = tail call noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 22, ptr noundef %i.af) #9
  br i1 %i.ag, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !13
  %i.ai = and i64 %i.ah, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = tail call noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 23, ptr noundef %i.aj) #9
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !13
  %i.am = and i64 %i.al, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 20, ptr noundef %i.an) #9
  br i1 %i.ao, label %bb.f, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit13

_ZN6hermes2vm11TwineChar16C2EPKc.exit13:          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 76, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !58
  store ptr @.str.15, ptr %5, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.as, align 8, !tbaa !59
  %i.at = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.au = insertvalue { i32, i64 } poison, i32 %i.at, 0
  %i.av = insertvalue { i32, i64 } %i.au, i64 undef, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %i.aw = tail call { i32, i64 } @_ZN6hermes2vm19ordinaryToPrimitiveENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_13PreferredTypeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0) #9
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit11, %bb.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.aw, %bb.f ], [ %i.av, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13 ], [ %i.ad, %_ZN6hermes2vm11TwineChar16C2EPKc.exit11 ]
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm13dateParse_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %.not9 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not9, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !40
  store i64 %i.g, ptr %i.k, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %i.q = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2512
  %i.w = tail call noundef double @_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE(ptr %i.r, i64 %i.s, ptr noundef nonnull align 8 dereferenceable(793) %i.v) #9 ; 2 uses
  %i.x = fcmp uno double %i.w, 0.000000e+00
  %i.y = bitcast double %i.w to i64
  %spec.select.i = select i1 %i.x, i64 9221120237041090560, i64 %i.y, !prof !53
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.3.0 = phi i64 [ %spec.select.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.a ]
  %.sroa.08.0 = phi i32 [ 1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm11dateUTC_RJSEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.f
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.d) #9 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double
  %i.j = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.i, double noundef 0.000000e+00, double noundef 1.000000e+00) #9
  %i.k = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #9
  %i.l = tail call noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %i.j, double noundef %i.k) #9
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !14
  store ptr %i.m, ptr %3, align 8, !tbaa !14
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
  %spec.select.i6 = select i1 %i.t, i64 9221120237041090560, i64 %i.u, !prof !53
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.d, %bb.b
  %.sroa.013.2 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 0, %bb.d ], [ 1, %.sink.split ]
  %.sroa.6.2 = phi i64 [ undef, %bb.b ], [ 9221120237041090560, %bb.a ], [ undef, %bb.d ], [ %spec.select.i6, %.sink.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7dateNowEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
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
define internal fastcc { i32, double } @_ZN6hermes2vmL20makeTimeFromArgs_RJSERNS0_7RuntimeENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree noundef nonnull readonly captures(none) dead_on_return %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x double], align 16            ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
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
  %.01431 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.c ] ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !108  ; 4 uses
  %i.n = trunc nuw nsw i64 %.01431 to i32
  %i.o = load i32, ptr %i.b, align 8, !tbaa !15
  %i.p = icmp ugt i32 %i.o, %i.n
  %i.q = load ptr, ptr %1, align 8
  %i.r = sub nsw i64 0, %.01431
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.sroa.02.0.i = select i1 %i.p, ptr %i.t, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.u = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.v = extractvalue { i32, i64 } %i.u, 0
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = extractvalue { i32, i64 } %i.u, 1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01431
  store i64 %i.x, ptr %i.y, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aa = zext i32 %i.m to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i32 %i.m, ptr %i.l, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !41
  store ptr %i.k, ptr %i.j, align 8, !tbaa !40
  %i.ag = add nuw nsw i64 %.01431, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.b, !llvm.loop !107

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ai = zext i32 %i.m to i64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 %i.m, ptr %i.l, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  store ptr %i.am, ptr %i.an, align 8, !tbaa !41
  store ptr %i.k, ptr %i.j, align 8, !tbaa !40
  br label %bb.e

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load double, ptr %i.a, align 16, !tbaa !109
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
  %i.au = load double, ptr %i.e, align 8, !tbaa !109
  %i.av = load double, ptr %i.f, align 16, !tbaa !109
  %i.aw = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %.sink, double noundef %i.au, double noundef %i.av) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = load double, ptr %i.az, align 16, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = load double, ptr %i.bd, align 16, !tbaa !109
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
define hidden { i32, i64 } @_ZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.llvh::SmallString", align 8 ; 11 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6hermes2vm27datePrototypeToStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE15toStringOptions, i64 %i.a ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !14, !noalias !114
  %.sroa.08.0.copyload = load i64, ptr %i.c, align 8, !tbaa !16 ; 2 uses
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
  store i32 1, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !58
  store ptr @.str, ptr %4, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !59
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.m

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !28 ; 4 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ueq double %i.p, +inf
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %8 = load i8, ptr %7, align 1, !tbaa !116, !range !61, !noundef !62
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit23:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 24, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !58
  store ptr @.str.1, ptr %5, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !59
  %i.v = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.x = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.w, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 325) #9
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = or i64 %i.y, -844424930131968
  br label %bb.m

bb.e:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.ad, align 4, !tbaa !47
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %11 = load i8, ptr %10, align 8, !tbaa !117, !range !61, !noundef !62
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2512
  %i.ah = call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.o, ptr noundef nonnull align 8 dereferenceable(793) %i.ag) #9 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 16, !tbaa !118
  %i.aj = fsub double %i.ah, %i.o
  call void %i.ai(double noundef %i.ah, double noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.b, align 16, !tbaa !118
  call void %i.ak(double noundef %i.o, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.am, 65536
  br i1 %.not.i, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ao = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.al, i64 %i.an) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.al, i64 %i.an)
  %i.ap = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.aq = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !52
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.ao, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.av = extractvalue { i32, i64 } %.pn.i, 0
  %i.aw = extractvalue { i32, i64 } %.pn.i, 1
  %i.ax = icmp eq i32 %i.av, 0
  br i1 %i.ax, label %bb.k, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !53

bb.k:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.ay = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ab
  br i1 %i.az, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  call void @free(ptr noundef %i.ay) #9
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, %bb.d, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.024.0 = phi i32 [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ %i.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23 ], [ 1, %bb.d ]
  %.sroa.5.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.aw, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23 ], [ %i.z, %bb.d ]
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
define hidden { i32, i64 } @_ZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.188", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::SmallXString", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm33datePrototypeToLocaleStringHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE21toLocaleStringOptions, i64 %i.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !14, !noalias !121
  %.sroa.02.0.copyload = load i64, ptr %i.c, align 8, !tbaa !16 ; 2 uses
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
  store i32 1, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !58
  store ptr @.str, ptr %4, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !59
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.n = insertvalue { i32, i64 } poison, i32 %i.m, 0
  %i.o = insertvalue { i32, i64 } %i.n, i64 undef, 1
  br label %bb.h

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !28 ; 2 uses
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
  store ptr %i.y, ptr %5, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 128, ptr %i.aa, align 4, !tbaa !47
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !123
  call void %i.ab(double noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  %i.ac = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.ad, 65536
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.af = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ac, i64 %i.ae) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.188") align 8 %3, ptr %i.ac, i64 %i.ae)
  %i.ag = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.ah = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.al = shl i64 %i.ak, 1
  %i.am = add i64 %i.al, 2
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #10
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.af, %bb.e ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ]
  %i.an = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
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
define hidden { i32, i64 } @_ZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm25datePrototypeGetterHelperEPvRNS0_7RuntimeENS0_10NativeArgsEE13getterOptions, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !14, !noalias !126
  %.sroa.016.0.copyload = load i64, ptr %i.c, align 8, !tbaa !16 ; 2 uses
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
  store i32 1, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !58
  store ptr @.str, ptr %3, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !59
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.q

_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !28 ; 4 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %5 = load i8, ptr %4, align 4, !tbaa !128, !range !61, !noundef !62
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2512
  %i.t = tail call noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %i.o, ptr noundef nonnull align 8 dereferenceable(793) %i.s) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024 = phi double [ %i.o, %bb.c ], [ %i.t, %bb.d ] ; 10 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !129
  switch i32 %i.u, label %bb.p [
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
  %i.v = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %.024) #9
  %i.x = fadd double %i.w, -1.900000e+03
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.y = tail call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %.024) #9
  %i.z = uitofp i32 %i.y to double
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.aa = tail call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  %i.ab = tail call noundef i32 @_ZN6hermes2vm7weekDayEd(double noundef %.024) #9
  %i.ac = sitofp i32 %i.ab to double
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.ad = tail call noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.l:                                             ; preds = %bb.e
  %i.ae = tail call noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.af = tail call noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.n:                                             ; preds = %bb.e
  %i.ag = tail call noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %.024) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  %i.ah = fsub double %i.o, %.024
  %i.ai = fdiv double %i.ah, 6.000000e+04
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi double [ +qnan, %bb.e ], [ %i.v, %bb.f ], [ %i.x, %bb.g ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ], [ %i.af, %bb.m ], [ %i.ag, %bb.n ], [ %i.ai, %bb.o ] ; 2 uses
  %i.aj = fcmp uno double %.0, 0.000000e+00
  %i.ak = bitcast double %.0 to i64
  %spec.select.i = select i1 %i.aj, i64 9221120237041090560, i64 %i.ak, !prof !53
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.4.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select.i, %bb.p ], [ 9221120237041090560, %_ZN6hermes2vm10dyn_vmcastINS0_6JSDateEEEPT_NS0_11HermesValueE.exit ]
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
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #9 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !51
  %i.f = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.f, ptr %i.b, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !52
  store i8 %i.h, ptr %i.g, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !131
  %i.j = load ptr, ptr %0, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.188") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !133
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #11
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #12 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !66
  store i64 %2, ptr %i.a, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !135
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !135
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !135
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_6JSDateEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !7, i64 0}
!9 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !8, i64 0}
!10 = !{!"_ZTSN6hermes2vm10NativeArgsE", !9, i64 0, !5, i64 8, !8, i64 16}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSN6hermes2vm11HermesValueE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!9, !8, i64 0}
!15 = !{!10, !5, i64 8}
!16 = !{!11, !11, i64 0}
!17 = !{!"_ZTSN6hermes2vm6GCCellE", !4, i64 0}
!18 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1}
!19 = !{!"_ZTSN6hermes2vm12BasedPointerE", !5, i64 0}
!20 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !19, i64 0}
!21 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !20, i64 0}
!22 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !21, i64 0}
!23 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !21, i64 0}
!24 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !21, i64 0}
!25 = !{!"_ZTSN6hermes2vm8JSObjectE", !17, i64 0, !18, i64 4, !22, i64 8, !23, i64 12, !24, i64 16}
!26 = !{!"double", !4, i64 0}
!27 = !{!"_ZTSN6hermes2vm6JSDateE", !25, i64 0, !26, i64 24}
!28 = !{!27, !26, i64 24}
!29 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !7, i64 0}
!30 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !29, i64 8}
!31 = !{!30, !29, i64 8}
!32 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !7, i64 0}
!33 = !{!"_ZTSN4llvh15SmallVectorBaseE", !7, i64 0, !5, i64 8, !5, i64 12}
!34 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !33, i64 0}
!35 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !34, i64 0}
!36 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !35, i64 0}
!37 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !4, i64 0}
!38 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !36, i64 0, !37, i64 16}
!39 = !{!"_ZTSN6hermes2vm7GCScopeE", !32, i64 0, !29, i64 8, !4, i64 16, !38, i64 144, !8, i64 192, !8, i64 200, !5, i64 208}
!40 = !{!39, !8, i64 192}
!41 = !{!39, !8, i64 200}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!33, !7, i64 0}
!46 = !{!33, !5, i64 8}
!47 = !{!33, !5, i64 12}
!48 = !{!"p1 omnipotent char", !7, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !11, i64 8, !4, i64 16}
!51 = !{!50, !48, i64 0}
!52 = !{!4, !4, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !4, i64 0}
!55 = !{!"_ZTSN6hermes2vm11TwineChar16E", !4, i64 0, !54, i64 8, !4, i64 16, !54, i64 24, !11, i64 32, !11, i64 40}
!56 = !{!55, !54, i64 24}
!57 = !{!55, !11, i64 32}
!58 = !{!55, !11, i64 40}
!59 = !{!55, !54, i64 8}
!60 = !{!"bool", !4, i64 0}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!"p1 char16_t", !7, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !63, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !64, i64 0, !11, i64 8, !4, i64 16}
!66 = !{!65, !63, i64 0}
!67 = distinct !{!67, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!68 = distinct !{!68, !67, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!69 = !{!10, !8, i64 16}
!70 = !{!68}
!71 = distinct !{!71, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!72 = distinct !{!72, !71, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!73 = !{!72}
!74 = distinct !{!74, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!75 = distinct !{!75, !74, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!76 = !{!75}
!77 = distinct !{!77, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!78 = distinct !{!78, !77, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!79 = !{!78}
!80 = distinct !{!80, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!81 = distinct !{!81, !80, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!82 = !{!81}
!83 = distinct !{!83, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!84 = distinct !{!84, !83, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!87 = distinct !{!87, !86, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!88 = !{!87}
!89 = distinct !{!89, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!90 = distinct !{!90, !89, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!93 = distinct !{!93, !92, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!96 = distinct !{!96, !95, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!99 = distinct !{!99, !98, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!100 = !{!99}
!101 = distinct !{!101, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!102 = distinct !{!102, !101, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!103 = !{!102}
!104 = distinct !{!104, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!105 = distinct !{!105, !104, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!106 = !{!105}
!107 = distinct !{!107, !111}
!108 = !{!39, !5, i64 208}
!109 = !{!26, !26, i64 0}
!110 = !{!8, !8, i64 0}
!111 = !{!"llvm.loop.mustprogress"}
!112 = distinct !{!112, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!113 = distinct !{!113, !112, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!114 = !{!113}
!115 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_115ToStringOptionsE", !7, i64 0, !60, i64 8, !60, i64 9}
!116 = !{!115, !60, i64 9}
!117 = !{!115, !60, i64 8}
!118 = !{!115, !7, i64 0}
!119 = distinct !{!119, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!120 = distinct !{!120, !119, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!121 = !{!120}
!122 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_121ToLocaleStringOptionsE", !7, i64 0}
!123 = !{!122, !7, i64 0}
!124 = distinct !{!124, i1 true, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!125 = distinct !{!125, !124, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!126 = !{!125}
!127 = !{!"_ZTSN6hermes2vm12_GLOBAL__N_113GetterOptionsE", !4, i64 0, !60, i64 4}
!128 = !{!127, !60, i64 4}
!129 = !{!127, !4, i64 0}
!130 = !{!49, !48, i64 0}
!131 = !{!50, !11, i64 8}
!132 = !{!64, !63, i64 0}
!133 = !{!65, !11, i64 8}
!134 = !{!"char16_t", !4, i64 0}
!135 = !{!134, !134, i64 0}
end_hunk_0
