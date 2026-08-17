inline.NumInlined: 1545
inline.NumDeleted: 1233
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::flat_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_map" }
%"class.absl::lts_20250512::container_internal::raw_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set" }
%"class.absl::lts_20250512::container_internal::raw_hash_set" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::lts_20250512::container_internal::CommonFields" }
%"class.absl::lts_20250512::container_internal::CommonFields" = type { i64, %"class.absl::lts_20250512::container_internal::HashtableSize", %"union.absl::lts_20250512::container_internal::HeapOrSoo" }
%"class.absl::lts_20250512::container_internal::HashtableSize" = type { i64 }
%"union.absl::lts_20250512::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20250512::container_internal::HeapPtrs" }
%"struct.absl::lts_20250512::container_internal::HeapPtrs" = type { ptr, %"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" }
%"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" = type { ptr }
%"class.std::unique_ptr.247" = type { %"struct.std::__uniq_ptr_data.248" }
%"struct.std::__uniq_ptr_data.248" = type { %"class.std::__uniq_ptr_impl.249" }
%"class.std::__uniq_ptr_impl.249" = type { %"class.std::tuple.250" }
%"class.std::tuple.250" = type { %"struct.std::_Tuple_impl.251" }
%"struct.std::_Tuple_impl.251" = type { %"struct.std::_Head_base.254" }
%"struct.std::_Head_base.254" = type { ptr }
%"class.std::unique_ptr.255" = type { %"struct.std::__uniq_ptr_data.256" }
%"struct.std::__uniq_ptr_data.256" = type { %"class.std::__uniq_ptr_impl.257" }
%"class.std::__uniq_ptr_impl.257" = type { %"class.std::tuple.258" }
%"class.std::tuple.258" = type { %"struct.std::_Tuple_impl.259" }
%"struct.std::_Tuple_impl.259" = type { %"struct.std::_Head_base.262" }
%"struct.std::_Head_base.262" = type { ptr }
%class.anon.193 = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.66 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.66 = type { i64, [8 x i8] }
%"class.std::unique_ptr.99" = type { %"struct.std::__uniq_ptr_data.100" }
%"struct.std::__uniq_ptr_data.100" = type { %"class.std::__uniq_ptr_impl.101" }
%"class.std::__uniq_ptr_impl.101" = type { %"class.std::tuple.102" }
%"class.std::tuple.102" = type { %"struct.std::_Tuple_impl.103" }
%"struct.std::_Tuple_impl.103" = type { %"struct.std::_Head_base.106" }
%"struct.std::_Head_base.106" = type { ptr }
%class.anon.179 = type { ptr }
%class.anon.226 = type { ptr }
%"class.std::shared_ptr.263" = type { %"class.std::__shared_ptr.264" }
%"class.std::__shared_ptr.264" = type { ptr, %"class.std::__shared_count" }
%"class.std::map.271" = type { %"class.std::_Rb_tree.272" }
%"class.std::_Rb_tree.272" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_ = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core14UniqueTypeNameEEERS2_RKT_ = comdat any

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev = comdat any

$_ZN25grpc_channel_element_argsD2Ev = comdat any

$_ZN9grpc_core8channelz8DataSinkD2Ev = comdat any

$_ZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZN9grpc_core8channelz12PropertyList3SetINS0_13PropertyTableEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZN9grpc_core8channelz12PropertyListD2Ev = comdat any

$_ZN9grpc_core8channelz13PropertyTableD2Ev = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIP17grpc_call_elementEERS2_RKT_ = comdat any

$_ZN9grpc_core8channelz10DataSource9GetZTraceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = comdat any

$_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN9grpc_core8channelz13PropertyTable9AppendRowENS0_12PropertyListE = comdat any

$_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_ = comdat any

$_ZN9grpc_core8channelz12PropertyList3SetImEERS1_St17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev = comdat any

$_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev = comdat any

$_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_ = comdat any

$_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEC2EOSL_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_ = comdat any

$_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvT_SO_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS3_ES5_lmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEEEC2ERKSL_ = comdat any

$_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEEC1ERKSN_EUlOT_T0_E_JRKSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEEDcOSS_DpOT1_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEED2Ev = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEElmdbN9grpc_core8DurationENSH_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSH_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS6_IKS7_SQ_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJS13_S14_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN9grpc_core8channelz13PropertyTableC2ERKS1_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEEC2EOSY_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashISt4pairImmEEES6_EEmPKvPv = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE19transfer_n_slots_fnEPvSZ_SZ_m = comdat any

$_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvS14_PFvS14_hmmE = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEElmdbN9grpc_core8DurationENSH_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSH_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS6_IKS7_SQ_EEEC1ERKS10_RKSZ_EUlPvPKvE_vJS15_S17_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN18grpc_channel_stack22ChannelStackDataSourceC2EN9grpc_core13RefCountedPtrINS1_8channelz8BaseNodeEEE = comdat any

$_ZN9grpc_core8channelz8DataSink7AddDataESt17basic_string_viewIcSt11char_traitsIcEESt10unique_ptrINS0_22DataSinkImplementation4DataESt14default_deleteIS8_EE = comdat any

$_ZNSt12__shared_ptrIN9grpc_core8channelz22DataSinkImplementationELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev = comdat any

$_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD0Ev = comdat any

$_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl6ToJsonB5cxx11Ev = comdat any

$_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl9FillProtoEP19google_protobuf_AnyP9upb_Arena = comdat any

$_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_ = comdat any

$_ZTIN9grpc_core8channelz10DataSourceE = comdat any

$_ZTSN9grpc_core8channelz10DataSourceE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

$_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

$_ZTVZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = comdat any

$_ZTIZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = comdat any

$_ZTSZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = comdat any

$_ZTIN9grpc_core8channelz22DataSinkImplementation4DataE = comdat any

$_ZTSN9grpc_core8channelz22DataSinkImplementation4DataE = comdat any

@_ZN9grpc_core19channel_stack_traceE = external local_unnamed_addr global %"class.grpc_core::TraceFlag", align 8
@.str = private unnamed_addr constant [64 x i8] c"/opt-bench/work/grpc/grpc/src/core/lib/channel/channel_stack.cc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CHANNEL_STACK: init \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CHANNEL_STACK:   filter \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"user_data > (char*)stack\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"(uintptr_t)(user_data - (char*)stack) == grpc_channel_stack_size(filters)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"channel_stack\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@_ZN9grpc_core13channel_traceE = external local_unnamed_addr global %"class.grpc_core::TraceFlag", align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"OP[\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"]: \00", align 1
@_ZTVN18grpc_channel_stack22ChannelStackDataSourceE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN18grpc_channel_stack22ChannelStackDataSourceE, ptr @_ZN18grpc_channel_stack22ChannelStackDataSource7AddDataEN9grpc_core8channelz8DataSinkE, ptr @_ZN9grpc_core8channelz10DataSource9GetZTraceESt17basic_string_viewIcSt11char_traitsIcEE] }, align 8
@_ZTIN18grpc_channel_stack22ChannelStackDataSourceE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN18grpc_channel_stack22ChannelStackDataSourceE, ptr @_ZTIN9grpc_core8channelz10DataSourceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN18grpc_channel_stack22ChannelStackDataSourceE = constant [47 x i8] c"N18grpc_channel_stack22ChannelStackDataSourceE\00", align 1
@_ZTIN9grpc_core8channelz10DataSourceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core8channelz10DataSourceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core8channelz10DataSourceE = linkonce_odr constant [34 x i8] c"N9grpc_core8channelz10DataSourceE\00", comdat, align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E), align 8
@_ZN9grpc_core21NameFromChannelFilterE = external local_unnamed_addr global ptr, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN9grpc_core17CoreConfiguration7config_E = external local_unnamed_addr global %"struct.std::atomic.119", align 8
@_ZTVN9grpc_core8channelz12PropertyListE = external constant { [6 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"call_data_size\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"channel_data_size\00", align 1
@_ZTVN9grpc_core8channelz13PropertyTableE = external constant { [6 x ptr] }, align 8
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16
@_ZN4absl12lts_2025051212log_internal9kCharNullE = external global %"struct.std::array", align 1
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [100 x i8] c"St23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE18GetPolicyFunctionsEvE5value = linkonce_odr constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 16, i32 56, i32 56, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashISt4pairImmEEES6_EEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE19transfer_n_slots_fnEPvSZ_SZ_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvS14_PFvS14_hmmE }, comdat, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.241" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@"_ZTIZ23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES_St6vectorIN9grpc_core15FilterAndConfigESaIS7_EERKNS6_11ChannelArgsEPKcP18grpc_channel_stackE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZ23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES_St6vectorIN9grpc_core15FilterAndConfigESaIS7_EERKNS6_11ChannelArgsEPKcP18grpc_channel_stackE3$_0" }, align 8
@"_ZTSZ23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES_St6vectorIN9grpc_core15FilterAndConfigESaIS7_EERKNS6_11ChannelArgsEPKcP18grpc_channel_stackE3$_0" = internal constant [160 x i8] c"Z23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES_St6vectorIN9grpc_core15FilterAndConfigESaIS7_EERKNS6_11ChannelArgsEPKcP18grpc_channel_stackE3$_0\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"grpc.experimental.event_engine\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"grpc.internal.no_subchannel.channelz_containing_base_node\00", align 1
@_ZTVZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl, ptr @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev, ptr @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD0Ev, ptr @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl6ToJsonB5cxx11Ev, ptr @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl9FillProtoEP19google_protobuf_AnyP9upb_Arena] }, comdat, align 8
@_ZTIZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl, ptr @_ZTIN9grpc_core8channelz22DataSinkImplementation4DataE }, comdat, align 8
@_ZTSZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl = linkonce_odr constant [116 x i8] c"ZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl\00", comdat, align 1
@_ZTIN9grpc_core8channelz22DataSinkImplementation4DataE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core8channelz22DataSinkImplementation4DataE }, comdat, align 8
@_ZTSN9grpc_core8channelz22DataSinkImplementation4DataE = linkonce_odr constant [51 x i8] c"N9grpc_core8channelz22DataSinkImplementation4DataE\00", comdat, align 1
@llvm.global_ctors = appending global [4 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.13, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.14, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.15, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_channel_stack.cc, ptr null }]
@llvm.used = appending global [3 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, 4294967280
  %i.h = add nuw nsw i64 %i.g, 144                ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.b
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.n, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i64 [ %i.n, %.lr.ph ], [ %i.h, %bb.a ]
  %.sroa.06.010 = phi ptr [ %i.o, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.06.010, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = add i64 %i.k, 15
  %i.m = and i64 %i.l, 4294967280
  %i.n = add i64 %i.m, %.011                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_Z26grpc_channel_stack_elementP18grpc_channel_stackm(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z31grpc_channel_stack_last_elementP18grpc_channel_stack(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr i8, ptr %0, i64 128
  %i.d = getelementptr [16 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_Z41grpc_channel_stack_filter_instance_numberP18grpc_channel_stackP20grpc_channel_element(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not20 = icmp eq i64 %i.c, 0
  br i1 %.not20, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.017 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.01216 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.01216 ; 2 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = load ptr, ptr %1, align 8, !tbaa !36
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = zext i1 %i.g to i64
  %spec.select = add i64 %.017, %i.h              ; 2 uses
  %i.i = add nuw i64 %.01216, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !38

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.017, %.lr.ph ], [ %spec.select, %bb.b ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_Z23grpc_call_stack_elementP15grpc_call_stackm(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_Z23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES_St6vectorIN9grpc_core15FilterAndConfigESaIS7_EERKNS6_11ChannelArgsEPKcP18grpc_channel_stack(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.grpc_core::RefCountedPtr.13", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %11 = alloca %struct.grpc_channel_element_args, align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %"class.grpc_core::RefCountedPtr.13", align 8 ; 6 uses
  store ptr %6, ptr %i.a, align 8, !tbaa !40
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19channel_stack_traceE, i64 8) monotonic, align 8, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str, i32 noundef 120) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 20, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.e = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.not103 = icmp eq ptr %i.e, %i.g
  br i1 %.not103, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.at

.lr.ph:                                           ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit77
  %.sroa.092.0104 = phi ptr [ %i.l, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit77 ], [ %i.e, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str, i32 noundef 122) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 24, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit unwind label %bb.f

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit: ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.092.0104, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core14UniqueTypeNameEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit77 unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit77: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.092.0104, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e, %.lr.ph, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.at

.loopexit:                                        ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit77, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZ23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES1_St6vectorIN9grpc_core15FilterAndConfigESaIS9_EERKNS8_11ChannelArgsEPKcP18grpc_channel_stackE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.p, align 8, !tbaa !45
  store ptr @"_ZNSt17_Function_handlerIFvvEZ23grpc_channel_stack_initiPFvPvN4absl12lts_202505126StatusEES1_St6vectorIN9grpc_core15FilterAndConfigESaIS9_EERKNS8_11ChannelArgsEPKcP18grpc_channel_stackE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.r = call noundef ptr @_ZNK9grpc_core11ChannelArgs14GetVoidPointerESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 30, ptr nonnull @.str.19), !noalias !49 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !52, !noalias !57 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60, !noalias !57 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !57
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.w, align 4, !tbaa !62, !noalias !57
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !62, !noalias !57
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !57 ; 0 uses
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.g, %bb.i, %bb.j
  %.sroa.0.0 = phi ptr [ %i.t, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %bb.j ], [ null, %.loopexit ]
  %.sroa.6.0 = phi ptr [ %i.v, %bb.i ], [ null, %bb.g ], [ %i.v, %bb.j ], [ null, %.loopexit ]
  store ptr %.sroa.0.0, ptr %i.q, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %.sroa.6.0, ptr %i.ab, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = load ptr, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZN9grpc_core11ChannelArgsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.aj = load ptr, ptr %4, align 8, !tbaa !12
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  invoke void @_Z20grpc_stream_ref_initP20grpc_stream_refcountiPFvPvN4absl12lts_202505126StatusEES1_(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = ptrtoint ptr %i.ae to i64
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 4
  %i.at = mul i64 %i.as, 24
  %i.au = add i64 %i.at, 8
  %i.av = and i64 %i.au, 4294967280
  %i.aw = add nuw nsw i64 %i.av, 48               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 3 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  store i64 1, ptr %0, align 8, !tbaa !64
  %i.bd = and i64 %i.bc, 4294967280
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd ; 2 uses
  %.not110 = icmp eq ptr %i.ay, %i.az
  br i1 %.not110, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 20
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph108, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.056107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dn, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 7 uses
  %.057106 = phi ptr [ %i.be, %.lr.ph108 ], [ %i.dc, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %.059105 = phi i64 [ %i.aw, %.lr.ph108 ], [ %i.dh, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  store ptr %7, ptr %11, align 8, !tbaa !66
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.t       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp eq i64 %.056107, 0
  %i.bj = zext i1 %i.bi to i32
  store i32 %i.bj, ptr %i.bf, align 8, !tbaa !73
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.bl = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = icmp eq i64 %.056107, %i.bq
  %i.bs = zext i1 %i.br to i32
  store i32 %i.bs, ptr %i.bg, align 4, !tbaa !74
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.056107
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !75
  store ptr null, ptr %i.bu, align 8, !tbaa !75
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 4 uses
  store ptr %i.bv, ptr %i.ah, align 8, !tbaa !75
  %.not.i.i78 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i78, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = atomicrmw sub ptr %i.bx, i64 1 acq_rel, align 8
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.o, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit, !prof !43

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #34, !inline_history !78
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.cd = load ptr, ptr %4, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.056107
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.056107 ; 3 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %.057106, ptr %i.ch, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !80
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %12, ptr noundef nonnull %i.cg, ptr noundef nonnull %11)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit
  %i.ck = load i64, ptr %12, align 8, !tbaa !64   ; 5 uses
  %i.cl = icmp ne i64 %i.ck, 1
  %i.cm = load i64, ptr %0, align 8
  %i.cn = icmp eq i64 %i.cm, 1
  %or.cond = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond, label %bb.q, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.co = trunc i64 %i.ck to i1
  br i1 %i.co, label %_ZN4absl12lts_202505126Status3RefEm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = inttoptr i64 %i.ck to ptr
  %i.cq = atomicrmw add ptr %i.cp, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load i64, ptr %12, align 8, !tbaa !64
  br label %_ZN4absl12lts_202505126Status3RefEm.exit.i

_ZN4absl12lts_202505126Status3RefEm.exit.i:       ; preds = %bb.r, %bb.q
  %i.cr = phi i64 [ %i.ck, %bb.q ], [ %.pre.i, %bb.r ] ; 2 uses
  store i64 %i.cr, ptr %0, align 8, !tbaa !64
  br label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.t:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN4absl12lts_202505126StatusaSERKS1_.exit:       ; preds = %_ZN4absl12lts_202505126Status3RefEm.exit.i, %bb.p
  %i.cu = phi i64 [ %i.cr, %_ZN4absl12lts_202505126Status3RefEm.exit.i ], [ %i.ck, %bb.p ] ; 2 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.056107
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !18
  %i.da = add i64 %i.cz, 15
  %i.db = and i64 %i.da, 4294967280
  %i.dc = getelementptr inbounds nuw i8, ptr %.057106, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !81
  %i.df = add i64 %i.de, 15
  %i.dg = and i64 %i.df, 4294967280
  %i.dh = add i64 %i.dg, %.059105                 ; 2 uses
  %i.di = trunc i64 %i.cu to i1
  br i1 %i.di, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.dj = inttoptr i64 %i.cu to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dj)
          to label %._ZN4absl12lts_202505126StatusD2Ev.exit_crit_edge unwind label %bb.v

._ZN4absl12lts_202505126StatusD2Ev.exit_crit_edge: ; preds = %bb.u
  %.pre = load ptr, ptr %4, align 8, !tbaa !12
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #37
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %._ZN4absl12lts_202505126StatusD2Ev.exit_crit_edge, %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.dm = phi ptr [ %.pre, %._ZN4absl12lts_202505126StatusD2Ev.exit_crit_edge ], [ %i.cv, %_ZN4absl12lts_202505126StatusaSERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.dn = add nuw i64 %.056107, 1                 ; 2 uses
  %i.do = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 4
  %i.dt = icmp ult i64 %i.dn, %i.ds
  br i1 %i.dt, label %bb.l, label %._crit_edge, !llvm.loop !82

bb.w:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEEaSEOS3_.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ar

._crit_edge:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.k
  %16 = phi ptr [ %i.az, %bb.k ], [ %i.dm, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %17 = phi ptr [ %i.ay, %bb.k ], [ %i.do, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %.059.lcssa = phi i64 [ %i.aw, %bb.k ], [ %i.dh, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  %.057.lcssa = phi ptr [ %i.be, %bb.k ], [ %i.dc, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %.not.not = icmp ugt ptr %.057.lcssa, %7
  br i1 %.not.not, label %.critedge, label %18, !prof !83

18:                                               ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.3) #35
          to label %19 unwind label %bb.x

19:                                               ; preds = %18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80 unwind label %21

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80: ; preds = %19
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #37
  unreachable

bb.x:                                             ; preds = %18
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.ar

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #37
  unreachable

.critedge:                                        ; preds = %._crit_edge
  %23 = ptrtoint ptr %.057.lcssa to i64
  %24 = ptrtoint ptr %7 to i64
  %25 = sub i64 %23, %24
  %26 = ptrtoint ptr %17 to i64
  %27 = ptrtoint ptr %16 to i64
  %28 = sub i64 %26, %27
  %29 = and i64 %28, 4294967280
  %30 = add nuw nsw i64 %29, 144                  ; 2 uses
  %.not9.i = icmp eq ptr %16, %17
  br i1 %.not9.i, label %_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.011.i = phi i64 [ %i.ea, %.lr.ph.i ], [ %30, %.critedge ]
  %.sroa.06.010.i = phi ptr [ %i.eb, %.lr.ph.i ], [ %16, %.critedge ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !18
  %i.dy = add i64 %i.dx, 15
  %i.dz = and i64 %i.dy, 4294967280
  %i.ea = add i64 %i.dz, %.011.i                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 16 ; 2 uses
  %.not.i81 = icmp eq ptr %i.eb, %17
  br i1 %.not.i81, label %_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE.exit, label %.lr.ph.i

_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE.exit: ; preds = %.lr.ph.i, %.critedge
  %.0.lcssa.i = phi i64 [ %30, %.critedge ], [ %i.ea, %.lr.ph.i ]
  %.not.not67 = icmp eq i64 %25, %.0.lcssa.i
  br i1 %.not.not67, label %.critedge76, label %bb.y, !prof !83

bb.y:                                             ; preds = %_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @.str.4) #35
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit83 unwind label %bb.ab

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit83: ; preds = %bb.z
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  unreachable

.critedge76:                                      ; preds = %_Z23grpc_channel_stack_sizeRKSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.059.lcssa, ptr %i.ee, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.ef = invoke noundef ptr @_ZNK9grpc_core11ChannelArgs14GetVoidPointerESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 57, ptr nonnull @.str.20)
          to label %.noexc84 unwind label %bb.ap  ; 3 uses

.noexc84:                                         ; preds = %.critedge76
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc84
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = atomicrmw add ptr %i.eh, i64 4294967296 monotonic, align 8, !noalias !85 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.noexc84
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ef, ptr %8, align 8, !tbaa !92
  store ptr null, ptr %15, align 8, !tbaa !92
  invoke void @_ZN18grpc_channel_stack22ChannelStackDataSourceC2EN9grpc_core13RefCountedPtrINS1_8channelz8BaseNodeEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 %8)
          to label %_ZN9grpc_core9ConstructIN18grpc_channel_stack22ChannelStackDataSourceEJNS_13RefCountedPtrINS_8channelz8BaseNodeEEEEEEvPT_DpOT0_.exit.i unwind label %.body

.body:                                            ; preds = %bb.ad
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #34
  call void @_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #34
  br label %bb.aq

_ZN9grpc_core9ConstructIN18grpc_channel_stack22ChannelStackDataSourceEJNS_13RefCountedPtrINS_8channelz8BaseNodeEEEEEEvPT_DpOT0_.exit.i: ; preds = %bb.ad
  %i.el = load ptr, ptr %8, align 8, !tbaa !92    ; 6 uses
  %.not.i.i85 = icmp eq ptr %i.el, null
  br i1 %.not.i.i85, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZN9grpc_core9ConstructIN18grpc_channel_stack22ChannelStackDataSourceEJNS_13RefCountedPtrINS_8channelz8BaseNodeEEEEEEvPT_DpOT0_.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = atomicrmw add ptr %i.em, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i = and i64 %i.en, -4294967296
  %i.eo = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.eo, label %bb.af, label %.noexc.i.i, !prof !43

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !76
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %.noexc.i.i unwind label %bb.ah, !inline_history !95

.noexc.i.i:                                       ; preds = %bb.af, %bb.ae
  %i.es = atomicrmw sub ptr %i.em, i64 1 acq_rel, align 8
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.ag, label %bb.ai, !prof !43

bb.ag:                                            ; preds = %.noexc.i.i
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !76
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(232) %i.el) #34, !inline_history !96
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #37
  unreachable

bb.ai:                                            ; preds = %bb.ag, %.noexc.i.i, %_ZN9grpc_core9ConstructIN18grpc_channel_stack22ChannelStackDataSourceEJNS_13RefCountedPtrINS_8channelz8BaseNodeEEEEEEvPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ez = load ptr, ptr %15, align 8, !tbaa !92   ; 6 uses
  %.not.i86 = icmp eq ptr %i.ez, null
  br i1 %.not.i86, label %_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.fb, -4294967296
  %i.fc = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.fc, label %bb.ak, label %.noexc.i, !prof !43

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %.noexc.i unwind label %bb.am, !inline_history !95

.noexc.i:                                         ; preds = %bb.ak, %bb.aj
  %i.fg = atomicrmw sub ptr %i.fa, i64 1 acq_rel, align 8
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.al, label %_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, !prof !43

bb.al:                                            ; preds = %.noexc.i
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !76
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(232) %i.ez) #34, !inline_history !97
  br label %_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #37
  unreachable

_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit: ; preds = %bb.ai, %.noexc.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.fn = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i87, label %_ZN25grpc_channel_element_argsD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 acq_rel, align 8
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ao, label %_ZN25grpc_channel_element_argsD2Ev.exit, !prof !43

bb.ao:                                            ; preds = %bb.an
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !76
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #34, !inline_history !98
  br label %_ZN25grpc_channel_element_argsD2Ev.exit

_ZN25grpc_channel_element_argsD2Ev.exit:          ; preds = %_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, %bb.an, %bb.ao
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  ret void

bb.ap:                                            ; preds = %.critedge76
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.body, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.ek, %.body ], [ %i.fu, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aa, %bb.x, %bb.w, %bb.t
  %.pn69.pn = phi { ptr, i32 } [ %i.du, %bb.w ], [ %i.ct, %bb.t ], [ %.pn, %bb.aq ], [ %i.ec, %bb.aa ], [ %20, %bb.x ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.s
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.ar ], [ %i.cs, %bb.s ]
  call void @_ZN25grpc_channel_element_argsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.f, %bb.d
  %.pn73 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn69.pn.pn, %bb.as ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %.pn73
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %spec.select.i = select i1 %.not.i, ptr @_ZN4absl12lts_2025051212log_internal9kCharNullE, ptr %i.d ; 2 uses
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #34
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %spec.select.i, i64 noundef %i.e)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.g
}

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN9grpc_core14UniqueTypeNameEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  tail call void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  ret ptr %0
}

declare void @_Z20grpc_stream_ref_initP20grpc_stream_refcountiPFvPvN4absl12lts_202505126StatusEES1_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !64     ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 -4294967295 acq_rel, align 8
  %.mask.i = and i64 %i.c, -4294967296
  %i.d = icmp eq i64 %.mask.i, 4294967296
  br i1 %i.d, label %bb.c, label %.noexc, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.e, !inline_history !95

.noexc:                                           ; preds = %bb.c, %bb.b
  %i.h = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit, !prof !43

bb.d:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(232) %i.a) #34, !inline_history !102
  br label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit

_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit: ; preds = %bb.d, %.noexc, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN25grpc_channel_element_argsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !103
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18grpc_channel_stack22ChannelStackDataSource7AddDataEN9grpc_core8channelz8DataSinkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.147, align 1            ; 3 uses
  %3 = alloca %class.anon.147, align 1            ; 3 uses
  %4 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %5 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %6 = alloca %class.anon.147, align 1            ; 3 uses
  %7 = alloca %"class.std::optional", align 8     ; 9 uses
  %8 = alloca %"class.grpc_core::channelz::DataSink", align 16 ; 6 uses
  %9 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  %10 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 10 uses
  %11 = alloca %"class.grpc_core::channelz::PropertyTable", align 8 ; 8 uses
  %i.a = load atomic ptr, ptr @_ZN9grpc_core17CoreConfiguration7config_E acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN9grpc_core17CoreConfiguration3GetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv()
  br label %_ZN9grpc_core17CoreConfiguration3GetEv.exit

_ZN9grpc_core17CoreConfiguration3GetEv.exit:      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !106
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !106
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i, label %bb.c

end_hunk_0
