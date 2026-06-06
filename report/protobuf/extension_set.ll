inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.google::protobuf::internal::ExtensionInfo" = type { ptr, i32, i8, i8, i8, i8, %union.anon, ptr, ptr }
%union.anon = type { %"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck" }
%"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck" = type { ptr, ptr }
%class.anon.35 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.36 = type { ptr, ptr, ptr, ptr, ptr }
%"struct.std::pair.53" = type { %"class.absl::lts_20250512::container_internal::btree_iterator", i8, [7 x i8] }
%"class.absl::lts_20250512::container_internal::btree_iterator" = type <{ ptr, i32, [4 x i8] }>
%"struct.std::pair.41" = type { i32, %"struct.google::protobuf::internal::ExtensionSet::Extension" }
%"struct.google::protobuf::internal::ExtensionSet::Extension" = type { %union.anon.6, i8, i8, i8, i8, %"class.google::protobuf::internal::ExtensionSet::TrivialAtomicInt", ptr }
%union.anon.6 = type { i64 }
%"class.google::protobuf::internal::ExtensionSet::TrivialAtomicInt" = type { [4 x i8] }
%"class.google::protobuf::internal::ExtensionSet" = type { i16, i16, %"union.google::protobuf::internal::ExtensionSet::AllocatedData" }
%"union.google::protobuf::internal::ExtensionSet::AllocatedData" = type { ptr }
%class.anon.129 = type <{ ptr, %"struct.google::protobuf::internal::ExtensionInfo::EnumValidityCheck", ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.40 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.40 = type { i64, [8 x i8] }
%"class.google::protobuf::internal::ParseContext" = type { %"class.google::protobuf::internal::EpsCopyInputStream", i32, i32, %"struct.google::protobuf::internal::ParseContext::Data" }
%"class.google::protobuf::internal::EpsCopyInputStream" = type { ptr, ptr, ptr, i32, i32, ptr, [32 x i8], i64, i32, i32 }
%"struct.google::protobuf::internal::ParseContext::Data" = type { ptr, ptr }
%class.anon.43 = type { ptr, ptr, ptr, ptr }
%class.anon.44 = type { ptr, ptr, ptr, ptr }
%"struct.std::pair.150" = type { i64, %"class.absl::lts_20250512::container_internal::btree_iterator" }
%"class.absl::lts_20250512::log_internal::CheckOpMessageBuilder" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv = comdat any

$_ZN6google8protobuf8internal12ExtensionSet27ParseFieldWithExtensionInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcibRKNS1_13ExtensionInfoEPNS1_16InternalMetadataESB_PNS1_12ParseContextE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_11MessageLiteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcSC_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE = comdat any

$_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE5eraseIiEEmRSD_ = comdat any

$_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD2Ev = comdat any

$_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD0Ev = comdat any

$_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIhlEEPKcT_T0_S4_ = comdat any

$_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm48EEEvPvS3_S3_m = comdat any

$_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_ = comdat any

$_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v = comdat any

$_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE = comdat any

$_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv = comdat any

$_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE = comdat any

$_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIiEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIlEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIjEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddImEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIbEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIfEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet3AddIdEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_ZNS2_16ReadPackedVarintISL_EESE_SE_T_EUliE_EESE_SE_SN_SI_ = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv = comdat any

$_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_ = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_ = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_ = comdat any

$_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_ = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_ = comdat any

$_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE = comdat any

$_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE = comdat any

$_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_ = comdat any

$_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_ = comdat any

$_ZN6google8protobuf8internal25RepeatedPrimitiveDefaultsD2Ev = comdat any

$_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENUlPKvE_8__invokeESE_ = comdat any

$_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node = comdat any

@.str = private unnamed_addr constant [34 x i8] c"type != WireFormatLite::TYPE_ENUM\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/extension_set.cc\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"type != WireFormatLite::TYPE_MESSAGE\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"type != WireFormatLite::TYPE_GROUP\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"type == WireFormatLite::TYPE_ENUM\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"extension != nullptr\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Extension not found.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"not present\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Index out-of-bounds (field is empty).\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Non-primitive types can't be packed.\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Can't get here.\00", align 1
@_ZZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance = internal unnamed_addr global ptr null, align 8
@_ZGVZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance = internal global i64 0, align 8
@_ZZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11 = internal unnamed_addr global ptr null, align 8
@_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11 = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid message set extension.\00", align 1
@_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE = external local_unnamed_addr constant i64, align 8
@_ZN6google8protobuf8internal12ExtensionSet28maybe_create_lazy_extension_E = local_unnamed_addr global %"struct.std::atomic.57" zeroinitializer, align 8
@_ZTVN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE = unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE, ptr @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD2Ev, ptr @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtension15UnusedKeyMethodEv] }, align 8
@_ZTIN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE = constant [64 x i8] c"N6google8protobuf8internal12ExtensionSet20LazyMessageExtensionE\00", align 1
@_ZN6google8protobuf8internal12_GLOBAL__N_115global_registryE = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZZN6google8protobuf8internal12_GLOBAL__N_18RegisterERKNS1_13ExtensionInfoEE21local_static_registry = internal unnamed_addr global ptr null, align 8
@_ZGVZN6google8protobuf8internal12_GLOBAL__N_18RegisterERKNS1_13ExtensionInfoEE21local_static_registry = internal global i64 0, align 8
@.str.16 = private unnamed_addr constant [44 x i8] c"Multiple extension registrations for type \22\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\22, field number \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE18GetPolicyFunctionsEvE5value = internal constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 48, i32 48, i32 48, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnIN6google8protobuf8internal12_GLOBAL__N_115ExtensionHasherENS5_13ExtensionInfoEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm48EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE }, align 8
@_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node = linkonce_odr hidden constant { ptr, i8, i8, i8, i8 } { ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, i8 0, i8 0, i8 0, i8 1 }, comdat, align 8
@_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE = external local_unnamed_addr constant [0 x i32], align 4
@_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E = external thread_local local_unnamed_addr global %"struct.google::protobuf::internal::ThreadSafeArena::ThreadCache", align 32
@_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE = external local_unnamed_addr constant [0 x i32], align 4
@.str.23 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/extension_set_inl.h\00", align 1
@"switch.table._ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_" = private unnamed_addr constant [10 x i8] c"\04\04\04\04\04\04\04\04\08\08", align 8

@_ZN6google8protobuf8internal12ExtensionSetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8internal12ExtensionSetD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal24GeneratedExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %i.a, i32 noundef %1) ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %0, i32 noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6google8protobuf8internal12_GLOBAL__N_115global_registryE, align 8, !tbaa !21 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %i.b = icmp ult i64 %.val.i.i, 2
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i = load i64, ptr %i.c, align 8, !tbaa !27
  %.not.i.i.i.i = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !13 ; 3 uses
  %.val5.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %.val3.i.i.i, i64 8
  %.val6.i.i.i = load i32, ptr %i.e, align 8
  %i.f = icmp eq ptr %.val5.i.i.i, %0
  %i.g = icmp eq i32 %.val6.i.i.i, %1
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %bb.e, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val8.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !13, !nonnull !30, !noundef !30
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.val8.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.val3.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val6.i.i = load ptr, ptr %i.j, align 8, !tbaa !13 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i, i32 0, i32 1, i32 1)
  %i.k = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = zext i32 %1 to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -2543921745674291987
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27, !noalias !31
  %i.x = and i64 %i.w, 65535
  %i.y = lshr i64 %i.u, 7
  %i.z = xor i64 %i.x, %i.y
  %i.aa = trunc i64 %i.u to i8
  %i.ab = and i8 %i.aa, 127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val14.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i9.i.i = phi i64 [ %i.z, %bb.f ], [ %i.az, %bb.i ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ay, %bb.i ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i9.i.i, %.val.i.i ; 4 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 %.sroa.6.0.i.i.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !13 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not52.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not52.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.024.053.i.i.i = phi i16 [ %i.av, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.053.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.6.0.i.i.i, %i.al
  %i.an = and i64 %i.am, %.val.i.i                ; 2 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %.val14.i.i.i, i64 %i.an ; 3 uses
  %.val16.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val17.i.i.i = load i32, ptr %i.ap, align 8
  %i.aq = icmp eq ptr %.val16.i.i.i, %0
  %i.ar = icmp eq i32 %.val17.i.i.i, %1
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.thread39.i.i.i, label %bb.h, !prof !34

.thread39.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE10find_largeINS9_16ExtensionInfoKeyEEENSD_8iteratorERKT_m.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add i16 %.sroa.024.053.i.i.i, -1
  %i.av = and i16 %i.au, %.sroa.024.053.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.aw = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.not50.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not50.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE10find_largeINS9_16ExtensionInfoKeyEEENSD_8iteratorERKT_m.exit.i.i, !prof !35

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.6.0.i.i.i
  br label %bb.g, !llvm.loop !36

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE10find_largeINS9_16ExtensionInfoKeyEEENSD_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread39.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.at, %.thread39.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ao, %.thread39.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE10find_largeINS9_16ExtensionInfoKeyEEENSD_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE10find_largeINS9_16ExtensionInfoKeyEEENSD_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.e ], [ { ptr null, ptr undef }, %bb.d ], [ { ptr null, ptr undef }, %bb.c ] ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.bb = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.bc = icmp eq ptr %i.ba, null
  %spec.select = select i1 %i.bc, ptr null, ptr %i.bb
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %spec.select, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE4findINS9_16ExtensionInfoKeyEEENSD_14const_iteratorERKT_.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet17RegisterExtensionEPKNS0_11MessageLiteEihbbb(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"struct.google::protobuf::internal::ExtensionInfo", align 8 ; 9 uses
  switch i8 %2, label %bb.f [
    i8 14, label %bb.b
    i8 11, label %bb.d
    i8 10, label %bb.g
  ], !prof !38

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIhlEEPKcT_T0_S4_(i8 noundef zeroext 14, i64 noundef 14, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef nonnull %i.a) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIhlEEPKcT_T0_S4_(i8 noundef zeroext 11, i64 noundef 11, ptr noundef nonnull @.str.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 140, ptr noundef nonnull %i.c) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit22 unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit22: ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal12ExtensionSetD2Ev:bb.a
  br i1 %.not2131.i.i, label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %.128.i.i = phi ptr [ %i.ad, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ac, %.lr.ph29.i.i ], [ %.val1, %.preheader23.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = trunc i8 %i.z to i1
  %i.ab = load ptr, ptr %i.x, align 8
  %spec.select.i22.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.x
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 0, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.l
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !97

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.af, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not21.i.i, label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !98

"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %.preheader.i.i, %bb.b
  %i.ag = load i16, ptr %i.a, align 2, !tbaa !86
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  br i1 %i.ah, label %bb.d, label %bb.f, !prof !35

bb.d:                                             ; preds = %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_T0_.exit"
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #39
  br label %bb.g

bb.f:                                             ; preds = %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_T0_.exit"
  %i.ak = load i16, ptr %0, align 8, !tbaa !99
  %i.al = zext i16 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 5
  tail call void @_ZdaPvm(ptr noundef %i.ai, i64 noundef %i.am) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #35 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet13DeleteFlatMapEPKNS2_8KeyValueEt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 5
  tail call void @_ZdaPvm(ptr noundef %0, i64 noundef %i.b) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = icmp eq ptr %0, null
  %i.c = shl nuw nsw i64 %i.a, 5                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #38
  br label %_ZN6google8protobuf5Arena11CreateArrayINS0_8internal12ExtensionSet8KeyValueEEEPT_PS1_m.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.c)
  br label %_ZN6google8protobuf5Arena11CreateArrayINS0_8internal12ExtensionSet8KeyValueEEEPT_PS1_m.exit

_ZN6google8protobuf5Arena11CreateArrayINS0_8internal12ExtensionSet8KeyValueEEEPT_PS1_m.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %i.d = load i16, ptr %0, align 8
  %i.e = icmp eq i16 %i.d, 0
  %i.f = select i1 %i.c, i1 %i.e, i1 false
  br i1 %i.f, label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.h = icmp slt i16 %i.b, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.val2, align 8, !tbaa !89
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_"(ptr %i.j, i32 0, ptr %i.l, i32 %i.o)
  %i.q = xor i1 %i.p, true
  br label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit"

bb.d:                                             ; preds = %bb.b
  %i.r = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.r, 5
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i
  br i1 %i.c, label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.h
  %.0712.i.i = phi ptr [ %i.al, %bb.h ], [ %.val2, %bb.d ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 17
  %i.v = load i8, ptr %i.u, align 1, !tbaa !101, !range !104, !noundef !30
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !105
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !106
  %switch.tableidx = add i32 %i.ab, -1            ; 2 uses
  %i.ac = icmp ult i32 %switch.tableidx, 10
  br i1 %i.ac, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 1492) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 15, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i.i.i unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i.i.i: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i.i unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %i.ae = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_", i64 %i.ae
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %switch.ext
  %.0.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp sgt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ah, label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit", label %bb.h

"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 18
  %i.aj = load i8, ptr %i.ai, align 2
  %i.ak = and i8 %i.aj, 2
  %.not.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit", label %bb.h

bb.h:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %switch.lookup
  %i.al = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 32 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.al, %i.s
  br i1 %.not.not.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit", label %.lr.ph.i.i, !llvm.loop !108

"_ZNK6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIZNKS2_7IsEmptyEvE3$_0EEbT_.exit": ; preds = %bb.h, %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %switch.lookup, %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.q, %bb.c ], [ true, %bb.d ], [ false, %switch.lookup ], [ false, %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ], [ true, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet3HasEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %.lr.ph.preheader.i, !prof !35

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.01220.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %.lr.ph.i, !llvm.loop !111

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread6: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220.i, i64 8
  br label %bb.e

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread6, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit
  %.1.i8 = phi ptr [ %i.l, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread6 ], [ %i.m, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i8, i64 10
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, 2
  %.not = icmp eq i8 %i.q, 0
  br label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread: ; preds = %.lr.ph.i, %bb.d, %bb.a, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, %bb.e
  %.0 = phi i1 [ %.not, %bb.e ], [ false, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %bb.e, label %.lr.ph.preheader, !prof !35

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.01220 = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.i = load i32, ptr %.01220, align 8, !tbaa !109 ; 2 uses
  %.not15 = icmp sgt i32 %i.i, %1
  br i1 %.not15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.h
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !111

.critedge:                                        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %.critedge, %bb.a, %bb.e
  %.1 = phi ptr [ %i.m, %bb.e ], [ null, %bb.a ], [ %i.l, %.critedge ], [ null, %bb.d ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7HasLazyEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.i, label %.lr.ph.preheader.i.i, !prof !35

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 5 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.01220.i.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i.i, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread, label %.lr.ph.i.i, !llvm.loop !111

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.i: ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread4

_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.01220.i.i, i64 18
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, 2
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread

_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread4: ; preds = %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 2
  %.not.i6 = icmp eq i8 %i.s, 0
  br i1 %.not.i6, label %.thread7, label %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZNK6google8protobuf8internal12ExtensionSet3HasEi.exit
  %i.t = load i32, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not15.i9 = icmp sle i32 %i.t, %1
  tail call void @llvm.assume(i1 %.not15.i9)
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.01220.i10 = phi ptr [ %i.v, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01220.i10, i64 32 ; 4 uses
  %.not.i2 = icmp ne ptr %i.v, %i.h
  tail call void @llvm.assume(i1 %.not.i2)
  %i.w = load i32, ptr %i.v, align 8, !tbaa !109  ; 2 uses
  %.not15.i = icmp sle i32 %i.w, %1
  tail call void @llvm.assume(i1 %.not15.i)
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %.critedge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01220.i.lcssa = phi ptr [ %i.f, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i ]
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 13 uses
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val1, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_13NumExtensionsEvE3$_0EEvT_SN_T0_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr nonnull %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %"_ZNK6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIZNKS2_13NumExtensionsEvE3$_0EEvT_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i
  %.not7.i.i = icmp eq i16 %.val, 0
  br i1 %.not7.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIZNKS2_13NumExtensionsEvE3$_0EEvT_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.n = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.o = lshr exact i64 %i.n, 5
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 224
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.p, 1152921504606846968      ; 3 uses
  %i.q = shl i64 %n.vec, 5
  %i.r = getelementptr i8, ptr %.val1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.s = shl i64 %index, 5                        ; 8 uses
  %next.gep = getelementptr i8, ptr %.val1, i64 %i.s
  %i.t = getelementptr i8, ptr %.val1, i64 %i.s
  %i.u = getelementptr i8, ptr %.val1, i64 %i.s
  %i.v = getelementptr i8, ptr %.val1, i64 %i.s
  %i.w = getelementptr i8, ptr %.val1, i64 %i.s
  %i.x = getelementptr i8, ptr %.val1, i64 %i.s
  %i.y = getelementptr i8, ptr %.val1, i64 %i.s
  %i.z = getelementptr i8, ptr %.val1, i64 %i.s
  %i.aa = getelementptr i8, ptr %next.gep, i64 18
  %i.ab = getelementptr i8, ptr %i.t, i64 50
  %i.ac = getelementptr i8, ptr %i.u, i64 82
  %i.ad = getelementptr i8, ptr %i.v, i64 114
  %i.ae = getelementptr i8, ptr %i.w, i64 146
  %i.af = getelementptr i8, ptr %i.x, i64 178
  %i.ag = getelementptr i8, ptr %i.y, i64 210
  %i.ah = getelementptr i8, ptr %i.z, i64 242
  %i.ai = load i8, ptr %i.aa, align 2
  %i.aj = load i8, ptr %i.ab, align 2
  %i.ak = load i8, ptr %i.ac, align 2
  %i.al = load i8, ptr %i.ad, align 2
  %i.am = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %i.an = insertelement <4 x i8> %i.am, i8 %i.aj, i64 1
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ak, i64 2
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.al, i64 3
  %i.aq = load i8, ptr %i.ae, align 2
  %i.ar = load i8, ptr %i.af, align 2
  %i.as = load i8, ptr %i.ag, align 2
  %i.at = load i8, ptr %i.ah, align 2
  %i.au = insertelement <4 x i8> poison, i8 %i.aq, i64 0
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 1
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 2
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 3
  %i.ay = and <4 x i8> %i.ap, splat (i8 2)
  %i.az = and <4 x i8> %i.ax, splat (i8 2)
  %i.ba = icmp eq <4 x i8> %i.ay, zeroinitializer
  %i.bb = icmp eq <4 x i8> %i.az, zeroinitializer
  %i.bc = zext <4 x i1> %i.ba to <4 x i32>
  %i.bd = zext <4 x i1> %i.bb to <4 x i32>
  %i.be = add <4 x i32> %vec.phi, %i.bc           ; 2 uses
  %i.bf = add <4 x i32> %vec.phi2, %i.bd          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bf, %i.be
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %"_ZNK6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIZNKS2_13NumExtensionsEvE3$_0EEvT_.exit", label %.lr.ph.i.i.preheader10

.lr.ph.i.i.preheader10:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bh, %middle.block ]
  %.08.i.i.ph = phi ptr [ %.val1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader10, %.lr.ph.i.i
  %i.bi = phi i32 [ %spec.select, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader10 ]
  %.08.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader10 ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.08.i.i, i64 18
  %.val6.i.i = load i8, ptr %i.bj, align 2
  %i.bk = and i8 %.val6.i.i, 2
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  %i.bl = zext i1 %.not.i.i.i to i32
  %spec.select = add nuw nsw i32 %i.bi, %i.bl     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.m
  br i1 %.not.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIZNKS2_13NumExtensionsEvE3$_0EEvT_.exit", label %.lr.ph.i.i, !llvm.loop !115

"_ZNK6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIZNKS2_13NumExtensionsEvE3$_0EEvT_.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.b, %bb.c
  %i.bn = phi i32 [ 0, %bb.c ], [ %.pre, %bb.b ], [ %i.bh, %middle.block ], [ %spec.select, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i32 %i.bn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet13ExtensionSizeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %.lr.ph.preheader.i, !prof !35

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.01220.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %.lr.ph.i, !llvm.loop !111

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220.i, i64 8
  br label %bb.e

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit
  %.1.i6 = phi ptr [ %i.l, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4 ], [ %i.m, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i6, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !105
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !106
  %switch.tableidx = add i32 %i.s, -1             ; 2 uses
  %i.t = icmp ult i32 %switch.tableidx, 10
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 1492) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 15, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_", i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.w = load ptr, ptr %.1.i6, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %switch.ext
  %.0.i = load i32, ptr %i.x, align 4, !tbaa !3
  br label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread: ; preds = %.lr.ph.i, %bb.d, %bb.a, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, %switch.lookup
  %i.y = phi i32 [ %.0.i, %switch.lookup ], [ 0, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  ret i32 %i.y
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106
  %switch.tableidx = add i32 %i.e, -1             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 10
  br i1 %i.f, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 1492) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 15, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_", i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %switch.ext
  %.0 = load i32, ptr %i.j, align 4, !tbaa !3
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i8 @_ZNK6google8protobuf8internal12ExtensionSet13ExtensionTypeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %.lr.ph.preheader.i, !prof !35

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.01220.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %.lr.ph.i, !llvm.loop !111

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread7: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220.i, i64 8
  br label %bb.e

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread7, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit
  %.1.i9 = phi ptr [ %i.l, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread7 ], [ %i.m, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i9, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !105
  br label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread: ; preds = %.lr.ph.i, %bb.d, %bb.a, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, %bb.e
  %.0 = phi i8 [ %i.p, %bb.e ], [ 0, %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet14ClearExtensionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %.lr.ph.preheader.i.i, !prof !35

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.01220.i.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i.i, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %.lr.ph.i.i, !llvm.loop !111

_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220.i.i, i64 8
  br label %bb.e

_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4, %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit
  %.1.i.i6 = phi ptr [ %i.l, %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread4 ], [ %i.m, %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit ]
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i6)
  br label %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread

_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit.thread: ; preds = %.lr.ph.i.i, %bb.d, %bb.a, %_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %bb.e, label %.lr.ph.preheader.i, !prof !35

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.01220.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load i32, ptr %.01220.i, align 8, !tbaa !109 ; 2 uses
  %.not15.i = icmp sgt i32 %i.i, %1
  br i1 %.not15.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i, label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit, label %.lr.ph.i, !llvm.loop !111

.critedge.i:                                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01220.i, i64 8
  br label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet20FindOrNullInLargeMapEi(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit

_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a, %.critedge.i, %bb.e
  %.1.i = phi ptr [ %i.m, %bb.e ], [ null, %bb.a ], [ %i.l, %.critedge.i ], [ null, %bb.d ], [ null, %.lr.ph.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet9Extension5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101, !range !104, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !105
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !106
  switch i32 %i.h, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 6, label %bb.g
    i32 5, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !116
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !116
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit

bb.e:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_D1EvE3$_0NS2_11PrefetchNtaEEEvT_SO_T0_T1_":bb.a
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !95 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %.not.i.i.i.i21 = icmp eq i8 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !215

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.f
  %i.ca = zext i8 %i.bo to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.g, %.critedge.loopexit23.i.i.i17, %bb.e
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.g ], [ %.sroa.072.0109, %bb.e ], [ %i.bk, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.g ], [ %i.bf, %bb.e ], [ %i.ca, %.critedge.loopexit23.i.i.i17 ], [ %i.bf, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %.not.i.i23 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cd = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i32
  %i.ch = icmp eq i32 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i30, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

.lr.ph.i.i.i30:                                   ; preds = %bb.h, %bb.i
  %.01521.i.i.i31 = phi ptr [ %i.ci, %bb.i ], [ %.sroa.0.1112, %bb.h ] ; 2 uses
  %i.ci = load ptr, ptr %.01521.i.i.i31, align 8, !tbaa !95 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %.not17.i.i.i32 = icmp eq i8 %i.ck, 0
  br i1 %.not17.i.i.i32, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.cl = getelementptr inbounds nuw i8, ptr %.01521.i.i.i31, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !13  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = icmp eq i8 %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !214

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.cr = add i32 %.sroa.11.1111, 1
  %i.cs = and i32 %i.cr, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ct
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.cu, %.thread.i.i34 ], [ %i.cx, %bb.j ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !95 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %.not.i.i.i.i37 = icmp eq i8 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !215

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.i
  %i.cy = zext i8 %i.cm to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.j, %.critedge.loopexit23.i.i.i33, %bb.h
  %.sroa.11.3 = phi i32 [ 0, %bb.j ], [ %i.cd, %bb.h ], [ %i.cy, %.critedge.loopexit23.i.i.i33 ], [ %i.cd, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.j ], [ %.sroa.0.1112, %bb.h ], [ %i.ci, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.cz = icmp ne ptr %.sroa.0.3, %2
  %i.da = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %.not3.i5, label %.lr.ph113, label %.preheader, !llvm.loop !455

.lr.ph119:                                        ; preds = %.preheader, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.1179.0.lcssa, %.preheader ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.072.0.lcssa, %.preheader ] ; 7 uses
  %i.db = and i32 %.sroa.1179.1118, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.072.1117, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %.not.i.i43 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.k

bb.k:                                             ; preds = %.lr.ph119
  %i.dh = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i32
  %i.dl = icmp eq i32 %i.dh, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.k, %bb.l
  %.01521.i.i.i51 = phi ptr [ %i.dm, %bb.l ], [ %.sroa.072.1117, %bb.k ] ; 2 uses
  %i.dm = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !95 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %.not17.i.i.i52 = icmp eq i8 %i.do, 0
  br i1 %.not17.i.i.i52, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.l:                                             ; preds = %.lr.ph.i.i.i50
  %i.dp = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !13  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !214

.thread.i.i54:                                    ; preds = %.lr.ph119
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.dv = add i32 %.sroa.1179.1118, 1
  %i.dw = and i32 %i.dv, 255
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dx
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.dy, %.thread.i.i54 ], [ %i.eb, %bb.m ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !95 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %.not.i.i.i.i57 = icmp eq i8 %i.ea, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !215

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.l
  %i.ec = zext i8 %i.dq to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.m, %.critedge.loopexit23.i.i.i53, %bb.k
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.m ], [ %.sroa.072.1117, %bb.k ], [ %i.dm, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.m ], [ %i.dh, %bb.k ], [ %i.ec, %.critedge.loopexit23.i.i.i53 ], [ %i.dh, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.ed = icmp ne ptr %.sroa.072.3, %2
  %i.ee = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %.not3.i42, label %.lr.ph119, label %._crit_edge, !llvm.loop !456

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #22

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_"(ptr nofree readonly captures(address) %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i15 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i15, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.sroa.0.017 = phi ptr [ %.sroa.0.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.8.016 = phi i32 [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.c = and i32 %.sroa.8.016, 255
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.017, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101, !range !104, !noundef !30
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !105
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106
  %switch.tableidx = add i32 %i.n, -1             ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx, 10
  br i1 %i.o, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 1492) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 15, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit.i.i.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.q = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN6google8protobuf8internal12ExtensionSet15AnyOfNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_7IsEmptyEvE3$_0EEbT_SN_T0_", i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %switch.ext
  %.0.i.i.i = load i32, ptr %i.s, align 4, !tbaa !3
  %i.t = icmp sgt i32 %.0.i.i.i, 0
  br i1 %i.t, label %.thread, label %bb.e

"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit": ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %i.v = load i8, ptr %i.u, align 2
  %i.w = and i8 %i.v, 2
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %switch.lookup, %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %.not.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i2, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %.sroa.8.016, 1              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 10
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.01521.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %.sroa.0.017, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not17.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !13  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 240
  %i.an = add i32 %.sroa.8.016, 1
  %i.ao = and i32 %i.an, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.aq, %.thread.i.i ], [ %i.at, %bb.h ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.g
  %i.au = zext i8 %i.ai to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %.critedge.loopexit23.i.i.i, %bb.f
  %.sroa.8.1 = phi i32 [ 0, %bb.h ], [ %i.z, %bb.f ], [ %i.au, %.critedge.loopexit23.i.i.i ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.116.i.i.i, %bb.h ], [ %.sroa.0.017, %bb.f ], [ %i.ae, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.017, %.lr.ph.i.i.i ] ; 2 uses
  %i.av = icmp ne ptr %.sroa.0.1, %2
  %i.aw = icmp ne i32 %.sroa.8.1, %3
  %.not3.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.not3.i, label %.lr.ph, label %.thread, !llvm.loop !457

.thread:                                          ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit", %switch.lookup, %bb.a
  %.not3.i.lcssa = phi i1 [ false, %bb.a ], [ true, %switch.lookup ], [ true, %"_ZZNK6google8protobuf8internal12ExtensionSet7IsEmptyEvENK3$_0clEiRKNS2_9ExtensionE.exit" ], [ false, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ]
  ret i1 %.not3.i.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_13NumExtensionsEvE3$_0EEvT_SN_T0_"(ptr nofree readonly captures(address) %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3, ptr nofree nonnull captures(none) %4) unnamed_addr #32 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i13 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i13, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.sroa.0.015 = phi ptr [ %.sroa.0.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.8.014 = phi i32 [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.c = and i32 %.sroa.8.014, 255
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.015, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 34
  %.val1 = load i8, ptr %i.f, align 2
  %i.g = and i8 %.val1, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.b, label %"_ZZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %4, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %4, align 4, !tbaa !3
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEvENK3$_0clEiRKNS2_9ExtensionE.exit"

"_ZZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEvENK3$_0clEiRKNS2_9ExtensionE.exit": ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.l = add nsw i32 %.sroa.8.014, 1              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.01521.i.i.i = phi ptr [ %i.q, %bb.d ], [ %.sroa.0.015, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not17.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 240
  %i.z = add i32 %.sroa.8.014, 1
  %i.aa = and i32 %i.z, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ac, %.thread.i.i ], [ %i.af, %bb.e ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.d
  %i.ag = zext i8 %i.u to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %.critedge.loopexit23.i.i.i, %bb.c
  %.sroa.8.1 = phi i32 [ 0, %bb.e ], [ %i.l, %bb.c ], [ %i.ag, %.critedge.loopexit23.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.116.i.i.i, %bb.e ], [ %.sroa.0.015, %bb.c ], [ %i.q, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.015, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp ne ptr %.sroa.0.1, %2
  %i.ai = icmp ne i32 %.sroa.8.1, %3
  %.not3.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge, !llvm.loop !458
}

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !3
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5: ; preds = %bb.c, %bb.d
  %.sink6.i.i.i.i.i4 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 16 ; 2 uses
  store ptr %i.g, ptr %.sink6.i.i.i.i.i4, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !122
  store i8 0, ptr %i.g, align 8, !tbaa !13
  store ptr %.sink6.i.i.i.i.i4, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
end_hunk_3
