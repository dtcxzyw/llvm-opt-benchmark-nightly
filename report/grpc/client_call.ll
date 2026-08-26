Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_call?download=true
inline.NumInlined: 6549
inline.NumDeleted: 3578
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN9grpc_core3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEZNS6_11CommitBatchES9_mSA_bE3$_4ED2Ev":bb.a
bb.i:                                             ; preds = %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e, %"_ZN9grpc_core14promise_detail9WrappedFnIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_4NS_10StatusFlagEvED2Ev.exit"
  %i.s = phi i8 [ %i.i, %"_ZN9grpc_core14promise_detail9WrappedFnIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_4NS_10StatusFlagEvED2Ev.exit" ], [ %i.i, %bb.e ], [ %i.i, %bb.f ], [ %.pre.i.i, %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.t = and i8 %i.s, 2
  %.not1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not1.i.i, label %bb.j, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEvED2Ev.exit"

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @"_ZN9grpc_core14promise_detail6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS5_EUlvE_L12grpc_op_type4EEEJNS2_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaS9_PT_EUlvE_LSB_5EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.u) #36
  br label %"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEvED2Ev.exit"

"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEvED2Ev.exit": ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS3_EUlvE_L12grpc_op_type4EED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !240
  %cond = icmp eq i32 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8
  %cond.i.i.i.i = icmp eq i8 %i.c, 1
  %or.cond = select i1 %cond, i1 %cond.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !374, !range !104, !noundef !105
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !376  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !379  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !380
  %.not2.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !381
  invoke void %i.n(ptr noundef nonnull %i.h)
          to label %._crit_edge.i.i.i.i.i.i.i.i.i unwind label %bb.g

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !376
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.h, %bb.d ]
  invoke void @gpr_free_aligned(ptr noundef %i.o)
          to label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !383, !range !104, !noundef !105
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.r, align 8, !tbaa !383
  br i1 %i.t, label %bb.i, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit"

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.w, null
  %i.x = load i8, ptr %i.u, align 8, !range !104
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.y, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit"

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.w) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 664) #37
  br label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit"

"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS4_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSA_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvED2Ev.exit": ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core13OpHandlerImplIZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_EUlvE_L12grpc_op_type5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !229
  %cond = icmp eq i32 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8
  %cond.i.i.i.i = icmp eq i8 %i.c, 1
  %or.cond = select i1 %cond, i1 %cond.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS4_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !385, !range !104, !noundef !105
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS4_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !390  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !391
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not2.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !392
  invoke void %i.n(ptr noundef nonnull %i.h)
          to label %._crit_edge.i.i.i.i.i.i.i unwind label %bb.g

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !387
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.h, %bb.d ]
  invoke void @gpr_free_aligned(ptr noundef %i.o)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS4_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9grpc_core14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #36
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS4_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS4_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvED2Ev.exit: ; preds = %bb.a, %bb.h, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN9grpc_core13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS3_EUlvE_L12grpc_op_type1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !212
  %cond = icmp eq i32 %i.a, 1
  br i1 %cond, label %bb.b, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !tbaa !210 ; 3 uses
  %.not.i.i.i = icmp ne ptr %.val1, null
  %i.d = trunc nuw i8 %.val to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i, label %bb.c, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @grpc_slice_buffer_destroy(ptr noundef nonnull align 8 dereferenceable(140) %.val1)
          to label %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i:           ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val1, i64 noundef 144) #37
  br label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit"

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS4_EUlvE_ED2Ev.exit": ; preds = %bb.a, %_ZN9grpc_core7MessageD2Ev.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10ClientCall16OnReceivedStatusESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEP16grpc_status_codeP10grpc_slicePPKcP19grpc_metadata_array(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.grpc_core::Slice", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 289
  store atomic i8 1, ptr %i.a monotonic, align 1
  tail call void @_ZN9grpc_core4Call13ResetDeadlineEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core10call_traceE, i64 8) monotonic, align 8, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge56, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.5, i32 noundef 440) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !481
  store ptr %0, ptr %6, align 8, !tbaa !94, !noalias !481
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINS1_7VoidPtrEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.d, align 8, !tbaa !399, !noalias !481
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.26, i64 17, ptr nonnull %6, i64 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !481
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  invoke void @_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(664) %i.g)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.critedge unwind label %bb.m

.critedge:                                        ; preds = %bb.f
  %i.i = load ptr, ptr %9, align 8, !tbaa !157    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.l = load i64, ptr %i.j, align 8, !tbaa !94
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.n = load ptr, ptr %8, align 8, !tbaa !157    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !94
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.critedge56

.critedge56:                                      ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !21
  %i.w = and i16 %i.v, 256
  %.not.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 620
  %i.y = load i32, ptr %i.x, align 4
  %.0.i = select i1 %.not.i.i.i, i32 2, i32 %i.y  ; 2 uses
  store i32 %.0.i, ptr %2, align 4, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !alias.scope !486
  %.not = icmp eq i32 %.0.i, 0                    ; 2 uses
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %.critedge56
  %i.z = load i16, ptr %i.t, align 4, !tbaa !21
  %i.aa = and i16 %i.z, 32
  %.not.i.i.not.i = icmp eq i16 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  br i1 %.not.i.i.not.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120, !noalias !489 ; 3 uses
  %i.ad = icmp ugt ptr %i.ac, inttoptr (i64 1 to ptr)
  br i1 %i.ad, label %bb.i, label %_ZN9grpc_core5SliceD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !489 ; 0 uses
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.ab, align 8, !tbaa !89
  br label %_ZN9grpc_core5SliceD2Ev.exit

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %bb.h, %bb.i
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %bb.i ], [ %i.ac, %bb.h ]
  %.sroa.7.0.spec.select.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.0.0.copyload, ptr %10, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0.spec.select.i.sroa_idx, i64 24, i1 false)
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !157   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.m
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !157   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.n
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !94
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ab

bb.o:                                             ; preds = %bb.g, %_ZN9grpc_core5SliceD2Ev.exit, %.critedge56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !noalias !492
  %.not46 = icmp eq ptr %4, null
  br i1 %.not46, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !88
  invoke void @_ZN9grpc_core15MakeErrorStringB5cxx11EPK19grpc_metadata_batch(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.at)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %11, align 8, !tbaa !157
  %i.av = invoke ptr @gpr_strdup(ptr noundef %i.au)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  store ptr %i.av, ptr %4, align 8, !tbaa !135
  %i.aw = load ptr, ptr %11, align 8, !tbaa !157  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.s
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !94
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.u:                                             ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %11, align 8, !tbaa !157  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.u
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !94
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.t
  %.pn47 = phi { ptr, i32 } [ %i.bb, %bb.t ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.bc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.aa

bb.v:                                             ; preds = %bb.p
  store ptr null, ptr %4, align 8, !tbaa !135
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.v, %bb.o
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !88
  invoke void @_ZN9grpc_core20PublishMetadataArrayEP19grpc_metadata_batchP19grpc_metadata_arrayb(ptr noundef %i.bi, ptr noundef %5, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !88
  store ptr null, ptr %i.s, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !88 ; 3 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !88
  %.not.i.i.i.i = icmp ne ptr %i.bm, null
  %i.bn = load i8, ptr %i.bj, align 8, !range !104
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bo, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.y, label %_ZN9grpc_core5SliceD2Ev.exit72

bb.y:                                             ; preds = %bb.x
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.bm) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 664) #37
  br label %_ZN9grpc_core5SliceD2Ev.exit72

_ZN9grpc_core5SliceD2Ev.exit72:                   ; preds = %bb.y, %bb.x
  %i.bp = load i8, ptr %1, align 8, !tbaa !23
  store i8 %i.bp, ptr %i.bj, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  ret void

bb.z:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn49 = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.aa ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::metadata_detail::DebugStringBuilder", align 8 ; 9 uses
  %3 = alloca %class.anon.419, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !151
  store i8 0, ptr %i.a, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %2, ptr %3, align 8, !tbaa !495
  invoke void @_ZNK9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE11ForEachImplIZNKS_11MetadataMapI19grpc_metadata_batchJS3_S5_S1J_S19_S1L_S1N_S1P_S1B_S1D_S1R_S1F_S7_S1H_S9_SB_SD_SF_SH_SJ_SL_SN_SP_SR_ST_SV_SX_SZ_S11_S1T_S13_S15_S1V_S1X_S1Z_S21_S23_S25_S17_EE3LogEN4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEES2I_EEEEUlRKT_E0_JLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37EEEEvS2L_St16integer_sequenceImJXspT0_EEE(ptr noundef nonnull align 8 dereferenceable(664) %1, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS3_16HttpPathMetadataENS3_21HttpAuthorityMetadataENS3_18HttpMethodMetadataENS3_18HttpStatusMetadataENS3_18HttpSchemeMetadataENS3_19ContentTypeMetadataENS3_10TeMetadataENS3_20GrpcEncodingMetadataENS3_27GrpcInternalEncodingRequestENS3_26GrpcAcceptEncodingMetadataENS3_18GrpcStatusMetadataENS3_19GrpcTimeoutMetadataENS3_31GrpcPreviousRpcAttemptsMetadataENS3_27GrpcRetryPushbackMsMetadataENS3_17UserAgentMetadataENS3_19GrpcMessageMetadataENS3_12HostMetadataENS3_30EndpointLoadMetricsBinMetadataENS3_26GrpcServerStatsBinMetadataENS3_20GrpcTraceBinMetadataENS3_19GrpcTagsBinMetadataENS3_25GrpcLbClientStatsMetadataENS3_17LbCostBinMetadataENS3_15LbTokenMetadataENS3_18XEnvoyPeerMetadataENS3_21XForwardedForMetadataENS3_22XForwardedHostMetadataENS3_22W3CTraceParentMetadataENS3_22GrpcStreamNetworkStateENS3_10PeerStringENS3_17GrpcStatusContextENS3_18GrpcStatusFromWireENS3_20GrpcCallWasCancelledENS3_12WaitForReadyENS3_18IsTransparentRetryENS3_16GrpcTrailersOnlyENS3_10GrpcTarPitENS3_20GrpcRegisteredMethodEEE11DebugStringB5cxx11EvEUlSt17basic_string_viewIcSt11char_traitsIcEES1C_E_vJS1C_S1C_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !497  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !497  ; 2 uses
  %.not18.i = icmp eq ptr %i.d, %i.f
  br i1 %.not18.i, label %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3LogEN4abs, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc2
  %.sroa.014.019.i = phi ptr [ %i.aa, %.noexc2 ], [ %i.d, %.noexc ] ; 9 uses
  %i.g = load ptr, ptr %.sroa.014.019.i, align 8, !tbaa !120
  %.not.i.i.i = icmp eq ptr %i.g, null            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 9
  %i.k = select i1 %.not.i.i.i, ptr %i.j, ptr %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = and i64 %i.m, 255
  %i.o = select i1 %.not.i.i.i, i64 %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %.not.i.i11.i = icmp eq ptr %i.q, null          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 41
  %i.u = select i1 %.not.i.i11.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, 255
  %i.y = select i1 %.not.i.i11.i, i64 %i.x, i64 %i.w
  %i.z = load ptr, ptr %3, align 8, !tbaa !499, !nonnull !105, !align !501
  invoke void @_ZN9grpc_core15metadata_detail18DebugStringBuilder17AddAfterRedactionESt17basic_string_viewIcSt11char_traitsIcEES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 %i.o, ptr %i.k, i64 %i.y, ptr %i.u)
          to label %.noexc2 unwind label %.loopexit

.noexc2:                                          ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.f
  br i1 %.not.i, label %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3LogEN4abs, label %.lr.ph.i

_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3LogEN4abs: ; preds = %.noexc2, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !145, !alias.scope !502
  %i.ac = load ptr, ptr %2, align 8, !tbaa !157, !noalias !502 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3LogEN4abs
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !151, !noalias !502 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ag, i1 false)
  br label %_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE3LogEN4abs
  store ptr %i.ac, ptr %0, align 8, !tbaa !157, !alias.scope !502
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !94, !noalias !502
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !94, !alias.scope !502
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !151, !noalias !502
  br label %_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit

_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = phi i64 [ %i.ae, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !151, !alias.scope !502
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ak = load ptr, ptr %2, align 8, !tbaa !157   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.c
  %i.am = load i64, ptr %i.a, align 8, !tbaa !94
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #37
  br label %_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit5

_ZN9grpc_core15metadata_detail18DebugStringBuilderD2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !97

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable
}

declare ptr @gpr_strdup(ptr noundef) local_unnamed_addr #2

declare void @_ZN9grpc_core15MakeErrorStringB5cxx11EPK19grpc_metadata_batch(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN9grpc_core20PublishMetadataArrayEP19grpc_metadata_batchP19grpc_metadata_arrayb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2
end_hunk_0
