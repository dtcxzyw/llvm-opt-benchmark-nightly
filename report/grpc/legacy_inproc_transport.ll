Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/legacy_inproc_transport?download=true
inline.NumInlined: 3304
inline.NumDeleted: 1614
begin_hunk_0_@_ZN12_GLOBAL__N_116fill_in_metadataEPNS_13inproc_streamEPK19grpc_metadata_batchPS2_Pb:bb.a
  %i.qu = atomicrmw sub ptr %.pr.i.pr.i.i.i280.i.i.i, i64 1 acq_rel, align 8
  %i.qv = icmp eq i64 %i.qu, 1
  br i1 %i.qv, label %bb.gn, label %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.qw = getelementptr inbounds nuw i8, ptr %.pr.i.pr.i.i.i280.i.i.i, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !207
  invoke void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.pr.i.i.i280.i.i.i)
          to label %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i unwind label %bb.go, !inline_history !1

bb.go:                                            ; preds = %bb.gn
  %i.qy = landingpad { ptr, i32 }
          catch ptr null
  %i.qz = extractvalue { ptr, i32 } %i.qy, 0
  call void @__clang_call_terminate(ptr %i.qz) #35
  unreachable

_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i: ; preds = %bb.gn, %bb.gm, %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3SetIST_JNS, %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3SetIST_JN3, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8

_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8: ; preds = %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i, %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeM269
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !295 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !295 ; 2 uses
  %.not4.i = icmp eq ptr %i.rb, %i.rd
  br i1 %.not4.i, label %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE6EncodeIN1, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8
  %i.re = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.rb, %.lr.ph.i ], [ %i.sm, %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i ] ; 6 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.rh = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !203
  %.not.i.i.i.i10 = icmp eq ptr %i.rh, null       ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 9
  %i.rl = select i1 %.not.i.i.i.i10, ptr %i.rk, ptr %i.rj ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.rn = load i64, ptr %i.rm, align 8            ; 2 uses
  %i.ro = and i64 %i.rn, 255
  %i.rp = select i1 %.not.i.i.i.i10, i64 %i.ro, i64 %i.rn ; 2 uses
  %i.rq = load ptr, ptr %i.rg, align 8, !tbaa !203, !noalias !492 ; 3 uses
  %magicptr.i.i.i = ptrtoint ptr %i.rq to i64
  switch i64 %magicptr.i.i.i, label %bb.gs [
    i64 0, label %bb.gq
    i64 1, label %bb.gr
  ]

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.rg, i64 32, i1 false), !tbaa.struct !264
  br label %bb.gu

bb.gr:                                            ; preds = %bb.gp
  call void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %6, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.rg)
  br label %bb.gu

bb.gs:                                            ; preds = %bb.gp
  %i.rr = icmp ugt ptr %i.rq, inttoptr (i64 1 to ptr)
  br i1 %i.rr, label %bb.gt, label %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i

bb.gt:                                            ; preds = %bb.gs
  %i.rs = atomicrmw add ptr %i.rq, i64 1 monotonic, align 8, !noalias !493 ; 0 uses
  br label %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i

_ZNK9grpc_core5Slice3RefEv.exit.i.i.i:            ; preds = %bb.gt, %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.rg, i64 32, i1 false), !tbaa.struct !264
  br label %bb.gu

bb.gu:                                            ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i, %bb.gr, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.rt = load ptr, ptr %6, align 8, !tbaa !203, !noalias !494
  %magicptr.i.i.i.i = ptrtoint ptr %i.rt to i64
  switch i64 %magicptr.i.i.i.i, label %bb.gx [
    i64 0, label %bb.gv
    i64 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !264
  br label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i

bb.gw:                                            ; preds = %bb.gu
  invoke void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %5, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %6)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i unwind label %bb.hg

bb.gx:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !noalias !495
  br label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i

_ZN9grpc_core5SliceD2Ev.exit.i.i.i:               ; preds = %bb.gx, %bb.gw, %bb.gv
  store ptr %2, ptr %4, align 8, !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !496
  store ptr %7, ptr %i.rf, align 8, !tbaa !82
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES9_EUlSt17basic_string_viewIcSt11char_traitsIcEES9_E_vJSD_S9_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !19
  invoke void @_ZN9grpc_core6IfListISt17basic_string_viewIcSt11char_traitsIcEEPNS_15metadata_detail12AppendHelperI19grpc_metadata_batchEEZNS5_19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupIS8_EEDaS4_PT_EUlS9_E_NS5_32EncodableNameLookupKeyComparisonISB_EENS18_ISC_EENS18_ISD_EENS18_ISE_EENS18_ISF_EENS18_ISG_EENS18_ISH_EENS18_ISI_EENS18_ISJ_EENS18_ISK_EENS18_ISL_EENS18_ISM_EENS18_ISN_EENS18_ISO_EENS18_ISP_EENS18_ISQ_EENS18_ISR_EENS18_ISS_EENS18_IST_EENS18_ISU_EENS18_ISV_EENS18_ISW_EENS18_ISX_EENS18_ISY_EENS18_ISZ_EENS18_IS10_EENS18_IS11_EENS18_IS12_EENS5_26EncodableNameLookupOnFoundISB_S8_EENS21_ISC_S8_EENS21_ISD_S8_EENS21_ISE_S8_EENS21_ISF_S8_EENS21_ISG_S8_EENS21_ISH_S8_EENS21_ISI_S8_EENS21_ISJ_S8_EENS21_ISK_S8_EENS21_ISL_S8_EENS21_ISM_S8_EENS21_ISN_S8_EENS21_ISO_S8_EENS21_ISP_S8_EENS21_ISQ_S8_EENS21_ISR_S8_EENS21_ISS_S8_EENS21_IST_S8_EENS21_ISU_S8_EENS21_ISV_S8_EENS21_ISW_S8_EENS21_ISX_S8_EENS21_ISY_S8_EENS21_ISZ_S8_EENS21_IS10_S8_EENS21_IS11_S8_EENS21_IS12_S8_EEEEDaS15_T0_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_T15_T16_T17_T18_T19_T20_T21_T22_T23_T24_T25_T26_T27_T28_T29_T30_T31_T32_T33_T34_T35_T36_T37_T38_T39_T40_T41_T42_T43_T44_T45_T46_T47_T48_T49_T50_T51_T52_T53_T54_T55_T56_T57_(i64 %i.rp, ptr %i.rl, ptr noundef nonnull %4, i64 %i.rp, ptr %i.rl)
          to label %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i unwind label %bb.hb

_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i: ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i
  %i.ru = load ptr, ptr %i.re, align 8, !tbaa !203 ; 4 uses
  %i.rv = icmp ugt ptr %i.ru, inttoptr (i64 1 to ptr)
  br i1 %i.rv, label %bb.gy, label %bb.hc

bb.gy:                                            ; preds = %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i
  %i.rw = atomicrmw sub ptr %i.ru, i64 1 acq_rel, align 8
  %i.rx = icmp eq i64 %i.rw, 1
  br i1 %i.rx, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !207
  invoke void %i.rz(ptr noundef nonnull align 8 dereferenceable(16) %i.ru)
          to label %bb.hc unwind label %bb.ha, !inline_history !1

bb.ha:                                            ; preds = %bb.gz
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #35
  unreachable

bb.hb:                                            ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core15metadata_detail12AppendHelperI19grpc_metadata_batchED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body.i.i

bb.hc:                                            ; preds = %bb.gz, %bb.gy, %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.sd = load ptr, ptr %6, align 8, !tbaa !203   ; 4 uses
  %i.se = icmp ugt ptr %i.sd, inttoptr (i64 1 to ptr)
  br i1 %i.se, label %bb.hd, label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i

bb.hd:                                            ; preds = %bb.hc
  %i.sf = atomicrmw sub ptr %i.sd, i64 1 acq_rel, align 8
  %i.sg = icmp eq i64 %i.sf, 1
  br i1 %i.sg, label %bb.he, label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i

bb.he:                                            ; preds = %bb.hd
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !207
  invoke void %i.si(ptr noundef nonnull align 8 dereferenceable(16) %i.sd)
          to label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i unwind label %bb.hf, !inline_history !1

bb.hf:                                            ; preds = %bb.he
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #35
  unreachable

bb.hg:                                            ; preds = %bb.gw
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.hg, %bb.hb
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.sl, %bb.hg ], [ %i.sc, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #31
  br label %common.resume.i

_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i: ; preds = %bb.he, %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.sm, %i.rd
  br i1 %.not.i, label %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE6EncodeIN1, label %bb.gp

_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE6EncodeIN1: ; preds = %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i, %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8
  ret void
}

declare void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef align 8) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128complete_if_batch_end_lockedEPNS_13inproc_streamEN4absl12lts_202505126StatusEP30grpc_transport_stream_op_batchPKc(ptr noundef %0, ptr noundef nonnull align 8 %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !211
  store ptr %3, ptr %i.b, align 8, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %8 = load ptr, ptr %i.c, align 8, !tbaa !247
  %9 = icmp eq ptr %2, %8
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  %13 = icmp eq ptr %2, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %16 = load ptr, ptr %15, align 8, !tbaa !249
  %17 = icmp eq ptr %2, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %20 = load ptr, ptr %19, align 8, !tbaa !250
  %21 = icmp eq ptr %2, %20
  %22 = zext i1 %21 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !251
  %i.f = icmp eq ptr %2, %i.e
  %i.g = zext i1 %i.f to i32
  %23 = add nuw nsw i32 %14, %10
  %24 = add nuw nsw i32 %23, %18
  %25 = add nuw nsw i32 %24, %22
  %i.h = add nuw nsw i32 %25, %i.g
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core12inproc_traceE, i64 8) monotonic, align 8, !range !20, !noundef !21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %.critedge27, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 447) #32
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.n       ; 4 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.m = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN12_GLOBAL__N_113inproc_streamEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr nonnull %0)
          to label %bb.e unwind label %bb.n       ; 0 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28: ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP30grpc_transport_stream_op_batchEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29: ; preds = %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_closureEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN9grpc_core14StatusToStringB5cxx11ERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.critedge unwind label %bb.p

.critedge:                                        ; preds = %bb.i
  %i.r = load ptr, ptr %5, align 8, !tbaa !83     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.u = load i64, ptr %i.s, align 8, !tbaa !82
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !211
  br label %.critedge27

.critedge27:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = phi ptr [ %2, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !239
  %i.y = load i64, ptr %1, align 8, !tbaa !73     ; 3 uses
  store i64 %i.y, ptr %7, align 8, !tbaa !73
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %.critedge27
  %i.aa = inttoptr i64 %i.y to ptr
  %i.ab = atomicrmw add ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %.critedge27, %bb.j
  invoke void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.x, ptr noundef nonnull align 8 %7)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.ac = load i64, ptr %7, align 8, !tbaa !73    ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = inttoptr i64 %i.ac to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #35
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.s

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.p
  %i.an = load i64, ptr %i.al, align 8, !tbaa !82
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.aj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ah, %bb.n ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.r:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.t

bb.s:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.a
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9grpc_core5SliceES2_ES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203  ; 4 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 1 to ptr)
  br i1 %i.g, label %bb.b, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = atomicrmw sub ptr %i.f, i64 1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i:         ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113inproc_stream3refEPKc:bb.a
_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.critedge11

.critedge11:                                      ; preds = %bb.a, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116inproc_transport3refEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 9 uses
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core12inproc_traceE, i64 8) monotonic, align 8, !range !20, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.critedge11, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 150) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 14, ptr nonnull @.str.153)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.c = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN12_GLOBAL__N_116inproc_transportEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.critedge11

.critedge11:                                      ; preds = %bb.a, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @gpr_ref(ptr noundef nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn
}

declare void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPFvPvPN9grpc_core9TransportEPKvEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  %i.e = icmp ne ptr %i.d, null
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext %i.e)
          to label %_ZNSolsEb.exit unwind label %bb.c ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.g
}

declare void @gpr_ref(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN9grpc_core10NewClosureIZN12_GLOBAL__N_116inproc_transport15PerformStreamOpEP11grpc_streamP30grpc_transport_stream_op_batchE3$_0EEP12grpc_closureT_EN7Closure3RunEPvN4absl12lts_202505126StatusE"(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) %1) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare extern_weak void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

declare extern_weak void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

attributes #0 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind }
attributes #32 = { cold }
attributes #33 = { cold nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !208}
!3 = distinct !{!3, !208}
!4 = distinct !{null}
!5 = distinct !{!5, !208}
!6 = distinct !{null}
!7 = distinct !{!7, !208}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS11grpc_server", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"vtable pointer", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTS12grpc_closure", !16, i64 0}
!26 = !{!"_ZTS17grpc_closure_list", !25, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTSN9grpc_core8CombinerE", !16, i64 0}
!28 = !{!"_ZTSN9grpc_core7ExecCtx12CombinerDataE", !27, i64 0, !27, i64 8}
!29 = !{!"long", !12, i64 0}
!30 = !{!"bool", !12, i64 0}
!31 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE", !12, i64 0, !30, i64 32}
!32 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb1ELb0ELb0EE", !31, i64 0}
!33 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb0ELb0ELb0EE", !32, i64 0}
!34 = !{!"_ZTSSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EE", !33, i64 0}
!35 = !{!"_ZTSSt8optionalIN9grpc_core15ScopedTimeCacheEE", !34, i64 0}
!36 = !{!"p1 _ZTSN9grpc_core7ExecCtxE", !16, i64 0}
!37 = !{!"_ZTSN9grpc_core7ExecCtxE", !26, i64 8, !28, i64 24, !29, i64 40, !35, i64 48, !36, i64 88}
!38 = !{!37, !29, i64 40}
!39 = !{!31, !30, i64 32}
!40 = !{!36, !36, i64 0}
!41 = !{!37, !36, i64 88}
!42 = !{!"_ZTSN9grpc_core9Timestamp6SourceE"}
!43 = !{!"p1 _ZTSN9grpc_core9Timestamp6SourceE", !16, i64 0}
!44 = !{!"_ZTSN9grpc_core9Timestamp12ScopedSourceE", !42, i64 0, !43, i64 8}
!45 = !{!44, !43, i64 8}
!46 = !{!43, !43, i64 0}
!47 = !{!"_ZTSSt13__atomic_baseIlE", !29, i64 0}
!48 = !{!"_ZTSN9grpc_core10OrphanableE"}
!49 = !{!"_ZTSSt6atomicIlE", !47, i64 0}
!50 = !{!"_ZTSN9grpc_core8RefCountE", !49, i64 0}
!51 = !{!"_ZTSN9grpc_core20InternallyRefCountedINS_9TransportENS_11UnrefDeleteEEE", !48, i64 0, !50, i64 8}
!52 = !{!"_ZTSN9grpc_core9TransportE", !51, i64 0}
!53 = !{!"_ZTSN9grpc_core20FilterStackTransportE", !52, i64 0}
!54 = !{!"p1 _ZTSN12_GLOBAL__N_19shared_muE", !16, i64 0}
!55 = !{!"_ZTS12gpr_refcount", !29, i64 0}
!56 = !{!"p1 omnipotent char", !16, i64 0}
!57 = !{!"_ZTS23grpc_connectivity_state", !12, i64 0}
!58 = !{!"_ZTSSt6atomicI23grpc_connectivity_stateE", !57, i64 0}
!59 = !{!"_ZTSN4absl12lts_202505126StatusE", !29, i64 0}
!60 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !29, i64 0}
!61 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !29, i64 0, !60, i64 8, !12, i64 16}
!62 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !61, i64 0}
!63 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPN9grpc_core33ConnectivityStateWatcherInterfaceEvE4HashENSA_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !62, i64 0}
!64 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPN9grpc_core33ConnectivityStateWatcherInterfaceEvE4HashENS8_2EqESaIcEEEE", !63, i64 0}
!65 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIN9grpc_core33ConnectivityStateWatcherInterfaceENS5_16OrphanableDeleteEEEENS1_6HashEqIPS6_vE4HashENSC_2EqESaIS8_EEE", !64, i64 0}
!66 = !{!"_ZTSN4absl12lts_2025051213flat_hash_setISt10unique_ptrIN9grpc_core33ConnectivityStateWatcherInterfaceENS3_16OrphanableDeleteEENS0_18container_internal6HashEqIPS4_vE4HashENSA_2EqESaIS6_EEE", !65, i64 0}
!67 = !{!"_ZTSN9grpc_core24ConnectivityStateTrackerE", !56, i64 0, !58, i64 8, !59, i64 16, !66, i64 24}
!68 = !{!"p1 _ZTSN12_GLOBAL__N_116inproc_transportE", !16, i64 0}
!69 = !{!"p1 _ZTSN12_GLOBAL__N_113inproc_streamE", !16, i64 0}
!70 = !{!"_ZTSN12_GLOBAL__N_116inproc_transportE", !53, i64 0, !54, i64 16, !55, i64 24, !30, i64 32, !67, i64 40, !16, i64 96, !16, i64 104, !16, i64 112, !30, i64 120, !68, i64 128, !69, i64 136}
!71 = !{!70, !54, i64 16}
!72 = !{!70, !30, i64 32}
!73 = !{!59, !29, i64 0}
!74 = !{!70, !16, i64 104}
!75 = !{!70, !30, i64 120}
!76 = !{!70, !69, i64 136}
!77 = !{!70, !68, i64 128}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!79 = !{!78, !56, i64 0}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !29, i64 8, !12, i64 16}
!81 = !{!80, !29, i64 8}
!82 = !{!12, !12, i64 0}
!83 = !{!80, !56, i64 0}
!84 = !{!"p1 _ZTSN9grpc_core7ChannelE", !16, i64 0}
!85 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_7ChannelEEE", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{ptr @_ZN9grpc_core7ExecCtxD2Ev}
!88 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !16, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"short", !12, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 _ZTS17grpc_transport_op", !16, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTS12grpc_closure", !12, i64 0, !16, i64 8, !16, i64 16, !12, i64 24}
!95 = !{!"_ZTS28grpc_handler_private_op_data", !16, i64 0, !94, i64 8}
!96 = !{!70, !16, i64 112}
!97 = !{!"p1 _ZTS11grpc_stream", !16, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"p1 _ZTS20grpc_stream_refcount", !16, i64 0}
!100 = !{!"p1 _ZTSN9grpc_core5ArenaE", !16, i64 0}
!101 = !{!"_ZTSN9grpc_core6BitSetILm38ELm16EEE", !12, i64 0}
!102 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm0ENS_15metadata_detail5ValueINS_16HttpPathMetadataEvEELb0EE4DataE", !12, i64 0}
!103 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm0ENS_15metadata_detail5ValueINS_16HttpPathMetadataEvEELb0EEE", !102, i64 0}
!104 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm1ENS_15metadata_detail5ValueINS_21HttpAuthorityMetadataEvEELb0EE4DataE", !12, i64 0}
!105 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm1ENS_15metadata_detail5ValueINS_21HttpAuthorityMetadataEvEELb0EEE", !104, i64 0}
!106 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm2ENS_15metadata_detail5ValueINS_19GrpcTimeoutMetadataEvEELb0EE4DataE", !12, i64 0}
!107 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm2ENS_15metadata_detail5ValueINS_19GrpcTimeoutMetadataEvEELb0EEE", !106, i64 0}
!108 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm3ENS_15metadata_detail5ValueINS_27GrpcRetryPushbackMsMetadataEvEELb0EE4DataE", !12, i64 0}
!109 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm3ENS_15metadata_detail5ValueINS_27GrpcRetryPushbackMsMetadataEvEELb0EEE", !108, i64 0}
!110 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm4ENS_15metadata_detail5ValueINS_17UserAgentMetadataEvEELb0EE4DataE", !12, i64 0}
!111 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm4ENS_15metadata_detail5ValueINS_17UserAgentMetadataEvEELb0EEE", !110, i64 0}
!112 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm5ENS_15metadata_detail5ValueINS_19GrpcMessageMetadataEvEELb0EE4DataE", !12, i64 0}
!113 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm5ENS_15metadata_detail5ValueINS_19GrpcMessageMetadataEvEELb0EEE", !112, i64 0}
!114 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm6ENS_15metadata_detail5ValueINS_12HostMetadataEvEELb0EE4DataE", !12, i64 0}
!115 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm6ENS_15metadata_detail5ValueINS_12HostMetadataEvEELb0EEE", !114, i64 0}
!116 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm7ENS_15metadata_detail5ValueINS_30EndpointLoadMetricsBinMetadataEvEELb0EE4DataE", !12, i64 0}
!117 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm7ENS_15metadata_detail5ValueINS_30EndpointLoadMetricsBinMetadataEvEELb0EEE", !116, i64 0}
!118 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm8ENS_15metadata_detail5ValueINS_26GrpcServerStatsBinMetadataEvEELb0EE4DataE", !12, i64 0}
!119 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm8ENS_15metadata_detail5ValueINS_26GrpcServerStatsBinMetadataEvEELb0EEE", !118, i64 0}
!120 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm9ENS_15metadata_detail5ValueINS_20GrpcTraceBinMetadataEvEELb0EE4DataE", !12, i64 0}
!121 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm9ENS_15metadata_detail5ValueINS_20GrpcTraceBinMetadataEvEELb0EEE", !120, i64 0}
!122 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm10ENS_15metadata_detail5ValueINS_19GrpcTagsBinMetadataEvEELb0EE4DataE", !12, i64 0}
!123 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm10ENS_15metadata_detail5ValueINS_19GrpcTagsBinMetadataEvEELb0EEE", !122, i64 0}
!124 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm11ENS_15metadata_detail5ValueINS_25GrpcLbClientStatsMetadataEvEELb0EE4DataE", !12, i64 0}
!125 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm11ENS_15metadata_detail5ValueINS_25GrpcLbClientStatsMetadataEvEELb0EEE", !124, i64 0}
!126 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm12ENS_15metadata_detail5ValueINS_17LbCostBinMetadataEvEELb0EE4DataE", !12, i64 0}
!127 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm12ENS_15metadata_detail5ValueINS_17LbCostBinMetadataEvEELb0EEE", !126, i64 0}
!128 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm13ENS_15metadata_detail5ValueINS_15LbTokenMetadataEvEELb0EE4DataE", !12, i64 0}
!129 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm13ENS_15metadata_detail5ValueINS_15LbTokenMetadataEvEELb0EEE", !128, i64 0}
!130 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm14ENS_15metadata_detail5ValueINS_18XEnvoyPeerMetadataEvEELb0EE4DataE", !12, i64 0}
!131 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm14ENS_15metadata_detail5ValueINS_18XEnvoyPeerMetadataEvEELb0EEE", !130, i64 0}
!132 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm15ENS_15metadata_detail5ValueINS_21XForwardedForMetadataEvEELb0EE4DataE", !12, i64 0}
!133 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm15ENS_15metadata_detail5ValueINS_21XForwardedForMetadataEvEELb0EEE", !132, i64 0}
!134 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm16ENS_15metadata_detail5ValueINS_22XForwardedHostMetadataEvEELb0EE4DataE", !12, i64 0}
!135 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm16ENS_15metadata_detail5ValueINS_22XForwardedHostMetadataEvEELb0EEE", !134, i64 0}
!136 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm17ENS_15metadata_detail5ValueINS_22W3CTraceParentMetadataEvEELb0EE4DataE", !12, i64 0}
!137 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm17ENS_15metadata_detail5ValueINS_22W3CTraceParentMetadataEvEELb0EEE", !136, i64 0}
!138 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm18ENS_15metadata_detail5ValueINS_10PeerStringEvEELb0EE4DataE", !12, i64 0}
!139 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm18ENS_15metadata_detail5ValueINS_10PeerStringEvEELb0EEE", !138, i64 0}
!140 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm19ENS_15metadata_detail5ValueINS_17GrpcStatusContextEvEELb0EE4DataE", !12, i64 0}
!141 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm19ENS_15metadata_detail5ValueINS_17GrpcStatusContextEvEELb0EEE", !140, i64 0}
!142 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm20ENS_15metadata_detail5ValueINS_20GrpcRegisteredMethodEvEELb0EE4DataE", !12, i64 0}
!143 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm20ENS_15metadata_detail5ValueINS_20GrpcRegisteredMethodEvEELb0EEE", !142, i64 0}
!144 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm21ENS_15metadata_detail5ValueINS_18HttpStatusMetadataEvEELb0EE4DataE", !12, i64 0}
!145 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm21ENS_15metadata_detail5ValueINS_18HttpStatusMetadataEvEELb0EEE", !144, i64 0}
!146 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm22ENS_15metadata_detail5ValueINS_20GrpcEncodingMetadataEvEELb0EE4DataE", !12, i64 0}
!147 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm22ENS_15metadata_detail5ValueINS_20GrpcEncodingMetadataEvEELb0EEE", !146, i64 0}
!148 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm23ENS_15metadata_detail5ValueINS_27GrpcInternalEncodingRequestEvEELb0EE4DataE", !12, i64 0}
!149 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm23ENS_15metadata_detail5ValueINS_27GrpcInternalEncodingRequestEvEELb0EEE", !148, i64 0}
!150 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm24ENS_15metadata_detail5ValueINS_18GrpcStatusMetadataEvEELb0EE4DataE", !12, i64 0}
!151 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm24ENS_15metadata_detail5ValueINS_18GrpcStatusMetadataEvEELb0EEE", !150, i64 0}
!152 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm25ENS_15metadata_detail5ValueINS_31GrpcPreviousRpcAttemptsMetadataEvEELb0EE4DataE", !12, i64 0}
!153 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm25ENS_15metadata_detail5ValueINS_31GrpcPreviousRpcAttemptsMetadataEvEELb0EEE", !152, i64 0}
!154 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm26ENS_15metadata_detail5ValueINS_18HttpMethodMetadataEvEELb0EE4DataE", !12, i64 0}
!155 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm26ENS_15metadata_detail5ValueINS_18HttpMethodMetadataEvEELb0EEE", !154, i64 0}
end_hunk_1
