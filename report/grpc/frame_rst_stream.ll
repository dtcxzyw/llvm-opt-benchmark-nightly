Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame_rst_stream?download=true
inline.NumInlined: 5377
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairImmESt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEElmdbN9grpc_core8DurationENSF_9TimestampENS0_6StatusENS0_4TimeESt10shared_ptrINSF_8channelz18OtherPropertyValueEEEEEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_SO_EEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvE8metadata = comdat any

@.str = private unnamed_addr constant [42 x i8] c"invalid rst_stream: length=%d, flags=%02x\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/opt-bench/work/grpc/grpc/src/core/ext/transport/chttp2/transport/frame_rst_stream.cc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"is_last\00", align 1
@_ZN9grpc_core10http_traceE = external local_unnamed_addr global %"class.grpc_core::TraceFlag", align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"[chttp2 transport=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" stream=\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"] received RST_STREAM(reason=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"RST_STREAM (Received RST_STREAM with error code \00", align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.277" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.278" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E), align 8
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.294" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN9grpc_core10latent_see8Appender12active_sink_E = external local_unnamed_addr global %"struct.std::atomic.314", align 8
@_ZN9grpc_core10latent_see8Appender4bin_E = external thread_local global %"class.std::unique_ptr.316", align 8
@_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_ENKUlvE_clEvE8metadata = linkonce_odr global %"struct.grpc_core::latent_see::Metadata" { ptr @.str.13, i32 172, %"class.std::basic_string_view" { i64 34, ptr getelementptr (i8, ptr @.str.14, i64 45) }, i32 16, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_ENKUlvE_clEvENUlPvE_8__invokeES12_, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_ENKUlvE_clEvENUlPvE0_8__invokeES12_ }, comdat, align 8
@.str.13 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/grpc/grpc/src/core/channelz/ztrace_collector.h\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<false>]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"frame_type\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"RST_STREAM\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"stream_id\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"error_code\00", align 1
@_ZTVN9grpc_core8channelz12PropertyListE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN4absl12lts_2025051218container_internal11kSooControlE = external local_unnamed_addr constant [17 x i8], align 16
@.str.21 = private unnamed_addr constant [34 x i8] c"memory_used_ < memory_used_before\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"state.enact != nullptr\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"instance->memory_used_ >= ent_usage\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"BUG: kIdle\00", align 1
@upb_alloc_global = external global %struct.upb_alloc, align 8
@grpc__channelz__v2__QueryTraceResponse_msg_init = external global %struct.upb_MiniTable, align 8
@grpc__channelz__v2__TraceEvent_msg_init = external global %struct.upb_MiniTable, align 8
@__const.grpc_channelz_v2_QueryTraceResponse_resize_events.field = private unnamed_addr constant %struct.upb_MiniTableField { i32 1, i16 8, i16 0, i16 6, i8 11, i8 -63 }, align 4
@_ZZ58_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_onlyE4size = linkonce_odr local_unnamed_addr constant [18 x i8] c"\03\02\03\03\02\03\02\00\04\03\03\04\02\02\02\03\02\03", comdat, align 16
@google__protobuf__Timestamp_msg_init = external global %struct.upb_MiniTable, align 8
@__const.grpc_channelz_v2_TraceEvent_resize_data.field = private unnamed_addr constant %struct.upb_MiniTableField { i32 3, i16 40, i16 0, i16 6, i8 11, i8 -63 }, align 4
@grpc__channelz__v2__Data_msg_init = external global %struct.upb_MiniTable, align 8
@.str.28 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2DataTrace<false>]\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"end_stream\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"payload_length\00", align 1
@google__protobuf__Any_msg_init = external global %struct.upb_MiniTable, align 8
@.str.34 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2HeaderTrace<false>]\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"CONTINUATION\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"HEADERS\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"end_headers\00", align 1
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
@.str.52 = private unnamed_addr constant [14 x i8] c"WINDOW_UPDATE\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"window_size_increment\00", align 1
@.str.54 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SecurityTrace<false>]\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"SECURITY\00", align 1
@.str.56 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2DataTrace<true>]\00", align 1
@.str.57 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2HeaderTrace<true>]\00", align 1
@.str.58 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<true>]\00", align 1
@.str.59 = private unnamed_addr constant [79 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SettingsTrace<true>]\00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2PingTrace<true>]\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2GoAwayTrace<true>]\00", align 1
@.str.62 = private unnamed_addr constant [83 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2WindowUpdateTrace<true>]\00", align 1
@.str.63 = private unnamed_addr constant [79 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SecurityTrace<true>]\00", align 1
@.str.64 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2UnknownFrameTrace]\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.68 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2FlowControlStall]\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"FLOW_CONTROL_STALL\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"transport_window\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"stream_window\00", align 1
@.str.72 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2BeginWriteCycle]\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"BEGIN_WRITE_CYCLE\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"target_size\00", align 1
@.str.75 = private unnamed_addr constant [73 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2EndWriteCycle]\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"END_WRITE_CYCLE\00", align 1
@.str.77 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2BeginEndpointWrite]\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"BEGIN_ENDPOINT_WRITE\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"write_size\00", align 1
@.str.80 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2TcpMetricsTrace]\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"send_msg\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"scheduled\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"acked\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"tcp_event_timestamp\00", align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvE8metadata = linkonce_odr global %"struct.grpc_core::latent_see::Metadata" { ptr @.str.13, i32 172, %"class.std::basic_string_view" { i64 33, ptr getelementptr (i8, ptr @.str.58, i64 45) }, i32 16, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvENUlPvE_8__invokeES12_, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvENUlPvE0_8__invokeES12_ }, comdat, align 8
@_ZN9grpc_core12SharedBitGen8bit_gen_E = external thread_local global %"class.absl::lts_20250512::BitGen", align 8
@llvm.global_ctors = appending global [5 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.8, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.9, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.10, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.11, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E }]
@llvm.used = appending global [5 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E], section "llvm.metadata"
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv = private unnamed_addr constant [5 x i8] c"\08\09\04\05\06", align 8
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv.1 = private unnamed_addr constant [5 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 8

; Function Attrs: mustprogress uwtable
define void @_Z29grpc_chttp2_rst_stream_createjjPN9grpc_core19CallTracerInterfaceEPNS_8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEEE(ptr dead_on_unwind noalias writable sret(%struct.grpc_slice) align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %6 = alloca %"struct.grpc_core::H2RstStreamTrace", align 8 ; 5 uses
  %7 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 5 uses
  tail call void @grpc_slice_malloc(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8 %0, i64 noundef 13)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i64 13, ptr %7, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %3, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.2.0.insert.ext = zext i32 %2 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.insert.insert, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.e = load atomic ptr, ptr @_ZN9grpc_core10latent_see8Appender12active_sink_E acquire, align 8 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() ; 2 uses
  call void @_ZN9grpc_core10latent_see8Appender6AppendINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataEllRKT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_ENKUlvE_clEvE8metadata, i64 noundef %i.f, i64 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br label %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i

_ZN9grpc_core10latent_seeL14MarkExtraEventINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.g = load atomic ptr, ptr %4 monotonic, align 8
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i
  call void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE11AppendValueIS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_.exit

_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS9_EEvT_.exit: ; preds = %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.h = load ptr, ptr %0, align 8, !tbaa !55
  %.not25 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.l = select i1 %.not25, ptr %i.k, ptr %i.j    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store <4 x i8> <i8 0, i8 0, i8 4, i8 3>, ptr %i.l, align 1, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  store i8 0, ptr %i.m, align 1, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %8 = call i32 @llvm.bswap.i32(i32 %1)
  store i32 %8, ptr %i.n, align 1, !tbaa !56
  %9 = call i32 @llvm.bswap.i32(i32 %2)
  store i32 %9, ptr %i.o, align 1, !tbaa !56
  ret void
}

declare void @grpc_slice_malloc(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_Z40grpc_chttp2_add_rst_stream_to_next_writeP21grpc_chttp2_transportjjPN9grpc_core19CallTracerInterfaceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::Status") align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %6 = alloca %struct.grpc_slice, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_Z47grpc_chttp2_increase_num_pending_induced_framesP21grpc_chttp2_transport(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef %1)
  %i.a = load i64, ptr %5, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %.thread, !prof !52

.thread:                                          ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.b:                                             ; preds = %bb.d, %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3016
  invoke void @_Z29grpc_chttp2_rst_stream_createjjPN9grpc_core19CallTracerInterfaceEPNS_8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEEE(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %6, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1272
  invoke void @grpc_slice_buffer_add(ptr noundef nonnull %i.e, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %6)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %0, align 8, !tbaa !58, !alias.scope !728
  %.pre = load i64, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.f = trunc i64 %.pre to i1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

declare void @_Z47grpc_chttp2_increase_num_pending_induced_framesP21grpc_chttp2_transport(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @grpc_slice_buffer_add(ptr noundef, ptr noundef byval(%struct.grpc_slice) align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !58     ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_Z41grpc_chttp2_rst_stream_parser_begin_frameP29grpc_chttp2_rst_stream_parserjh(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %7 = alloca %"class.std::vector.213", align 8   ; 7 uses
  %.not = icmp eq i32 %2, 4
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !733
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %2 to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.a, ptr %4, align 8, !tbaa !56, !noalias !733
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.b, align 8, !tbaa !735, !noalias !733
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i6.i = zext i8 %3 to i64
  %i.d = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i6.i to ptr
  store ptr %i.d, ptr %i.c, align 8, !tbaa !56, !noalias !733
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.e, align 8, !tbaa !735, !noalias !733
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str, i64 41, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !733
  %i.f = load ptr, ptr %5, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i32 noundef 2, i64 %i.h, ptr %i.f, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %7, align 8, !tbaa !66     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load i64, ptr %.05.i.i.i, align 8, !tbaa !58 ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = inttoptr i64 %i.l to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #31
  br label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.x = load ptr, ptr %5, align 8, !tbaa !62     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !56
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ad = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
end_hunk_0
