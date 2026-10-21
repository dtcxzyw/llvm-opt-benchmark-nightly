Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/call_utils?download=true
inline.NumInlined: 2318
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core11CToMetadataEP13grpc_metadatamP19grpc_metadata_batch:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 1
  %i.o = xor i64 %i.n, 3275364211029340003
  %i.p = getelementptr i8, ptr %i.h, i64 6
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 7526754601088593268
  %i.s = or i64 %i.o, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp ugt ptr %i.x, inttoptr (i64 1 to ptr)
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.c, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aa = load ptr, ptr %5, align 8, !tbaa !32, !noalias !102
  %magicptr.i.i = ptrtoint ptr %i.aa to i64
  switch i64 %magicptr.i.i, label %bb.h [
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  br label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  invoke void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %4, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.w)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i unwind label %bb.q

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !103
  br label %_ZN9grpc_core5SliceD2Ev.exit.i

_ZN9grpc_core5SliceD2Ev.exit.i:                   ; preds = %bb.g, %bb.h, %bb.f
  store ptr %2, ptr %3, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !noalias !104
  store ptr %6, ptr %i.b, align 8, !tbaa !34
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core11CToMetadataEP13grpc_metadatamP19grpc_metadata_batchE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS3_5SliceEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !43
  invoke void @_ZN9grpc_core6IfListISt17basic_string_viewIcSt11char_traitsIcEEPNS_15metadata_detail12AppendHelperI19grpc_metadata_batchEEZNS5_19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupIS8_EEDaS4_PT_EUlS9_E_NS5_32EncodableNameLookupKeyComparisonISB_EENS18_ISC_EENS18_ISD_EENS18_ISE_EENS18_ISF_EENS18_ISG_EENS18_ISH_EENS18_ISI_EENS18_ISJ_EENS18_ISK_EENS18_ISL_EENS18_ISM_EENS18_ISN_EENS18_ISO_EENS18_ISP_EENS18_ISQ_EENS18_ISR_EENS18_ISS_EENS18_IST_EENS18_ISU_EENS18_ISV_EENS18_ISW_EENS18_ISX_EENS18_ISY_EENS18_ISZ_EENS18_IS10_EENS18_IS11_EENS18_IS12_EENS5_26EncodableNameLookupOnFoundISB_S8_EENS21_ISC_S8_EENS21_ISD_S8_EENS21_ISE_S8_EENS21_ISF_S8_EENS21_ISG_S8_EENS21_ISH_S8_EENS21_ISI_S8_EENS21_ISJ_S8_EENS21_ISK_S8_EENS21_ISL_S8_EENS21_ISM_S8_EENS21_ISN_S8_EENS21_ISO_S8_EENS21_ISP_S8_EENS21_ISQ_S8_EENS21_ISR_S8_EENS21_ISS_S8_EENS21_IST_S8_EENS21_ISU_S8_EENS21_ISV_S8_EENS21_ISW_S8_EENS21_ISX_S8_EENS21_ISY_S8_EENS21_ISZ_S8_EENS21_IS10_S8_EENS21_IS11_S8_EENS21_IS12_S8_EEEEDaS15_T0_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_T15_T16_T17_T18_T19_T20_T21_T22_T23_T24_T25_T26_T27_T28_T29_T30_T31_T32_T33_T34_T35_T36_T37_T38_T39_T40_T41_T42_T43_T44_T45_T46_T47_T48_T49_T50_T51_T52_T53_T54_T55_T56_T57_(i64 %i.l, ptr %i.h, ptr noundef nonnull %3, i64 %i.l, ptr %i.h)
          to label %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i unwind label %bb.l

_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i: ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 1 to ptr)
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i
  %i.ad = atomicrmw sub ptr %i.ab, i64 1 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %bb.m unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

bb.l:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core15metadata_detail12AppendHelperI19grpc_metadata_batchED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.m:                                             ; preds = %bb.j, %bb.i, %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ak = load ptr, ptr %5, align 8, !tbaa !32    ; 4 uses
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 1 to ptr)
  br i1 %i.al, label %bb.n, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.n:                                             ; preds = %bb.m
  %i.am = atomicrmw sub ptr %i.ak, i64 1 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.o, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit unwind label %bb.p, !inline_history !0

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %bb.o, %bb.n, %bb.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.as = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !101

bb.q:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !0

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 8
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64 11, ptr nonnull @.str.9, ptr nonnull @.str.10, i32 115) #27
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: noreturn
declare void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64, ptr, ptr, i32) local_unnamed_addr #4

; Function Attrs: uwtable
define range(i8 0, 2) i8 @_ZN9grpc_core14WaitForCqEndOpclEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %3 = alloca %"struct.grpc_core::WaitForCqEndOp::NotStarted", align 8 ; 8 uses
  %4 = alloca %"class.grpc_core::Waker", align 8  ; 7 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50    ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !54, !range !55, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = load i64, ptr %i.e, align 8, !tbaa !57
  store i64 %i.h, ptr %2, align 8, !tbaa !57
  store i64 55, ptr %i.e, align 8, !tbaa !57
  invoke void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %i.g, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = inttoptr i64 %i.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.z unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ac

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  store i64 %i.p, ptr %i.o, align 8, !tbaa !57
  store i64 55, ptr %i.e, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.not.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZTHN9grpc_core8Activity19g_current_activity_E()
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Waker") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %i.a, align 8, !tbaa !50
  switch i8 %i.y, label %bb.q [
    i8 -1, label %bb.r
    i8 0, label %bb.l
    i8 1, label %bb.o
    i8 2, label %bb.r
  ], !prof !109

bb.l:                                             ; preds = %bb.k
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %6, align 8, !tbaa !57     ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = inttoptr i64 %i.z to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %bb.r unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #26
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !112
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i16 noundef zeroext %i.ag)
          to label %bb.r unwind label %bb.p, !inline_history !1

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

bb.q:                                             ; preds = %bb.k
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !61
  %.sroa.2.0..0.1.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.2.0..0.1.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !12
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr %4, align 8, !tbaa !61
  store i16 0, ptr %.sroa.2.0..0.1.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !12
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.an, align 8, !tbaa !114
  store i8 1, ptr %i.a, align 8, !tbaa !50
  %i.ao = load ptr, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, i16 noundef zeroext 0)
          to label %_ZN9grpc_core5WakerD2Ev.exit unwind label %bb.s, !inline_history !1

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #26
  unreachable

_ZN9grpc_core5WakerD2Ev.exit:                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !105
  store i64 %i.p, ptr %5, align 8, !tbaa !57
  store i64 55, ptr %i.o, align 8, !tbaa !57
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_Z14grpc_cq_end_opP21grpc_completion_queuePvN4absl12lts_202505126StatusEPFvS1_P18grpc_cq_completionES1_S6_b(ptr noundef %i.s, ptr noundef %i.au, ptr noundef nonnull align 8 %5, ptr noundef nonnull @"_ZZN9grpc_core14WaitForCqEndOpclEvEN3$_08__invokeEPvP18grpc_cq_completion", ptr noundef nonnull %0, ptr noundef nonnull %7, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %_ZN9grpc_core5WakerD2Ev.exit
  %i.av = load i64, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = inttoptr i64 %i.av to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ax)
          to label %_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #26
  unreachable

_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev.exit: ; preds = %bb.t, %bb.u
  %.pr.pre = load i8, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aa

bb.w:                                             ; preds = %bb.i, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.y

bb.x:                                             ; preds = %_ZN9grpc_core5WakerD2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn17 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ]
  call void @_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ac

bb.z:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ad

bb.aa:                                            ; preds = %_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev.exit, %bb.a
  %i.bc = phi i8 [ %.pr.pre, %_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev.exit ], [ %i.b, %bb.a ]
  switch i8 %i.bc, label %bb.ab [
    i8 1, label %_ZSt3getIN9grpc_core14WaitForCqEndOp7StartedEJNS1_10NotStartedES2_NS1_7InvalidEEERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !115

bb.ab:                                            ; preds = %bb.aa
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bd, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @.str.21, ptr %i.be, align 8, !tbaa !65
  call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.aa
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bf, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @.str.20, ptr %i.bg, align 8, !tbaa !65
  call void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZSt3getIN9grpc_core14WaitForCqEndOp7StartedEJNS1_10NotStartedES2_NS1_7InvalidEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load atomic i8, ptr %i.bh acquire, align 8, !range !55, !noundef !56
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.g
  %.pn19 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %.pn17, %bb.y ]
  resume { ptr, i32 } %.pn19

bb.ad:                                            ; preds = %_ZSt3getIN9grpc_core14WaitForCqEndOp7StartedEJNS1_10NotStartedES2_NS1_7InvalidEEERT_RSt7variantIJDpT0_EE.exit, %bb.z
  %.sroa.023.1 = phi i8 [ 1, %bb.z ], [ %i.bi, %_ZSt3getIN9grpc_core14WaitForCqEndOp7StartedEJNS1_10NotStartedES2_NS1_7InvalidEEERT_RSt7variantIJDpT0_EE.exit ]
  ret i8 %.sroa.023.1
}

declare void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57     ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable
}

declare void @_Z14grpc_cq_end_opP21grpc_completion_queuePvN4absl12lts_202505126StatusEPFvS1_P18grpc_cq_completionES1_S6_b(ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14WaitForCqEndOp10NotStartedD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core14WaitForCqEndOp11StateStringB5cxx11ERKSt7variantIJNS0_10NotStartedENS0_7StartedENS0_7InvalidEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca [4 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !noalias !154 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.b, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !154 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !59, !noalias !154
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.99, ptr %i.d, align 8, !tbaa !65, !noalias !154
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27, !noalias !154
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.d
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %1, align 8, !tbaa !54, !range !55, !noalias !156, !noundef !56
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, ptr @.str.83, ptr @.str.84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !156
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57, !noalias !158 ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.e

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !67, !alias.scope !157, !noalias !156
  store i16 19279, ptr %i.l, align 8, !alias.scope !157, !noalias !156
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.m, align 8, !tbaa !69, !alias.scope !157, !noalias !156
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !34, !alias.scope !157, !noalias !156
  br label %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN4absl12lts_202505126Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.j, i32 noundef 1), !noalias !156
  br label %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit.i.i.i.i.i.i.i

_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !159
  store ptr %i.g, ptr %3, align 8, !tbaa !34, !noalias !159
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !161, !noalias !159
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !43, !noalias !159
  store ptr %i.r, ptr %i.q, align 8, !tbaa !34, !noalias !159
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINS1_7VoidPtrEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.s, align 8, !tbaa !161, !noalias !159
end_hunk_0
