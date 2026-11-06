Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame_window_update?download=true
inline.NumInlined: 5281
inline.NumDeleted: 3074
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0

$_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISQ_EEvT_ENKUlvE_clEvE8metadata = comdat any

$_ZZ58_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_onlyE4size = comdat any

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

@.str = private unnamed_addr constant [89 x i8] c"/opt-bench/work/grpc/grpc/src/core/ext/transport/chttp2/transport/frame_window_update.cc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"window_delta\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"invalid window update: length=%d, flags=%02x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid window update bytes: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"is_last\00", align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.276" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.277" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E), align 8
@_ZN9grpc_core9Timestamp25thread_local_time_source_E = external thread_local local_unnamed_addr global ptr, align 8
@_ZN9grpc_core20PerCpuShardingHelper6state_E = external thread_local local_unnamed_addr global %"struct.grpc_core::PerCpuShardingHelper::State", align 2
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.291" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN9grpc_core10latent_see8Appender12active_sink_E = external local_unnamed_addr global %"struct.std::atomic.316", align 8
@_ZN9grpc_core10latent_see8Appender4bin_E = external thread_local global %"class.std::unique_ptr.318", align 8
@_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISQ_EEvT_ENKUlvE_clEvE8metadata = linkonce_odr global %"struct.grpc_core::latent_see::Metadata" { ptr @.str.10, i32 172, %"class.std::basic_string_view" { i64 36, ptr getelementptr (i8, ptr @.str.11, i64 45) }, i32 16, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISQ_EEvT_ENKUlvE_clEvENUlPvE_8__invokeES12_, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISQ_EEvT_ENKUlvE_clEvENUlPvE0_8__invokeES12_ }, comdat, align 8
@.str.10 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/grpc/grpc/src/core/channelz/ztrace_collector.h\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2WindowUpdateTrace<true>]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"frame_type\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"WINDOW_UPDATE\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"stream_id\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"window_size_increment\00", align 1
@_ZTVN9grpc_core8channelz12PropertyListE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN4absl12lts_2025051218container_internal11kSooControlE = external local_unnamed_addr constant [17 x i8], align 16
@.str.18 = private unnamed_addr constant [34 x i8] c"memory_used_ < memory_used_before\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"state.enact != nullptr\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"instance->memory_used_ >= ent_usage\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"BUG: kIdle\00", align 1
@upb_alloc_global = external global %struct.upb_alloc, align 8
@grpc__channelz__v2__QueryTraceResponse_msg_init = external global %struct.upb_MiniTable, align 8
@grpc__channelz__v2__TraceEvent_msg_init = external global %struct.upb_MiniTable, align 8
@__const.grpc_channelz_v2_QueryTraceResponse_resize_events.field = private unnamed_addr constant %struct.upb_MiniTableField { i32 1, i16 8, i16 0, i16 6, i8 11, i8 -63 }, align 4
@_ZZ58_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_onlyE4size = linkonce_odr local_unnamed_addr constant [18 x i8] c"\03\02\03\03\02\03\02\00\04\03\03\04\02\02\02\03\02\03", comdat, align 16
@google__protobuf__Timestamp_msg_init = external global %struct.upb_MiniTable, align 8
@__const.grpc_channelz_v2_TraceEvent_resize_data.field = private unnamed_addr constant %struct.upb_MiniTableField { i32 3, i16 40, i16 0, i16 6, i8 11, i8 -63 }, align 4
@grpc__channelz__v2__Data_msg_init = external global %struct.upb_MiniTable, align 8
@.str.25 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2DataTrace<false>]\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"end_stream\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"payload_length\00", align 1
@google__protobuf__Any_msg_init = external global %struct.upb_MiniTable, align 8
@.str.31 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2HeaderTrace<false>]\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"CONTINUATION\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"HEADERS\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"end_headers\00", align 1
@.str.35 = private unnamed_addr constant [81 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<false>]\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"RST_STREAM\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"error_code\00", align 1
@.str.38 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SettingsTrace<false>]\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"SETTINGS\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [100 x i8] c"St23_Sp_counted_ptr_inplaceIN9grpc_core8channelz13PropertyTableESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN9grpc_core8channelz13PropertyTableE = external constant { [6 x ptr] }, align 8
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE18GetPolicyFunctionsEvE5value = linkonce_odr constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 16, i32 56, i32 56, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashISt4pairImmEEES6_EEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE19transfer_n_slots_fnEPvSZ_SZ_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvS14_PFvS14_hmmE }, comdat, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@.str.42 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.44 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2PingTrace<false>]\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.47 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2GoAwayTrace<false>]\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"GOAWAY\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"last_stream_id\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"debug_data\00", align 1
@.str.51 = private unnamed_addr constant [84 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2WindowUpdateTrace<false>]\00", align 1
@.str.52 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SecurityTrace<false>]\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"SECURITY\00", align 1
@.str.54 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2DataTrace<true>]\00", align 1
@.str.55 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2HeaderTrace<true>]\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<true>]\00", align 1
@.str.57 = private unnamed_addr constant [79 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SettingsTrace<true>]\00", align 1
@.str.58 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2PingTrace<true>]\00", align 1
@.str.59 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2GoAwayTrace<true>]\00", align 1
@.str.60 = private unnamed_addr constant [79 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SecurityTrace<true>]\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2UnknownFrameTrace]\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.65 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2FlowControlStall]\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"FLOW_CONTROL_STALL\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"transport_window\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"stream_window\00", align 1
@.str.69 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2BeginWriteCycle]\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"BEGIN_WRITE_CYCLE\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"target_size\00", align 1
@.str.72 = private unnamed_addr constant [73 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2EndWriteCycle]\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"END_WRITE_CYCLE\00", align 1
@.str.74 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2BeginEndpointWrite]\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"BEGIN_ENDPOINT_WRITE\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"write_size\00", align 1
@.str.77 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2TcpMetricsTrace]\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"send_msg\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"scheduled\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"acked\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"tcp_event_timestamp\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [5 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.5, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.6, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.7, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E }]
@llvm.used = appending global [5 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E], section "llvm.metadata"
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv = private unnamed_addr constant [5 x i8] c"\08\09\04\05\06", align 8
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv.1 = private unnamed_addr constant [5 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 8

; Function Attrs: mustprogress uwtable
define void @_Z32grpc_chttp2_window_update_createjjPN9grpc_core19CallTracerInterfaceE(ptr dead_on_unwind noalias writable sret(%struct.grpc_slice) align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  tail call void @grpc_slice_malloc(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8 %0, i64 noundef 13)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i64 13, ptr %4, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %3, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %bb.d, label %.critedge, !prof !47

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.1) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %0, align 8, !tbaa !51
  %.not31 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = select i1 %.not31, ptr %i.i, ptr %i.g    ; 10 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store <4 x i8> <i8 0, i8 0, i8 4, i8 8>, ptr %i.j, align 1, !tbaa !52
  %7 = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 0, ptr %6, align 1, !tbaa !52
  %8 = lshr i32 %1, 24
  %9 = trunc nuw i32 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i8 %9, ptr %7, align 1, !tbaa !52
  %11 = lshr i32 %1, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  store i8 %12, ptr %10, align 1, !tbaa !52
  %14 = lshr i32 %1, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 %15, ptr %13, align 1, !tbaa !52
  %17 = trunc i32 %1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  store i8 %17, ptr %16, align 1, !tbaa !52
  %18 = lshr i32 %2, 24
  %19 = trunc nuw i32 %18 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  store i8 %19, ptr %i.k, align 1, !tbaa !52
  %20 = lshr i32 %2, 16
  %21 = trunc i32 %20 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  store i8 %21, ptr %i.l, align 1, !tbaa !52
  %22 = lshr i32 %2, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %23, ptr %i.m, align 1, !tbaa !52
  %25 = trunc i32 %2 to i8
  store i8 %25, ptr %24, align 1, !tbaa !52
  ret void
}

declare void @grpc_slice_malloc(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z44grpc_chttp2_window_update_parser_begin_frameP32grpc_chttp2_window_update_parserjh(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %7 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = icmp ne i8 %3, 0
  %i.b = icmp ne i32 %2, 4
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !727
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %2 to i64
  %i.c = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.c, ptr %4, align 8, !tbaa !52, !noalias !727
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.d, align 8, !tbaa !729, !noalias !727
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i6.i = zext i8 %3 to i64
  %i.f = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i6.i to ptr
  store ptr %i.f, ptr %i.e, align 8, !tbaa !52, !noalias !727
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.g, align 8, !tbaa !729, !noalias !727
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.2, i64 44, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !727
  %i.h = load ptr, ptr %5, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i32 noundef 2, i64 %i.j, ptr %i.h, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %7, align 8, !tbaa !60     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %.05.i.i.i, align 8, !tbaa !63 ; 2 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = inttoptr i64 %i.n to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #30
  br label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.z = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.af = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.g
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.ae

bb.h:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !68
  store i64 1, ptr %0, align 8, !tbaa !63, !alias.scope !730
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i32 noundef, i64, ptr, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load i64, ptr %.05.i.i, align 8, !tbaa !63 ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core8channelz15ZTraceCollectorINS3_29http2_ztrace_collector_detail6ConfigEJNS3_11H2DataTraceILb0EEENS3_13H2HeaderTraceILb0EEENS3_16H2RstStreamTraceILb0EEENS3_15H2SettingsTraceILb0EEENS3_11H2PingTraceILb0EEENS3_13H2GoAwayTraceILb0EEENS3_19H2WindowUpdateTraceILb0EEENS3_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS3_19H2UnknownFrameTraceENS3_18H2FlowControlStallENS3_17H2BeginWriteCycleENS3_15H2EndWriteCycleENS3_20H2BeginEndpointWriteENS3_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES17_:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit: ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !621
  tail call void %i.j(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(40) %i.a) #27, !inline_history !9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_clEv(ptr noundef nonnull align 16 dereferenceable(40) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !tbaa !63  ; 4 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !684
  store i64 1, ptr %1, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  invoke void %i.f(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit unwind label %bb.g, !inline_history !31

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit: ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !63     ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.d

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit
  %i.i = load i8, ptr %i.d, align 8, !tbaa !684, !range !132, !noundef !108
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !684
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !52
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split

bb.d:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit
  %i.p = trunc i64 %i.g to i1
  br i1 %i.p, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.g to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #27
  br label %common.resume

bb.h:                                             ; preds = %bb.a
  store i64 %i.b, ptr %2, align 8, !tbaa !63
  %i.u = trunc i64 %i.b to i1
  br i1 %i.u, label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i:   ; preds = %bb.h
  %i.v = inttoptr i64 %i.b to ptr
  %i.w = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i.i = load i64, ptr %2, align 8, !tbaa !63
  %i.x = icmp eq i64 %.pr.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit, !prof !1534

bb.i:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit unwind label %bb.j

common.resume:                                    ; preds = %bb.g, %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.t, %bb.g ], [ %i.ap, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %2) #27
  br label %common.resume

_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit: ; preds = %bb.h, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !373
  invoke void %i.aa(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4 unwind label %bb.o, !inline_history !31

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4: ; preds = %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit
  %i.ab = load i64, ptr %2, align 8, !tbaa !63    ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i5, label %bb.l

_ZN4absl12lts_202505126StatusD2Ev.exit.i5:        ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !684, !range !132, !noundef !108
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i5
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ad, align 8, !tbaa !684
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !52
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split

bb.l:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4
  %i.al = trunc i64 %i.ab to i1
  br i1 %i.al, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

bb.o:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #27
  br label %common.resume

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6
  %.sink16 = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.sink = phi ptr [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aq = add i64 %.sink16, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aq) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split, %bb.k, %bb.c, %bb.m, %bb.l, %_ZN4absl12lts_202505126StatusD2Ev.exit.i5, %bb.e, %bb.d, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  ret void
}

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare extern_weak void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

declare extern_weak void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E() #1

declare extern_weak void @_ZTHN9grpc_core10latent_see8Appender4bin_E() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { cold }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }

!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}
!llvm.errno.tbaa = !{!41}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_D2Ev, null}
!7 = distinct !{!7, !64}
!8 = distinct !{!8, !64}
!9 = distinct !{ptr @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev, null}
!10 = distinct !{null}
!11 = distinct !{!11, !64}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{!15, !64}
!16 = distinct !{!16, !64}
!17 = distinct !{!17, !64}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, !64}
!24 = distinct !{!24, !64}
!25 = distinct !{!25, !64}
!26 = distinct !{!26, !64}
!27 = distinct !{!27, !64}
!28 = distinct !{!28, !64}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64}
!31 = distinct !{null}
!32 = distinct !{ptr @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_, null, null, null, null, null, null, null, null}
!33 = distinct !{!33, !64}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"omnipotent char", !37, i64 0}
!39 = !{!"int", !38, i64 0}
!40 = !{!"__libc_errno", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"long", !38, i64 0}
!43 = !{!"_ZTSN9grpc_core19CallTracerInterface17TransportByteSizeE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!"vtable pointer", !37, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!"any pointer", !38, i64 0}
!49 = !{!"p1 _ZTS19grpc_slice_refcount", !48, i64 0}
!50 = !{!"_ZTS10grpc_slice", !49, i64 0, !38, i64 8}
!51 = !{!50, !49, i64 0}
!52 = !{!38, !38, i64 0}
!53 = !{!"p1 omnipotent char", !48, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !42, i64 8, !38, i64 16}
!56 = !{!55, !53, i64 0}
!57 = !{!55, !42, i64 8}
!58 = !{!"p1 _ZTSN4absl12lts_202505126StatusE", !48, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_202505126StatusESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !58, i64 8}
!62 = !{!"_ZTSN4absl12lts_202505126StatusE", !42, i64 0}
!63 = !{!62, !42, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!59, !58, i64 16}
!66 = !{!"_ZTS32grpc_chttp2_window_update_parser", !38, i64 0, !38, i64 1, !39, i64 4}
!67 = !{!66, !38, i64 0}
!68 = !{!66, !39, i64 4}
!69 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !42, i64 0, !53, i64 8}
!70 = !{!"_ZTSSt13__atomic_baseIlE", !42, i64 0}
!71 = !{!"_ZTSSt6atomicIlE", !70, i64 0}
!72 = !{!"_ZTSN9grpc_core8RefCountE", !71, i64 0}
!73 = !{!"bool", !38, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!76 = !{!"short", !38, i64 0}
!77 = !{!"p1 _ZTSN17grpc_event_engine12experimental11EventEngineE", !48, i64 0}
!78 = !{!"_ZTSSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EE", !77, i64 0, !75, i64 8}
!79 = !{!"_ZTSSt10shared_ptrIN17grpc_event_engine12experimental11EventEngineEE", !78, i64 0}
!80 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !42, i64 0}
!81 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !42, i64 0, !80, i64 8, !38, i64 16}
!82 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !81, i64 0}
!83 = !{!"any p2 pointer", !48, i64 0}
!84 = !{!"_ZTSN9grpc_core9TimestampE", !42, i64 0}
!85 = !{!"double", !38, i64 0}
!86 = !{!"p1 _ZTSN9grpc_core10latent_see8MetadataE", !48, i64 0}
!87 = !{!"p1 _ZTSN9grpc_core10latent_see4SinkE", !48, i64 0}
!88 = !{!"_ZTSN9grpc_core10latent_see8AppenderE", !87, i64 0}
!89 = !{!88, !87, i64 0}
!90 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!91 = !{!42, !42, i64 0}
!92 = !{!76, !76, i64 0}
!93 = !{!48, !48, i64 0}
!94 = !{!"_ZTSN9grpc_core20PerCpuShardingHelperE"}
!95 = !{!"p1 _ZTSN9grpc_core25Http2GlobalStatsCollector4DataE", !48, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core25Http2GlobalStatsCollector4DataELb0EE", !95, i64 0}
!97 = !{!"_ZTSSt11_Tuple_implILm0EJPN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !96, i64 0}
!98 = !{!"_ZTSSt5tupleIJPN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implIN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_dataIN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_ELb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt10unique_ptrIA_N9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIS3_EE", !100, i64 0}
!102 = !{!"_ZTSN9grpc_core6PerCpuINS_25Http2GlobalStatsCollector4DataEEE", !94, i64 0, !42, i64 8, !101, i64 16}
!103 = !{!102, !42, i64 8}
!104 = !{!95, !95, i64 0}
!105 = !{!39, !39, i64 0}
!106 = !{!80, !42, i64 0}
!107 = !{!81, !42, i64 0}
!108 = !{}
!109 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !38, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p1 _ZTSN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8InstanceE", !48, i64 0}
!112 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS5_ILb1EEENS7_ILb1EEENS9_ILb1EEENSB_ILb1EEENSD_ILb1EEENSF_ILb1EEENSH_ILb1EEENSJ_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8InstanceEEE", !111, i64 0}
!113 = !{!112, !111, i64 0}
!114 = !{!"p1 _ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !48, i64 0}
!115 = !{!"_ZTSSt13__atomic_baseIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !114, i64 0}
!116 = !{!"_ZTSSt6atomicIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !115, i64 0}
!117 = !{!"_ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !116, i64 0}
!118 = !{!"_ZTSN9grpc_core10latent_see3BinE", !117, i64 0, !42, i64 8, !42, i64 16, !38, i64 32}
!119 = !{!118, !42, i64 8}
!120 = !{!"_ZTSN9grpc_core10latent_see8MetadataE", !53, i64 0, !39, i64 8, !69, i64 16, !39, i64 32, !48, i64 40, !48, i64 48}
!121 = !{!120, !39, i64 32}
!122 = !{!"p1 _ZTSN9grpc_core10latent_see3BinE", !48, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"_ZTSN9grpc_core10latent_see3Bin5EventE", !86, i64 0, !42, i64 8, !42, i64 16}
!125 = !{!124, !86, i64 0}
!126 = !{!120, !48, i64 40}
!127 = !{!53, !53, i64 0}
!128 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEE", !38, i64 0, !38, i64 32}
!129 = !{!128, !38, i64 32}
!130 = !{!"_ZTSSt22_Optional_payload_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEEE", !38, i64 0, !73, i64 40}
!131 = !{!130, !73, i64 40}
!132 = !{i8 0, i8 2}
!133 = !{!"_ZTSN9grpc_core19H2WindowUpdateTraceILb1EEE", !39, i64 0, !39, i64 4}
!134 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS3_ES5_lmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEEE", !48, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!135, !134, i64 0}
!137 = !{!135, !134, i64 8}
!138 = !{!135, !134, i64 16}
!139 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIbLb1EEE", !73, i64 0}
!140 = !{!139, !73, i64 0}
!141 = !{!"_ZTSNSt8__detail9__variant14_UninitializedImLb1EEE", !42, i64 0}
!142 = !{!141, !42, i64 0}
!143 = !{!75, !74, i64 0}
!144 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 8, !39, i64 12}
!145 = !{!144, !39, i64 8}
!146 = !{!144, !39, i64 12}
!147 = !{i64 0, i64 8, !91, i64 8, i64 8, !127}
!148 = !{!54, !53, i64 0}
!149 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIlLb1EEE", !42, i64 0}
!150 = !{!149, !42, i64 0}
!151 = !{!85, !85, i64 0}
!152 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIdLb1EEE", !85, i64 0}
!153 = !{!152, !85, i64 0}
!154 = !{!73, !73, i64 0}
!155 = !{i64 0, i64 4, !105, i64 4, i64 4, !105, i64 8, i64 4, !105}
!156 = !{!"p1 _ZTSN9grpc_core8channelz18OtherPropertyValueE", !48, i64 0}
!157 = !{!"_ZTSSt12__shared_ptrIN9grpc_core8channelz18OtherPropertyValueELN9__gnu_cxx12_Lock_policyE2EE", !156, i64 0, !75, i64 8}
!158 = !{!157, !156, i64 0}
!159 = !{!134, !134, i64 0}
!160 = !{!"p1 _ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEE", !48, i64 0}
!161 = !{!"_ZTSZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEC1ERKSL_EUlOT_T0_E_", !160, i64 0}
end_hunk_1
