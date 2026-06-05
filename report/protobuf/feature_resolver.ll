inline.NumInlined: 1808
inline.NumDeleted: 750
begin_hunk_0
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.8" }
%"struct.std::_Head_base.8" = type { ptr }
%"class.std::unique_ptr.9" = type { %"struct.std::__uniq_ptr_data.10" }
%"struct.std::__uniq_ptr_data.10" = type { %"class.std::__uniq_ptr_impl.11" }
%"class.std::__uniq_ptr_impl.11" = type { %"class.std::tuple.12" }
%"class.std::tuple.12" = type { %"struct.std::_Tuple_impl.13" }
%"struct.std::_Tuple_impl.13" = type { %"struct.std::_Head_base.16" }
%"struct.std::_Head_base.16" = type { ptr }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.absl::lts_20250512::strings_internal::StringifySink" = type { %"class.std::__cxx11::basic_string" }
%"class.absl::lts_20250512::container_internal::btree_iterator" = type <{ ptr, i32, [4 x i8] }>
%"class.google::protobuf::FieldOptions_EditionDefault" = type { %"class.google::protobuf::Message", %union.anon.78 }
%union.anon.78 = type { %"struct.google::protobuf::FieldOptions_EditionDefault::Impl_" }
%"struct.google::protobuf::FieldOptions_EditionDefault::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", i32, [4 x i8] }>
%"struct.google::protobuf::internal::ArenaStringPtr" = type { %"class.google::protobuf::internal::TaggedStringPtr" }
%"class.google::protobuf::internal::TaggedStringPtr" = type { ptr }
%"class.std::vector.94" = type { %"struct.std::_Vector_base.95" }
%"struct.std::_Vector_base.95" = type { %"struct.std::_Vector_base<google::protobuf::FieldOptions_EditionDefault, std::allocator<google::protobuf::FieldOptions_EditionDefault>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::FieldOptions_EditionDefault, std::allocator<google::protobuf::FieldOptions_EditionDefault>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::FieldOptions_EditionDefault, std::allocator<google::protobuf::FieldOptions_EditionDefault>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::FieldOptions_EditionDefault, std::allocator<google::protobuf::FieldOptions_EditionDefault>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::StatusOr.41" = type { %"class.absl::lts_20250512::internal_statusor::StatusOrData.42" }
%"class.absl::lts_20250512::internal_statusor::StatusOrData.42" = type { %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %"class.absl::lts_20250512::Status" }
%union.anon.44 = type { %"class.google::protobuf::FeatureResolver" }
%"class.google::protobuf::FeatureResolver" = type { %"class.google::protobuf::FeatureSet" }
%"class.google::protobuf::FeatureSet" = type { %"class.google::protobuf::Message", %union.anon.39 }
%union.anon.39 = type { %"struct.google::protobuf::FeatureSet::Impl_" }
%"struct.google::protobuf::FeatureSet::Impl_" = type { %"class.google::protobuf::internal::ExtensionSet", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.google::protobuf::internal::ExtensionSet" = type { i16, i16, %"union.google::protobuf::internal::ExtensionSet::AllocatedData" }
%"union.google::protobuf::internal::ExtensionSet::AllocatedData" = type { ptr }
%"class.absl::lts_20250512::StatusOr.49" = type { %"class.absl::lts_20250512::internal_statusor::StatusOrData.50" }
%"class.absl::lts_20250512::internal_statusor::StatusOrData.50" = type { %union.anon.51, %union.anon.52 }
%union.anon.51 = type { %"class.absl::lts_20250512::Status" }
%union.anon.52 = type { %"class.google::protobuf::FeatureSet" }
%"class.google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault" = type { %"class.google::protobuf::Message", %union.anon.38 }
%union.anon.38 = type { %"struct.google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::Impl_" }
%"struct.google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", ptr, ptr, i32, [4 x i8] }>
%"struct.google::protobuf::FeatureResolver::ValidationResults" = type { %"class.std::vector", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.google::protobuf::DynamicMessageFactory" = type { %"class.google::protobuf::MessageFactory", ptr, i8, %"class.absl::lts_20250512::flat_hash_map", %"class.absl::lts_20250512::Mutex" }
%"class.google::protobuf::MessageFactory" = type { ptr }
%"class.absl::lts_20250512::flat_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_map" }
%"class.absl::lts_20250512::container_internal::raw_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set" }
%"class.absl::lts_20250512::container_internal::raw_hash_set" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple.25" }
%"class.absl::lts_20250512::container_internal::CompressedTuple.25" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.26" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.26" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.27" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.27" = type { %"class.absl::lts_20250512::container_internal::CommonFields" }
%"class.absl::lts_20250512::container_internal::CommonFields" = type { i64, %"class.absl::lts_20250512::container_internal::HashtableSize", %"union.absl::lts_20250512::container_internal::HeapOrSoo" }
%"class.absl::lts_20250512::container_internal::HashtableSize" = type { i64 }
%"union.absl::lts_20250512::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20250512::container_internal::HeapPtrs" }
%"struct.absl::lts_20250512::container_internal::HeapPtrs" = type { ptr, %"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" }
%"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" = type { ptr }
%"class.absl::lts_20250512::Mutex" = type { %"struct.std::atomic.34" }
%"struct.std::atomic.34" = type { %"struct.std::__atomic_base.35" }
%"struct.std::__atomic_base.35" = type { i64 }
%"class.std::vector.109" = type { %"struct.std::_Vector_base.110" }
%"struct.std::_Vector_base.110" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.google::protobuf::FieldOptions_FeatureSupport" = type { %"class.google::protobuf::Message", %union.anon.60 }
%union.anon.60 = type { %"struct.google::protobuf::FieldOptions_FeatureSupport::Impl_" }
%"struct.google::protobuf::FieldOptions_FeatureSupport::Impl_" = type <{ %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i32, i32, i32, [4 x i8] }>

$_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_ = comdat any

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_ = comdat any

$_ZSt11make_uniqueIN6google8protobuf21DynamicMessageFactoryEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IS4_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES4_T_Lb0EEE5valueEiE4typeELi0EEEOS8_ = comdat any

$_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEEED2Ev = comdat any

$_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_ = comdat any

$_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev = comdat any

$_ZN4absl12lts_202505128StatusOrIN6google8protobuf10FeatureSetEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_ = comdat any

$_ZN6google8protobuf15FeatureResolver17ValidationResultsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_ = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_ = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_ = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_ = comdat any

$_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE19_M_range_initializeINS1_8internal19RepeatedPtrIteratorIKS2_EEEEvT_SA_St20forward_iterator_tag = comdat any

$_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEEEPNT_4TypeEPNS0_5ArenaE = comdat any

$_ZN6google8protobuf5Arena16DefaultConstructINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEPvPS1_ = comdat any

$_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE9EmptyNodeEvE10empty_node = comdat any

@.str = private unnamed_addr constant [32 x i8] c"Invalid edition range, edition \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" is newer than edition \00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Unable to find definition of google.protobuf.FeatureSet in descriptor pool.\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/feature_resolver.cc\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"!editions.empty()\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Minimum edition \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" is not EDITION_LEGACY\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c" is earlier than the oldest valid edition \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Edition \00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c" is earlier than the minimum supported edition \00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c" is later than the maximum supported edition \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Invalid edition \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" specified.\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Feature set defaults are not strictly increasing.  Edition \00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c" is greater than or equal to edition \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c" was deprecated before it was introduced.\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c" is deprecated but does not specify a deprecation warning.\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c" specifies a deprecation warning but is not marked deprecated in any edition.\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c" was deprecated after it was removed.\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c" was removed before it was introduced.\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c" has been removed but does not specify a removal error.\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c" specifies a removal error but is not marked removed in any edition.\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"No valid default found for edition \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Type \00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c" contains unsupported oneof feature fields.\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Feature field \00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c" is an unsupported required field.\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c" is an unsupported repeated field.\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c" is not an enum or boolean.\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c" has no target specified.\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c" has no default specified for EDITION_LEGACY, before it was introduced.\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c" has no feature support specified.\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c" does not specify the edition it was introduced in.\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c" has a default specified for edition \00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c", before it was introduced.\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c", after it was removed.\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Unknown extension of \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Extension \00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c" is not an extension of \00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"FeatureSet extension \00", align 1
@.str.43 = private unnamed_addr constant [96 x i8] c" is not of message type.  Feature extensions should always use messages to allow for evolution.\00", align 1
@.str.44 = private unnamed_addr constant [76 x i8] c"Only singular features extensions are supported.  Found repeated extension \00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"Nested extensions in feature extension \00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c" are not supported.\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"&descriptor == overridable.GetDescriptor()\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"!field.is_repeated()\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"field.cpp_type() != FieldDescriptor::CPPTYPE_MESSAGE\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c" in feature field \00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"Parsing error in edition_defaults for feature field \00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c". Could not parse: \00", align 1
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@.str.53 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE9EmptyNodeEvE10empty_node = linkonce_odr hidden constant { ptr, i8, i8, i8, i8 } { ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, i8 0, i8 0, i8 0, i8 1 }, comdat, align 8
@_ZN6google8protobuf29_FeatureSet_default_instance_E = external global %"struct.google::protobuf::FeatureSetDefaultTypeInternal", align 1
@.str.54 = private unnamed_addr constant [91 x i8] c"Feature field `field_presence` must resolve to a known value, found FIELD_PRESENCE_UNKNOWN\00", align 1
@.str.55 = private unnamed_addr constant [81 x i8] c"Feature field `enum_type` must resolve to a known value, found ENUM_TYPE_UNKNOWN\00", align 1
@.str.56 = private unnamed_addr constant [109 x i8] c"Feature field `repeated_field_encoding` must resolve to a known value, found REPEATED_FIELD_ENCODING_UNKNOWN\00", align 1
@.str.57 = private unnamed_addr constant [93 x i8] c"Feature field `utf8_validation` must resolve to a known value, found UTF8_VALIDATION_UNKNOWN\00", align 1
@.str.58 = private unnamed_addr constant [95 x i8] c"Feature field `message_encoding` must resolve to a known value, found MESSAGE_ENCODING_UNKNOWN\00", align 1
@.str.59 = private unnamed_addr constant [85 x i8] c"Feature field `json_format` must resolve to a known value, found JSON_FORMAT_UNKNOWN\00", align 1
@.str.60 = private unnamed_addr constant [103 x i8] c"Feature field `enforce_naming_style` must resolve to a known value, found ENFORCE_NAMING_STYLE_UNKNOWN\00", align 1
@.str.61 = private unnamed_addr constant [132 x i8] c"Feature field `default_symbol_visibility` must resolve to a known value, found VisibilityFeature::DEFAULT_SYMBOL_VISIBILITY_UNKNOWN\00", align 1
@.str.62 = private unnamed_addr constant [70 x i8] c"$0 wasn't introduced until edition $1 and can't be used in edition $2\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"$0 has been removed in edition $1$2\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"$0 has been deprecated in edition $1: $2\00", align 1
@_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E = external global %"struct.google::protobuf::FieldOptions_FeatureSupportDefaultTypeInternal", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"value \00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c" was introduced before \00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c" was.\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c" was removed after \00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c" was deprecated after \00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver15CompileDefaultsEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEENS0_7EditionESD_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %0, ptr noundef %1, ptr nofree readonly captures(address) %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 13 uses
  %13 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20250512::btree_set", align 8 ; 12 uses
  %15 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %17 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %18 = alloca %"class.google::protobuf::FeatureSetDefaults", align 8 ; 12 uses
  %19 = alloca %"class.std::unique_ptr.9", align 8 ; 8 uses
  %20 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %21 = alloca %"class.absl::lts_20250512::Status", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp sgt i32 %4, %5
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull @.str, i32 noundef %4, ptr noundef nonnull @.str.1, i32 noundef %5)
  %i.b = load i64, ptr %9, align 8, !tbaa !7      ; 2 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %9, align 8, !tbaa !7
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit unwind label %.body

.body:                                            ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit: ; preds = %bb.c
  %.pre384 = load i64, ptr %9, align 8, !tbaa !7  ; 2 uses
  %i.e = trunc i64 %.pre384 to i1
  br i1 %i.e, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit
  %i.f = inttoptr i64 %.pre384 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.b, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.critedge173.thread

bb.f:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull @.str.2)
  %i.j = load i64, ptr %10, align 8, !tbaa !7     ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %10, align 8, !tbaa !7
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4absl12lts_202505126StatusD2Ev.exit193, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit192 unwind label %.body190

.body190:                                         ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit192: ; preds = %bb.h
  %.pre383 = load i64, ptr %10, align 8, !tbaa !7 ; 2 uses
  %i.m = trunc i64 %.pre383 to i1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit193, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit192
  %i.n = inttoptr i64 %.pre383 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit193 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit193:        ; preds = %bb.g, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit192, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.critedge173.thread

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118ValidateDescriptorERKNS0_10DescriptorE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(160) %1)
  %i.q = load i64, ptr %11, align 8, !tbaa !7
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.q, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

bb.n:                                             ; preds = %bb.l
  %.pre = load i64, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.t = trunc i64 %.pre to i1
  br i1 %i.t, label %_ZN4absl12lts_202505126StatusD2Ev.exit194.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit194.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit194.thread: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.critedge173.thread

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.idx = shl nuw nsw i64 %3, 3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %.not341 = icmp eq i64 %3, 0                    ; 3 uses
  br i1 %.not341, label %.critedge173, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.al
  %.0130342 = phi ptr [ %2, %.lr.ph ], [ %i.cs, %bb.al ] ; 2 uses
  %i.ac = load ptr, ptr %.0130342, align 8, !tbaa !12 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !15, !noalias !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.af, align 1, !noalias !18
  %i.ag = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull @.str.39, i64 %i.ag, ptr nonnull %i.ai, ptr noundef nonnull @.str.15)
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21, !noalias !18
  %.not.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15, !noalias !18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.0.copyload.i.i.i23.i = load i16, ptr %i.an, align 1, !noalias !18
  %i.ao = zext i16 %.0.copyload.i.i.i23.i to i64  ; 2 uses
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !15, !noalias !18 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.0.copyload.i.i.i26.i = load i16, ptr %i.as, align 1, !noalias !18
  %i.at = zext i16 %.0.copyload.i.i.i26.i to i64  ; 2 uses
  %i.au = xor i64 %i.at, -1
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_EEEN4absl12lts_202505126StatusEDpT_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.r, ptr %15, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.t = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %4)
          to label %.noexc13 unwind label %bb.j   ; 2 uses

.noexc13:                                         ; preds = %bb.e
  %i.u = extractvalue { i64, ptr } %i.t, 0
  store i64 %i.u, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = extractvalue { i64, ptr } %i.t, 1
  store ptr %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.x, align 8, !tbaa !80
  %i.y = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %15, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %5, i64 1)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.z = load ptr, ptr %15, align 8, !tbaa !35
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !38
  store i64 %i.aa, ptr %14, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %9, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ae, ptr %i.ac)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.r
  br i1 %i.al, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.r, align 8, !tbaa !39
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ao = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit18

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit18: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.i:                                             ; preds = %.noexc, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.noexc13, %bb.e, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.k:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.k
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !39
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.k ]
  %i.ba = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !39
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit24

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit24, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit24 ], [ %i.as, %bb.i ]
  %i.be = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %bb.l
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !39
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit27

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit27: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7
  store i64 %i.a, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %1, align 8, !tbaa !7
  %i.b = load i64, ptr %0, align 8, !tbaa !7
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESB_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESB_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESB_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %._crit_edge.i.i.i.thread, label %bb.b

._crit_edge.i.i.i.thread:                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !79, !alias.scope !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !82
  store i64 0, ptr %i.a, align 8, !tbaa !33, !noalias !82
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !79, !alias.scope !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !85
  store i64 %i.c, ptr %i.a, align 8, !tbaa !33, !noalias !85
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !35, !alias.scope !85
  %i.g = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !85
  store i64 %i.g, ptr %i.d, align 8, !tbaa !39, !alias.scope !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.i, ptr %i.h, align 1, !tbaa !39
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = phi ptr [ %i.b, %._crit_edge.i.i.i.thread ], [ %i.d, %._crit_edge.i.i.i ], [ %i.d, %bb.c ], [ %i.d, %bb.d ] ; 4 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !85 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !38, !alias.scope !85
  %i.m = load ptr, ptr %2, align 8, !tbaa !35, !alias.scope !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !85
  %i.o = load ptr, ptr %2, align 8, !tbaa !35
  %i.p = load i64, ptr %i.l, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.p, ptr %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.j, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.f:                                             ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.f
  %i.x = load i64, ptr %i.j, align 8, !tbaa !39
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_118ValidateDescriptorERKNS0_10DescriptorE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !88
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.25, i64 %i.k, ptr nonnull %i.m, ptr noundef nonnull @.str.26)
  br label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph78, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %indvars.iv ; 13 uses
  %i.p = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88) %i.o)
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.0.copyload.i.i.i46 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i.i46 to i64     ; 2 uses
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.t, ptr nonnull %i.v, ptr noundef nonnull @.str.28)
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 32
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i49 = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i49 to i64    ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ac, ptr nonnull %i.ae, ptr noundef nonnull @.str.29)
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !90
  switch i8 %i.ag, label %bb.h [
    i8 14, label %bb.i
    i8 8, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.0.copyload.i.i.i52 = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i.i52 to i64    ; 2 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ak, ptr nonnull %i.am, ptr noundef nonnull @.str.30)
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 116
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.0.copyload.i.i.i55 = load i16, ptr %i.au, align 1
  %i.av = zext i16 %.0.copyload.i.i.i55 to i64    ; 2 uses
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.av, ptr nonnull %i.ax, ptr noundef nonnull @.str.31)
  br label %.critedge.thread

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = add i64 %i.ba, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = select i1 %i.bc, ptr %i.ay, ptr %i.bf   ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.idx = shl nsw i64 %i.bj, 3                    ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %.idx ; 2 uses
  %.not6574 = icmp eq i32 %i.bi, 0
  br i1 %.not6574, label %.critedge79, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bl = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.bl, 24
  br i1 %i.bo, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 4611686018427387900
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.04176.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %..041.3, %._crit_edge.unr-lcssa ]
  %.sroa.061.075.epil.init = phi ptr [ %i.bg, %.lr.ph.preheader ], [ %i.cq, %._crit_edge.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04176.epil = phi i1 [ %..041.epil, %.lr.ph.epil ], [ %.04176.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.061.075.epil = phi ptr [ %i.bt, %.lr.ph.epil ], [ %.sroa.061.075.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bp = load ptr, ptr %.sroa.061.075.epil, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !39
  %i.bs = icmp eq i32 %i.br, 900
  %..041.epil = select i1 %i.bs, i1 true, i1 %.04176.epil ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.061.075.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %..041.lcssa = phi i1 [ %..041.3, %._crit_edge.unr-lcssa ], [ %..041.epil, %.lr.ph.epil ]
  br i1 %..041.lcssa, label %bb.l, label %.critedge79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04176 = phi i1 [ false, %.lr.ph.preheader.new ], [ %..041.3, %.lr.ph ]
  %.sroa.061.075 = phi ptr [ %i.bg, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bu = load ptr, ptr %.sroa.061.075, align 8, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !39
  %i.bx = icmp eq i32 %i.bw, 900
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.cc = icmp eq i32 %i.cb, 900
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !98
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !39
  %i.ch = icmp eq i32 %i.cg, 900
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !39
  %i.cm = icmp eq i32 %i.cl, 900
  %i.cn = select i1 %i.cm, i1 true, i1 %i.ch
  %i.co = select i1 %i.cn, i1 true, i1 %i.cc
  %i.cp = select i1 %i.co, i1 true, i1 %i.bx
  %..041.3 = select i1 %i.cp, i1 true, i1 %.04176 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

.critedge79:                                      ; preds = %bb.k, %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %.0.copyload.i.i.i58 = load i16, ptr %i.ct, align 1
  %i.cu = zext i16 %.0.copyload.i.i.i58 to i64    ; 2 uses
  %i.cv = xor i64 %i.cu, -1
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.cu, ptr nonnull %i.cw, ptr noundef nonnull @.str.32)
  br label %.critedge.thread

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !3, !noalias !101
  %i.cz = and i32 %i.cy, 8
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.dc, align 1, !noalias !101
  %i.dd = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dd, ptr nonnull %i.df, ptr noundef nonnull @.str.33)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !101 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !101
  %.fr80 = freeze i32 %i.dk                       ; 2 uses
  %i.dl = and i32 %.fr80, 4
  %.not38.i = icmp eq i32 %i.dl, 0
  br i1 %.not38.i, label %bb.o, label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %.0.copyload.i.i.i25.i = load i16, ptr %i.do, align 1, !noalias !101
  %i.dp = zext i16 %.0.copyload.i.i.i25.i to i64  ; 2 uses
  %i.dq = xor i64 %i.dp, -1
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dp, ptr nonnull %i.dr, ptr noundef nonnull @.str.34)
  br label %bb.v

.lr.ph.i:                                         ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.du = and i32 %.fr80, 16
  %.not40.i = icmp eq i32 %i.du, 0
  br i1 %.not40.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.q
  %.sroa.034.043.i.us = phi ptr [ %i.eb, %bb.q ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.034.043.i.us, align 8, !tbaa !98, !noalias !101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39, !noalias !101 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 1000
  br i1 %i.dy, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.split.us
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !39, !noalias !101
  %i.ea = icmp slt i32 %i.dx, %i.dz
  br i1 %i.ea, label %.split.us, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.split.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i.us, i64 8 ; 2 uses
  %.not39.i.us = icmp eq ptr %i.eb, %i.bk
  br i1 %.not39.i.us, label %.thread, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.u
  %.sroa.034.043.i = phi ptr [ %i.ew, %bb.u ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.ec = load ptr, ptr %.sroa.034.043.i, align 8, !tbaa !98, !noalias !101
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !39, !noalias !101 ; 5 uses
  %i.ef = icmp slt i32 %i.ee, 1000
  br i1 %i.ef, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.split
  %i.eg = load i32, ptr %i.ds, align 8, !tbaa !39, !noalias !101
  %i.eh = icmp slt i32 %i.ee, %i.eg
  br i1 %i.eh, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.r, %bb.p
  %.us-phi = phi i32 [ %i.dx, %bb.p ], [ %i.ee, %bb.r ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.0.copyload.i.i.i28.i = load i16, ptr %i.ek, align 1, !noalias !101
  %i.el = zext i16 %.0.copyload.i.i.i28.i to i64  ; 2 uses
  %i.em = xor i64 %i.el, -1
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.el, ptr nonnull %i.en, i32 noundef %.us-phi, ptr noundef nonnull @.str.36)
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %i.dt, align 8, !tbaa !39, !noalias !101
  %i.ep = icmp sgt i32 %i.ee, %i.eo
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %.0.copyload.i.i.i31.i = load i16, ptr %i.es, align 1, !noalias !101
  %i.et = zext i16 %.0.copyload.i.i.i31.i to i64  ; 2 uses
  %i.eu = xor i64 %i.et, -1
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.et, ptr nonnull %i.ev, i32 noundef %i.ee, ptr noundef nonnull @.str.37)
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.split
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i, i64 8 ; 2 uses
  %.not39.i = icmp eq ptr %i.ew, %i.bk
  br i1 %.not39.i, label %.thread, label %.lr.ph.i.split

.thread:                                          ; preds = %bb.u, %bb.q
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !104
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.v:                                             ; preds = %bb.t, %.split.us, %bb.o, %bb.m
  %.pr = load i64, ptr %0, align 8, !tbaa !7
  %i.ex = icmp eq i64 %.pr, 1
  br i1 %i.ex, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge.thread

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.v, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = load i32, ptr %i.d, align 8, !tbaa !88
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %bb.c, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %.preheader
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !108
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.v, %bb.f, %bb.h, %bb.j, %.critedge79, %bb.d, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7      ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !7
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !7
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit, !prof !10

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

._crit_edge37:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.p, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not.i.i17, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = and i32 %i.t, 16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.w, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = add i64 %i.z, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = select i1 %i.ab, ptr %i.x, ptr %i.ae    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  %.not2532 = icmp eq i32 %i.ah, 0
  br i1 %.not2532, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !88
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge37, !llvm.loop !111

.lr.ph:                                           ; preds = %bb.d, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit
  %.sroa.022.033 = phi ptr [ %i.fs, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit ], [ %i.af, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.022.033, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !39 ; 5 uses
  %i.aq = icmp sle i32 %i.ap, %1
  %i.ar = icmp eq i32 %i.ap, 9999
  %or.cond.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.as = load i64, ptr %i.e, align 8, !tbaa !59, !noalias !112
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26, !noalias !112 ; 5 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !60, !noalias !112
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.av, align 8, !tbaa !39, !noalias !112
  store ptr %i.au, ptr %i.f, align 8, !tbaa !60, !noalias !112
  store ptr %i.au, ptr %2, align 8, !tbaa !60, !noalias !112
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %2, %.preheader ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !60, !noalias !112 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.01013.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.ba = add i64 %.01013.i.i.i.i.i.i, %.014.i.i.i.i.i.i
  %i.bb = lshr i64 %i.ba, 1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61, !noalias !112
  %i.be = icmp slt i32 %i.bd, %i.ap               ; 2 uses
  %i.bf = add nuw i64 %i.bb, 1
  %.111.i.i.i.i.i.i = select i1 %i.be, i64 %.01013.i.i.i.i.i.i, i64 %i.bb ; 3 uses
  %.1.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %.014.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, %.111.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %bb.h, !llvm.loop !115

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39, !noalias !112
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.bj = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.g

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bn = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.bn, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.0.0.i16.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bv, %bb.k ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39, !noalias !112
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp eq i32 %.sroa.7.0.i.i.i, %i.bq
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39, !noalias !112
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %.sroa.0.0.i16.i.i, align 8, !tbaa !60, !noalias !112 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39, !noalias !112
  %.not.i19.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i19.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, !llvm.loop !116

bb.l:                                             ; preds = %bb.j
  %i.by = sext i32 %.sroa.7.0.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61, !noalias !112
  %i.cc = icmp slt i32 %i.ap, %i.cb
  br i1 %i.cc, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !112
  store i32 %i.bn, ptr %i.g, align 8, !noalias !112
  %i.cd = load i8, ptr %i.bm, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i.i19 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i19, label %.thread.i.i.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %.pre12.i = load i8, ptr %i.bl, align 1, !tbaa !39, !noalias !112
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.cf = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %.11723.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !60, !noalias !112 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i24.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !39, !noalias !112
  %i.cl = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.cm = zext i8 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %.117.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !60, !noalias !112 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf12_GLOBAL__N_112FillDefaultsENS0_7EditionERNS0_7MessageES4_:bb.a
_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132: ; preds = %.lr.ph.i.i.i129
  %.pr.i133 = load ptr, ptr %21, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132, %.critedge94
  %i.gu = phi ptr [ %.pr.i133, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132 ], [ %i.gr, %.critedge94 ] ; 3 uses
  %.not.i.i1.i135 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i1.i135, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134
  %i.gv = load ptr, ptr %i.o, align 8, !tbaa !131
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gy) #24
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i32, ptr %i.k, align 8, !tbaa !88
  %i.ha = sext i32 %i.gz to i64
  %.not84 = icmp slt i64 %indvars.iv.next, %i.ha
  br i1 %.not84, label %bb.d, label %.critedge96, !llvm.loop !145

.body109:                                         ; preds = %.body121, %.loopexit, %.loopexit.split-lp, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.ai
  %.pn78.pn = phi { ptr, i32 } [ %i.eg, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn.pn.pn.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i ], [ %eh.lpad-body122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body122, %.body121 ]
  call void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #22
  br label %.body

.body:                                            ; preds = %bb.x, %bb.w, %.body109
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %.body109 ], [ %i.bl, %bb.w ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.ax

.critedge92:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !135
  %i.hb = load ptr, ptr %21, align 8, !tbaa !128  ; 3 uses
  %i.hc = load ptr, ptr %i.n, align 8, !tbaa !143 ; 2 uses
  %.not4.i.i.i138 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not4.i.i.i138, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %.critedge92, %.lr.ph.i.i.i139
  %.05.i.i.i140 = phi ptr [ %i.hd, %.lr.ph.i.i.i139 ], [ %i.hb, %.critedge92 ] ; 2 uses
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i140) #22
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 40 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.hd, %i.hc
  br i1 %.not.i.i.i141, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142, label %.lr.ph.i.i.i139, !llvm.loop !144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142: ; preds = %.lr.ph.i.i.i139
  %.pr.i143 = load ptr, ptr %21, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142, %.critedge92
  %i.he = phi ptr [ %.pr.i143, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142 ], [ %i.hb, %.critedge92 ] ; 3 uses
  %.not.i.i1.i145 = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i145, label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !131
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hi) #24
  br label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147

_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.aw

.critedge96:                                      ; preds = %bb.au, %.critedge
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !146
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147, %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit, %.critedge96
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.ax:                                            ; preds = %.body, %bb.t, %bb.p, %bb.j
  %.pn85 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ao, %bb.p ], [ %.pn78.pn.pn, %.body ], [ %i.av, %bb.t ]
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  resume { ptr, i32 } %.pn85
}

declare noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite15MergeFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

declare void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IS4_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES4_T_Lb0EEE5valueEiE4typeELi0EEEOS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  invoke void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef null)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IJS4_EEESt10in_place_tDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.d to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69   ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.p = inttoptr i64 %i.k to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i7.i.i.i.i.i
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf18FeatureSetDefaults12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IJS4_EEESt10in_place_tDpOT_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf18FeatureSetDefaults8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IJS4_EEESt10in_place_tDpOT_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IJS4_EEESt10in_place_tDpOT_.exit: ; preds = %bb.b, %bb.h, %bb.i
  store i64 1, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf18FeatureSetDefaultsD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver6CreateENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.41") align 8 %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %4 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %5 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %13 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %14 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %15 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %16 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 10 uses
  %17 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %18 = alloca %"class.absl::lts_20250512::StatusOr.49", align 8 ; 11 uses
  %19 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %20 = alloca %"class.google::protobuf::FeatureResolver", align 8 ; 11 uses
  %21 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef nonnull @.str.9, i32 noundef %i.b)
  %i.d = load i64, ptr %12, align 8, !tbaa !7     ; 2 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %12, align 8, !tbaa !7
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit unwind label %.body

.body:                                            ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit: ; preds = %bb.c
  %.pre119 = load i64, ptr %12, align 8, !tbaa !7 ; 2 uses
  %i.g = trunc i64 %.pre119 to i1
  br i1 %i.g, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit
  %i.h = inttoptr i64 %.pre119 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.b, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.critedge68

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39   ; 2 uses
  %i.m = icmp slt i32 %i.l, %1
  %i.n = icmp ne i32 %1, 9999
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.l)
  %i.o = load i64, ptr %13, align 8, !tbaa !7     ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %13, align 8, !tbaa !7
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_ZN4absl12lts_202505126StatusD2Ev.exit76, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit75 unwind label %.body73

.body73:                                          ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit75: ; preds = %bb.h
  %.pre118 = load i64, ptr %13, align 8, !tbaa !7 ; 2 uses
  %i.r = trunc i64 %.pre118 to i1
  br i1 %i.r, label %_ZN4absl12lts_202505126StatusD2Ev.exit76, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit75
  %i.s = inttoptr i64 %.pre118 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit76 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit76:         ; preds = %bb.g, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit75, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.critedge68

bb.k:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = add i64 %i.x, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = select i1 %i.z, ptr %i.v, ptr %i.ac     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %.idx = shl nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %.not94104 = icmp eq i32 %i.af, 0
  br i1 %.not94104, label %.critedge69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.aj
  %.048106 = phi i32 [ %i.dv, %bb.aj ], [ 0, %bb.k ] ; 3 uses
  %.sroa.090.0105 = phi ptr [ %i.dw, %bb.aj ], [ %i.ad, %bb.k ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.090.0105, align 8, !tbaa !98 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.12)
  %i.am = load i64, ptr %14, align 8, !tbaa !7    ; 2 uses
  store i64 %i.am, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %14, align 8, !tbaa !7
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit80, !prof !10

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit79 unwind label %.body77

.body77:                                          ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit79: ; preds = %bb.m
  %.pre117 = load i64, ptr %14, align 8, !tbaa !7 ; 2 uses
  %i.ap = trunc i64 %.pre117 to i1
  br i1 %i.ap, label %_ZN4absl12lts_202505126StatusD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit79
  %i.aq = inttoptr i64 %.pre117 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit80 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit80:         ; preds = %bb.l, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit79, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge68

bb.p:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.048106, 0
  %.not53 = icmp sgt i32 %i.ak, %.048106
  %or.cond93 = or i1 %.not, %.not53
  br i1 %or.cond93, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !149
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !noalias !149
  store ptr %i.at, ptr %10, align 8, !tbaa !79, !noalias !149
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf15FeatureResolver6CreateENS0_7EditionERKNS0_18FeatureSetDefaultsE:bb.a
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.ej)
          to label %_ZN6google8protobuf10FeatureSetC2EOS1_.exit unwind label %bb.bd

bb.bc:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.ej)
          to label %_ZN6google8protobuf10FeatureSetC2EOS1_.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #23
  unreachable

bb.be:                                            ; preds = %bb.av
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #23
  unreachable

_ZN6google8protobuf10FeatureSetC2EOS1_.exit:      ; preds = %bb.bb, %bb.bc
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef null)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %_ZN6google8protobuf10FeatureSetC2EOS1_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !69 ; 3 uses
  %i.ff = trunc i64 %i.fe to i1
  br i1 %i.ff, label %bb.bg, label %bb.bh, !prof !10

bb.bg:                                            ; preds = %bb.bf
  %i.fg = add nsw i64 %i.fe, -1
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fj = inttoptr i64 %i.fe to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i = phi ptr [ %i.fi, %bb.bg ], [ %i.fj, %bb.bh ]
  %i.fk = load i64, ptr %i.ek, align 8, !tbaa !69 ; 3 uses
  %i.fl = trunc i64 %i.fk to i1
  br i1 %i.fl, label %bb.bi, label %bb.bj, !prof !10

bb.bi:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.fm = add nsw i64 %i.fk, -1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.bj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.fp = inttoptr i64 %i.fk to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i7.i.i.i.i = phi ptr [ %i.fo, %bb.bi ], [ %i.fp, %bb.bj ]
  %i.fq = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.fq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit unwind label %bb.bm

bb.bl:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #23
  unreachable

bb.bn:                                            ; preds = %_ZN6google8protobuf10FeatureSetC2EOS1_.exit
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #23
  unreachable

_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit: ; preds = %bb.bk, %bb.bl
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef null)
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit
  %i.fw = icmp eq ptr %i.fv, %20
  br i1 %i.fw, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !69 ; 3 uses
  %i.fz = trunc i64 %i.fy to i1
  br i1 %i.fz, label %bb.bq, label %bb.br, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.ga = add nsw i64 %i.fy, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.gd = inttoptr i64 %i.fy to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.bq ], [ %i.gd, %bb.br ]
  %i.ge = load i64, ptr %i.fd, align 8, !tbaa !69 ; 3 uses
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %bb.bs, label %bb.bt, !prof !10

bb.bs:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i
  %i.gg = add nsw i64 %i.ge, -1
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i
  %i.gj = inttoptr i64 %i.ge to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.bs ], [ %i.gj, %bb.bt ]
  %i.gk = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i, %.0.i.i7.i.i.i.i.i.i.i
  br i1 %i.gk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.by unwind label %bb.bw

bb.bv:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #23
  unreachable

bb.bx:                                            ; preds = %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #23
  unreachable

bb.by:                                            ; preds = %bb.bv, %bb.bu, %bb.bo
  store i64 1, ptr %0, align 8, !tbaa !7
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %20) #22
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bz

bb.bz:                                            ; preds = %bb.aq, %bb.by
  %i.gp = load i64, ptr %18, align 8, !tbaa !7    ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.ca

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bz
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.gr) #22
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.gs = trunc i64 %i.gp to i1
  br i1 %i.gs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gt = inttoptr i64 %i.gp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gt)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #23
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.critedge68

bb.cd:                                            ; preds = %.body88, %bb.ap
  %.pn61.pn = phi { ptr, i32 } [ %i.ei, %.body88 ], [ %i.ec, %bb.ap ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %common.resume

.critedge68:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit84, %_ZN4absl12lts_202505126StatusD2Ev.exit80, %.critedge68.critedge, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit76, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_122ValidateMergedFeaturesERKNS0_10FeatureSetE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = add i32 %i.b, -4
  %or.cond = icmp ult i32 %i.c, -3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.54)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = add i32 %i.e, -3
  %or.cond16 = icmp ult i32 %i.f, -2
  br i1 %or.cond16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.55)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = add i32 %i.h, -3
  %or.cond17 = icmp ult i32 %i.i, -2
  br i1 %or.cond17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.56)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39   ; 2 uses
  %i.l = lshr i32 13, %i.k
  %i.m = trunc i32 %i.l to i1
  %i.n = add i32 %i.k, -1
  %i.o = icmp ult i32 %i.n, 3
  %or.cond18.not = select i1 %i.o, i1 %i.m, i1 false
  br i1 %or.cond18.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.57)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  %i.r = add i32 %i.q, -3
  %or.cond19 = icmp ult i32 %i.r, -2
  br i1 %or.cond19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.58)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = add i32 %i.t, -3
  %or.cond20 = icmp ult i32 %i.u, -2
  br i1 %or.cond20, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.59)
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %i.x = add i32 %i.w, -3
  %or.cond21 = icmp ult i32 %i.x, -2
  br i1 %or.cond21, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.60)
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aa = add i32 %i.z, -5
  %or.cond22 = icmp ult i32 %i.aa, -4
  br i1 %or.cond22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.61)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !155
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7      ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !7
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !7
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit, !prof !10

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal28GetEditionFeatureSetDefaultsENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.49") align 8 %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %9 = alloca %"class.google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %11 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = or i32 %i.c, 4
  store i32 %i.d, ptr %i.b, align 8, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  %i.j = add i64 %i.g, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = select i1 %i.i, ptr %i.e, ptr %i.l       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread"

_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i: ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  br label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.q, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i ] ; 2 uses
  %i.r = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.04.i.i.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %.val2.i.i.i.i = load i32, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp slt i32 %1, %.val2.i.i.i.i          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.05.i.i.i, %i.x
  %.sroa.02.1.i.i.i = select i1 %i.v, ptr %.sroa.02.04.i.i.i, ptr %i.w ; 3 uses
  %.1.i.i.i = select i1 %i.v, i64 %i.r, i64 %i.y  ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit", !llvm.loop !158

"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit": ; preds = %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.aa = icmp eq ptr %.sroa.02.1.i.i.i, %i.m
  br i1 %i.aa, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread", label %bb.j

"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread": ; preds = %bb.a, %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !159
  store i64 35, ptr %6, align 8, !noalias !159
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.24, ptr %i.ab, align 8, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !159
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !noalias !159
  store ptr %i.ac, ptr %8, align 8, !tbaa !79, !noalias !159
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !38, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !159
  %i.ae = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %1)
          to label %.noexc.i unwind label %bb.e, !noalias !159 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread"
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  store i64 %i.af, ptr %4, align 8, !noalias !159
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = extractvalue { i64, ptr } %i.ae, 1
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !159
  store ptr %4, ptr %3, align 8, !tbaa !39, !noalias !159
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ai, align 8, !tbaa !80, !noalias !159
  %i.aj = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %8, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %3, i64 1)
          to label %bb.b unwind label %bb.e, !noalias !159 ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !159
  %i.ak = load ptr, ptr %8, align 8, !tbaa !35, !noalias !159
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !38, !noalias !159
  store i64 %i.al, ptr %7, align 8, !noalias !159
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !noalias !159
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.c unwind label %bb.e, !noalias !159

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %5, align 8, !tbaa !35, !noalias !159
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !38, !noalias !159
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %10, i64 %i.ap, ptr %i.an)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %5, align 8, !tbaa !35, !noalias !159 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !39, !noalias !159
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !35, !noalias !159 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ac
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !39, !noalias !159
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %bb.b, %.noexc.i, %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread"
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

bb.f:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !35, !noalias !159 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.f
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !39, !noalias !159
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.e ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i ], [ %i.ba, %bb.f ]
  %i.bg = load ptr, ptr %8, align 8, !tbaa !35, !noalias !159 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ac
  br i1 %i.bh, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !39, !noalias !159
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit10.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !159
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !159
  %i.bk = load i64, ptr %10, align 8, !tbaa !7    ; 2 uses
  store i64 %i.bk, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %10, align 8, !tbaa !7
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.g, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !10

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf10FeatureSetEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit unwind label %.body20

.body20:                                          ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %.body

_ZN4absl12lts_202505128StatusOrIN6google8protobuf10FeatureSetEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit: ; preds = %bb.g
  %.pre = load i64, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bn = trunc i64 %.pre to i1
  br i1 %i.bn, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf10FeatureSetEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit
  %i.bo = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf12_GLOBAL__N_128ValidateFeatureLifetimesImplENS0_7EditionERKNS0_7MessageERNS0_15FeatureResolver17ValidationResultsE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !168 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  %i.bc = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.bb
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE(i32 noundef %0, i64 %i.ax, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.bd = add nuw nsw i32 %.071, 1
  br label %.preheader, !llvm.loop !175

bb.ab:                                            ; preds = %bb.q
  %i.be = invoke noundef i32 @_ZNK6google8protobuf10Reflection12GetEnumValueERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.m)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bf = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bg = invoke noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i32 noundef %i.be)
          to label %bb.ae unwind label %bb.ag     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %.not75 = icmp eq ptr %i.bg, null
  br i1 %.not75, label %.critedge, label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ah, %bb.ad, %bb.ac
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !168 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !174
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.bs, null
  %i.bt = select i1 %.not.i.i85, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.bs
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE(i32 noundef %0, i64 %i.bo, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.loopexit unwind label %bb.ag

.loopexit:                                        ; preds = %bb.r, %bb.ah, %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.bw, align 1
  %i.bx = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.by = xor i64 %i.bx, -1
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !91
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.cd, null
  %i.ce = select i1 %.not.i.i86, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.cd
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE(i32 noundef %0, i64 %i.bx, ptr nonnull %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %bb.ae, %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.089.098, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.cf, %i.e
  br i1 %.not92, label %._crit_edge.loopexit, label %.lr.ph

bb.ai:                                            ; preds = %bb.i, %bb.j, %bb.x, %bb.y, %bb.s, %bb.ag, %bb.af, %bb.e
  %.pn79.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.ab, %bb.j ], [ %i.aq, %bb.x ], [ %i.aa, %bb.i ], [ %i.al, %bb.s ], [ %i.ar, %bb.y ], [ %i.bi, %bb.ag ], [ %i.bh, %bb.af ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !164   ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit88, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !166
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #24
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit88

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit88: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf15FeatureResolver17ValidationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !179

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !176
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !180
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !35 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !39
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !179

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %0, align 8, !tbaa !176
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.z = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf21DynamicMessageFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 6 uses
  %i.c = and i32 %i.b, 8
  %.not36 = icmp eq i32 %i.c, 0
  br i1 %.not36, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.17)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = trunc i32 %i.b to i1
  br i1 %i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.18)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.j = trunc i32 %i.b to i1
  br i1 %i.j, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.19)
  br label %bb.q

.thread:                                          ; preds = %bb.d, %bb.f
  %i.k = and i32 %i.b, 16
  %.not37 = icmp eq i32 %i.k, 0
  br i1 %.not37, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39   ; 3 uses
  %.not = icmp slt i32 %i.m, %i.o
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.20)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.21)
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %.not34 = icmp eq i32 %i.q, %i.o
  %i.s = and i32 %i.b, 2
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = or i1 %i.t, %.not34
  br i1 %or.cond, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.22)
  br label %bb.q

bb.n:                                             ; preds = %.thread
  %i.u = and i32 %i.b, 2
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %2, ptr %3, ptr noundef nonnull @.str.23)
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.l
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !181
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 %1, ptr %5, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %4, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.e, ptr %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !39
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver27ValidateFieldFeatureSupportERKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::FieldOptions_FeatureSupport", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.h, align 1
  %i.i = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  tail call void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 %i.i, ptr nonnull %i.k)
  %i.l = load i64, ptr %0, align 8, !tbaa !7
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge33, label %.preheader

.preheader:                                       ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.o = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !184
  %.not3038 = icmp sgt i32 %i.q, 0
  br i1 %.not3038, label %.lr.ph, label %.critedge33

.lr.ph:                                           ; preds = %.preheader
  %i.r = icmp eq ptr %i.e, @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
end_hunk_4
begin_hunk_5_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_SJ_T1_T2_":bb.a

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.bn, %bb.v ], [ %i.bo, %bb.w ]
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !69 ; 3 uses
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.bs = add nsw i64 %i.bq, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

bb.y:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.bv = inttoptr i64 %i.bq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i7.i.i.i = phi ptr [ %i.bu, %bb.x ], [ %i.bv, %bb.y ]
  %i.bw = icmp eq ptr %.0.i.i.i.i.i, %.0.i.i7.i.i.i
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #23
  unreachable

bb.ac:                                            ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit29
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit: ; preds = %bb.t, %bb.z, %bb.aa
  %i.cb = icmp sgt i64 %.1, %1
  br i1 %i.cb, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i, %.lr.ph.i
  %.010.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0911.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 5 uses
  %i.cd = getelementptr inbounds [40 x i8], ptr %0, i64 %.0911.i ; 4 uses
  %.val.i30 = load i32, ptr %i.cc, align 8, !tbaa !39
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %.val.i.i = load i32, ptr %i.ce, align 8, !tbaa !39
  %i.cf = icmp slt i32 %.val.i.i, %.val.i30
  br i1 %i.cf, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i ; 3 uses
  %i.ch = icmp eq i64 %.010.i, %.0911.i
  br i1 %i.ch, label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !69 ; 3 uses
  %i.ck = trunc i64 %i.cj to i1
  br i1 %i.ck, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.cl = add nsw i64 %i.cj, -1
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.co = inttoptr i64 %i.cj to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi ptr [ %i.cn, %bb.ag ], [ %i.co, %bb.ah ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !69 ; 3 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i

bb.aj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.cv = inttoptr i64 %i.cq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i7.i.i = phi ptr [ %i.cu, %bb.ai ], [ %i.cv, %bb.aj ]
  %i.cw = icmp eq ptr %.0.i.i.i.i, %.0.i.i7.i.i
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.cd)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i unwind label %bb.am

bb.al:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.cd)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i: ; preds = %bb.al, %bb.ak, %bb.ae
  %i.cz = icmp sgt i64 %.0911.i, %1
  br i1 %i.cz, label %bb.ad, label %.critedge.i, !llvm.loop !239

.critedge.i:                                      ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i, %bb.ad, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit ], [ %.010.i, %bb.ad ], [ %.0911.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i ]
  %i.da = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i ; 4 uses
  %i.db = icmp eq ptr %i.da, %4
  br i1 %i.db, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_SJ_T1_RT2_.exit", label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !69 ; 3 uses
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.df = add nsw i64 %i.dd, -1
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i10.i

bb.ap:                                            ; preds = %bb.an
  %i.di = inttoptr i64 %i.dd to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i10.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i10.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i11.i = phi ptr [ %i.dh, %bb.ao ], [ %i.di, %bb.ap ]
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !69 ; 3 uses
  %i.dl = trunc i64 %i.dk to i1
  br i1 %i.dl, label %bb.aq, label %bb.ar, !prof !10

bb.aq:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i10.i
  %i.dm = add nsw i64 %i.dk, -1
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i12.i

bb.ar:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i10.i
  %i.dp = inttoptr i64 %i.dk to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i12.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i12.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i7.i13.i = phi ptr [ %i.do, %bb.aq ], [ %i.dp, %bb.ar ]
  %i.dq = icmp eq ptr %.0.i.i.i11.i, %.0.i.i7.i13.i
  br i1 %i.dq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i12.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_SJ_T1_RT2_.exit" unwind label %bb.au

bb.at:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i12.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_SJ_T1_RT2_.exit" unwind label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #23
  unreachable

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_SJ_T1_RT2_.exit": ; preds = %bb.at, %bb.as, %.critedge.i
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  ret void
}

declare void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN6google8protobuf8internal11GenericSwapEPNS0_7MessageES3_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 11 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit16, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit16, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = icmp eq ptr %0, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.ae ] ; 8 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %bb.ae ] ; 3 uses
  %i.g = getelementptr i8, ptr %.pn19, i64 72
  %.val.i = load i32, ptr %i.g, align 8, !tbaa !39
  %.val1.i = load i32, ptr %i.b, align 8, !tbaa !39
  %i.h = icmp slt i32 %.val.i, %.val1.i
  br i1 %i.h, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %2, %.sroa.0.020
  br i1 %i.i, label %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !69   ; 3 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.v = inttoptr i64 %i.q to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i7.i.i.i = phi ptr [ %i.u, %bb.h ], [ %i.v, %bb.i ]
  %i.w = icmp eq ptr %.0.i.i.i.i.i, %.0.i.i7.i.i.i
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.020)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit unwind label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.020)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #23
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit: ; preds = %bb.d, %bb.j, %bb.k
  %i.ab = ptrtoint ptr %.sroa.0.020 to i64
  %i.ac = sub i64 %i.ab, %i.d                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn19, i64 80
  %i.af = udiv exact i64 %i.ac, 40
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.az, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i = phi ptr [ %i.ah, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.079.i.i.i.i.i = phi ptr [ %i.ag, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.020, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !69 ; 3 uses
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i64 %i.aj, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ao = inttoptr i64 %i.aj to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.o ], [ %i.ao, %bb.p ]
  %i.ap = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69 ; 3 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i
  %i.as = add nsw i64 %i.aq, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i
  %i.av = inttoptr i64 %i.aq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.au, %bb.q ], [ %i.av, %bb.r ]
  %i.aw = icmp eq ptr %.0.i.i.i.i.i.i.i.i, %.0.i.i7.i.i.i.i.i.i
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i unwind label %bb.u

bb.t:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.az = add nsw i64 %.011.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.011.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.n, label %.loopexit, !llvm.loop !240

.loopexit:                                        ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  br i1 %i.e, label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !69  ; 3 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i64 %i.bb, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bg = inttoptr i64 %i.bb to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i = phi ptr [ %i.bf, %bb.w ], [ %i.bg, %bb.x ]
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !69  ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
end_hunk_5
begin_hunk_6_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_T0_":bb.a

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #23
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit: ; preds = %bb.b, %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val13 = load i32, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr i8, ptr %0, i64 -8
  %.val2.i14 = load i32, ptr %i.v, align 8, !tbaa !39
  %i.w = icmp slt i32 %.val13, %.val2.i14
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit
  %.sroa.08.015 = phi ptr [ %.sroa.0.016, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit ], [ %0, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit ] ; 6 uses
  %.sroa.0.016 = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -40 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 3 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %.lr.ph
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.m:                                             ; preds = %.lr.ph
  %i.ad = inttoptr i64 %i.y to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69 ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.o:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ak = inttoptr i64 %i.af to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.o, %bb.n
  %.0.i.i7.i = phi ptr [ %i.aj, %bb.n ], [ %i.ak, %bb.o ]
  %i.al = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.015, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.016)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.015, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.016)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit: ; preds = %bb.p, %bb.q
  %.val = load i32, ptr %i.u, align 8, !tbaa !39
  %i.ao = getelementptr i8, ptr %.sroa.08.015, i64 -48
  %.val2.i = load i32, ptr %i.ao, align 8, !tbaa !39
  %i.ap = icmp slt i32 %.val, %.val2.i
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !242

._crit_edge:                                      ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %.sroa.08.0.lcssa = phi ptr [ %0, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit ], [ %.sroa.0.016, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit ] ; 4 uses
  %i.aq = icmp eq ptr %.sroa.08.0.lcssa, %1
  br i1 %i.aq, label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit5, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !69 ; 3 uses
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.au = add nsw i64 %i.as, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i1

bb.u:                                             ; preds = %bb.s
  %i.ax = inttoptr i64 %i.as to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i1

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i1: ; preds = %bb.u, %bb.t
  %.0.i.i.i2 = phi ptr [ %i.aw, %bb.t ], [ %i.ax, %bb.u ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !69 ; 3 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i1
  %i.bb = add nsw i64 %i.az, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i3

bb.w:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i1
  %i.be = inttoptr i64 %i.az to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i3

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i3: ; preds = %bb.w, %bb.v
  %.0.i.i7.i4 = phi ptr [ %i.bd, %bb.v ], [ %i.be, %bb.w ]
  %i.bf = icmp eq ptr %.0.i.i.i2, %.0.i.i7.i4
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i3
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.0.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit5 unwind label %bb.z

bb.y:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i3
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefault8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.0.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit5 unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #23
  unreachable

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit5: ; preds = %._crit_edge, %bb.x, %bb.y
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 72)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf10FeatureSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf10FeatureSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6google8protobuf10Reflection20GetRepeatedEnumValueERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE(i32 noundef %0, i64 %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %6 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %9 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %12 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %18 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %i.a = icmp eq ptr %3, @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E
  br i1 %i.a, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = icmp slt i32 %0, %i.c
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.f, ptr %17, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.h = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %i.c)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.i = extractvalue { i64, ptr } %i.h, 0
  store i64 %i.i, ptr %15, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.k = extractvalue { i64, ptr } %i.h, 1
  store ptr %i.k, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %15, ptr %14, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.l, align 8, !tbaa !80
  %i.m = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %17, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %14, i64 1)
          to label %bb.d unwind label %bb.k       ; 0 uses

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.n = load ptr, ptr %17, align 8, !tbaa !35
  %i.o = load i64, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.q, ptr %18, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.s = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %0)
          to label %.noexc61 unwind label %bb.l   ; 2 uses

.noexc61:                                         ; preds = %bb.d
  %i.t = extractvalue { i64, ptr } %i.s, 0
  store i64 %i.t, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = extractvalue { i64, ptr } %i.s, 1
  store ptr %i.v, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.w, align 8, !tbaa !80
  %i.x = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %18, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %12, i64 1)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.y = load ptr, ptr %18, align 8, !tbaa !35
  %i.z = load i64, ptr %i.r, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 12 uses
  store ptr %i.aa, ptr %16, align 8, !tbaa !79, !alias.scope !243
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !38, !alias.scope !243
  store i8 0, ptr %i.aa, align 8, !tbaa !39, !alias.scope !243
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !243
  store i64 %1, ptr %11, align 16, !noalias !243
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.ac, align 8, !noalias !243
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.o, ptr %i.ad, align 16, !noalias !243
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.n, ptr %i.ae, align 8, !noalias !243
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.z, ptr %i.af, align 16, !noalias !243
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.y, ptr %i.ag, align 8, !noalias !243
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %16, i64 69, ptr nonnull @.str.62, ptr noundef nonnull %11, i64 noundef 3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %16, align 8, !tbaa !35, !alias.scope !243 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.aa
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !39, !alias.scope !243
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %.body

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !243
  %i.am = load ptr, ptr %18, align 8, !tbaa !35   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.g
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !39
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.aq = load ptr, ptr %17, align 8, !tbaa !35   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit
  %i.as = load i64, ptr %i.f, align 8, !tbaa !39
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit70

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit70: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !178 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !180
  %.not.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !79
  %i.az = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aa
  br i1 %i.ba, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !38 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  store ptr %i.az, ptr %i.av, align 8, !tbaa !35
  %i.be = load i64, ptr %i.aa, align 8, !tbaa !39
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !39
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bb, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !38
  store ptr %i.aa, ptr %16, align 8, !tbaa !35
  store i64 0, ptr %i.ab, align 8, !tbaa !38
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !178
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit70
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.j
  %.pre211 = load ptr, ptr %16, align 8, !tbaa !35 ; 2 uses
  %i.bj = icmp eq ptr %.pre211, %i.aa
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

end_hunk_6
begin_hunk_7_@_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE:bb.a
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fu, align 8, !tbaa !80
  %i.fv = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %25, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %6, i64 1)
          to label %bb.ag unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fw = load ptr, ptr %25, align 8, !tbaa !35
  %i.fx = load i64, ptr %i.fp, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !138
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = and i64 %i.ga, -4
  %i.gc = inttoptr i64 %i.gb to ptr               ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  store ptr %i.gg, ptr %24, align 8, !tbaa !79, !alias.scope !249
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !38, !alias.scope !249
  store i8 0, ptr %i.gg, align 8, !tbaa !39, !alias.scope !249
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !249
  store i64 %1, ptr %5, align 16, !noalias !249
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.gi, align 8, !noalias !249
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.fx, ptr %i.gj, align 16, !noalias !249
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.fw, ptr %i.gk, align 8, !noalias !249
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.gf, ptr %i.gl, align 16, !noalias !249
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.gd, ptr %i.gm, align 8, !noalias !249
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %24, i64 40, ptr nonnull @.str.66, ptr noundef nonnull %5, i64 noundef 3)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %24, align 8, !tbaa !35, !alias.scope !249 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gg
  br i1 %i.gp, label %.body146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.ah
  %i.gq = load i64, ptr %i.gg, align 8, !tbaa !39, !alias.scope !249
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #24
  br label %.body146

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !249
  %i.gs = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fo
  br i1 %i.gt, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149: ; preds = %bb.ai
  %i.gu = load i64, ptr %i.fo, align 8, !tbaa !39
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !178 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !180
  %.not.i153 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i153, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !79
  %i.hb = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gg
  br i1 %i.hc, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

bb.ak:                                            ; preds = %bb.aj
  %i.hd = load i64, ptr %i.gh, align 8, !tbaa !38 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 16
  call void @llvm.assume(i1 %i.he)
  %i.hf = add nuw nsw i64 %i.hd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.aj
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !35
  %i.hg = load i64, ptr %i.gg, align 8, !tbaa !39
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !39
  %.pre216 = load i64, ptr %i.gh, align 8, !tbaa !38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  %i.hh = phi i64 [ %.pre216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.hd, %bb.ak ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !38
  store i64 0, ptr %i.gh, align 8, !tbaa !38
  %i.hj = load ptr, ptr %i.gw, align 8, !tbaa !178
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hk, ptr %i.gw, align 8, !tbaa !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.al:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158 unwind label %bb.an

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158: ; preds = %bb.al
  %.pre217 = load ptr, ptr %24, align 8, !tbaa !35 ; 2 uses
  %i.hm = icmp eq ptr %.pre217, %i.gg
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158
  %i.hn = load i64, ptr %i.gg, align 8, !tbaa !39
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %.pre217, i64 noundef %i.ho) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.ao

bb.am:                                            ; preds = %.noexc131, %bb.af
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body146

.body146:                                         ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143, %bb.am
  %.pn46 = phi { ptr, i32 } [ %i.hp, %bb.am ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ], [ %i.gn, %bb.ah ]
  %i.hq = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fo
  br i1 %i.hr, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %.body146
  %i.hs = load i64, ptr %i.fo, align 8, !tbaa !39
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit165

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit165: ; preds = %.body146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.an:                                            ; preds = %bb.al
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gg
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.an
  %i.hx = load i64, ptr %i.gg, align 8, !tbaa !39
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit165
  %.pn48 = phi { ptr, i32 } [ %.pn46, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit165 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.hu, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ad, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  resume { ptr, i32 } %.pn55.pn
}

declare noundef i32 @_ZNK6google8protobuf10Reflection12GetEnumValueERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef, i64, ptr, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !176    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %3 = shl nuw nsw i64 %i.l, 5
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #26 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %6, ptr %5, align 8, !tbaa !79
  %7 = load ptr, ptr %2, align 8, !tbaa !35       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i.a = icmp eq ptr %7, %8
  br i1 %.not.i.a, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %7, ptr %5, align 8, !tbaa !35
  %i.s = load i64, ptr %8, align 8, !tbaa !39
  store i64 %i.s, ptr %6, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !38
  store ptr %8, ptr %2, align 8, !tbaa !35
  store i64 0, ptr %i.u, align 8, !tbaa !38
  store i8 0, ptr %8, align 8, !tbaa !39
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !79, !alias.scope !252, !noalias !255
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !255, !noalias !252 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38, !alias.scope !255, !noalias !252 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !257
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !252, !noalias !255
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !39, !alias.scope !255, !noalias !252
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !39, !alias.scope !252, !noalias !255
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !255, !noalias !252
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !38, !alias.scope !252, !noalias !255
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !255, !noalias !252
  store i64 0, ptr %i.ag, align 8, !tbaa !38, !alias.scope !255, !noalias !252
  store i8 0, ptr %i.y, align 8, !tbaa !39, !alias.scope !255, !noalias !252
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !79, !alias.scope !259, !noalias !262
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !262, !noalias !259 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38, !alias.scope !262, !noalias !259 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !264
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !35, !alias.scope !259, !noalias !262
  %i.at = load i64, ptr %i.an, align 8, !tbaa !39, !alias.scope !262, !noalias !259
  store i64 %i.at, ptr %i.al, align 8, !tbaa !39, !alias.scope !259, !noalias !262
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !38, !alias.scope !262, !noalias !259
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !38, !alias.scope !259, !noalias !262
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !262, !noalias !259
  store i64 0, ptr %i.av, align 8, !tbaa !38, !alias.scope !262, !noalias !259
  store i8 0, ptr %i.an, align 8, !tbaa !39, !alias.scope !262, !noalias !259
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !180
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %4, ptr %0, align 8, !tbaa !176
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !178
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !180
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #7

declare void @_ZN6google8protobuf27FieldOptions_FeatureSupportC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !3
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEPvPS1_(ptr noundef %1) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !98
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !97
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 8, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1)
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEPvPS1_(ptr noundef %1) ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !98
  %i.m = load ptr, ptr %0, align 8, !tbaa !95
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 2, ptr %i.q, align 4, !tbaa !265
  store i32 2, ptr %i.h, align 8, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i: ; preds = %bb.c
  %i.r = add nsw i64 %i.e, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !97   ; 5 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !267
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !10

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.x = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1) ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !95
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !265
  %.pre21.i = load i32, ptr %i.t, align 8, !tbaa !97
  br label %bb.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !265 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %i.u
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = add nsw i32 %i.u, 1
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !3
  %i.ah = sext i32 %i.u to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %.1.i.pre = load ptr, ptr %i.ai, align 8, !tbaa !98
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, %bb.g
  %i.aj = phi i32 [ %.pre21.i, %bb.g ], [ %i.u, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.ak = phi i32 [ %.pre.i, %bb.g ], [ %i.ad, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ]
  %.015.i = phi ptr [ %i.ab, %bb.g ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.am = add nsw i32 %i.ak, 1
  store i32 %i.am, ptr %i.al, align 4, !tbaa !265
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.ao = add nsw i32 %i.aj, 1
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !3
  %i.ap = sext i32 %i.aj to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEPvPS1_(ptr noundef %1) ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !98
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %bb.i
  %.1.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.e ], [ %i.l, %bb.f ], [ %i.ar, %bb.i ], [ %.1.i.pre, %bb.h ]
  ret ptr %.1.i
}

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #19

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEPvPS1_(ptr noundef %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 48)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf18FeatureSetDefaults12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf18FeatureSetDefaults8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { cold }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_7
