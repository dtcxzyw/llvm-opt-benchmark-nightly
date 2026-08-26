Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/server_call?download=true
inline.NumInlined: 5209
inline.NumDeleted: 2843
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9grpc_core10ServerCall11CommitBatchEPK7grpc_opmPvb:bb.a
  call fastcc void @"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS0_6TrySeqINS1_IS2_JNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_0clESB_EUlvE_LSD_3EEEEEENS4_IZNS_15MessageReceiver11MakeBatchOpINS_11CallHandlerEEEDaSB_PT_EUlvE_LSD_5EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN9grpc_core13OpHandlerImplIZNS_15MessageReceiver11MakeBatchOpINS_11CallHandlerEEEDaRK7grpc_opPT_EUlvE_L12grpc_op_type5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body79

bb.ga:                                            ; preds = %bb.fy, %bb.fw, %bb.ft, %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS0_6TrySeqINS1_IS2_JNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_0clESB_EUlvE_LSD_3EEEEEENS4_IZNS_15MessageReceiver11MakeBatchOpINS_11CallHandlerEEEDaSB_PT_EUlvE_LSD_5EEEEED2Ev.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call fastcc void @"_ZN9grpc_core14promise_detail6TrySeqINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_0clESB_EUlvE_LSD_3EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %32) #37
  br i1 %cond, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.akc = getelementptr inbounds nuw i8, ptr %33, i64 24
  %.val1.i.i.i83 = load ptr, ptr %i.akc, align 8, !tbaa !8 ; 3 uses
  %.not.i.i.i.i.i.i84.not = icmp eq ptr %.val1.i.i.i83, null
  br i1 %.not.i.i.i.i.i.i84.not, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.val1.i.i.i83) #37
  call void @_ZdlPvm(ptr noundef nonnull %.val1.i.i.i83, i64 noundef 664) #40
  br label %bb.gd

bb.gd:                                            ; preds = %bb.ga, %bb.gb, %bb.gc
  br i1 %.not.i40, label %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit", label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.akd = getelementptr inbounds nuw i8, ptr %33, i64 56
  %.val1.i.i3.i = load ptr, ptr %i.akd, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i.i.i4.i = icmp ne ptr %.val1.i.i3.i, null
  %i.ake = trunc nuw i8 %i.nc to i1
  %or.cond.i.i.i.i.i5.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.ake, i1 false
  br i1 %or.cond.i.i.i.i.i5.i, label %bb.gf, label %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit"

bb.gf:                                            ; preds = %bb.ge
  invoke void @grpc_slice_buffer_destroy(ptr noundef nonnull align 8 dereferenceable(140) %.val1.i.i3.i)
          to label %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i.i.i unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.akf = landingpad { ptr, i32 }
          catch ptr null
  %i.akg = extractvalue { ptr, i32 } %i.akf, 0
  call void @__clang_call_terminate(ptr %i.akg) #36
  unreachable

_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i.i.i:     ; preds = %bb.gf
  call void @_ZdlPvm(ptr noundef nonnull %.val1.i.i3.i, i64 noundef 144) #40
  br label %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit"

"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit": ; preds = %bb.gd, %bb.ge, %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br i1 %.not.i45, label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102", label %bb.gh

bb.gh:                                            ; preds = %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit"
  %i.akh = getelementptr inbounds nuw i8, ptr %31, i64 24
  %.val1.i88 = load ptr, ptr %i.akh, align 8, !tbaa !8 ; 3 uses
  %.not.i.i.i.i89 = icmp ne ptr %.val1.i88, null
  %i.aki = trunc nuw i8 %i.mn to i1
  %or.cond.i.i.i.i90 = select i1 %.not.i.i.i.i89, i1 %i.aki, i1 false
  br i1 %or.cond.i.i.i.i90, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split.i91", label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102"

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split.i91": ; preds = %bb.gh
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.val1.i88) #37
  call void @_ZdlPvm(ptr noundef nonnull %.val1.i88, i64 noundef 664) #40
  br label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102"

"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102": ; preds = %"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev.exit", %bb.gh, %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split.i91"
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br i1 %.not.i40, label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit", label %bb.gi

bb.gi:                                            ; preds = %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102"
  %i.akj = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.val1.i104 = load ptr, ptr %i.akj, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i.i105 = icmp ne ptr %.val1.i104, null
  %i.akk = trunc nuw i8 %i.lw to i1
  %or.cond.i.i.i.i106 = select i1 %.not.i.i.i.i105, i1 %i.akk, i1 false
  br i1 %or.cond.i.i.i.i106, label %bb.gj, label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit"

bb.gj:                                            ; preds = %bb.gi
  invoke void @grpc_slice_buffer_destroy(ptr noundef nonnull align 8 dereferenceable(140) %.val1.i104)
          to label %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.akl = landingpad { ptr, i32 }
          catch ptr null
  %i.akm = extractvalue { ptr, i32 } %i.akl, 0
  call void @__clang_call_terminate(ptr %i.akm) #36
  unreachable

_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i:         ; preds = %bb.gj
  call void @_ZdlPvm(ptr noundef nonnull %.val1.i104, i64 noundef 144) #40
  br label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit"

"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit": ; preds = %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev.exit102", %bb.gi, %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br i1 %cond, label %bb.gl, label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev.exit"

bb.gl:                                            ; preds = %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit"
  %i.akn = getelementptr inbounds nuw i8, ptr %29, i64 24
  %.val1.i109 = load ptr, ptr %i.akn, align 8, !tbaa !8 ; 3 uses
  %.not.i.i.i.i110.not = icmp eq ptr %.val1.i109, null
  br i1 %.not.i.i.i.i110.not, label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev.exit", label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.val1.i109) #37
  call void @_ZdlPvm(ptr noundef nonnull %.val1.i109, i64 noundef 664) #40
  br label %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev.exit"

"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev.exit": ; preds = %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev.exit", %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.gr

bb.gn:                                            ; preds = %bb.bh
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.go:                                            ; preds = %"_ZZZN9grpc_core10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS2_ENUlvE_D2Ev.exit.i"
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gp:                                            ; preds = %.noexc77, %bb.bw
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %bb.fz, %bb.gp
  %eh.lpad-body80 = phi { ptr, i32 } [ %i.akq, %bb.gp ], [ %.pn11.pn.pn.i59, %bb.fz ]
  call fastcc void @"_ZN9grpc_core14promise_detail6TrySeqINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_0clESB_EUlvE_LSD_3EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %32) #37
  call fastcc void @"_ZN9grpc_core14promise_detail5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS6_EUlvE_L12grpc_op_type0EEENS3_IZZNS4_11CommitBatchES7_mS8_bENK3$_3clESA_EUlvE_LSC_1EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %33) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  call fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #37
  br label %bb.gq

bb.gq:                                            ; preds = %.body79, %bb.go
  %.pn14.pn.pn = phi { ptr, i32 } [ %eh.lpad-body80, %.body79 ], [ %i.akp, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  call fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %30) #37
  br label %.body43

.body43:                                          ; preds = %bb.gn, %_ZN9grpc_core11SliceBufferD2Ev.exit6.i.i, %bb.gq
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.gq ], [ %i.ako, %bb.gn ], [ %.pn.i.i41, %_ZN9grpc_core11SliceBufferD2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %29) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.gs

bb.gr:                                            ; preds = %"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS3_EUlvE_L12grpc_op_type0EED2Ev.exit", %"_ZZZN9grpc_core10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS2_ENUlvE_D2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  ret void

bb.gs:                                            ; preds = %.body43, %.body
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %.body43 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %common.resume
}

declare noundef zeroext i1 @_Z16grpc_cq_begin_opP21grpc_completion_queuePv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN9grpc_core10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS2_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %struct.grpc_slice, align 8         ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.a = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #39, !noalias !285 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.a, i8 0, i64 664, i1 false), !noalias !285
  store i8 1, ptr %2, align 8, !tbaa !94, !alias.scope !285
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !201, !alias.scope !285
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load i64, ptr %i.c, align 8, !tbaa !76
  invoke void @_ZN9grpc_core11CToMetadataEP13grpc_metadatamP19grpc_metadata_batch(ptr noundef %i.e, i64 noundef %i.f, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11
  %storemerge.i.i.i.i = or i16 %i.i, 256
  store i16 %storemerge.i.i.i.i, ptr %i.h, align 2, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 620
  %storemerge.i.i.i = load i32, ptr %i.g, align 8, !tbaa !288
  store i32 %storemerge.i.i.i, ptr %i.j, align 4, !tbaa !290
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %3, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.l)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !292 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.n = load i16, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %storemerge.i.i.i.i22 = or i16 %i.n, 32
  store i16 %storemerge.i.i.i.i22, ptr %i.a, align 8, !tbaa !11
  %i.o = and i16 %i.n, 32
  %.not.i.i.i = icmp eq i16 %i.o, 0
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.011.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !292 ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8, !tbaa !292
  %i.p = icmp ugt ptr %.sroa.011.0.copyload.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.f, label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = atomicrmw sub ptr %.sroa.011.0.copyload.i.i.i, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !293
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.copyload.i.i.i)
          to label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i unwind label %bb.h, !inline_history !295

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

bb.i:                                             ; preds = %bb.d
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8, !tbaa !292
  br label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.p

_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i: ; preds = %bb.e, %bb.f, %bb.g, %bb.i
  %.pre.pre = load ptr, ptr %i.b, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.not1 = icmp eq ptr %.pre.pre, null
  br i1 %.not1, label %bb.l, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, !prof !296

bb.l:                                             ; preds = %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.20, i32 noundef 184, ptr noundef nonnull @.str.21) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.o

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.m
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  unreachable

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.b, %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i
  %i.aa = phi ptr [ %.pre.pre, %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i ], [ %i.a, %bb.b ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  %i.ad = load atomic i8, ptr %i.ac monotonic, align 1, !range !96, !noundef !97
  store ptr %.0.val, ptr %0, align 8, !tbaa !91
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i8, ptr %2, align 8, !tbaa !94
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ad, ptr %i.ah, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.j
  %.pn20 = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.x, %bb.k ], [ %i.w, %bb.j ]
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type3EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !89
  switch i32 %i.a, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit" [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !tbaa !8  ; 2 uses
  %.not.i.i.i = icmp ne ptr %.val1, null
  %i.d = trunc nuw i8 %.val to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split", label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !150
  %cond.i.i = icmp eq i8 %i.f, 1
  br i1 %cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i8, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %.val2.i.i, null
  %i.i = trunc nuw i8 %.val1.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split", label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load i8, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !8 ; 2 uses
  %.not.i.i.i5.i.i = icmp ne ptr %.val4.i.i, null
  %i.l = trunc nuw i8 %.val3.i.i to i1
  %or.cond.i.i.i6.i.i = select i1 %.not.i.i.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i.i6.i.i, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split", label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split": ; preds = %bb.d, %bb.e, %bb.b
  %.val4.sink7.i.i.sink2 = phi ptr [ %.val1, %bb.b ], [ %.val2.i.i, %bb.d ], [ %.val4.i.i, %bb.e ] ; 2 uses
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.val4.sink7.i.i.sink2) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %.val4.sink7.i.i.sink2, i64 noundef 664) #40
  br label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit": ; preds = %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit.sink.split", %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZZN9grpc_core10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS2_ENUlvE_D2Ev"(i8 %.8.val, ptr %.16.val) unnamed_addr #4 align 2 {
bb.a:
  %.not.i = icmp ne ptr %.16.val, null
  %i.a = trunc nuw i8 %.8.val to i1
  %or.cond.i = select i1 %.not.i, i1 %i.a, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.16.val) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %.16.val, i64 noundef 664) #40
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN9grpc_core14promise_detail6TrySeqINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_0clESB_EUlvE_LSD_3EEEEED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !239
  switch i8 %i.b, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEvED2Ev.exit" [
    i8 0, label %bb.b
    i8 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !76    ; 3 uses
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %0, align 8
  %cond.i.i.i.i = icmp eq i32 %i.g, 1
  %or.cond.i.i = select i1 %i.f, i1 %cond.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load i8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !8 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %.val1.i.i.i.i, null
  %i.j = trunc nuw i8 %.val.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.val1.i.i.i.i) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef 664) #40
  %.pre.i.i = load i8, ptr %i.c, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = phi i8 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.l = and i8 %i.k, 2
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEvED2Ev.exit"

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !226
  %cond.i.i1.i.i = icmp eq i32 %i.n, 1
  br i1 %cond.i.i1.i.i, label %bb.g, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEvED2Ev.exit"

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i2.i.i = load i8, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i3.i.i = load ptr, ptr %i.p, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i.i.i4.i.i = icmp ne ptr %.val1.i.i3.i.i, null
  %i.q = trunc nuw i8 %.val.i.i2.i.i to i1
  %or.cond.i.i.i.i.i5.i.i = select i1 %.not.i.i.i.i.i4.i.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i.i.i.i5.i.i, label %bb.h, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS_13OpHandlerImplIZZNS_10ServerCall11CommitBatchEPK7grpc_opmPvbENK3$_2clERS7_EUlvE_L12grpc_op_type0EEENS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_3clESB_EUlvE_LSD_1EEEEEEvED2Ev.exit"

end_hunk_0
