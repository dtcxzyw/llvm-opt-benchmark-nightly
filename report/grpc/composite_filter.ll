Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/composite_filter?download=true
inline.NumInlined: 7677
inline.NumDeleted: 3869
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9grpc_core23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES3_EE:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !142
  store i64 %i.u, ptr %i.s, align 8, !tbaa !142
  store ptr null, ptr %i.t, align 8, !tbaa !142
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !692 ; 0 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !144, !alias.scope !692
  invoke void @_ZN9grpc_core12MakeCallPairESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEENS_13RefCountedPtrIS2_EE(ptr dead_on_unwind nonnull writable sret(%"struct.grpc_core::CallInitiatorAndHandler") align 8 %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %6, align 8, !tbaa !144    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = atomicrmw sub ptr %i.x, i64 1 acq_rel, align 8
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.g, label %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit, !prof !72

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK9grpc_core5Arena7DestroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #42
  unreachable

_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !142 ; 3 uses
  %.not.i40 = icmp ne ptr %i.ac, null
  %i.ad = load i8, ptr %5, align 8, !range !145
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i = select i1 %.not.i40, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.i:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.ac) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 664) #41
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  store ptr %i.ah, ptr %7, align 8, !tbaa !101
  store ptr null, ptr %i.ag, align 8, !tbaa !101
  invoke void @_ZN9grpc_core11Interceptor9StartCallENS_20UnstartedCallHandlerE(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 %7)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit
  %i.ai = load ptr, ptr %7, align 8, !tbaa !101   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = atomicrmw sub ptr %i.aj, i64 1099511627776 acq_rel, align 8
  %i.al = and i64 %i.ak, -1099511627776
  %i.am = icmp eq i64 %i.al, 1099511627776
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ai)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #42
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !119 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = atomicrmw add ptr %i.aq, i64 272 monotonic, align 8 ; 2 uses
  %i.as = add i64 %i.ar, 272
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !134
  %.not.i.i.i41 = icmp ugt i64 %i.as, %i.au
  br i1 %.not.i.i.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  br label %_ZN9grpc_core5Arena3NewINS0_14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES6_EEE9PipeOwnerEEJEEEPT_DpOT0_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.aw = invoke noundef ptr @_ZN9grpc_core5Arena9AllocZoneEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i64 noundef 272)
          to label %_ZN9grpc_core5Arena3NewINS0_14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES6_EEE9PipeOwnerEEJEEEPT_DpOT0_.exit.i unwind label %bb.x

_ZN9grpc_core5Arena3NewINS0_14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES6_EEE9PipeOwnerEEJEEEPT_DpOT0_.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i42 = phi ptr [ %i.av, %bb.o ], [ %i.aw, %bb.p ] ; 5 uses
  invoke void @_ZN9grpc_core5Arena14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES5_EEE9PipeOwnerEC2IJEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(264) %.0.i.i.i42)
          to label %.noexc43 unwind label %bb.x

.noexc43:                                         ; preds = %_ZN9grpc_core5Arena3NewINS0_14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES6_EEE9PipeOwnerEEJEEEPT_DpOT0_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  invoke void @_ZN9grpc_core5Arena16ManagedNewObject4LinkEPSt6atomicIPS1_E(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i42, ptr noundef nonnull %i.ax)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %.noexc43
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i42, i64 16 ; 5 uses
  %i.az = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.ba = and i64 %i.az, 1152921504606846976
  %.not.i.i.i45 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i45, label %bb.r, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread

bb.r:                                             ; preds = %bb.q
  %.not4.i.i.i = icmp sgt i64 %i.az, -1
  br i1 %.not4.i.i.i, label %bb.s, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91

bb.s:                                             ; preds = %bb.r
  %i.bb = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 60)
          to label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit unwind label %bb.x

_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit: ; preds = %bb.s
  br i1 %i.bb, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91

_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread: ; preds = %bb.q, %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.bc = load ptr, ptr %4, align 8, !tbaa !101   ; 5 uses
  %.not.i.i48 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = atomicrmw add ptr %i.bd, i64 1099511627776 monotonic, align 8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread
  store ptr %i.bc, ptr %8, align 8, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !149
  %i.bg = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43
          to label %.noexc49 unwind label %bb.y   ; 6 uses

.noexc49:                                         ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core5Party15ParticipantImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES5_EEEUlvE_ZNS_9CallSpine15SpawnInfallibleISG_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_EE, i64 16), ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i8 0, ptr %i.bi, align 8, !tbaa !151
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !101
  store ptr null, ptr %8, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.ay, ptr %i.bk, align 8, !tbaa !149
  invoke void @_ZN9grpc_core5Party24MaybeAsyncAddParticipantEPNS0_11ParticipantE(ptr noundef nonnull align 16 dereferenceable(416) %i.bc, ptr noundef nonnull %i.bg)
          to label %_ZZN9grpc_core23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES3_EEENUlvE_D2Ev.exit unwind label %bb.y

_ZZN9grpc_core23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES3_EEENUlvE_D2Ev.exit: ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91

bb.v:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40
  br label %bb.cc

bb.w:                                             ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core20UnstartedCallHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #40
  br label %bb.cb

bb.x:                                             ; preds = %bb.s, %.noexc43, %_ZN9grpc_core5Arena3NewINS0_14ManagedNewImplIZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_13PooledDeleterEEEES6_EEE9PipeOwnerEEJEEEPT_DpOT0_.exit.i, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.y:                                             ; preds = %.noexc49, %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN9grpc_core23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES3_EEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.cb

_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91: ; preds = %bb.r, %_ZZN9grpc_core23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES3_EEENUlvE_D2Ev.exit, %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.bp = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.bq = and i64 %i.bp, 1152921504606846976
  %.not.i.i.i52 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i52, label %bb.z, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56

bb.z:                                             ; preds = %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91
  %.not4.i.i.i54 = icmp sgt i64 %i.bp, -1
  br i1 %.not4.i.i.i54, label %bb.aa, label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56

bb.aa:                                            ; preds = %bb.z
  %i.br = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 60)
          to label %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56 unwind label %bb.bz

_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56: ; preds = %bb.z, %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91, %bb.aa
  %.0.i.i.i53 = phi i1 [ false, %bb.z ], [ true, %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit.thread91 ], [ %i.br, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.bs = load ptr, ptr %4, align 8, !tbaa !101   ; 7 uses
  %.not.i.i57 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i57, label %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EbOSF_OSG_.exit.thread, label %bb.ab

_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EbOSF_OSG_.exit.thread: ; preds = %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56
  store ptr null, ptr %11, align 8, !tbaa !101
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i42, i64 200
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 184 ; 2 uses
  %.sroa.882.0.in117 = select i1 %.0.i.i.i53, ptr %i.bt, ptr %i.bu
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN9grpc_core39IsV2NonOwningWakerImplementationEnabledEv.exit56
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = atomicrmw add ptr %i.bv, i64 1099511627776 monotonic, align 8 ; 0 uses
  store ptr null, ptr %11, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i42, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 184 ; 3 uses
  %.sroa.882.0.in = select i1 %.0.i.i.i53, ptr %i.bx, ptr %i.by ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ca = atomicrmw sub ptr %i.bz, i64 1099511627776 acq_rel, align 8
  %i.cb = and i64 %i.ca, -1099511627776
  %i.cc = icmp eq i64 %i.cb, 1099511627776
  br i1 %i.cc, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bs)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #42
  unreachable

bb.ae:                                            ; preds = %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EbOSF_OSG_.exit.thread, %bb.ac, %bb.ab
  %.sroa.882.0120.in = phi ptr [ %.sroa.882.0.in117, %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EbOSF_OSG_.exit.thread ], [ %.sroa.882.0.in, %bb.ac ], [ %.sroa.882.0.in, %bb.ab ]
  %.sroa.12.sroa.0.0119 = phi ptr [ %i.bu, %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EbOSF_OSG_.exit.thread ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ]
  %i.cf = zext i1 %.0.i.i.i53 to i8               ; 2 uses
  %i.cg = ptrtoint ptr %i.bs to i64
  %.sroa.882.0120 = ptrtoint ptr %.sroa.882.0120.in to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr null, ptr %13, align 8, !tbaa !101
  %i.ch = load ptr, ptr %4, align 8, !tbaa !101   ; 5 uses
  %.not.i.i60 = icmp eq ptr %i.ch, null           ; 2 uses
  br i1 %.not.i.i60, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = atomicrmw add ptr %i.ci, i64 1099511627776 monotonic, align 8 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ay, ptr %i.ck, align 8, !tbaa !171
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cm = load i8, ptr %2, align 8, !tbaa !140    ; 3 uses
  store i8 %i.cm, ptr %i.cl, align 8, !tbaa !140
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.co = load i64, ptr %i.t, align 8, !tbaa !142 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !142
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !172
  store ptr null, ptr %i.cq, align 8, !tbaa !172
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i8 0, i64 24, i1 false)
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !173
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !174 ; 6 uses
  %.not.i.i.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !175
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i8 0, ptr %i.db, align 16, !tbaa !178
  %i.dc = ptrtoint ptr %i.k to i64                ; 2 uses
  store i64 %i.dc, ptr %12, align 16, !tbaa !693
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %13, align 8, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ay, ptr %i.de, align 16, !tbaa !171
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 %i.cm, ptr %i.df, align 8, !tbaa !140
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store i64 %i.co, ptr %i.dg, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 32, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.di, i8 0, i64 24, i1 false)
  store ptr %i.cx, ptr %i.dj, align 8, !tbaa !173
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.not.i.i, label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsEZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEESA_EEEUlS4_E_EEC2EOS6_OSL_NS_13DebugLocationE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 16, i1 false), !tbaa.struct !175
  store ptr %i.cz, ptr %i.dl, align 16, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  br label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsEZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEESA_EEEUlS4_E_EEC2EOS6_OSL_NS_13DebugLocationE.exit

_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsEZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEESA_EEEUlS4_E_EEC2EOS6_OSL_NS_13DebugLocationE.exit: ; preds = %bb.ai, %bb.aj
  store i8 %i.cf, ptr %10, align 16, !tbaa !181
  br i1 %.0.i.i.i53, label %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsEZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEESA_EEEUlS4_E_EEC2EOS6_OSL_NS_13DebugLocationE.exit
  %.sroa.12.8..sroa_idx84 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.12.sroa.0.0119, ptr %.sroa.12.8..sroa_idx84, align 16, !tbaa !183
  %.sroa.12.sroa.5.0..sroa.12.8..sroa_idx84.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.cg, ptr %.sroa.12.sroa.5.0..sroa.12.8..sroa_idx84.sroa_idx, align 8, !tbaa !105
  br label %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit

_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit: ; preds = %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsEZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEESA_EEEUlS4_E_EEC2EOS6_OSL_NS_13DebugLocationE.exit, %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %.sroa.882.0120, ptr %i.dm, align 8, !tbaa !139
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  store i8 0, ptr %i.do, align 16, !tbaa !178
  store i64 %i.dc, ptr %i.dn, align 16, !tbaa !693
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  store ptr %i.ch, ptr %i.dp, align 8, !tbaa !101
  store ptr null, ptr %i.dd, align 8, !tbaa !101
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ay, ptr %i.dq, align 16, !tbaa !171
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store i8 %i.cm, ptr %i.dr, align 8, !tbaa !140
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 %i.co, ptr %i.ds, align 16, !tbaa !142
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store ptr %i.cr, ptr %i.dt, align 8, !tbaa !184
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dv, i8 0, i64 24, i1 false)
  store ptr %i.cx, ptr %i.dw, align 8, !tbaa !173
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN9grpc_core14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES9_EEEUlS3_E_EEC2EOSL_.exit, label %bb.al

bb.al:                                            ; preds = %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dv, ptr noundef nonnull align 16 dereferenceable(32) %i.di, i64 16, i1 false), !tbaa.struct !175
  store ptr %i.cz, ptr %i.dy, align 16, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  br label %_ZN9grpc_core14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES9_EEEUlS3_E_EEC2EOSL_.exit

_ZN9grpc_core14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES9_EEEUlS3_E_EEC2EOSL_.exit: ; preds = %bb.al, %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  br i1 %.not.i.i60, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN9grpc_core14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES9_EEEUlS3_E_EEC2EOSL_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ea = atomicrmw add ptr %i.dz, i64 1099511627776 monotonic, align 8 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN9grpc_core14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES9_EEEUlS3_E_EEC2EOSL_.exit
  store ptr %i.ch, ptr %9, align 16, !tbaa !101
  store ptr null, ptr %14, align 8, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %_ZN9grpc_core8OnCancelINS_4RaceIJNS_2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES6_EEEUlvE0_ZNS5_15MakeCallPromiseES6_SG_EUlvE1_EENS_14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS5_15MakeCallPromiseES6_SG_EUlSN_E_EEEEEEZNS5_15MakeCallPromiseES6_SG_EUlvE2_EEDaOT_OT0_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = atomicrmw add ptr %i.ec, i64 1 monotonic, align 8, !noalias !694 ; 0 uses
  %.pre = load i8, ptr %10, align 16, !tbaa !181, !range !145
  br label %_ZN9grpc_core8OnCancelINS_4RaceIJNS_2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES6_EEEUlvE0_ZNS5_15MakeCallPromiseES6_SG_EUlvE1_EENS_14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS5_15MakeCallPromiseES6_SG_EUlSN_E_EEEEEEZNS5_15MakeCallPromiseES6_SG_EUlvE2_EEDaOT_OT0_.exit

_ZN9grpc_core8OnCancelINS_4RaceIJNS_2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES6_EEEUlvE0_ZNS5_15MakeCallPromiseES6_SG_EUlvE1_EENS_14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS5_15MakeCallPromiseES6_SG_EUlSN_E_EEEEEEZNS5_15MakeCallPromiseES6_SG_EUlvE2_EEDaOT_OT0_.exit: ; preds = %bb.an, %bb.ao
  %i.ee = phi i8 [ %.pre, %bb.ao ], [ %i.cf, %bb.an ] ; 2 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !144
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i8 0, ptr %i.ef, align 16, !tbaa !187
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.eh = trunc nuw i8 %i.ee to i1
  store i8 %i.ee, ptr %i.eg, align 16, !tbaa !181
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  br i1 %i.eh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN9grpc_core8OnCancelINS_4RaceIJNS_2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES6_EEEUlvE0_ZNS5_15MakeCallPromiseES6_SG_EUlvE1_EENS_14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS5_15MakeCallPromiseES6_SG_EUlSN_E_EEEEEEZNS5_15MakeCallPromiseES6_SG_EUlvE2_EEDaOT_OT0_.exit
  %i.ej = load i64, ptr %i.dm, align 8, !tbaa !189
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !189
  br label %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit.i

bb.aq:                                            ; preds = %_ZN9grpc_core8OnCancelINS_4RaceIJNS_2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES6_EEEUlvE0_ZNS5_15MakeCallPromiseES6_SG_EUlvE1_EENS_14promise_detail6TrySeqIZNS_18InterActivityLatchINS_11CallHandlerEE4WaitEvEUlvE_JZNS5_15MakeCallPromiseES6_SG_EUlSN_E_EEEEEEZNS5_15MakeCallPromiseES6_SG_EUlvE2_EEDaOT_OT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !tbaa.struct !695
  br label %_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit.i

_ZN9grpc_core2IfIbZNS_23V3InterceptorToV2BridgeINS_15CompositeFilterEE15MakeCallPromiseENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEES4_EEEUlvE0_ZNS3_15MakeCallPromiseES4_SE_EUlvE1_EC2EOSH_.exit.i: ; preds = %bb.aq, %bb.ap
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.em = load i8, ptr %i.do, align 16, !tbaa !178
  store i8 %i.em, ptr %i.el, align 16, !tbaa !178
  %i.en = load i64, ptr %i.dn, align 16, !tbaa !693
  store i64 %i.en, ptr %i.ek, align 16, !tbaa !693
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.ep = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !139
  store ptr null, ptr %i.dp, align 8, !tbaa !101
  store <2 x ptr> %i.ep, ptr %i.eo, align 8, !tbaa !139
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.er = load i8, ptr %i.dr, align 8, !tbaa !140
  store i8 %i.er, ptr %i.eq, align 8, !tbaa !140
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.et = load i64, ptr %i.ds, align 16, !tbaa !142
  store i64 %i.et, ptr %i.es, align 16, !tbaa !142
  store ptr null, ptr %i.ds, align 16, !tbaa !142
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !172
  store ptr null, ptr %i.dt, align 8, !tbaa !172
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !184
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ew, ptr noundef nonnull align 16 dereferenceable(32) %i.du, i64 32, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ex, i8 0, i64 24, i1 false)
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !173
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !173
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !174 ; 2 uses
end_hunk_0
