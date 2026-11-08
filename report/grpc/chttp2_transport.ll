Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/chttp2_transport?download=true
inline.NumInlined: 14543
inline.NumDeleted: 7137
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE4MoveILb1EJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37EEEEvSt16integer_sequenceImJXspT0_EEEOS27_:bb.a
  %i.ol = load i16, ptr %i.ok, align 4, !tbaa !667
  %i.om = and i16 %i.ol, -2                       ; 2 uses
  store i16 %i.om, ptr %i.ok, align 4, !tbaa !667
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe215

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe215: ; preds = %bb.ev, %bb.ew
  %i.on = phi i16 [ %storemerge.i.i.i212, %bb.ev ], [ %i.om, %bb.ew ] ; 2 uses
  %i.oo = load i16, ptr %i.od, align 4, !tbaa !667
  %i.op = and i16 %i.oo, 2
  %.not.i.i216 = icmp eq i16 %i.op, 0
  br i1 %.not.i.i216, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe215
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 635
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 4
  %storemerge.i.i.i217 = or i16 %i.on, 2          ; 2 uses
  store i16 %storemerge.i.i.i217, ptr %i.or, align 4, !tbaa !667
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 635
  %storemerge.i.i218 = load i8, ptr %i.oq, align 1, !tbaa !93
  store i8 %storemerge.i.i218, ptr %i.os, align 1, !tbaa !93
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe220

bb.ey:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe215
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ou = and i16 %i.on, -3                       ; 2 uses
  store i16 %i.ou, ptr %i.ot, align 4, !tbaa !667
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe220

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe220: ; preds = %bb.ex, %bb.ey
  %i.ov = phi i16 [ %storemerge.i.i.i217, %bb.ex ], [ %i.ou, %bb.ey ] ; 2 uses
  %i.ow = load i16, ptr %i.od, align 4, !tbaa !667
  %i.ox = and i16 %i.ow, 4
  %.not.i.i221 = icmp eq i16 %i.ox, 0
  br i1 %.not.i.i221, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe220
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %storemerge.i.i.i222 = or i16 %i.ov, 4          ; 2 uses
  store i16 %storemerge.i.i.i222, ptr %i.oz, align 4, !tbaa !667
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 636
  %storemerge.i.i223 = load i16, ptr %i.oy, align 4, !tbaa !93
  store i16 %storemerge.i.i223, ptr %i.pa, align 4, !tbaa !93
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe225

bb.fa:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe220
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.pc = and i16 %i.ov, -5                       ; 2 uses
  store i16 %i.pc, ptr %i.pb, align 4, !tbaa !667
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe225

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe225: ; preds = %bb.ez, %bb.fa
  %i.pd = phi i16 [ %storemerge.i.i.i222, %bb.ez ], [ %i.pc, %bb.fa ] ; 2 uses
  %i.pe = load i16, ptr %i.od, align 4, !tbaa !667
  %i.pf = and i16 %i.pe, 8
  %.not.i.i226 = icmp eq i16 %i.pf, 0
  br i1 %.not.i.i226, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe225
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 638
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 4
  %storemerge.i.i.i227 = or i16 %i.pd, 8          ; 2 uses
  store i16 %storemerge.i.i.i227, ptr %i.ph, align 4, !tbaa !667
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 638
  %storemerge.i.i228 = load i8, ptr %i.pg, align 2, !tbaa !93
  store i8 %storemerge.i.i228, ptr %i.pi, align 2, !tbaa !93
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe230

bb.fc:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe225
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.pk = and i16 %i.pd, -9                       ; 2 uses
  store i16 %i.pk, ptr %i.pj, align 4, !tbaa !667
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe230

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe230: ; preds = %bb.fb, %bb.fc
  %i.pl = phi i16 [ %storemerge.i.i.i227, %bb.fb ], [ %i.pk, %bb.fc ] ; 2 uses
  %i.pm = load i16, ptr %i.od, align 4, !tbaa !667
  %i.pn = and i16 %i.pm, 16
  %.not.i.i231 = icmp eq i16 %i.pn, 0
  br i1 %.not.i.i231, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe230
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 639
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %storemerge.i.i.i232 = or i16 %i.pl, 16         ; 2 uses
  store i16 %storemerge.i.i.i232, ptr %i.pp, align 4, !tbaa !667
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 639
  %storemerge.i.i233 = load i8, ptr %i.po, align 1, !tbaa !93
  store i8 %storemerge.i.i233, ptr %i.pq, align 1, !tbaa !93
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe235

bb.fe:                                            ; preds = %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe230
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ps = and i16 %i.pl, -17                      ; 2 uses
  store i16 %i.ps, ptr %i.pr, align 4, !tbaa !667
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe235

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMe235: ; preds = %bb.fd, %bb.fe
  %i.pt = phi i16 [ %storemerge.i.i.i232, %bb.fd ], [ %i.ps, %bb.fe ]
  %i.pu = load i16, ptr %i.od, align 4, !tbaa !667
  %i.pv = and i16 %i.pu, 32
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.px = and i16 %i.pt, -33
  %.sink.i = or disjoint i16 %i.px, %i.pv
  store i16 %.sink.i, ptr %i.pw, align 4, !tbaa !667
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE6MoveIfILb1ELm12EEEvOS27_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !667
  %i.b = and i16 %i.a, 4096
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.e = load i16, ptr %0, align 8, !tbaa !667    ; 2 uses
  %storemerge.i.i = or i16 %i.e, 4096
  store i16 %storemerge.i.i, ptr %0, align 8, !tbaa !667
  %i.f = and i16 %i.e, 4096
  %.not.i4 = icmp eq i16 %i.f, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN9grpc_core15metadata_detail5ValueINS_17LbCostBinMetadataEvEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #44 ; 0 uses
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !848
  %i.h = load i64, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.k, ptr %i.n, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.m, ptr %i.o, align 8, !tbaa !138
  %i.p = load i64, ptr %i.c, align 8, !tbaa !129
  %i.q = or i64 %i.p, 1
  store i64 %i.q, ptr %i.d, align 8, !tbaa !129
  store i64 0, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = lshr exact i64 %i.h, 1
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 328
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.010.0.i.i.i = phi ptr [ %i.ak, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.06.i.i.i.i = phi i64 [ %i.al, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %.06.i.i.i.i ; 4 uses
  %i.v = load double, ptr %.sroa.010.0.i.i.i, align 8, !tbaa !850
  store double %i.v, ptr %i.u, align 8, !tbaa !850
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !135
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 24 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !139 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %i.w, align 8, !tbaa !137
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !138
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !138
  br label %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !139
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !139
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !137
  store i64 0, ptr %i.ah, align 8, !tbaa !139
  store i8 0, ptr %i.aa, align 8, !tbaa !138
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 40
  %i.al = add nuw i64 %.06.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.al, %i.s
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

.loopexit.loopexit.i.i.i:                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE13ConstructNextERS6_S8_.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !tbaa !129
  %i.am = and i64 %.pre.i.i.i, -2
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.f
  %i.an = phi i64 [ %i.am, %.loopexit.loopexit.i.i.i ], [ 0, %bb.f ]
  store i64 %i.an, ptr %i.d, align 8, !tbaa !129
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.h:                                             ; preds = %bb.a
  %i.ao = load i16, ptr %0, align 8, !tbaa !667   ; 2 uses
  %i.ap = and i16 %i.ao, -4097
  store i16 %i.ap, ptr %0, align 8, !tbaa !667
  %i.aq = and i16 %i.ao, 4096
  %.not.i5 = icmp eq i16 %i.aq, 0
  br i1 %.not.i5, label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ar)
          to label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #42
  unreachable

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad: ; preds = %bb.j, %bb.i, %bb.h, %.loopexit.i.i.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE6MoveIfILb1ELm19EEEvOS27_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !667
  %i.c = and i16 %i.b, 8
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 5 uses
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !667  ; 2 uses
  %storemerge.i.i = or i16 %i.g, 8
  store i16 %storemerge.i.i, ptr %i.f, align 2, !tbaa !667
  %i.h = and i16 %i.g, 8
  %.not.i4 = icmp eq i16 %i.h, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN9grpc_core15metadata_detail5ValueINS_17GrpcStatusContextEvEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d) #44 ; 0 uses
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !848
  %i.j = load i64, ptr %i.d, align 8, !tbaa !129  ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.o = load i64, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.m, ptr %i.p, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 %i.o, ptr %i.q, align 8, !tbaa !138
  %i.r = load i64, ptr %i.d, align 8, !tbaa !129
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !129
  store i64 0, ptr %i.d, align 8, !tbaa !129
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = lshr exact i64 %i.j, 1
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.010.0.i.i.i = phi ptr [ %i.aj, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.06.i.i.i.i = phi i64 [ %i.ak, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.06.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !135
  %i.y = load ptr, ptr %.sroa.010.0.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !139 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.y, ptr %i.w, align 8, !tbaa !137
  %i.af = load i64, ptr %i.z, align 8, !tbaa !138
  store i64 %i.af, ptr %i.x, align 8, !tbaa !138
  br label %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !139
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !139
  store ptr %i.z, ptr %.sroa.010.0.i.i.i, align 8, !tbaa !137
  store i64 0, ptr %i.ag, align 8, !tbaa !139
  store i8 0, ptr %i.z, align 8, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 32
  %i.ak = add nuw i64 %.06.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ak, %i.u
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

.loopexit.loopexit.i.i.i:                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt13move_iteratorIPS8_EE13ConstructNextERS9_SB_.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !tbaa !129
  %i.al = and i64 %.pre.i.i.i, -2
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.f
  %i.am = phi i64 [ %i.al, %.loopexit.loopexit.i.i.i ], [ 0, %bb.f ]
  store i64 %i.am, ptr %i.e, align 8, !tbaa !129
  br label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !667 ; 2 uses
  %i.ap = and i16 %i.ao, -9
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !667
  %i.aq = and i16 %i.ao, 8
  %.not.i5 = icmp eq i16 %i.aq, 0
  br i1 %.not.i5, label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #42
  unreachable

_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetad: ; preds = %bb.j, %bb.i, %bb.h, %.loopexit.i.i.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZN9grpc_core15metadata_detail5ValueINS_17LbCostBinMetadataEvEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EEaSEOS6_.exit, label %bb.b, !prof !151

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !129    ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !129    ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.d, ptr %i.f, ptr %i.e
  %i.h = lshr i64 %i.c, 1                         ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not5.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.i, %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i ], [ %i.h, %bb.c ]
  %i.i = add nsw i64 %.06.i.i.i.i, -1             ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !138
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #43
  br label %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i

_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit.i.i.i: ; preds = %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %0, align 8, !tbaa !129
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.i.i.i

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit.i.i.i, %bb.c
  %i.q = phi i64 [ %.pre.i.i.i, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit.i.i.i ], [ %i.c, %bb.c ]
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EE23DestroyExistingAndAdoptEOS6_.exit.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.i.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !138
  %i.v = mul i64 %i.u, 40
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #43
  br label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EE23DestroyExistingAndAdoptEOS6_.exit.i.i

_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EE23DestroyExistingAndAdoptEOS6_.exit.i.i: ; preds = %bb.d, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.i.i.i
  %i.w = load i64, ptr %1, align 8, !tbaa !129
  store i64 %i.w, ptr %0, align 8, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !tbaa.struct !2341
  store i64 0, ptr %1, align 8, !tbaa !129
  br label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EEaSEOS6_.exit

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = lshr exact i64 %i.a, 1
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE6AssignINS1_20IteratorValueAdapterIS6_St13move_iteratorIPS5_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.y, i64 noundef %i.z)
          to label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EEaSEOS6_.exit unwind label %bb.f

_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EEaSEOS6_.exit: ; preds = %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS4_EE23DestroyExistingAndAdoptEOS6_.exit.i.i, %bb.a, %bb.e
  ret ptr %0

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE6AssignINS1_20IteratorValueAdapterIS6_St13move_iteratorIPS5_EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !129, !noalias !2345 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2345
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !2345
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 4 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 1      ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 6 uses
  %i.g = icmp ugt i64 %2, %.sink.i
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %2) ; 4 uses
  %i.i = icmp ugt i64 %.sroa.speculated.i, 230584300921369395
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE8AllocateERS6_m.exit.i, !prof !151

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated.i, 461168601842738790
  br i1 %i.j, label %.noexc, label %.noexc20

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #48
  unreachable

.noexc20:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #48
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE8AllocateERS6_m.exit.i: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.sroa.speculated.i, 40
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #47 ; 2 uses
  br label %.lr.ph.preheader.i23

bb.d:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %2, %.sink1.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i, i64 %.sink1.i
  %i.o = sub nuw i64 %2, %.sink1.i
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i, i64 %2
  %i.q = sub nuw nsw i64 %.sink1.i, %2
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit: ; preds = %bb.e, %bb.f
  %.sroa.045.0 = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.747.0 = phi i64 [ 0, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.046.0 = phi ptr [ null, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.749.0 = phi i64 [ %2, %bb.f ], [ %.sink1.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.749.0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14AssignElementsISaIN9grpc_core17LbCostBinMetadata9ValueTypeEENS1_20IteratorValueAdapterIS6_St13move_iteratorIPS5_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSE_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE10AssignNextES8_.exit.i
  %.sroa.065.0 = phi ptr [ %i.au, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE10AssignNextES8_.exit.i ], [ %1, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit ] ; 9 uses
  %.05.i = phi i64 [ %i.av, %_ZN4absl12lts_2025051223inlined_vector_internal20IteratorValueAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEESt13move_iteratorIPS5_EE10AssignNextES8_.exit.i ], [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core17LbCostBinMetadata9ValueTypeEEE8AllocateEm.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i, i64 %.05.i ; 7 uses
  %i.s = load double, ptr %.sroa.065.0, align 8, !tbaa !850
  store double %i.s, ptr %i.r, align 8, !tbaa !850
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.065.0, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !137  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !137  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.065.0, i64 24 ; 6 uses
end_hunk_0
