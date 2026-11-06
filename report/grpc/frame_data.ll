Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame_data?download=true
inline.NumInlined: 5346
inline.NumDeleted: 3078
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.30 = private unnamed_addr constant [8 x i8] c"HEADERS\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"end_headers\00", align 1
@.str.32 = private unnamed_addr constant [81 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<false>]\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"RST_STREAM\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"error_code\00", align 1
@.str.35 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SettingsTrace<false>]\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SETTINGS\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
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
@.str.39 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2PingTrace<false>]\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.44 = private unnamed_addr constant [78 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2GoAwayTrace<false>]\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"GOAWAY\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"last_stream_id\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"debug_data\00", align 1
@.str.48 = private unnamed_addr constant [84 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2WindowUpdateTrace<false>]\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"WINDOW_UPDATE\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"window_size_increment\00", align 1
@.str.51 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SecurityTrace<false>]\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"SECURITY\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2DataTrace<true>]\00", align 1
@.str.54 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2HeaderTrace<true>]\00", align 1
@.str.55 = private unnamed_addr constant [80 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2RstStreamTrace<true>]\00", align 1
@.str.56 = private unnamed_addr constant [79 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2SettingsTrace<true>]\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2PingTrace<true>]\00", align 1
@.str.58 = private unnamed_addr constant [77 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2GoAwayTrace<true>]\00", align 1
@.str.59 = private unnamed_addr constant [83 x i8] c"absl::string_view grpc_core::TypeName() [T = grpc_core::H2WindowUpdateTrace<true>]\00", align 1
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
@_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISK_EEvT_ENKUlvE_clEvE8metadata = linkonce_odr global %"struct.grpc_core::latent_see::Metadata" { ptr @.str.10, i32 172, %"class.std::basic_string_view" { i64 28, ptr getelementptr (i8, ptr @.str.53, i64 45) }, i32 16, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISK_EEvT_ENKUlvE_clEvENUlPvE_8__invokeES12_, ptr @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISK_EEvT_ENKUlvE_clEvENUlPvE0_8__invokeES12_ }, comdat, align 8
@llvm.global_ctors = appending global [5 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.5, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.6, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.7, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E }]
@llvm.used = appending global [5 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E], section "llvm.metadata"
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv = private unnamed_addr constant [5 x i8] c"\08\09\04\05\06", align 8
@switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv.1 = private unnamed_addr constant [5 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 8

; Function Attrs: mustprogress uwtable
define void @_Z35grpc_chttp2_data_parser_begin_framehjP18grpc_chttp2_stream(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i8 noundef zeroext %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp ugt i8 %1, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !852
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %1 to i64
  %i.b = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.b, ptr %4, align 8, !tbaa !43, !noalias !852
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.c, align 8, !tbaa !46, !noalias !852
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i6.i = zext i32 %2 to i64
  %i.e = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i6.i to ptr
  store ptr %i.e, ptr %i.d, align 8, !tbaa !43, !noalias !852
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.f, align 8, !tbaa !46, !noalias !852
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str, i64 41, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !852
  %i.g = load ptr, ptr %5, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.i, ptr %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !43
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !43
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 373
  store i8 1, ptr %i.u, align 1, !tbaa !853
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2170
  store i8 %.sink, ptr %i.v, align 2, !tbaa !175
  store i64 1, ptr %0, align 8, !tbaa !176, !alias.scope !854
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_Z23grpc_chttp2_encode_datajP17grpc_slice_bufferjiPN9grpc_core19CallTracerInterfaceEPNS1_8channelz15ZTraceCollectorINS1_29http2_ztrace_collector_detail6ConfigEJNS1_11H2DataTraceILb0EEENS1_13H2HeaderTraceILb0EEENS1_16H2RstStreamTraceILb0EEENS1_15H2SettingsTraceILb0EEENS1_11H2PingTraceILb0EEENS1_13H2GoAwayTraceILb0EEENS1_19H2WindowUpdateTraceILb0EEENS1_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS1_19H2UnknownFrameTraceENS1_18H2FlowControlStallENS1_17H2BeginWriteCycleENS1_15H2EndWriteCycleENS1_20H2BeginEndpointWriteENS1_17H2TcpMetricsTraceEEEES0_(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %8 = alloca %"struct.grpc_core::H2DataTrace", align 8 ; 6 uses
  %9 = alloca %struct.grpc_slice, align 8         ; 14 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %11 = alloca %struct.grpc_slice, align 8        ; 12 uses
  %12 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @grpc_slice_malloc(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %9, i64 noundef 9)
  %.sroa.059.0.copyload = load ptr, ptr %9, align 8, !tbaa !855 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 9
  %.sroa.563.0.copyload = load i8, ptr %.sroa.563.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 10
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 11
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 13
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 14
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 15
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 11 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.a = icmp ugt i32 %2, 16777215
  br i1 %i.a, label %bb.b, label %.critedge, !prof !178

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @.str.2) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #30
  unreachable

.critedge:                                        ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.059.0.copyload, null
  %i.c = lshr i32 %2, 16
  %i.d = trunc nuw i32 %i.c to i8                 ; 2 uses
  br i1 %.not, label %.critedge.then, label %.critedge.else

.critedge.then:                                   ; preds = %.critedge
  %i.e = lshr i32 %2, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = trunc i32 %2 to i8
  %i.h = icmp ne i32 %3, 0                        ; 2 uses
  %i.i = zext i1 %i.h to i8
  %i.j = lshr i32 %0, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = lshr i32 %0, 16
  %i.m = trunc i32 %i.l to i8
  %i.n = ptrtoint ptr %.sroa.12.0.copyload to i64
  %.sroa.12.0.insert.mask = and i64 %i.n, -65536
  %trunc = trunc i32 %0 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %.sroa.12.0.insert.insert = zext i16 %rev to i64
  %.sroa.12.1.insert.insert = or disjoint i64 %.sroa.12.0.insert.mask, %.sroa.12.0.insert.insert
  %i.o = inttoptr i64 %.sroa.12.1.insert.insert to ptr
  br label %.critedge.cont

.critedge.else:                                   ; preds = %.critedge
  %.sroa.gep37 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 1
  store i8 %i.d, ptr %.sroa.12.0.copyload, align 1, !tbaa !43
  %i.p = lshr i32 %2, 8
  %i.q = trunc i32 %i.p to i8
  %.sroa.gep39 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 2
  store i8 %i.q, ptr %.sroa.gep37, align 1, !tbaa !43
  %i.r = trunc i32 %2 to i8
  %.sroa.gep42 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 3
  store i8 %i.r, ptr %.sroa.gep39, align 1, !tbaa !43
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 4
  store i8 0, ptr %.sroa.gep42, align 1, !tbaa !43
  %i.s = icmp ne i32 %3, 0                        ; 2 uses
  %i.t = zext i1 %i.s to i8
  %.sroa.gep48 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 5
  store i8 %i.t, ptr %.sroa.gep45, align 1, !tbaa !43
  %13 = lshr i32 %0, 24
  %14 = trunc nuw i32 %13 to i8
  %.sroa.gep51 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 6
  store i8 %14, ptr %.sroa.gep48, align 1, !tbaa !43
  %15 = lshr i32 %0, 16
  %16 = trunc i32 %15 to i8
  %.sroa.gep54 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 7
  store i8 %16, ptr %.sroa.gep51, align 1, !tbaa !43
  %17 = lshr i32 %0, 8
  %18 = trunc i32 %17 to i8
  %.sroa.gep57 = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  store i8 %18, ptr %.sroa.gep54, align 1, !tbaa !43
  %19 = trunc i32 %0 to i8
  store i8 %19, ptr %.sroa.gep57, align 1, !tbaa !43
  br label %.critedge.cont

.critedge.cont:                                   ; preds = %.critedge.else, %.critedge.then
  %.sroa.10.0188201238 = phi i8 [ %i.k, %.critedge.then ], [ %.sroa.10.0.copyload, %.critedge.else ]
  %i.u = phi i1 [ %i.h, %.critedge.then ], [ %i.s, %.critedge.else ]
  %.sroa.8.0147158186203236 = phi i8 [ 0, %.critedge.then ], [ %.sroa.8.0.copyload, %.critedge.else ]
  %.sroa.6.0118127145160184205234 = phi i8 [ %i.f, %.critedge.then ], [ %.sroa.6.0.copyload, %.critedge.else ]
  %.sroa.563.0108116129143162182207232 = phi i8 [ %i.d, %.critedge.then ], [ %.sroa.563.0.copyload, %.critedge.else ]
  %.sroa.7.0131141164180209230 = phi i8 [ %i.g, %.critedge.then ], [ %.sroa.7.0.copyload, %.critedge.else ]
  %.sroa.9.0166178211228 = phi i8 [ %i.i, %.critedge.then ], [ %.sroa.9.0.copyload, %.critedge.else ]
  %.sroa.11.0213226 = phi i8 [ %i.m, %.critedge.then ], [ %.sroa.11.0.copyload, %.critedge.else ]
  %.sroa.12.0 = phi ptr [ %i.o, %.critedge.then ], [ %.sroa.12.0.copyload, %.critedge.else ]
  store ptr %.sroa.059.0.copyload, ptr %11, align 8, !tbaa !855
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx61, align 8
  %.sroa.563.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 %.sroa.563.0108116129143162182207232, ptr %.sroa.563.0..sroa_idx64, align 1
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %11, i64 10
  store i8 %.sroa.6.0118127145160184205234, ptr %.sroa.6.0..sroa_idx66, align 2
  %.sroa.7.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %11, i64 11
  store i8 %.sroa.7.0131141164180209230, ptr %.sroa.7.0..sroa_idx68, align 1
  %.sroa.8.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 %.sroa.8.0147158186203236, ptr %.sroa.8.0..sroa_idx70, align 4
  %.sroa.9.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %11, i64 13
  store i8 %.sroa.9.0166178211228, ptr %.sroa.9.0..sroa_idx72, align 1
  %.sroa.10.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %11, i64 14
  store i8 %.sroa.10.0188201238, ptr %.sroa.10.0..sroa_idx74, align 2
  %.sroa.11.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %11, i64 15
  store i8 %.sroa.11.0213226, ptr %.sroa.11.0..sroa_idx76, align 1
  %.sroa.12.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx78, align 8
  %.sroa.15.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx80, align 8, !tbaa !43
  call void @grpc_slice_buffer_add(ptr noundef %6, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %11)
  %.sroa.22.0.insert.shift = select i1 %i.u, i64 4294967296, i64 0
  %.sroa.01.0.insert.ext = zext i32 %0 to i64
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.shift, %.sroa.01.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.01.0.insert.insert, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.v = load atomic ptr, ptr @_ZN9grpc_core10latent_see8Appender12active_sink_E acquire, align 8 ; 2 uses
  store ptr %i.v, ptr %7, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i, label %bb.d, !prof !182

bb.d:                                             ; preds = %.critedge.cont
  %i.w = call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() ; 2 uses
  call void @_ZN9grpc_core10latent_see8Appender6AppendINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataEllRKT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS5_EEvT_ENKUlvE_clEvE8metadata, i64 noundef %i.w, i64 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(12) %8)
  br label %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i

_ZN9grpc_core10latent_seeL14MarkExtraEventINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i: ; preds = %bb.d, %.critedge.cont
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.x = load atomic ptr, ptr %5 monotonic, align 8
  %.not1.i = icmp eq ptr %i.x, null
  br i1 %.not1.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS5_EEvT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i
  call void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE11AppendValueIS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(12) %8)
  br label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS5_EEvT_.exit

_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendIS5_EEvT_.exit: ; preds = %_ZN9grpc_core10latent_seeL14MarkExtraEventINS_11H2DataTraceILb0EEEEEvPKNS0_8MetadataERKT_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.y = zext nneg i32 %2 to i64
  call void @grpc_slice_buffer_move_first_no_ref(ptr noundef %1, i64 noundef %i.y, ptr noundef %6)
  %i.z = call noundef nonnull align 8 dereferenceable(4024) ptr @_ZN9grpc_core6PerCpuINS_25Http2GlobalStatsCollector4DataEE8this_cpuEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2824
  %i.ab = call noundef i32 @_ZN9grpc_core24Histogram_16777216_50_649BucketForEi(i32 noundef %2)
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store i64 9, ptr %12, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  ret void
}

declare void @grpc_slice_malloc(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @grpc_slice_buffer_add(ptr noundef, ptr noundef byval(%struct.grpc_slice) align 8) local_unnamed_addr #1

declare void @grpc_slice_buffer_move_first_no_ref(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z40grpc_deframe_unprocessed_incoming_framesP18grpc_chttp2_streamPlPN9grpc_core11SliceBufferEPj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::Poll") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %10 = alloca %"class.std::vector.55", align 8   ; 7 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %13 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 1, ptr %6, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1760 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !858  ; 2 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 5, %i.d
  store i64 %i.f, ptr %2, align 8, !tbaa !187
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  store i8 0, ptr %0, align 8, !tbaa !860
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit62

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  invoke void @_Z40grpc_slice_buffer_copy_first_into_bufferPK17grpc_slice_buffermPv(ptr noundef nonnull %i.b, i64 noundef 5, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.ae

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %i.a, align 1, !tbaa !43    ; 2 uses
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.aa, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.aa, label %.sink.split

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !861
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.g to i64
  %i.h = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.h, ptr %5, align 8, !tbaa !43, !noalias !861
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.i, align 8, !tbaa !46, !noalias !861
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.3, i64 26, ptr nonnull %5, i64 1)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !861
  %i.j = load ptr, ptr %8, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %7, i32 noundef 2, i64 %i.l, ptr %i.j, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.m = load i64, ptr %7, align 8, !tbaa !176    ; 9 uses
  %.not.i = icmp eq i64 %i.m, 1
  br i1 %.not.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.m, ptr %6, align 8, !tbaa !176
  store i64 55, ptr %7, align 8, !tbaa !176
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.j, %bb.k
  %i.n = load ptr, ptr %10, align 8, !tbaa !190   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i ], [ %i.n, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.q = load i64, ptr %.05.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.s = inttoptr i64 %i.q to ptr
end_hunk_0
