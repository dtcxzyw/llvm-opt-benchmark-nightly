Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-plural-rules?download=true
inline.NumInlined: 1207
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"class.icu_78::number::UnlocalizedNumberFormatter" = type <{ %"class.icu_78::number::NumberFormatterSettings", [8 x i8] }>
%"class.icu_78::number::NumberFormatterSettings" = type { %"struct.icu_78::number::impl::MacroProps" }
%"struct.icu_78::number::impl::MacroProps" = type { [4 x i8], %"class.icu_78::number::Notation", %"class.icu_78::MeasureUnit", %"class.icu_78::MeasureUnit", %"class.icu_78::number::Precision", i32, %"class.icu_78::number::impl::Grouper", %"class.icu_78::number::impl::Padder", %"class.icu_78::number::IntegerWidth", %"class.icu_78::number::impl::SymbolsWrapper", i32, i32, i8, i32, %"class.icu_78::number::Scale", %"class.icu_78::number::impl::StringProp", %"class.icu_78::number::impl::StringProp", ptr, ptr, i32, %"class.icu_78::Locale" }
%"class.icu_78::number::Notation" = type { i32, %"union.icu_78::number::Notation::NotationUnion" }
%"union.icu_78::number::Notation::NotationUnion" = type { %"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" }
%"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" = type { i8, i8, i16, i32 }
%"class.icu_78::MeasureUnit" = type <{ %"class.icu_78::UObject", ptr, i16, i8, [5 x i8] }>
%"class.icu_78::number::Precision" = type <{ i32, [4 x i8], %"union.icu_78::number::Precision::PrecisionUnion", i32, [4 x i8] }>
%"union.icu_78::number::Precision::PrecisionUnion" = type { %"struct.icu_78::number::Precision::PrecisionUnion::IncrementSettings" }
%"struct.icu_78::number::Precision::PrecisionUnion::IncrementSettings" = type { i64, i16, i16 }
%"class.icu_78::number::impl::Grouper" = type { i16, i16, i16, i32 }
%"class.icu_78::number::impl::Padder" = type { i32, %union.anon.485 }
%union.anon.485 = type { %struct.anon.486 }
%struct.anon.486 = type { i32, i32 }
%"class.icu_78::number::IntegerWidth" = type <{ %union.anon.487, i8, [3 x i8] }>
%union.anon.487 = type { i32, [4 x i8] }
%"class.icu_78::number::impl::SymbolsWrapper" = type { i32, %union.anon.489 }
%union.anon.489 = type { ptr }
%"class.icu_78::number::Scale" = type <{ i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.icu_78::number::impl::StringProp" = type { ptr, i16, i32 }
%"class.std::unique_ptr.490" = type { %"struct.std::__uniq_ptr_data.491" }
%"struct.std::__uniq_ptr_data.491" = type { %"class.std::__uniq_ptr_impl.492" }
%"class.std::__uniq_ptr_impl.492" = type { %"class.std::tuple.493" }
%"class.std::tuple.493" = type { %"struct.std::_Tuple_impl.494" }
%"struct.std::_Tuple_impl.494" = type { %"struct.std::_Head_base.497" }
%"struct.std::_Head_base.497" = type { ptr }
%"class.v8::Maybe.498" = type { i8, %"struct.v8::internal::Intl::NumberFormatDigitOptions" }
%"struct.v8::internal::Intl::NumberFormatDigitOptions" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.icu_78::number::LocalizedNumberFormatter" = type { %"class.icu_78::number::NumberFormatterSettings.500", ptr, [8 x i8], ptr }
%"class.icu_78::number::NumberFormatterSettings.500" = type { %"struct.icu_78::number::impl::MacroProps" }
%"class.std::shared_ptr.503" = type { %"class.std::__shared_ptr.504" }
%"class.std::__shared_ptr.504" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.508" = type { %"class.std::__shared_ptr.509" }
%"class.std::__shared_ptr.509" = type { ptr, %"class.std::__shared_count" }
%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::JSPluralRules" }
%"class.v8::internal::JSPluralRules" = type { %"class.v8::internal::TorqueGeneratedJSPluralRules" }
%"class.v8::internal::TorqueGeneratedJSPluralRules" = type { %"class.v8::internal::JSObject" }
%"class.v8::internal::JSObject" = type { %"class.v8::internal::TorqueGeneratedJSObject" }
%"class.v8::internal::TorqueGeneratedJSObject" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.icu_78::number::FormattedNumber" = type <{ %"class.icu_78::FormattedValue", ptr, i32, [4 x i8] }>
%"class.icu_78::FormattedValue" = type { ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.521, [32 x i8] }
%struct.anon.521 = type { i16, i32, i32, ptr }
%"class.v8::Maybe.522" = type { i8, %"class.icu_78::number::LocalizedNumberRangeFormatter" }
%"class.icu_78::number::LocalizedNumberRangeFormatter" = type { %"class.icu_78::number::NumberRangeFormatterSettings", %"struct.std::atomic.524" }
%"class.icu_78::number::NumberRangeFormatterSettings" = type { %"struct.icu_78::number::impl::RangeMacroProps" }
%"struct.icu_78::number::impl::RangeMacroProps" = type { [8 x i8], %"class.icu_78::number::UnlocalizedNumberFormatter", %"class.icu_78::number::UnlocalizedNumberFormatter", i8, i32, i32, %"class.icu_78::Locale" }
%"struct.std::atomic.524" = type { %"struct.std::__atomic_base.525" }
%"struct.std::__atomic_base.525" = type { ptr }
%"class.icu_78::number::FormattedNumberRange" = type <{ %"class.icu_78::FormattedValue", ptr, i32, [4 x i8] }>
%"class.icu_78::Formattable" = type { %"class.icu_78::UObject", %union.anon.526, ptr, ptr, i32, %"class.icu_78::UnicodeString" }
%union.anon.526 = type { %struct.anon.527 }
%struct.anon.527 = type { ptr, i32 }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.594" }
%"class.std::optional.594" = type { %"struct.std::_Optional_base.595" }
%"struct.std::_Optional_base.595" = type { %"struct.std::_Optional_payload.597" }
%"struct.std::_Optional_payload.597" = type { %"struct.std::_Optional_payload.base.601", [7 x i8] }
%"struct.std::_Optional_payload.base.601" = type { %"struct.std::_Optional_payload_base.base.600" }
%"struct.std::_Optional_payload_base.base.600" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard" }
%"class.v8::base::LockGuard" = type { ptr }
%"class.v8::internal::ConsStringIterator" = type <{ [32 x %"class.v8::internal::Tagged.616"], %"class.v8::internal::Tagged.616", i32, i32, i32, [4 x i8] }>
%"class.v8::internal::Tagged.616" = type { %"class.v8::internal::Tagged.0" }
%"class.v8::internal::Tagged.0" = type { %"class.v8::internal::TaggedImpl" }

$_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev = comdat any

$_ZN2v88internal7ManagedIN6icu_7811PluralRulesEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE = comdat any

$_ZNSt12__shared_ptrIN6icu_7811PluralRulesELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN2v88internal7ManagedIN6icu_786number24LocalizedNumberFormatterEE4FromEPNS0_7IsolateEmSt10shared_ptrIS4_ENS0_14AllocationTypeE = comdat any

$_ZSt11make_sharedIN6icu_786number24LocalizedNumberFormatterEJRS2_EESt10shared_ptrIT_EDpOT0_ = comdat any

$_ZNSt12__shared_ptrIN6icu_786number24LocalizedNumberFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEE = comdat any

$_ZN2v88internal28TorqueGeneratedJSPluralRulesINS0_13JSPluralRulesENS0_8JSObjectEE10set_localeENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal13JSPluralRules20set_icu_plural_rulesENS0_6TaggedINS0_7ManagedIN6icu_7811PluralRulesEEEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal13JSPluralRules24set_icu_number_formatterENS0_6TaggedINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEENS0_16WriteBarrierModeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ = comdat any

$_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE = comdat any

$_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

$_ZNSt12__shared_ptrIN6icu_7811PluralRulesELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZTVSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cardinal\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ordinal\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"minimumIntegerDigits\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"minimumSignificantDigits\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"maximumSignificantDigits\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"minimumFractionDigits\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"maximumFractionDigits\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"few\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"many\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@constinit.16 = private unnamed_addr constant [6 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 8
@.str.17 = private unnamed_addr constant [17 x i8] c"pluralCategories\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.19 = private unnamed_addr constant [171 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingIncrement_string(), JSNumberFormat::RoundingIncrement(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.20 = private unnamed_addr constant [167 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingMode_string(), JSNumberFormat::RoundingModeString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.21 = private unnamed_addr constant [175 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingPriority_string(), JSNumberFormat::RoundingPriorityString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.22 = private unnamed_addr constant [181 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->trailingZeroDisplay_string(), JSNumberFormat::TrailingZeroDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales = internal global { { i8 }, [7 x i8], [48 x i8] } { { i8 } zeroinitializer, [7 x i8] undef, [48 x i8] zeroinitializer }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN6icu_7811PluralRulesESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden nonnull ptr @_ZNK2v88internal13JSPluralRules12TypeAsStringEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 4294967296
  %i.e = icmp eq i64 %i.d, 0
  %.sroa.0.0.v = select i1 %i.e, i64 2192, i64 2944
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.v
  ret ptr %.sroa.0.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal13JSPluralRules3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc(ptr noundef %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.443"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle.460", align 8 ; 11 uses
  %9 = alloca %"class.v8::Maybe", align 8         ; 8 uses
  %10 = alloca %"class.std::vector.445", align 8  ; 8 uses
  %11 = alloca %"struct.v8::internal::Intl::ResolvedLocale", align 8 ; 16 uses
  %12 = alloca %"class.v8::Maybe.476", align 8    ; 14 uses
  %13 = alloca %"class.std::set.478", align 8     ; 10 uses
  %14 = alloca %"class.icu_78::Locale", align 8   ; 9 uses
  %15 = alloca %"class.icu_78::number::UnlocalizedNumberFormatter", align 8 ; 13 uses
  %16 = alloca %"class.icu_78::number::UnlocalizedNumberFormatter", align 8 ; 31 uses
  %17 = alloca %"class.std::unique_ptr.490", align 8 ; 8 uses
  %18 = alloca %"class.icu_78::Locale", align 8   ; 10 uses
  %19 = alloca %"class.v8::Maybe.498", align 4    ; 5 uses
  %20 = alloca %"struct.v8::internal::Intl::NumberFormatDigitOptions", align 4 ; 4 uses
  %21 = alloca %"class.icu_78::number::UnlocalizedNumberFormatter", align 8 ; 5 uses
  %22 = alloca %"class.icu_78::number::LocalizedNumberFormatter", align 8 ; 5 uses
  %23 = alloca %"class.std::shared_ptr.503", align 8 ; 3 uses
  %24 = alloca %"class.std::shared_ptr.508", align 8 ; 3 uses
  %25 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %26 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN2v88internal4Intl22CanonicalizeLocaleListB5cxx11EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEb(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe") align 8 %9, ptr noundef %0, ptr %2, i1 noundef zeroext false) #16
  %i.c = load i8, ptr %9, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit, label %bb.x

_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = call ptr @_ZN2v88internal21CoerceOptionsToObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPKc(ptr noundef %0, ptr %3, ptr noundef %4) #16 ; 4 uses
  %.not152 = icmp eq ptr %i.f, null
  br i1 %.not152, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit
  %i.g = call i64 @_ZN2v88internal4Intl16GetLocaleMatcherEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKc(ptr noundef %0, ptr nonnull %i.f, ptr noundef %4) #16 ; 2 uses
  %.sroa.5102.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.5102.0.extract.trunc = trunc nuw i64 %.sroa.5102.0.extract.shift to i32
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr null, ptr %8, align 8
  %i.j = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr nonnull %i.f, ptr nonnull %i.i, ptr noundef %4, ptr noundef nonnull %8) #16 ; 2 uses
  %i.k = trunc i16 %i.j to i1
  br i1 %i.k, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit
  %i.l = and i16 %i.j, 256
  %.not16.i = icmp eq i16 %i.l, 0
  br i1 %.not16.i, label %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread141, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %8, align 8
  %i.m = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr nonnull @.str.1, i64 8, ptr noundef nonnull %0) ; 2 uses
  br i1 %i.p, label %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread.a, label %.lr.ph.i.1

_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread141: ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZNKR2v85MaybeINS_8internal13JSPluralRules4TypeEE8FromJustEv.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %8, align 8
  %i.q = load i64, ptr %.sroa.0.0.copyload.i.i.1, align 8
  %i.r = add i64 %i.q, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr nonnull @.str.2, i64 7, ptr noundef nonnull %0)
  br i1 %i.t, label %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread.a, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.1
  %i.u = load ptr, ptr %8, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.x = ptrtoint ptr %i.w to i64
  store i64 %i.x, ptr %8, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit.i
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %i.z = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.y, i8 noundef zeroext 0) #16 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.d
  %.sroa.03.0.copyload.i = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %.sroa.03.0.copyload.i, ptr %7, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.i, ptr %i.ac, align 8
  %i.ad = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ae, ptr noundef null) #16 ; 0 uses
  br label %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread

_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread: ; preds = %_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread.a: ; preds = %.lr.ph.i.1, %.lr.ph.i.preheader
  %.sroa.idx = xor i1 %i.p, true
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.sroa.597.0.extract.trunc = zext i1 %.sroa.idx to i32
  br label %_ZNKR2v85MaybeINS_8internal13JSPluralRules4TypeEE8FromJustEv.exit

_ZNKR2v85MaybeINS_8internal13JSPluralRules4TypeEE8FromJustEv.exit: ; preds = %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread.a, %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread141
  %.sroa.597.0.extract.trunc147 = phi i32 [ 0, %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread141 ], [ %.sroa.597.0.extract.trunc, %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.ag, ptr %11, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 6 uses
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 5 uses
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 3 uses
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 4 uses
  store ptr %i.aj, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  store i64 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ao = load atomic i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales acquire, align 8
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKR2v85MaybeINS_8internal13JSPluralRules4TypeEE8FromJustEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE12InitInstanceEPv, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.aq, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.ap, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, ptr noundef nonnull %6) #16
  %i.ar = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #16, !inline_history !14 ; 0 uses
  br label %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit

_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit: ; preds = %_ZNKR2v85MaybeINS_8internal13JSPluralRules4TypeEE8FromJustEv.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.at, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.ax, align 8
  call void @_ZN2v88internal4Intl13ResolveLocaleEPNS0_7IsolateERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EERKSt6vectorISA_SD_ENS1_13MatcherOptionESG_(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.476") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8), ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %.sroa.5102.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(48) %13) #16
  %i.ay = load i8, ptr %12, align 8, !range !9, !noundef !10
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit, !prof !12

bb.h:                                             ; preds = %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull align 8 dereferenceable(120) %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #16 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.be = load ptr, ptr %i.ak, align 8            ; 4 uses
  store ptr %i.be, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bd, ptr %i.bh, align 8
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ null, %bb.h ]
  store ptr %.sink.i.i.i.i, ptr %i.bf, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.i
  store ptr null, ptr %i.ak, align 8
  store ptr %i.aj, ptr %i.al, align 8
  store ptr %i.aj, ptr %i.am, align 8
  store i64 0, ptr %i.an, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i, label %_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i
  %i.bn = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i.i.i.i.i.i56 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i56, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.k, !llvm.loop !15

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.k
  store ptr %.0.i.i.i.i.i.i, ptr %i.al, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bn, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.br, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_.exit.i.i.i, label %bb.l, !llvm.loop !16

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_.exit.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i7.i.i.i.i, ptr %i.am, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.bt = load i64, ptr %i.bs, align 8
  store i64 %i.bt, ptr %i.an, align 8
  store ptr %i.bn, ptr %i.ak, align 8
  %.pre.i.i.i = load ptr, ptr %i.bh, align 8
  %.pre6.i.i.i = load ptr, ptr %5, align 8
  br label %_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_.exit

_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_.exit.i.i.i
  %i.bu = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_.exit.i.i.i ], [ %i.be, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i ]
  %i.bv = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_.exit.i.i.i ], [ %i.bd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.pre = load i8, ptr %12, align 8, !range !9
  %i.bw = trunc nuw i8 %.pre to i1
  br label %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit

_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit: ; preds = %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit, %_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_.exit
  %i.bx = phi i1 [ false, %_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev.exit ], [ %i.bw, %_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.cc) #16
  %i.cd = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit
  %i.cg = load i64, ptr %i.ce, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #19
  br label %_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev.exit

_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev.exit: ; preds = %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ci = load ptr, ptr %i.au, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br i1 %i.bx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev.exit
  %i.cj = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #16
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ck, ptr noundef null) #16 ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev.exit
  %i.cm = load ptr, ptr %11, align 8              ; 2 uses
  %i.cn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #17
  %i.co = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.cm, i64 %i.cn, i8 noundef zeroext 0) #16 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.o, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %16, i8 0, i64 296, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 2, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.cr) #16
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.cs) #16
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 88
  store i32 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 96
end_hunk_0
begin_hunk_1_@_ZN2v88internal13JSPluralRules3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc:bb.a
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.p, label %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.not.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i, label %.sink.split, label %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit

_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit: ; preds = %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i
  %i.du = load ptr, ptr %i.dr, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(28) %i.dr) #16, !inline_history !17
  br label %.sink.split

bb.p:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  store ptr %i.dr, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %bb.q, label %bb.s

.sink.split:                                      ; preds = %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.dx = call noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #16
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %i.dx, ptr noundef null, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.dy = call noundef ptr @_ZN6icu_7811PluralRules9forLocaleERKNS_6LocaleE11UPluralTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef %.sroa.597.0.extract.trunc147, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #16 ; 6 uses
  %i.dz = load i32, ptr %i.a, align 4
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i59, label %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread

_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread: ; preds = %bb.q
  store ptr %i.dy, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.eb = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %18) #16 ; 0 uses
  %.not.i65.old = icmp eq ptr %i.dy, null
  br i1 %.not.i65.old, label %.critedge, label %bb.r

_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i59: ; preds = %bb.q
  %.not.i.i60 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i60, label %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread151, label %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64

_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread151: ; preds = %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ec = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %18) #16 ; 0 uses
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64: ; preds = %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EEaSEOS4_.exit.i59
  %i.ed = load ptr, ptr %i.dy, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(28) %i.dy) #16, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.eg = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %18) #16 ; 0 uses
  %i.eh = load ptr, ptr %17, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread151, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread
  %i.ei = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread151 ], [ %i.eh, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64 ], [ null, %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread ]
  %i.ej = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #16
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ek, ptr noundef null) #16 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.u

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120CreateICUPluralRulesEPNS0_7IsolateERKN6icu_786LocaleENS0_13JSPluralRules4TypeEPSt10unique_ptrINS4_11PluralRulesESt14default_deleteISB_EE.exit64.thread
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.pre158160 = phi ptr [ %i.dy, %bb.r ], [ %i.dr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZN2v88internal4Intl27SetNumberFormatDigitOptionsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiibPKc(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.498") align 4 %19, ptr noundef nonnull %0, ptr nonnull %i.f, i32 noundef 0, i32 noundef 3, i1 noundef zeroext false, ptr noundef %4) #16
  %i.em = load i8, ptr %19, align 4, !range !9, !noundef !10
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNKR2v85MaybeINS_8internal4Intl24NumberFormatDigitOptionsEE8FromJustEv.exit, label %bb.t

_ZNKR2v85MaybeINS_8internal4Intl24NumberFormatDigitOptionsEE8FromJustEv.exit: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %20, ptr noundef nonnull align 4 dereferenceable(40) %i.eo, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @_ZN2v88internal14JSNumberFormat26SetDigitOptionsToFormatterERKN6icu_786number26UnlocalizedNumberFormatterERKNS0_4Intl24NumberFormatDigitOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %21, ptr noundef nonnull align 8 dereferenceable(289) %15, ptr noundef nonnull align 4 dereferenceable(40) %20) #16
  %i.ep = call noundef nonnull align 8 dereferenceable(289) ptr @_ZN6icu_786number26UnlocalizedNumberFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(289) %15, ptr noundef nonnull align 8 dereferenceable(289) %21) #16 ; 0 uses
  call void @_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev(ptr noundef nonnull align 8 dereferenceable(289) %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZNKR6icu_786number26UnlocalizedNumberFormatter6localeERKNS_6LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8 %22, ptr noundef nonnull align 8 dereferenceable(289) %15, ptr noundef nonnull align 8 dereferenceable(40) %14) #16
  call void @_ZNSt12__shared_ptrIN6icu_7811PluralRulesELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %i.eq = call ptr @_ZN2v88internal7ManagedIN6icu_7811PluralRulesEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE(ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %23, i8 noundef zeroext 0)
  call void @_ZNSt12__shared_ptrIN6icu_7811PluralRulesELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #16
  call void @_ZSt11make_sharedIN6icu_786number24LocalizedNumberFormatterEJRS2_EESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.508") align 8 %24, ptr noundef nonnull align 8 dereferenceable(312) %22)
  %i.er = call ptr @_ZN2v88internal7ManagedIN6icu_786number24LocalizedNumberFormatterEE4FromEPNS0_7IsolateEmSt10shared_ptrIS4_ENS0_14AllocationTypeE(ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %24, i8 noundef zeroext 0)
  call void @_ZNSt12__shared_ptrIN6icu_786number24LocalizedNumberFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #16
  %i.es = call ptr @_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) ; 6 uses
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %i.et, 31
  %i.ev = inttoptr i64 %i.eu to ptr
  store atomic volatile i64 0, ptr %i.ev monotonic, align 8
  %i.ew = load i64, ptr %i.es, align 8
  %i.ex = add i64 %i.ew, 31
  %i.ey = inttoptr i64 %i.ex to ptr               ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  %i.fc = and i32 %i.fb, -2
  %i.fd = or disjoint i32 %i.fc, %.sroa.597.0.extract.trunc147
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 32
  store atomic volatile i64 %i.ff, ptr %i.ey monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  %i.fg = load i64, ptr %i.es, align 8
  store i64 %i.fg, ptr %25, align 8
  %i.fh = load i64, ptr %i.co, align 8
  call void @_ZN2v88internal28TorqueGeneratedJSPluralRulesINS0_13JSPluralRulesENS0_8JSObjectEE10set_localeENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 %i.fh, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.fi = load i64, ptr %i.es, align 8
  store i64 %i.fi, ptr %26, align 8
  %i.fj = load i64, ptr %i.eq, align 8
  call void @_ZN2v88internal13JSPluralRules20set_icu_plural_rulesENS0_6TaggedINS0_7ManagedIN6icu_7811PluralRulesEEEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 %i.fj, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  %i.fk = load i64, ptr %i.es, align 8
  store i64 %i.fk, ptr %27, align 8
  %i.fl = load i64, ptr %i.er, align 8
  call void @_ZN2v88internal13JSPluralRules24set_icu_number_formatterENS0_6TaggedINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 %i.fl, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %.pre158.pre = load ptr, ptr %17, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKR2v85MaybeINS_8internal4Intl24NumberFormatDigitOptionsEE8FromJustEv.exit
  %.pre158 = phi ptr [ %.pre158.pre, %_ZNKR2v85MaybeINS_8internal4Intl24NumberFormatDigitOptionsEE8FromJustEv.exit ], [ %.pre158160, %bb.s ]
  %.sroa.0108.0 = phi ptr [ %i.es, %_ZNKR2v85MaybeINS_8internal4Intl24NumberFormatDigitOptionsEE8FromJustEv.exit ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.t
  %i.fm = phi ptr [ %i.ei, %.critedge ], [ %.pre158, %bb.t ] ; 3 uses
  %.sroa.0108.1 = phi ptr [ null, %.critedge ], [ %.sroa.0108.0, %bb.t ]
  %.not.i67 = icmp eq ptr %i.fm, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6icu_7811PluralRulesEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6icu_7811PluralRulesEEclEPS1_.exit.i: ; preds = %bb.u
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(28) %i.fm) #16, !inline_history !18
  br label %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.u, %_ZNKSt14default_deleteIN6icu_7811PluralRulesEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 248
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.fq) #16
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 208
  call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #16
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 192
  call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #16
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 168
  call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %i.ft) #16
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 136
  call void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #16
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.fv) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.fw) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EED2Ev.exit, %bb.m
  %.sroa.0108.2 = phi ptr [ %.sroa.0108.1, %_ZNSt10unique_ptrIN6icu_7811PluralRulesESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.m ]
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.fy = load ptr, ptr %i.ak, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef %i.fy)
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #16
  %i.fz = load ptr, ptr %11, align 8              ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ag
  br i1 %i.ga, label %_ZN2v88internal4Intl14ResolvedLocaleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.gb = load i64, ptr %i.ag, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #19
  br label %_ZN2v88internal4Intl14ResolvedLocaleD2Ev.exit

_ZN2v88internal4Intl14ResolvedLocaleD2Ev.exit:    ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.b, %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread, %_ZN2v88internal4Intl14ResolvedLocaleD2Ev.exit, %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit
  %.sroa.0108.5 = phi ptr [ null, %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit ], [ null, %bb.b ], [ %.sroa.0108.2, %_ZN2v88internal4Intl14ResolvedLocaleD2Ev.exit ], [ null, %_ZN2v88internalL15GetStringOptionINS0_13JSPluralRules4TypeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread ]
  %i.gd = load ptr, ptr %10, align 8              ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.gf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gd, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.gg = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gj = load i64, ptr %i.gh, align 8
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gl, %i.gf
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.gm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.gd, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.sroa.0108.6 = phi ptr [ %.sroa.0108.5, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ null, %bb.a ]
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gt, %i.gv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.gt, %bb.x ] ; 3 uses
  %i.gw = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gz = load i64, ptr %i.gx, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.hb, %i.gv
  br i1 %.not.i.i.i.i68, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.gs, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.x
  %i.hc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.gt, %bb.x ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i.i, label %_ZN2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #19
  br label %_ZN2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit

_ZN2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret ptr %.sroa.0108.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN2v88internal4Intl22CanonicalizeLocaleListB5cxx11EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEb(ptr dead_on_unwind writable sret(%"class.v8::Maybe") align 8, ptr noundef, ptr, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_ZN2v88internal21CoerceOptionsToObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i64 @_ZN2v88internal4Intl16GetLocaleMatcherEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal4Intl13ResolveLocaleEPNS0_7IsolateERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EERKSt6vectorISA_SD_ENS1_13MatcherOptionESG_(ptr dead_on_unwind writable sret(%"class.v8::Maybe.476") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11Ev() local_unnamed_addr #2 align 2 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.a = load atomic i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales acquire, align 8
  %.not.i.i.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE7PointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE12InitInstanceEPv, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.c, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.b, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, ptr noundef nonnull %0) #16
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE7PointerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3) #16, !inline_history !20 ; 0 uses
  br label %_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE7PointerEv.exit

_ZN2v84base16LazyInstanceImplINS_8internal12_GLOBAL__N_127PluralRulesAvailableLocalesENS0_32StaticallyAllocatedInstanceTraitIS4_EENS0_21DefaultConstructTraitIS4_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS4_EEE7PointerEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal13JSPluralRules19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8)
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZNO6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12roundingModeE25UNumberFormatRoundingMode(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.g) #16
  ret void
}

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

declare void @_ZN2v88internal4Intl27SetNumberFormatDigitOptionsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiibPKc(ptr dead_on_unwind writable sret(%"class.v8::Maybe.498") align 4, ptr noundef, ptr, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14JSNumberFormat26SetDigitOptionsToFormatterERKN6icu_786number26UnlocalizedNumberFormatterERKNS0_4Intl24NumberFormatDigitOptionsE(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(289), ptr noundef nonnull align 4 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(289) ptr @_ZN6icu_786number26UnlocalizedNumberFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(289), ptr noundef nonnull align 8 dereferenceable(289)) local_unnamed_addr #7

declare void @_ZNKR6icu_786number26UnlocalizedNumberFormatter6localeERKNS_6LocaleE(ptr dead_on_unwind writable sret(%"class.icu_78::number::LocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(289), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7ManagedIN6icu_7811PluralRulesEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 48) #16 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.c, align 8
  store <2 x ptr> %i.d, ptr %i.b, align 8
end_hunk_1
