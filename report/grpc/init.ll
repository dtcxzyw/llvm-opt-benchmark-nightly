Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/init?download=true
inline.NumInlined: 1726
inline.NumDeleted: 1104
begin_hunk_0_@_ZZN9grpc_core14filters_detail9AddOpImplINS_16ClientAuthFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFNS_2IfIbZNS8_23OnClientInitialMetadataES7_PS2_EUlvE_ZNS8_23OnClientInitialMetadataES7_SA_EUlvE0_EES7_SA_EXadL_ZNS8_23OnClientInitialMetadataES7_SA_EEvE3AddESA_mRNS0_6LayoutIS7_EEEN7Promise8PollOnceEv:bb.a

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.be ], [ %i.gb, %bb.bd ]
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.bm

bb.bg:                                            ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit77, %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit65, %bb.at
  %i.gd = load i8, ptr %8, align 8, !tbaa !282, !range !37, !noundef !38
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bh, label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18

bb.bh:                                            ; preds = %bb.bg
  %i.gf = load i64, ptr %i.eo, align 8, !tbaa !35 ; 3 uses
  %i.gg = icmp eq i64 %i.gf, 1
  br i1 %i.gg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i79, label %bb.bj

_ZN4absl12lts_202505126StatusD2Ev.exit.i79:       ; preds = %bb.bh
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !161 ; 3 uses
  %.not.i.i80 = icmp ne ptr %i.gj, null
  %i.gk = load i8, ptr %i.gh, align 8, !range !37
  %i.gl = trunc nuw i8 %i.gk to i1
  %or.cond.i.i81 = select i1 %.not.i.i80, i1 %i.gl, i1 false
  br i1 %or.cond.i.i81, label %bb.bi, label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18

bb.bi:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i79
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.gj) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 664) #37
  br label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18

bb.bj:                                            ; preds = %bb.bh
  %i.gm = trunc i64 %i.gf to i1
  br i1 %i.gm, label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gn = inttoptr i64 %i.gf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gn)
          to label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #35
  unreachable

_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit18: ; preds = %bb.bk, %bb.bj, %bb.bi, %_ZN4absl12lts_202505126StatusD2Ev.exit.i79, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void

bb.bm:                                            ; preds = %bb.bf, %bb.ay
  %.pn14.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.ay ], [ %.pn.pn, %bb.bf ]
  %i.gq = load i8, ptr %8, align 8, !tbaa !282, !range !37, !noundef !38
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bn, label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eo) #31
  br label %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit

_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef align 8 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::ArenaPromise", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::PromiseLike.241", align 16 ; 11 uses
  %6 = alloca %"class.grpc_core::If", align 16    ; 15 uses
  tail call void @_ZN9grpc_core16ClientAuthFilter14InstallContextEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !71
  %i.d = and i16 %i.c, 2
  %.not.i.i.not.i = icmp eq i16 %i.d, 0           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.e = zext i1 %.not.i.i.not.i to i8            ; 2 uses
  store i8 %i.e, ptr %6, align 16, !tbaa !163
  br i1 %.not.i.i.not.i, label %.thread41.a, label %bb.b

.thread41.a:                                      ; preds = %bb.a
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = load i8, ptr %2, align 8, !tbaa !159, !noalias !300
  store ptr null, ptr %i.a, align 8, !tbaa !161, !noalias !300
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.g, ptr %i.h, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.f, ptr %i.i, align 16, !tbaa !161
  store i8 %i.e, ptr %0, align 16, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !301
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143, !noalias !301 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !202, !noalias !301
  %.not.i.i.i4 = icmp eq ptr %i.n, null           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !301
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.r = select i1 %.not.i.i.i4, ptr %i.q, ptr %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noalias !301 ; 2 uses
  %i.u = and i64 %i.t, 255
  %i.v = select i1 %.not.i.i.i4, i64 %i.u, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140, !noalias !301
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !43, !noalias !301
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !301
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ArenaPromise") align 16 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 %i.v, ptr %i.r, ptr noundef %i.x), !noalias !301, !inline_history !299
  %i.ab = load i8, ptr %2, align 8, !tbaa !159, !noalias !301
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !161, !noalias !301
  store ptr null, ptr %i.a, align 8, !tbaa !161, !noalias !301
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i8 0, ptr %i.ad, align 16, !tbaa !166, !alias.scope !301
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 16, !alias.scope !301
  %i.af = load ptr, ptr %4, align 16, !tbaa !171, !noalias !301 ; 2 uses
  store ptr %i.af, ptr %5, align 16, !tbaa !171, !alias.scope !301
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !302, !noalias !301
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.ah(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ai)
          to label %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %3, ptr %i.am, align 16, !tbaa !186, !alias.scope !301
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 %i.ab, ptr %i.an, align 8, !tbaa !159, !alias.scope !301
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 %i.ac, ptr %i.ao, align 16, !tbaa !161, !alias.scope !301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !301
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.aq = load i8, ptr %i.ad, align 16, !tbaa !166
  store i8 %i.aq, ptr %i.ap, align 16, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 0, ptr %i.ar, align 16
  %i.as = load ptr, ptr %5, align 16, !tbaa !171  ; 2 uses
  store ptr %i.as, ptr %i.al, align 16, !tbaa !171
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !302
  invoke void %i.au(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ae)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #35
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit: ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %5, align 16, !tbaa !171
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ay = load ptr, ptr %i.am, align 16, !tbaa !186
  store ptr %i.ay, ptr %i.ax, align 16, !tbaa !186
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ba = load i8, ptr %i.an, align 8, !tbaa !159
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bc = load i64, ptr %i.ao, align 16, !tbaa !161
  store i64 %i.bc, ptr %i.bb, align 16, !tbaa !161
  store ptr null, ptr %i.ao, align 16, !tbaa !161
  %i.bd = load i8, ptr %i.ad, align 16, !tbaa !166
  %cond40 = icmp eq i8 %i.bd, 1
  br i1 %cond40, label %bb.e, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

bb.e:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %5) #31
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pre30 = load i8, ptr %6, align 16, !tbaa !163, !range !37 ; 2 uses
  %i.be = trunc nuw i8 %.pre30 to i1
  store i8 %.pre30, ptr %0, align 16, !tbaa !163
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %.pre = load i64, ptr %i.al, align 16           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = icmp eq i64 %.pre, 1
  br i1 %i.bg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7, label %.thread41

bb.g:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bj = load i8, ptr %i.ap, align 16, !tbaa !166
  store i8 %i.bj, ptr %i.bi, align 16, !tbaa !166
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.bk, align 16
  %i.bl = load ptr, ptr %i.al, align 16, !tbaa !171 ; 2 uses
  store ptr %i.bl, ptr %i.bh, align 16, !tbaa !171
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !302
  invoke void %i.bn(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ar)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit: ; preds = %bb.g
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.al, align 16, !tbaa !171
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.ax, align 16, !tbaa !186
  store ptr %i.br, ptr %i.bq, align 16, !tbaa !186
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i8, ptr %i.az, align 8, !tbaa !159
  store i8 %i.bt, ptr %i.bs, align 8, !tbaa !159
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load i64, ptr %i.bb, align 16, !tbaa !161
  store i64 %i.bv, ptr %i.bu, align 16, !tbaa !161
  store ptr null, ptr %i.bb, align 16, !tbaa !161
  %.pre31 = load i8, ptr %6, align 16, !tbaa !163, !range !37
  %i.bw = trunc nuw i8 %.pre31 to i1
  br i1 %i.bw, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread, label %bb.k

.thread41:                                        ; preds = %bb.f
  store i64 %.pre, ptr %i.bf, align 16, !tbaa !35
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7:    ; preds = %.thread41.a, %bb.f
  %i.bx = phi ptr [ %i.j, %.thread41.a ], [ %i.bf, %bb.f ]
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !159
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !159
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = load i64, ptr %i.cc, align 16, !tbaa !161
  store i64 %i.cd, ptr %i.cb, align 16, !tbaa !161
  store i64 1, ptr %i.bx, align 8, !tbaa !35
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread: ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit
  br i1 ptrtoint (ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE to i1), label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #35
  unreachable

bb.k:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit
  %i.cg = load i8, ptr %i.ap, align 16, !tbaa !166
  %cond = icmp eq i8 %i.cg, 1
  br i1 %cond, label %bb.l, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %i.al) #31
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit: ; preds = %bb.k, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7, %.thread41, %bb.l, %bb.i, %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = load i8, ptr %0, align 8, !range !37
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 664) #37
  br label %_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit

_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN9grpc_core16ClientAuthFilter14InstallContextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE8PollOnceEPNS0_7ArgTypeE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll.302") align 8 %0, ptr noundef %1) #8 comdat align 2 {
bb.a:
  tail call void @abort() #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE4MoveEPNS0_7ArgTypeES7_(ptr noundef %0, ptr noundef %1) #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7DestroyEPNS0_7ArgTypeE(ptr noundef %0) #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7ToProtoEPKNS0_7ArgTypeEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.a, align 4, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.30, i64 45), ptr %i.b, align 4
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 12, ptr %.sroa.56.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %.not.i = icmp ne ptr %i.e, null
  %i.f = load i8, ptr %i.c, align 8, !range !37
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.e) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 664) #37
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.a to i1
  br i1 %i.h, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !tbaa !188, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 16, !tbaa !190, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void %i.i(ptr noundef nonnull %i.j)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.f, align 16, !tbaa !35  ; 3 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i, label %bb.f

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i:   ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.q, null
  %i.r = load i8, ptr %i.o, align 8, !range !37
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit.sink.split, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.t = trunc i64 %i.m to i1
  br i1 %i.t, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = inttoptr i64 %i.m to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.c, align 16, !tbaa !35  ; 3 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, label %bb.j

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i:     ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !161 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ab, null
  %i.ac = load i8, ptr %i.z, align 8, !range !37
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit.sink.split, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = trunc i64 %i.x to i1
  br i1 %i.ae, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = inttoptr i64 %i.x to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #35
  unreachable

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit.sink.split: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i
  %.sink4 = phi ptr [ %i.q, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i ], [ %i.ab, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i ] ; 2 uses
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.sink4) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink4, i64 noundef 664) #37
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit: ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_ED2Ev.exit.sink.split, %bb.k, %bb.j, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, %bb.g, %bb.f, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i, %bb.c
  ret void
}

end_hunk_0
begin_hunk_1_@_ZZN9grpc_core14filters_detail9AddOpImplINS_16ClientAuthFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFNS_2IfIbZNS8_23OnClientInitialMetadataES7_PS2_EUlvE_ZNS8_23OnClientInitialMetadataES7_SA_EUlvE0_EES7_SA_EXadL_ZNS8_23OnClientInitialMetadataES7_SA_EEvE3AddESA_mRNS0_6LayoutIS7_EEEN7PromiseD2Ev:bb.a
bb.k:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEvED2Ev.exit.i.i
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.y) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 664) #37
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit: ; preds = %bb.k, %_ZN9grpc_core14promise_detail11PromiseLikeINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEvED2Ev.exit.i.i, %bb.j, %bb.e, %bb.d, %bb.c, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2ES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !159
  store i8 %i.a, ptr %0, align 8, !tbaa !159
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !161
  store i64 %i.d, ptr %i.b, align 8, !tbaa !161
  store ptr null, ptr %i.c, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %2, align 8, !tbaa !159
  store i8 %i.f, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !161
  store i64 %i.i, ptr %i.g, align 8, !tbaa !161
  store ptr null, ptr %i.h, align 8, !tbaa !161
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !161
  %.not.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !161
  %.not.i9 = icmp eq ptr %i.k, null
  %i.l = xor i1 %.not.i, %.not.i9
  br i1 %i.l, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.35, i32 noundef 293, ptr noundef nonnull @.str.36) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #31
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  unreachable

.critedge:                                        ; preds = %bb.a
  ret void
}

declare void @_ZN9grpc_core33CancelledServerMetadataFromStatusERKN4absl12lts_202505126StatusE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.223") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If.246") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.386", align 8 ; 7 uses
  %4 = alloca %"class.grpc_core::promise_detail::PromiseLike.251", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.382", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::promise_detail::PromiseLike.248", align 16 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::StatusOr.372", align 8 ; 9 uses
  %8 = alloca %class.anon.380, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN9grpc_core16ClientAuthFilter12GetCallCredsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.372") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load i64, ptr %7, align 8, !tbaa !35     ; 4 uses
  %i.b = icmp eq i64 %i.a, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %1, ptr %8, align 8, !tbaa !320
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.c, align 8, !tbaa !321
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = load i8, ptr %2, align 8, !tbaa !159     ; 4 uses
  store i8 %i.e, ptr %i.d, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !161  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !161
  %i.i = zext i1 %i.b to i8
  store i8 %i.i, ptr %0, align 16, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 %i.e, ptr %i.j, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.h, ptr %i.k, align 8, !tbaa !161
  store ptr null, ptr %i.f, align 8, !tbaa !161
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !323, !noalias !322, !nonnull !38, !align !208 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !322
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %.noexc unwind label %.body5

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !320, !noalias !322
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211, !noalias !322
  %i.s = icmp ne ptr %i.r, null                   ; 2 uses
  %i.t = zext i1 %i.s to i8                       ; 2 uses
  store i8 %i.t, ptr %6, align 16, !tbaa !190, !alias.scope !322
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !322
  store ptr %i.p, ptr %3, align 8, !tbaa !134, !noalias !322
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !321, !noalias !322
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !324, !noalias !322
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.s, label %bb.d, label %.thread22

bb.d:                                             ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !322
  invoke void @_ZZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Map") align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc4 unwind label %.body5

.noexc4:                                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i64 0, ptr %i.v, align 16, !alias.scope !322
  %i.w = load ptr, ptr %4, align 16, !tbaa !194, !noalias !322 ; 2 uses
  store ptr %i.w, ptr %i.u, align 16, !tbaa !194, !alias.scope !322
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !196, !noalias !322
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.y(ptr noundef nonnull %i.v, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc4
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable

.thread22:                                        ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  store ptr null, ptr %i.k, align 8, !tbaa !161, !noalias !325
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.e, ptr %i.ac, align 8, !tbaa !159, !alias.scope !322
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !322
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.ad, align 16, !tbaa !190
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !322
  %.pre = load i8, ptr %6, align 16, !tbaa !190, !range !37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !322
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = trunc nuw i8 %.pre to i1
  store i8 %.pre, ptr %i.af, align 16, !tbaa !190
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.ai, align 16
  %i.aj = load ptr, ptr %i.u, align 16, !tbaa !194 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 16, !tbaa !194
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !196
  invoke void %i.al(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.v)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

bb.i:                                             ; preds = %bb.f
  %.pr = load i64, ptr %i.u, align 16             ; 2 uses
  %i.ao = icmp eq i64 %.pr, 1
  br i1 %i.ao, label %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, label %.thread25

._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre25 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !159
  %.pre27 = load i64, ptr %i.v, align 16, !tbaa !161
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit: ; preds = %bb.g
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE, ptr %i.u, align 16, !tbaa !194
  %.pre13 = load i8, ptr %6, align 16, !tbaa !190, !range !37
  %i.ap = trunc nuw i8 %.pre13 to i1
  br i1 %i.ap, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, label %bb.j

.thread25:                                        ; preds = %bb.i
  store i64 %.pr, ptr %i.ah, align 16, !tbaa !35
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i:   ; preds = %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, %.thread22
  %i.aq = phi i64 [ %i.h, %.thread22 ], [ %.pre27, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.ar = phi i8 [ %i.e, %.thread22 ], [ %.pre25, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.as = phi ptr [ %i.ae, %.thread22 ], [ %i.ah, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ar, ptr %i.at, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aq, ptr %i.au, align 16, !tbaa !161
  store i64 1, ptr %i.as, align 8, !tbaa !35
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

bb.j:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #35
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i, %.thread25, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

.body5:                                           ; preds = %bb.d, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %i.ax

bb.l:                                             ; preds = %bb.a
  %i.ay = trunc i64 %i.a to i1
  br i1 %i.ay, label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = inttoptr i64 %i.a to ptr
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4, !noalias !326 ; 0 uses
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.bb, align 16, !tbaa !35
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i = icmp ne ptr %i.bc, null
  %i.bd = load i8, ptr %i.j, align 8, !range !37
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.be, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

bb.n:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.bc) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 664) #37
  br label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit: ; preds = %bb.n, %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pre14 = load i64, ptr %7, align 8, !tbaa !35  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bf = icmp eq i64 %.pre14, 1
  br i1 %i.bf, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.s

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !211 ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i7, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bi, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i = and i64 %i.bj, -4294967296
  %i.bk = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.bk, label %bb.p, label %.noexc.i.i, !prof !39

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.noexc.i.i unwind label %bb.r, !inline_history !5

.noexc.i.i:                                       ; preds = %bb.p, %bb.o
  %i.bo = atomicrmw sub ptr %i.bi, i64 1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, !prof !39

bb.q:                                             ; preds = %.noexc.i.i
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(20) %i.bh) #31, !inline_history !318
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #35
  unreachable

bb.s:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bv = trunc i64 %.pre14 to i1
  br i1 %i.bv, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %.pre14 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #35
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %.noexc.i.i, %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void
}

declare void @_ZN9grpc_core16ClientAuthFilter12GetCallCredsEv(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.372") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %.not.i = icmp ne ptr %i.c, null
  %i.d = load i8, ptr %i.a, align 8, !range !37
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 664) #37
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.f

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211  ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.f, -4294967296
  %i.g = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.g, label %bb.c, label %.noexc.i, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i unwind label %bb.e, !inline_history !5

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %i.k = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, !prof !39

bb.d:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(20) %i.d) #31, !inline_history !6
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.r = trunc i64 %i.a to i1
  br i1 %i.r, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #35
  unreachable

_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.d, %.noexc.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
