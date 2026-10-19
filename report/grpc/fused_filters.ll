Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/fused_filters?download=true
inline.NumInlined: 9212
inline.NumDeleted: 3110
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN9grpc_core8OnCancelINS_3MapINS_4RaceIJZNS_5LatchISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE4WaitEvEUlvE_NS_14promise_detail6TrySeqINSC_INSB_9ImmediateINS_22ServerMetadataOrHandleIS5_EEEEJNS_14filters_detail11AdaptMethodIS5_MNS_16ClientAuthFilter4CallEFNS_2IfIbZNSK_23OnClientInitialMetadataES8_PSJ_EUlvE_ZNSK_23OnClientInitialMetadataES8_SM_EUlvE0_EES8_SM_EXadL_ZNSK_23OnClientInitialMetadataES8_SM_EEvEENSI_IS5_MNS_25ClientLoadReportingFilter4CallEFvRS5_EXadL_ZNSU_23OnClientInitialMetadataESV_EEvEENSI_IS5_MNS_23ClientMessageSizeFilter4CallEFvSV_PSZ_EXadL_ZNS10_23OnClientInitialMetadataESV_S11_EEvEENSI_IS5_MNS_16HttpClientFilter4CallEFvSV_PS15_EXadL_ZNS16_23OnClientInitialMetadataESV_S17_EEvEENSI_IS5_MNS_23ClientCompressionFilter4CallEFvSV_PS1B_EXadL_ZNS1C_23OnClientInitialMetadataESV_S1D_EEvEEEEEJZNS_21promise_filter_detail11RunCallImplIMNSH_31FuseImplOnClientInitialMetadataILNSH_13MethodVariantE2ENSH_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterESJ_ST_SZ_S15_S1B_EEEJS1O_SJ_ST_SZ_S15_S1B_EEEFS1H_S8_PS1P_ES1P_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS8_EES1V_EEPNS1I_14FilterCallDataIS1P_EEEUlS8_E_EEEEEEZNS1I_9MapResultIS26_NSH_32FuseImplOnServerTrailingMetadataILS1L_1ES1P_JS1O_SJ_ST_SZ_S15_S1B_EEES1P_vEEDaMT0_FvSV_ET_PNS21_IT1_EEEUlS8_E_EEZNS27_IS26_S29_S1P_vEEDaS2C_S2D_S2G_EUlvE_EEDaOS2D_OS2A_ENUlvE_clEv:bb.a
  %i.pk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i8 %i.pj, ptr %i.pk, align 8, !tbaa !211
  %i.pl = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 %i.pi, ptr %i.pl, align 8, !tbaa !212
  %.phi.trans.insert437 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %.pre438 = load ptr, ptr %.phi.trans.insert437, align 8, !tbaa !212 ; 3 uses
  %.phi.trans.insert439 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %.pre440 = load i8, ptr %.phi.trans.insert439, align 8, !range !251
  %.not.i.i202 = icmp ne ptr %.pre438, null
  %i.pm = trunc nuw i8 %.pre440 to i1
  %or.cond.i.i203 = select i1 %.not.i.i202, i1 %i.pm, i1 false
  br i1 %or.cond.i.i203, label %bb.dn, label %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i.thread

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.pre438) #29
  call void @_ZdlPvm(ptr noundef nonnull %.pre438, i64 noundef 664) #32
  br label %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i.thread

_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i.thread: ; preds = %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29, !noalias !986
  br label %.thread364

_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i: ; preds = %_ZN9grpc_core14promise_detail18OncePromiseFactoryISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEZNS_21promise_filter_detail11RunCallImplIMNS_14filters_detail31FuseImplOnClientInitialMetadataILNS9_13MethodVariantE2ENS9_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJSE_SF_SG_SH_SI_SJ_EEEFNS0_6TrySeqINS0_9ImmediateINS_22ServerMetadataOrHandleIS3_EEEEJNS9_11AdaptMethodIS3_MNSF_4CallEFNS_2IfIbZNSS_23OnClientInitialMetadataES6_PSF_EUlvE_ZNSS_23OnClientInitialMetadataES6_SU_EUlvE0_EES6_SU_EXadL_ZNSS_23OnClientInitialMetadataES6_SU_EEvEENSR_IS3_MNSG_4CallEFvRS3_EXadL_ZNS11_23OnClientInitialMetadataES12_EEvEENSR_IS3_MNSH_4CallEFvS12_PSH_EXadL_ZNS16_23OnClientInitialMetadataES12_S17_EEvEENSR_IS3_MNSI_4CallEFvS12_PSI_EXadL_ZNS1B_23OnClientInitialMetadataES12_S1C_EEvEENSR_IS3_MNSJ_4CallEFvS12_PSJ_EXadL_ZNS1G_23OnClientInitialMetadataES12_S1H_EEv201
  store i8 1, ptr %i.p, align 16, !tbaa !224, !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29, !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29, !noalias !986
  br label %.noexc4

.noexc4:                                          ; preds = %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29, !noalias !986
  %i.pn = load ptr, ptr %i.o, align 16, !tbaa !254, !noalias !1020
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !374, !noalias !1020
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void %i.po(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Poll.645") align 8 %34, ptr noundef nonnull %i.pp), !inline_history !11
  %i.pq = load i8, ptr %34, align 8, !tbaa !355, !range !251, !noalias !986, !noundef !252
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %.thread371, label %bb.dp

_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit.i: ; preds = %.noexc10
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29, !noalias !986
  call void @_ZN9grpc_core22ServerMetadataOrHandleI19grpc_metadata_batchED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.oh) #29, !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29, !noalias !986
  br label %common.resume

common.resume:                                    ; preds = %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit80.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit82.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit84.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit86.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit88.i, %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit.i, %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit66, %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit45, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit.i, %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body220, %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit.i ], [ %i.ps, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit.i ], [ %.pn57.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit86.i ], [ %.pn53.i, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit88.i ], [ %eh.lpad-body106, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit80.i ], [ %eh.lpad-body102, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit82.i ], [ %eh.lpad-body98, %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit84.i ], [ %i.ft, %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit45 ], [ %i.dg, %_ZN9grpc_core4PollIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEED2Ev.exit.i ], [ %.pn17.i, %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit66 ]
  resume { ptr, i32 } %common.resume.op

bb.do:                                            ; preds = %bb.a
  %i.pt = load i8, ptr %i.b, align 8, !tbaa !211, !noalias !985
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !212, !noalias !985
  store ptr null, ptr %i.pu, align 8, !tbaa !212, !noalias !985
  store i8 1, ptr %36, align 8, !tbaa !355, !alias.scope !984, !noalias !983
  %i.pw = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i8 %i.pt, ptr %i.pw, align 8, !tbaa !211, !noalias !983
  %i.px = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 %i.pv, ptr %i.px, align 8, !tbaa !212, !noalias !983
  br label %.thread364

.thread371:                                       ; preds = %.noexc4
  %i.py = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !211
  %.sroa.gep245 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.qa = load i64, ptr %.sroa.gep245, align 8, !tbaa !212
  %i.qb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i8 %i.pz, ptr %i.qb, align 8, !tbaa !211
  %i.qc = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 %i.qa, ptr %i.qc, align 8, !tbaa !212
  store i8 1, ptr %36, align 8, !tbaa !355, !alias.scope !986
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29, !noalias !986
  br label %.thread364

bb.dp:                                            ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29, !noalias !986
  br label %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2EOS6_.exit

.thread364:                                       ; preds = %_ZN9grpc_core4PollINS_22ServerMetadataOrHandleI19grpc_metadata_batchEEED2Ev.exit17.i.thread, %bb.do, %.thread371
  %i.qd = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.qf = load i8, ptr %i.qd, align 8, !tbaa !211, !noalias !1021 ; 2 uses
  store i8 %i.qf, ptr %35, align 8, !tbaa !211, !noalias !1021
  %i.qg = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.qh = load i64, ptr %.sroa.gep, align 8, !tbaa !212, !noalias !1021 ; 3 uses
  store i64 %i.qh, ptr %i.qg, align 8, !tbaa !212, !noalias !1021
  store ptr null, ptr %.sroa.gep, align 8, !tbaa !212, !noalias !1021
  %i.qi = load ptr, ptr %i.qe, align 16, !tbaa !1023, !noalias !1024 ; 2 uses
  %.cast = inttoptr i64 %i.qh to ptr              ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !1024
  invoke void @_ZN9grpc_core16HttpClientFilter4Call24OnServerTrailingMetadataER19grpc_metadata_batch(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.qj, ptr noundef nonnull align 8 dereferenceable(664) %.cast)
          to label %.noexc218 unwind label %bb.dv

.noexc218:                                        ; preds = %.thread364
  %i.qk = load i64, ptr %2, align 8, !tbaa !76, !noalias !1024
  %i.ql = icmp eq i64 %i.qk, 1
  br i1 %i.ql, label %_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i, label %bb.dq

bb.dq:                                            ; preds = %.noexc218
  invoke void @_ZN9grpc_core27SetServerMetadataFromStatusER19grpc_metadata_batchRKN4absl12lts_202505126StatusE(ptr noundef nonnull align 8 dereferenceable(664) %.cast, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ds unwind label %bb.dr, !noalias !1024

bb.dr:                                            ; preds = %bb.dq
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29, !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !1024
  br label %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit.i

bb.ds:                                            ; preds = %bb.dq
  %.pre.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !76, !noalias !1024 ; 2 uses
  %i.qn = trunc i64 %.pre.i.i.i.i.i to i1
  br i1 %i.qn, label %_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qo = inttoptr i64 %.pre.i.i.i.i.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.qo)
          to label %_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i unwind label %bb.du, !noalias !1024

bb.du:                                            ; preds = %bb.dt
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #33, !noalias !1024
  unreachable

_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i: ; preds = %bb.dt, %bb.ds, %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !1024
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  invoke void @_ZN9grpc_core25ClientLoadReportingFilter4Call24OnServerTrailingMetadataER19grpc_metadata_batch(ptr noundef nonnull align 8 dereferenceable(9) %i.qr, ptr noundef nonnull align 8 dereferenceable(664) %.cast)
          to label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit233 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i, %.thread364
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit.i

_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit.i: ; preds = %bb.dr, %bb.dv
  %eh.lpad-body220 = phi { ptr, i32 } [ %i.qs, %bb.dv ], [ %i.qm, %bb.dr ]
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #29, !noalias !983
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qd) #29, !noalias !983
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !983
  br label %common.resume

_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2EOS6_.exit: ; preds = %.thread368, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !983
  br label %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit233: ; preds = %_ZN9grpc_core14filters_detail32FuseImplOnServerTrailingMetadataILNS0_13MethodVariantE1ENS0_11FusedFilterILNS_14FilterEndpointE0ELh13EJNS_21ClientAuthorityFilterENS_16ClientAuthFilterENS_25ClientLoadReportingFilterENS_23ClientMessageSizeFilterENS_16HttpClientFilterENS_23ClientCompressionFilterEEEEJS5_S6_S7_S8_S9_SA_EE24OnServerTrailingMetadataER19grpc_metadata_batch.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !983
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.qt, align 16, !tbaa !250
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.qf, ptr %i.qu, align 8, !tbaa !211
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.qh, ptr %i.qv, align 8, !tbaa !212
  br label %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit

_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit: ; preds = %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2EOS6_.exit, %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit233
  %.sroa.0.0379387 = phi i8 [ 0, %_ZN9grpc_core4PollISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2EOS6_.exit ], [ 1, %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit233 ]
  store i8 %.sroa.0.0379387, ptr %0, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core14filters_detail11AdaptMethodI19grpc_metadata_batchMNS_16ClientAuthFilter4CallEFNS_2IfIbZNS4_23OnClientInitialMetadataESt10unique_ptrIS2_NS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EES9_SA_EXadL_ZNS4_23OnClientInitialMetadataES9_SA_EEvEclES9_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Map.309") align 16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::If", align 16    ; 14 uses
  %4 = alloca %"class.std::unique_ptr.75", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = load ptr, ptr %1, align 8, !tbaa !1026
  %i.b = load i8, ptr %2, align 8, !tbaa !211
  store i8 %i.b, ptr %4, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !212
  store i64 %i.e, ptr %i.c, align 8, !tbaa !212
  store ptr null, ptr %i.d, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1027
  invoke void @_ZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::If") align 16 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 %4, ptr noundef %i.g)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %3, align 16, !tbaa !333, !range !251, !noundef !252 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  store i8 %i.h, ptr %0, align 16, !tbaa !333
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 16             ; 2 uses
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, label %.thread

.thread:                                          ; preds = %bb.c
  store i64 %i.l, ptr %i.j, align 16, !tbaa !76
  store i64 55, ptr %i.k, align 16, !tbaa !76
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16, !tbaa !336
  store i8 %i.p, ptr %i.n, align 16, !tbaa !336
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.q, align 16
  %i.r = load ptr, ptr %i.k, align 16, !tbaa !340 ; 2 uses
  store ptr %i.r, ptr %i.j, align 16, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !375
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void %i.t(ptr noundef nonnull %i.q, ptr noundef nonnull %i.u)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit: ; preds = %bb.d
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.k, align 16, !tbaa !340
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !377
  store ptr %i.z, ptr %i.x, align 16, !tbaa !377
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !211
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 16, !tbaa !212
  store i64 %i.af, ptr %i.ad, align 16, !tbaa !212
  store ptr null, ptr %i.ae, align 16, !tbaa !212
  %.pre = load i8, ptr %3, align 16, !tbaa !333, !range !251
  %i.ag = trunc nuw i8 %.pre to i1
  br i1 %i.ag, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit.thread, label %bb.h

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i:     ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i8, ptr %i.ah, align 8, !tbaa !211
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 16, !tbaa !212
  store i64 %i.am, ptr %i.ak, align 16, !tbaa !212
  store ptr null, ptr %i.al, align 16, !tbaa !212
  store i64 1, ptr %i.j, align 16, !tbaa !76
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit.thread: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit
  br i1 ptrtoint (ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE to i1), label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit.thread
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable

bb.h:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit
  %i.ap = load i8, ptr %i.o, align 16, !tbaa !336
  %cond = icmp eq i8 %i.ap, 1
  br i1 %cond, label %bb.i, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4

bb.i:                                             ; preds = %bb.h
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %i.k) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4: ; preds = %bb.h, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, %.thread, %bb.i, %bb.f, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvEC2EOSD_.exit.thread
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !212 ; 3 uses
  %.not.i = icmp ne ptr %i.aq, null
  %i.ar = load i8, ptr %4, align 8, !range !251
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i = select i1 %.not.i, i1 %i.as, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.j:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.aq) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 664) #32
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit4, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.k:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef align 8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::ArenaPromise.327", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::PromiseLike.322", align 16 ; 11 uses
  %6 = alloca %"class.grpc_core::If", align 16    ; 15 uses
  tail call void @_ZN9grpc_core16ClientAuthFilter14InstallContextEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !44
  %i.d = and i16 %i.c, 2
  %.not.i.i.not.i = icmp eq i16 %i.d, 0           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.e = zext i1 %.not.i.i.not.i to i8            ; 2 uses
  store i8 %i.e, ptr %6, align 16, !tbaa !333
  br i1 %.not.i.i.not.i, label %.thread41.a, label %bb.b

.thread41.a:                                      ; preds = %bb.a
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = load i8, ptr %2, align 8, !tbaa !211, !noalias !1035
  store ptr null, ptr %i.a, align 8, !tbaa !212, !noalias !1035
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.g, ptr %i.h, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.f, ptr %i.i, align 16, !tbaa !212
  store i8 %i.e, ptr %0, align 16, !tbaa !333
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1036
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147, !noalias !1036 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !285, !noalias !1036
  %.not.i.i.i4 = icmp eq ptr %i.n, null           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1036
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.r = select i1 %.not.i.i.i4, ptr %i.q, ptr %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noalias !1036 ; 2 uses
  %i.u = and i64 %i.t, 255
  %i.v = select i1 %.not.i.i.i4, i64 %i.u, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144, !noalias !1036
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !42, !noalias !1036
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1036
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ArenaPromise.327") align 16 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 %i.v, ptr %i.r, ptr noundef %i.x), !noalias !1036, !inline_history !1034
  %i.ab = load i8, ptr %2, align 8, !tbaa !211, !noalias !1036
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !212, !noalias !1036
  store ptr null, ptr %i.a, align 8, !tbaa !212, !noalias !1036
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i8 0, ptr %i.ad, align 16, !tbaa !336, !alias.scope !1036
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 16, !alias.scope !1036
  %i.af = load ptr, ptr %4, align 16, !tbaa !340, !noalias !1036 ; 2 uses
  store ptr %i.af, ptr %5, align 16, !tbaa !340, !alias.scope !1036
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !375, !noalias !1036
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.ah(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ai)
          to label %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #33
  unreachable

_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %3, ptr %i.am, align 16, !tbaa !377, !alias.scope !1036
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 %i.ab, ptr %i.an, align 8, !tbaa !211, !alias.scope !1036
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 %i.ac, ptr %i.ao, align 16, !tbaa !212, !alias.scope !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1036
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.aq = load i8, ptr %i.ad, align 16, !tbaa !336
  store i8 %i.aq, ptr %i.ap, align 16, !tbaa !336
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 0, ptr %i.ar, align 16
  %i.as = load ptr, ptr %5, align 16, !tbaa !340  ; 2 uses
  store ptr %i.as, ptr %i.al, align 16, !tbaa !340
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !375
  invoke void %i.au(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ae)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #33
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit: ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %5, align 16, !tbaa !340
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ay = load ptr, ptr %i.am, align 16, !tbaa !377
  store ptr %i.ay, ptr %i.ax, align 16, !tbaa !377
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ba = load i8, ptr %i.an, align 8, !tbaa !211
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !211
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bc = load i64, ptr %i.ao, align 16, !tbaa !212
  store i64 %i.bc, ptr %i.bb, align 16, !tbaa !212
  store ptr null, ptr %i.ao, align 16, !tbaa !212
  %i.bd = load i8, ptr %i.ad, align 16, !tbaa !336
  %cond40 = icmp eq i8 %i.bd, 1
  br i1 %cond40, label %bb.e, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

bb.e:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %5) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre30 = load i8, ptr %6, align 16, !tbaa !333, !range !251 ; 2 uses
  %i.be = trunc nuw i8 %.pre30 to i1
  store i8 %.pre30, ptr %0, align 16, !tbaa !333
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %.pre = load i64, ptr %i.al, align 16           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = icmp eq i64 %.pre, 1
  br i1 %i.bg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7, label %.thread

.thread:                                          ; preds = %bb.f
  store i64 %.pre, ptr %i.bf, align 16, !tbaa !76
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bj = load i8, ptr %i.ap, align 16, !tbaa !336
  store i8 %i.bj, ptr %i.bi, align 16, !tbaa !336
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.bk, align 16
  %i.bl = load ptr, ptr %i.al, align 16, !tbaa !340 ; 2 uses
  store ptr %i.bl, ptr %i.bh, align 16, !tbaa !340
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !375
  invoke void %i.bn(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ar)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #33
  unreachable

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit: ; preds = %bb.g
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.al, align 16, !tbaa !340
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.ax, align 16, !tbaa !377
  store ptr %i.br, ptr %i.bq, align 16, !tbaa !377
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i8, ptr %i.az, align 8, !tbaa !211
  store i8 %i.bt, ptr %i.bs, align 8, !tbaa !211
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load i64, ptr %i.bb, align 16, !tbaa !212
  store i64 %i.bv, ptr %i.bu, align 16, !tbaa !212
  store ptr null, ptr %i.bb, align 16, !tbaa !212
  %.pre31 = load i8, ptr %6, align 16, !tbaa !333, !range !251
  %i.bw = trunc nuw i8 %.pre31 to i1
  br i1 %i.bw, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread, label %bb.k

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7:    ; preds = %.thread41.a, %bb.f
  %i.bx = phi ptr [ %i.j, %.thread41.a ], [ %i.bf, %bb.f ]
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !211
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !211
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = load i64, ptr %i.cc, align 16, !tbaa !212
  store i64 %i.cd, ptr %i.cb, align 16, !tbaa !212
  store i64 1, ptr %i.bx, align 8, !tbaa !76
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
  call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

bb.k:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit
  %i.cg = load i8, ptr %i.ap, align 16, !tbaa !336
  %cond = icmp eq i8 %i.cg, 1
  br i1 %cond, label %bb.l, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %i.al) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit: ; preds = %bb.k, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i7, %.thread, %bb.l, %bb.i, %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EOSB_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

declare void @_ZN9grpc_core16ClientAuthFilter14InstallContextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE8PollOnceEPNS0_7ArgTypeE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll.652") align 8 %0, ptr noundef %1) #17 comdat align 2 {
bb.a:
  tail call void @abort() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE4MoveEPNS0_7ArgTypeES7_(ptr noundef %0, ptr noundef %1) #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7DestroyEPNS0_7ArgTypeE(ptr noundef %0) #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7ToProtoEPKNS0_7ArgTypeEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.a, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.31, i64 45), ptr %i.b, align 4
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 12, ptr %.sroa.56.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEZNS_14filters_detail11AdaptMethodIS7_MS5_FSE_SA_SB_EXadL_ZNS5_23OnClientInitialMetadataESA_SB_EEvEclESA_EUlN4absl12lts_202505128StatusOrISA_EEE_EEvEC2EOSQ_(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !tbaa !333, !range !251, !noundef !252 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  store i8 %i.a, ptr %0, align 16, !tbaa !333
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 16, !tbaa !76  ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.g, align 8, !tbaa !211
  store i8 %i.i, ptr %i.h, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !tbaa !212
  store i64 %i.l, ptr %i.j, align 16, !tbaa !212
  store ptr null, ptr %i.k, align 16, !tbaa !212
  store i64 1, ptr %i.c, align 16, !tbaa !76
  br label %_ZN9grpc_core3MapINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES8_S9_EUlvE0_EEZNS_14filters_detail11AdaptMethodIS5_MS3_FSC_S8_S9_EXadL_ZNS3_23OnClientInitialMetadataES8_S9_EEvEclES8_EUlN4absl12lts_202505128StatusOrIS8_EEE_EC2EOSN_.exit

bb.d:                                             ; preds = %bb.b
  store i64 %i.e, ptr %i.c, align 16, !tbaa !76
  store i64 55, ptr %i.d, align 16, !tbaa !76
  br label %_ZN9grpc_core3MapINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES8_S9_EUlvE0_EEZNS_14filters_detail11AdaptMethodIS5_MS3_FSC_S8_S9_EXadL_ZNS3_23OnClientInitialMetadataES8_S9_EEvEclES8_EUlN4absl12lts_202505128StatusOrIS8_EEE_EC2EOSN_.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i8, ptr %i.n, align 16, !tbaa !336
  store i8 %i.o, ptr %i.m, align 16, !tbaa !336
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.c, align 16, !tbaa !1037
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.p, align 16
  %i.q = load ptr, ptr %i.d, align 16, !tbaa !340 ; 2 uses
  store ptr %i.q, ptr %i.c, align 16, !tbaa !340
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !375
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void %i.s(ptr noundef nonnull %i.p, ptr noundef nonnull %i.t)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit.i.i: ; preds = %bb.e
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.d, align 16, !tbaa !340
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !377
  store ptr %i.y, ptr %i.w, align 16, !tbaa !377
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !211
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !211
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !212
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !212
  store ptr null, ptr %i.ad, align 16, !tbaa !212
  br label %_ZN9grpc_core3MapINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES8_S9_EUlvE0_EEZNS_14filters_detail11AdaptMethodIS5_MS3_FSC_S8_S9_EXadL_ZNS3_23OnClientInitialMetadataES8_S9_EEvEclES8_EUlN4absl12lts_202505128StatusOrIS8_EEE_EC2EOSN_.exit

_ZN9grpc_core3MapINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES8_S9_EUlvE0_EEZNS_14filters_detail11AdaptMethodIS5_MS3_FSC_S8_S9_EXadL_ZNS3_23OnClientInitialMetadataES8_S9_EEvEclES8_EUlN4absl12lts_202505128StatusOrIS8_EEE_EC2EOSN_.exit: ; preds = %bb.c, %bb.d, %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !76
  store i64 %i.a, ptr %0, align 8, !tbaa !76
  store i64 55, ptr %1, align 8, !tbaa !76
  %i.b = load i64, ptr %0, align 8, !tbaa !76
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit, !prof !127

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #29
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEvENUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If.332") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.75", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !377
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !211
  store i8 %i.c, ptr %2, align 8, !tbaa !211
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  store i64 %i.f, ptr %i.d, align 8, !tbaa !212
  store ptr null, ptr %i.e, align 8, !tbaa !212
  invoke void @_ZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr dead_on_unwind writable sret(%"class.grpc_core::If.332") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !212  ; 3 uses
  %.not.i = icmp ne ptr %i.g, null
  %i.h = load i8, ptr %2, align 8, !range !251
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i = select i1 %.not.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.g) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 664) #32
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If.332") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.674", align 8 ; 7 uses
  %4 = alloca %"class.grpc_core::promise_detail::PromiseLike.337", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.669", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::promise_detail::PromiseLike.334", align 16 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::StatusOr.659", align 8 ; 9 uses
  %8 = alloca %class.anon.667, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN9grpc_core16ClientAuthFilter12GetCallCredsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.659") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load i64, ptr %7, align 8, !tbaa !76     ; 4 uses
  %i.b = icmp eq i64 %i.a, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %1, ptr %8, align 8, !tbaa !1046
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.c, align 8, !tbaa !1047
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = load i8, ptr %2, align 8, !tbaa !211     ; 4 uses
  store i8 %i.e, ptr %i.d, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !212  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !212
  %i.i = zext i1 %i.b to i8
  store i8 %i.i, ptr %0, align 16, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 %i.e, ptr %i.j, align 8, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.h, ptr %i.k, align 8, !tbaa !212
  store ptr null, ptr %i.f, align 8, !tbaa !212
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1049, !noalias !1048, !nonnull !252, !align !379 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76, !noalias !1048
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #30
          to label %.noexc unwind label %.body3

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !1046, !noalias !1048
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !382, !noalias !1048
  %i.s = icmp ne ptr %i.r, null                   ; 2 uses
  %i.t = zext i1 %i.s to i8                       ; 2 uses
  store i8 %i.t, ptr %6, align 16, !tbaa !346, !alias.scope !1048
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !1048
  store ptr %i.p, ptr %3, align 8, !tbaa !141, !noalias !1048
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !1047, !noalias !1048
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !1050, !noalias !1048
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.s, label %bb.d, label %.thread20

bb.d:                                             ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1048
  invoke void @_ZZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Map.338") align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc2 unwind label %.body3

.noexc2:                                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i64 0, ptr %i.v, align 16, !alias.scope !1048
  %i.w = load ptr, ptr %4, align 16, !tbaa !350, !noalias !1048 ; 2 uses
  store ptr %i.w, ptr %i.u, align 16, !tbaa !350, !alias.scope !1048
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !384, !noalias !1048
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.y(ptr noundef nonnull %i.v, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc2
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

.thread20:                                        ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  store ptr null, ptr %i.k, align 8, !tbaa !212, !noalias !1051
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.e, ptr %i.ac, align 8, !tbaa !211, !alias.scope !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1048
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.ad, align 16, !tbaa !346
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1048
  %.pre = load i8, ptr %6, align 16, !tbaa !346, !range !251 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1048
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = trunc nuw i8 %.pre to i1
  store i8 %.pre, ptr %i.af, align 16, !tbaa !346
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.ai, align 16
  %i.aj = load ptr, ptr %i.u, align 16, !tbaa !350 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 16, !tbaa !350
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !384
  invoke void %i.al(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.v)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33
  unreachable

bb.i:                                             ; preds = %bb.f
  %.pr = load i64, ptr %i.u, align 16             ; 2 uses
  %i.ao = icmp eq i64 %.pr, 1
  br i1 %i.ao, label %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, label %.thread22

._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre23 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !211
  %.pre25 = load i64, ptr %i.v, align 16, !tbaa !212
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

.thread22:                                        ; preds = %bb.i
  store i64 %.pr, ptr %i.ah, align 16, !tbaa !76
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit: ; preds = %bb.g
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE, ptr %i.u, align 16, !tbaa !350
  %.pre11 = load i8, ptr %6, align 16, !tbaa !346, !range !251
  %i.ap = trunc nuw i8 %.pre11 to i1
  br i1 %i.ap, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, label %bb.j

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i:   ; preds = %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, %.thread20
  %i.aq = phi i64 [ %i.h, %.thread20 ], [ %.pre25, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.ar = phi i8 [ %i.e, %.thread20 ], [ %.pre23, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.as = phi ptr [ %i.ae, %.thread20 ], [ %i.ah, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ar, ptr %i.at, align 8, !tbaa !211
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aq, ptr %i.au, align 16, !tbaa !212
  store i64 1, ptr %i.as, align 8, !tbaa !76
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

bb.j:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #33
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit, %.thread22, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

.body3:                                           ; preds = %bb.d, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  resume { ptr, i32 } %i.ax

bb.l:                                             ; preds = %bb.a
  %i.ay = trunc i64 %i.a to i1
  br i1 %i.ay, label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = inttoptr i64 %i.a to ptr
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4, !noalias !1052 ; 0 uses
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.bb, align 16, !tbaa !76
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !212 ; 3 uses
  %.not.i.i.i = icmp ne ptr %i.bc, null
  %i.bd = load i8, ptr %i.j, align 8, !range !251
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.be, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

bb.n:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.bc) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 664) #32
  br label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit: ; preds = %bb.n, %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre12 = load i64, ptr %7, align 8, !tbaa !76  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bf = icmp eq i64 %.pre12, 1
  br i1 %i.bf, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.s

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !382 ; 6 uses
  %.not.i.i5 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i5, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bi, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i = and i64 %i.bj, -4294967296
  %i.bk = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.bk, label %bb.p, label %.noexc.i.i, !prof !127

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.noexc.i.i unwind label %bb.r, !inline_history !12

.noexc.i.i:                                       ; preds = %bb.p, %bb.o
  %i.bo = atomicrmw sub ptr %i.bi, i64 1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, !prof !127

bb.q:                                             ; preds = %.noexc.i.i
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(20) %i.bh) #29, !inline_history !1044
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #33
  unreachable

bb.s:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bv = trunc i64 %.pre12 to i1
  br i1 %i.bv, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %.pre12 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #33
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %.noexc.i.i, %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

declare void @_ZN9grpc_core16ClientAuthFilter12GetCallCredsEv(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.659") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212  ; 3 uses
  %.not.i = icmp ne ptr %i.c, null
  %i.d = load i8, ptr %i.a, align 8, !range !251
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 664) #32
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.f

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382  ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.f, -4294967296
  %i.g = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.g, label %bb.c, label %.noexc.i, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i unwind label %bb.e, !inline_history !12

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %i.k = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, !prof !127

bb.d:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(20) %i.d) #29, !inline_history !13
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
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
  tail call void @__clang_call_terminate(ptr %i.u) #33
  unreachable

_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.d, %.noexc.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
