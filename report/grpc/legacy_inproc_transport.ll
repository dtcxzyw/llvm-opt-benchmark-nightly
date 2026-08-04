inline.NumInlined: 3304
inline.NumDeleted: 1614
begin_hunk_0_@_ZN12_GLOBAL__N_116fill_in_metadataEPNS_13inproc_streamEPK19grpc_metadata_batchPS2_Pb:bb.a
  %i.qu = atomicrmw sub ptr %.pr.i.i.i.i293.i.i.i, i64 1 acq_rel, align 8
  %i.qv = icmp eq i64 %i.qu, 1
  br i1 %i.qv, label %bb.gn, label %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.qw = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i293.i.i.i, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !236
  invoke void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i.i293.i.i.i)
          to label %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i unwind label %bb.go, !inline_history !240

bb.go:                                            ; preds = %bb.gn
  %i.qy = landingpad { ptr, i32 }
          catch ptr null
  %i.qz = extractvalue { ptr, i32 } %i.qy, 0
  call void @__clang_call_terminate(ptr %i.qz) #35
  unreachable

_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i: ; preds = %bb.gn, %bb.gm, %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3SetIST_JNS, %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3SetIST_JN3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8

_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMet8: ; preds = %_ZN9grpc_core15metadata_detail13EncodeWrapperIN12_GLOBAL__N_112_GLOBAL__N_18CopySinkEEclINS_22W3CTraceParentMetadataEEEvRKNS0_5ValueIT_vEE.exit.i.i.i.i, %_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeM281
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !466 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !466 ; 2 uses
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
  %i.rh = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !233
  %.not.i.i.i.i10 = icmp eq ptr %i.rh, null       ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 9
  %i.rl = select i1 %.not.i.i.i.i10, ptr %i.rk, ptr %i.rj ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.rn = load i64, ptr %i.rm, align 8            ; 2 uses
  %i.ro = and i64 %i.rn, 255
  %i.rp = select i1 %.not.i.i.i.i10, i64 %i.ro, i64 %i.rn ; 2 uses
  %i.rq = load ptr, ptr %i.rg, align 8, !tbaa !233, !noalias !467 ; 3 uses
  %magicptr.i.i.i = ptrtoint ptr %i.rq to i64
  switch i64 %magicptr.i.i.i, label %bb.gs [
    i64 0, label %bb.gq
    i64 1, label %bb.gr
  ]

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.rg, i64 32, i1 false), !tbaa.struct !310
  br label %bb.gu

bb.gr:                                            ; preds = %bb.gp
  call void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %6, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.rg)
  br label %bb.gu

bb.gs:                                            ; preds = %bb.gp
  %i.rr = icmp ugt ptr %i.rq, inttoptr (i64 1 to ptr)
  br i1 %i.rr, label %bb.gt, label %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i

bb.gt:                                            ; preds = %bb.gs
  %i.rs = atomicrmw add ptr %i.rq, i64 1 monotonic, align 8, !noalias !470 ; 0 uses
  br label %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i

_ZNK9grpc_core5Slice3RefEv.exit.i.i.i:            ; preds = %bb.gt, %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.rg, i64 32, i1 false), !tbaa.struct !310
  br label %bb.gu

bb.gu:                                            ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i.i.i, %bb.gr, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.rt = load ptr, ptr %6, align 8, !tbaa !233, !noalias !473
  %magicptr.i.i.i.i = ptrtoint ptr %i.rt to i64
  switch i64 %magicptr.i.i.i.i, label %bb.gx [
    i64 0, label %bb.gv
    i64 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !310
  br label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i

bb.gw:                                            ; preds = %bb.gu
  invoke void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %5, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %6)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i unwind label %bb.hg

bb.gx:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !noalias !476
  br label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i

_ZN9grpc_core5SliceD2Ev.exit.i.i.i:               ; preds = %bb.gx, %bb.gw, %bb.gv
  store ptr %2, ptr %4, align 8, !tbaa !479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !484
  store ptr %7, ptr %i.rf, align 8, !tbaa !77
  store ptr @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES9_EUlSt17basic_string_viewIcSt11char_traitsIcEES9_E_vJSD_S9_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !11
  invoke void @_ZN9grpc_core6IfListISt17basic_string_viewIcSt11char_traitsIcEEPNS_15metadata_detail12AppendHelperI19grpc_metadata_batchEEZNS5_19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupIS8_EEDaS4_PT_EUlS9_E_NS5_32EncodableNameLookupKeyComparisonISB_EENS18_ISC_EENS18_ISD_EENS18_ISE_EENS18_ISF_EENS18_ISG_EENS18_ISH_EENS18_ISI_EENS18_ISJ_EENS18_ISK_EENS18_ISL_EENS18_ISM_EENS18_ISN_EENS18_ISO_EENS18_ISP_EENS18_ISQ_EENS18_ISR_EENS18_ISS_EENS18_IST_EENS18_ISU_EENS18_ISV_EENS18_ISW_EENS18_ISX_EENS18_ISY_EENS18_ISZ_EENS18_IS10_EENS18_IS11_EENS18_IS12_EENS5_26EncodableNameLookupOnFoundISB_S8_EENS21_ISC_S8_EENS21_ISD_S8_EENS21_ISE_S8_EENS21_ISF_S8_EENS21_ISG_S8_EENS21_ISH_S8_EENS21_ISI_S8_EENS21_ISJ_S8_EENS21_ISK_S8_EENS21_ISL_S8_EENS21_ISM_S8_EENS21_ISN_S8_EENS21_ISO_S8_EENS21_ISP_S8_EENS21_ISQ_S8_EENS21_ISR_S8_EENS21_ISS_S8_EENS21_IST_S8_EENS21_ISU_S8_EENS21_ISV_S8_EENS21_ISW_S8_EENS21_ISX_S8_EENS21_ISY_S8_EENS21_ISZ_S8_EENS21_IS10_S8_EENS21_IS11_S8_EENS21_IS12_S8_EEEEDaS15_T0_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_T15_T16_T17_T18_T19_T20_T21_T22_T23_T24_T25_T26_T27_T28_T29_T30_T31_T32_T33_T34_T35_T36_T37_T38_T39_T40_T41_T42_T43_T44_T45_T46_T47_T48_T49_T50_T51_T52_T53_T54_T55_T56_T57_(i64 %i.rp, ptr %i.rl, ptr noundef nonnull %4, i64 %i.rp, ptr %i.rl)
          to label %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i unwind label %bb.hb

_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i: ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i
  %i.ru = load ptr, ptr %i.re, align 8, !tbaa !233 ; 4 uses
  %i.rv = icmp ugt ptr %i.ru, inttoptr (i64 1 to ptr)
  br i1 %i.rv, label %bb.gy, label %bb.hc

bb.gy:                                            ; preds = %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_12AppendHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i.i
  %i.rw = atomicrmw sub ptr %i.ru, i64 1 acq_rel, align 8
  %i.rx = icmp eq i64 %i.rw, 1
  br i1 %i.rx, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !236
  invoke void %i.rz(ptr noundef nonnull align 8 dereferenceable(16) %i.ru)
          to label %bb.hc unwind label %bb.ha, !inline_history !240

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
  %i.sd = load ptr, ptr %6, align 8, !tbaa !233   ; 4 uses
  %i.se = icmp ugt ptr %i.sd, inttoptr (i64 1 to ptr)
  br i1 %i.se, label %bb.hd, label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i

bb.hd:                                            ; preds = %bb.hc
  %i.sf = atomicrmw sub ptr %i.sd, i64 1 acq_rel, align 8
  %i.sg = icmp eq i64 %i.sf, 1
  br i1 %i.sg, label %bb.he, label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i

bb.he:                                            ; preds = %bb.hd
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !236
  invoke void %i.si(ptr noundef nonnull align 8 dereferenceable(16) %i.sd)
          to label %_ZN12_GLOBAL__N_112_GLOBAL__N_18CopySink6EncodeERKN9grpc_core5SliceES5_.exit.i unwind label %bb.hf, !inline_history !240

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
  store ptr %2, ptr %i.a, align 8, !tbaa !246
  store ptr %3, ptr %i.b, align 8, !tbaa !278
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %8 = load ptr, ptr %i.c, align 8, !tbaa !287
  %9 = icmp eq ptr %2, %8
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %12 = load ptr, ptr %11, align 8, !tbaa !288
  %13 = icmp eq ptr %2, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %16 = load ptr, ptr %15, align 8, !tbaa !289
  %17 = icmp eq ptr %2, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %20 = load ptr, ptr %19, align 8, !tbaa !290
  %21 = icmp eq ptr %2, %20
  %22 = zext i1 %21 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp eq ptr %2, %i.e
  %i.g = zext i1 %i.f to i32
  %23 = add nuw nsw i32 %14, %10
  %24 = add nuw nsw i32 %23, %18
  %25 = add nuw nsw i32 %24, %22
  %op.rdx = add nuw nsw i32 %25, %i.g
  %i.h = icmp eq i32 %op.rdx, 1
  br i1 %i.h, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core12inproc_traceE, i64 8) monotonic, align 8, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %.critedge27, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 447) #32
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.n       ; 4 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.l = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN12_GLOBAL__N_113inproc_streamEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr nonnull %0)
          to label %bb.e unwind label %bb.n       ; 0 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28: ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP30grpc_transport_stream_op_batchEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29: ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_closureEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 1, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN9grpc_core14StatusToStringB5cxx11ERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.critedge unwind label %bb.p

.critedge:                                        ; preds = %bb.i
  %i.q = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.t = load i64, ptr %i.r, align 8, !tbaa !77
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !246
  br label %.critedge27

.critedge27:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = phi ptr [ %2, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !275
  %i.x = load i64, ptr %1, align 8, !tbaa !68     ; 3 uses
  store i64 %i.x, ptr %7, align 8, !tbaa !68
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %.critedge27
  %i.z = inttoptr i64 %i.x to ptr
  %i.aa = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %.critedge27, %bb.j
  invoke void @_ZN9grpc_core7ExecCtx3RunERKNS_13DebugLocationEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.w, ptr noundef nonnull align 8 %7)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.ab = load i64, ptr %7, align 8, !tbaa !68    ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #35
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.s

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit29, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit28, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit30
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.p
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !77
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ai, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ag, %bb.n ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.r:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.t

bb.s:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.a
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pn23 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9grpc_core5SliceES2_ES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 4 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 1 to ptr)
  br i1 %i.g, label %bb.b, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = atomicrmw sub ptr %i.f, i64 1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i unwind label %bb.d, !inline_history !240

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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219
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
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core12inproc_traceE, i64 8) monotonic, align 8, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.critedge11, !prof !14

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
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
  %i.a = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11grpc_server", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!18, !23, i64 40}
!18 = !{!"_ZTSN9grpc_core7ExecCtxE", !19, i64 8, !21, i64 24, !23, i64 40, !24, i64 48, !30, i64 88}
!19 = !{!"_ZTS17grpc_closure_list", !20, i64 0, !20, i64 8}
!20 = !{!"p1 _ZTS12grpc_closure", !10, i64 0}
!21 = !{!"_ZTSN9grpc_core7ExecCtx12CombinerDataE", !22, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTSN9grpc_core8CombinerE", !10, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSSt8optionalIN9grpc_core15ScopedTimeCacheEE", !25, i64 0}
!25 = !{!"_ZTSSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EE", !26, i64 0}
!26 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb0ELb0ELb0EE", !27, i64 0}
!27 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb1ELb0ELb0EE", !28, i64 0}
!28 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE", !6, i64 0, !29, i64 32}
!29 = !{!"bool", !6, i64 0}
!30 = !{!"p1 _ZTSN9grpc_core7ExecCtxE", !10, i64 0}
!31 = !{!28, !29, i64 32}
!32 = !{!30, !30, i64 0}
!33 = !{!18, !30, i64 88}
!34 = !{!35, !37, i64 8}
!35 = !{!"_ZTSN9grpc_core9Timestamp12ScopedSourceE", !36, i64 0, !37, i64 8}
!36 = !{!"_ZTSN9grpc_core9Timestamp6SourceE"}
!37 = !{!"p1 _ZTSN9grpc_core9Timestamp6SourceE", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!40, !23, i64 0}
!40 = !{!"_ZTSSt13__atomic_baseIlE", !23, i64 0}
!41 = !{!42, !49, i64 16}
!42 = !{!"_ZTSN12_GLOBAL__N_116inproc_transportE", !43, i64 0, !49, i64 16, !50, i64 24, !29, i64 32, !51, i64 40, !10, i64 96, !10, i64 104, !10, i64 112, !29, i64 120, !63, i64 128, !64, i64 136}
!43 = !{!"_ZTSN9grpc_core20FilterStackTransportE", !44, i64 0}
!44 = !{!"_ZTSN9grpc_core9TransportE", !45, i64 0}
!45 = !{!"_ZTSN9grpc_core20InternallyRefCountedINS_9TransportENS_11UnrefDeleteEEE", !46, i64 0, !47, i64 8}
!46 = !{!"_ZTSN9grpc_core10OrphanableE"}
!47 = !{!"_ZTSN9grpc_core8RefCountE", !48, i64 0}
!48 = !{!"_ZTSSt6atomicIlE", !40, i64 0}
!49 = !{!"p1 _ZTSN12_GLOBAL__N_19shared_muE", !10, i64 0}
!50 = !{!"_ZTS12gpr_refcount", !23, i64 0}
!51 = !{!"_ZTSN9grpc_core24ConnectivityStateTrackerE", !52, i64 0, !53, i64 8, !55, i64 16, !56, i64 24}
!52 = !{!"p1 omnipotent char", !10, i64 0}
!53 = !{!"_ZTSSt6atomicI23grpc_connectivity_stateE", !54, i64 0}
!54 = !{!"_ZTS23grpc_connectivity_state", !6, i64 0}
!55 = !{!"_ZTSN4absl12lts_202505126StatusE", !23, i64 0}
!56 = !{!"_ZTSN4absl12lts_2025051213flat_hash_setISt10unique_ptrIN9grpc_core33ConnectivityStateWatcherInterfaceENS3_16OrphanableDeleteEENS0_18container_internal6HashEqIPS4_vE4HashENSA_2EqESaIS6_EEE", !57, i64 0}
!57 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIN9grpc_core33ConnectivityStateWatcherInterfaceENS5_16OrphanableDeleteEEEENS1_6HashEqIPS6_vE4HashENSC_2EqESaIS8_EEE", !58, i64 0}
!58 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPN9grpc_core33ConnectivityStateWatcherInterfaceEvE4HashENS8_2EqESaIcEEEE", !59, i64 0}
!59 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPN9grpc_core33ConnectivityStateWatcherInterfaceEvE4HashENSA_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !60, i64 0}
!60 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !61, i64 0}
!61 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !23, i64 0, !62, i64 8, !6, i64 16}
!62 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !23, i64 0}
!63 = !{!"p1 _ZTSN12_GLOBAL__N_116inproc_transportE", !10, i64 0}
!64 = !{!"p1 _ZTSN12_GLOBAL__N_113inproc_streamE", !10, i64 0}
!65 = !{!42, !29, i64 32}
!66 = !{!51, !52, i64 0}
!67 = !{!53, !54, i64 0}
!68 = !{!55, !23, i64 0}
!69 = !{!42, !10, i64 104}
!70 = !{!42, !29, i64 120}
!71 = !{!42, !64, i64 136}
!72 = !{!42, !63, i64 128}
!73 = !{!74, !52, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!75 = !{!76, !23, i64 8}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !74, i64 0, !23, i64 8, !6, i64 16}
!77 = !{!6, !6, i64 0}
!78 = !{!76, !52, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTSN9grpc_core7ChannelE", !10, i64 0}
!81 = !{!82, !80, i64 0}
!82 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_7ChannelEEE", !80, i64 0}
!83 = distinct !{null}
!84 = distinct !{ptr @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_7ChannelEEEED2Ev, null, null, null, null}
!85 = !{ptr @_ZN9grpc_core7ExecCtxD2Ev}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !10, i64 0}
!88 = distinct !{null, null, null, null}
!89 = !{!90, !90, i64 0}
!90 = !{!"short", !6, i64 0}
!91 = !{!"branch_weights", i32 1, i32 1048575}
!92 = !{!93, !94, i64 8}
!93 = !{!"_ZTSNSt12_Vector_baseIPFvPvESaIS2_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"any p2 pointer", !10, i64 0}
!95 = !{!93, !94, i64 0}
!96 = !{!93, !94, i64 16}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTS17grpc_transport_op", !10, i64 0}
!99 = !{!100, !54, i64 112}
!100 = !{!"_ZTS17grpc_transport_op", !20, i64 0, !101, i64 8, !107, i64 16, !55, i64 24, !55, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !108, i64 80, !109, i64 88, !110, i64 96, !54, i64 112, !29, i64 116, !29, i64 117, !29, i64 118, !111, i64 120}
!101 = !{!"_ZTSSt10unique_ptrIN9grpc_core33ConnectivityStateWatcherInterfaceENS0_16OrphanableDeleteEE", !102, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_dataIN9grpc_core33ConnectivityStateWatcherInterfaceENS0_16OrphanableDeleteELb1ELb1EE", !103, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implIN9grpc_core33ConnectivityStateWatcherInterfaceENS0_16OrphanableDeleteEE", !104, i64 0}
!104 = !{!"_ZTSSt5tupleIJPN9grpc_core33ConnectivityStateWatcherInterfaceENS0_16OrphanableDeleteEEE", !105, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPN9grpc_core33ConnectivityStateWatcherInterfaceENS0_16OrphanableDeleteEEE", !106, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core33ConnectivityStateWatcherInterfaceELb0EE", !107, i64 0}
!107 = !{!"p1 _ZTSN9grpc_core33ConnectivityStateWatcherInterfaceE", !10, i64 0}
!108 = !{!"p1 _ZTS12grpc_pollset", !10, i64 0}
!109 = !{!"p1 _ZTS16grpc_pollset_set", !10, i64 0}
!110 = !{!"_ZTSN17grpc_transport_opUt_E", !20, i64 0, !20, i64 8}
!111 = !{!"_ZTS28grpc_handler_private_op_data", !10, i64 0, !112, i64 8}
!112 = !{!"_ZTS12grpc_closure", !6, i64 0, !10, i64 8, !10, i64 16, !6, i64 24}
!113 = !{!107, !107, i64 0}
!114 = distinct !{null}
!115 = !{!100, !107, i64 16}
!116 = !{!100, !29, i64 117}
!117 = !{!100, !10, i64 56}
!118 = !{!42, !10, i64 112}
!119 = !{!100, !20, i64 0}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!122 = distinct !{!122, !"_ZN4absl12lts_202505128OkStatusEv"}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_8channelz10SocketNodeEEE", !125, i64 0}
!125 = !{!"p1 _ZTSN9grpc_core8channelz10SocketNodeE", !10, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTS11grpc_stream", !10, i64 0}
!128 = !{!129, !63, i64 0}
!129 = !{!"_ZTSN12_GLOBAL__N_113inproc_streamE", !63, i64 0, !130, i64 8, !131, i64 16, !132, i64 24, !29, i64 688, !132, i64 696, !29, i64 1360, !29, i64 1361, !132, i64 1368, !29, i64 2032, !217, i64 2040, !132, i64 2048, !29, i64 2712, !55, i64 2720, !64, i64 2728, !29, i64 2736, !29, i64 2737, !218, i64 2744, !218, i64 2752, !218, i64 2760, !218, i64 2768, !218, i64 2776, !29, i64 2784, !29, i64 2785, !29, i64 2786, !29, i64 2787, !29, i64 2788, !29, i64 2789, !55, i64 2792, !55, i64 2800, !217, i64 2808, !29, i64 2816, !64, i64 2824, !64, i64 2832}
!130 = !{!"p1 _ZTS20grpc_stream_refcount", !10, i64 0}
!131 = !{!"p1 _ZTSN9grpc_core5ArenaE", !10, i64 0}
!132 = !{!"_ZTS19grpc_metadata_batch", !133, i64 0}
!133 = !{!"_ZTSN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEEE", !134, i64 0, !211, i64 640}
!134 = !{!"_ZTSN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEEE", !135, i64 0, !136, i64 8}
!135 = !{!"_ZTSN9grpc_core6BitSetILm38ELm16EEE", !6, i64 0}
!136 = !{!"_ZTSN9grpc_core12table_detail12ElementsImplISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37EEEJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS5_INS_21HttpAuthorityMetadataEvEENS5_INS_19GrpcTimeoutMetadataEvEENS5_INS_27GrpcRetryPushbackMsMetadataEvEENS5_INS_17UserAgentMetadataEvEENS5_INS_19GrpcMessageMetadataEvEENS5_INS_12HostMetadataEvEENS5_INS_30EndpointLoadMetricsBinMetadataEvEENS5_INS_26GrpcServerStatsBinMetadataEvEENS5_INS_20GrpcTraceBinMetadataEvEENS5_INS_19GrpcTagsBinMetadataEvEENS5_INS_25GrpcLbClientStatsMetadataEvEENS5_INS_17LbCostBinMetadataEvEENS5_INS_15LbTokenMetadataEvEENS5_INS_18XEnvoyPeerMetadataEvEENS5_INS_21XForwardedForMetadataEvEENS5_INS_22XForwardedHostMetadataEvEENS5_INS_22W3CTraceParentMetadataEvEENS5_INS_10PeerStringEvEENS5_INS_17GrpcStatusContextEvEENS5_INS_20GrpcRegisteredMethodEvEENS5_INS_18HttpStatusMetadataEvEENS5_INS_20GrpcEncodingMetadataEvEENS5_INS_27GrpcInternalEncodingRequestEvEENS5_INS_18GrpcStatusMetadataEvEENS5_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS5_INS_18HttpMethodMetadataEvEENS5_INS_18HttpSchemeMetadataEvEENS5_INS_19ContentTypeMetadataEvEENS5_INS_10TeMetadataEvEENS5_INS_26GrpcAcceptEncodingMetadataEvEENS5_INS_22GrpcStreamNetworkStateEvEENS5_INS_18GrpcStatusFromWireEvEENS5_INS_20GrpcCallWasCancelledEvEENS5_INS_12WaitForReadyEvEENS5_INS_18IsTransparentRetryEvEENS5_INS_16GrpcTrailersOnlyEvEENS5_INS_10GrpcTarPitEvEEEEE", !137, i64 0, !139, i64 32, !141, i64 64, !143, i64 72, !145, i64 80, !147, i64 112, !149, i64 144, !151, i64 176, !153, i64 208, !155, i64 240, !157, i64 272, !159, i64 304, !161, i64 312, !163, i64 360, !165, i64 392, !167, i64 424, !169, i64 456, !171, i64 488, !173, i64 520, !175, i64 552, !177, i64 592, !179, i64 600, !181, i64 604, !183, i64 608, !185, i64 612, !187, i64 616, !189, i64 620, !191, i64 621, !193, i64 622, !195, i64 623, !197, i64 624, !199, i64 625, !201, i64 626, !203, i64 627, !205, i64 628, !207, i64 630, !209, i64 631}
!137 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm0ENS_15metadata_detail5ValueINS_16HttpPathMetadataEvEELb0EEE", !138, i64 0}
!138 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm0ENS_15metadata_detail5ValueINS_16HttpPathMetadataEvEELb0EE4DataE", !6, i64 0}
!139 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm1ENS_15metadata_detail5ValueINS_21HttpAuthorityMetadataEvEELb0EEE", !140, i64 0}
!140 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm1ENS_15metadata_detail5ValueINS_21HttpAuthorityMetadataEvEELb0EE4DataE", !6, i64 0}
!141 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm2ENS_15metadata_detail5ValueINS_19GrpcTimeoutMetadataEvEELb0EEE", !142, i64 0}
!142 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm2ENS_15metadata_detail5ValueINS_19GrpcTimeoutMetadataEvEELb0EE4DataE", !6, i64 0}
!143 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm3ENS_15metadata_detail5ValueINS_27GrpcRetryPushbackMsMetadataEvEELb0EEE", !144, i64 0}
!144 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm3ENS_15metadata_detail5ValueINS_27GrpcRetryPushbackMsMetadataEvEELb0EE4DataE", !6, i64 0}
!145 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm4ENS_15metadata_detail5ValueINS_17UserAgentMetadataEvEELb0EEE", !146, i64 0}
!146 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm4ENS_15metadata_detail5ValueINS_17UserAgentMetadataEvEELb0EE4DataE", !6, i64 0}
!147 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm5ENS_15metadata_detail5ValueINS_19GrpcMessageMetadataEvEELb0EEE", !148, i64 0}
!148 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm5ENS_15metadata_detail5ValueINS_19GrpcMessageMetadataEvEELb0EE4DataE", !6, i64 0}
!149 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm6ENS_15metadata_detail5ValueINS_12HostMetadataEvEELb0EEE", !150, i64 0}
!150 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm6ENS_15metadata_detail5ValueINS_12HostMetadataEvEELb0EE4DataE", !6, i64 0}
!151 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm7ENS_15metadata_detail5ValueINS_30EndpointLoadMetricsBinMetadataEvEELb0EEE", !152, i64 0}
!152 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm7ENS_15metadata_detail5ValueINS_30EndpointLoadMetricsBinMetadataEvEELb0EE4DataE", !6, i64 0}
!153 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm8ENS_15metadata_detail5ValueINS_26GrpcServerStatsBinMetadataEvEELb0EEE", !154, i64 0}
!154 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm8ENS_15metadata_detail5ValueINS_26GrpcServerStatsBinMetadataEvEELb0EE4DataE", !6, i64 0}
!155 = !{!"_ZTSN9grpc_core12table_detail9TableLeafILm9ENS_15metadata_detail5ValueINS_20GrpcTraceBinMetadataEvEELb0EEE", !156, i64 0}
end_hunk_1
