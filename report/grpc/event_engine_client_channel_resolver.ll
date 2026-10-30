Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/event_engine_client_channel_resolver?download=true
inline.NumInlined: 1686
inline.NumDeleted: 858
begin_hunk_0_@"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
  %i.fs = trunc i64 %i.ey to i1
  br i1 %i.fs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = inttoptr i64 %i.ey to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ft)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #31
  unreachable

bb.bg:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.ah
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !205, !range !147, !noundef !148
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bi, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %6) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fw, %bb.bg ], [ %i.fx, %bb.bh ], [ %i.fx, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i, %bb.ag, %bb.w
  %.pn16.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %.pn.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit31.i.i.i.i.i.i ], [ %.pn16.pn.i.i.i.i.i.i, %bb.ag ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.n
  %.pn16.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn16.pn.pn.pn.i.i.i.i.i.i, %bb.bj ], [ %i.ao, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit32.i.i.i.i.i.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #31
  unreachable

bb.bm:                                            ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit.i.i.i.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8Resolver6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #26
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit32.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit34.i.i.i.i.i.i unwind label %bb.bn

bb.bn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #31
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit34.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit34.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit34.i.i.i.i.i.i, %bb.be, %bb.bd, %bb.bc, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  %i.gi = load i8, ptr %i.ah, align 8, !tbaa !205, !range !147, !noundef !148
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %bb.br

_ZN4absl12lts_202505129MutexLockD2Ev.exit32.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bk, %bb.m
  %.pn23.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gd, %bb.bm ], [ %i.an, %bb.m ], [ %.pn16.pn.pn.pn.pn.i.i.i.i.i.i, %bb.bk ]
  %i.gk = load i8, ptr %i.ah, align 8, !tbaa !205, !range !147, !noundef !148
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.bq, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit37.i.i.i.i.i.i

bb.bq:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit32.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit37.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit37.i.i.i.i.i.i: ; preds = %bb.bq, %_ZN4absl12lts_202505129MutexLockD2Ev.exit32.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #26
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body.i.i.i.i

bb.br:                                            ; preds = %bb.bp, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.gm = load i64, ptr %9, align 8, !tbaa !110   ; 3 uses
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i, label %bb.bt

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.br
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !183
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gv = trunc i64 %i.gm to i1
  br i1 %i.gv, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gw = inttoptr i64 %i.gm to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gw)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i
  %i.gz = load ptr, ptr %0, align 8, !tbaa !210   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !210
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = atomicrmw add ptr %i.ha, i64 -1 acq_rel, align 8
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bx, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, !prof !55

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gz) #26
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.bx, %bb.bw, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %8, align 8, !tbaa !50
  %i.hd = load i64, ptr %i.p, align 8, !tbaa !195
  %i.he = or i64 %i.hd, 1
  store i64 %i.he, ptr %i.p, align 8, !tbaa !195
  %i.hf = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.by unwind label %bb.cf, !inline_history !211 ; 0 uses

bb.by:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.hg = load ptr, ptr %i.u, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.ca unwind label %bb.cf, !inline_history !211

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store ptr %i.hg, ptr %i.s, align 8, !tbaa !197
  %i.hh = load i64, ptr %i.p, align 8, !tbaa !195
  %i.hi = and i64 %i.hh, 4
  %.not.i8.i.i.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i8.i.i.i.i.i, label %bb.cb, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.hj = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.cc, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !55

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.cf, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.hl = load i8, ptr %i.r, align 8, !tbaa !196, !range !147, !noundef !148
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.r, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.q, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i10.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i10.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %i.hp = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !203
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cc, %bb.bz, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #31, !inline_history !211
  unreachable

bb.cg:                                            ; preds = %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i, %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.hs = load i64, ptr %10, align 8, !tbaa !110  ; 3 uses
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, label %bb.ci

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i: ; preds = %bb.cg
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i3.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i3.i.i.i.i, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET_OT0_DpOT1_.exit", label %bb.ch

bb.ch:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !183
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #30
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET_OT0_DpOT1_.exit"

bb.ci:                                            ; preds = %bb.cg
  %i.ib = trunc i64 %i.hs to i1
  br i1 %i.ib, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET_OT0_DpOT1_.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ic = inttoptr i64 %i.hs to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ic)
          to label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET_OT0_DpOT1_.exit" unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #31
  unreachable

.body.i.i.i.i:                                    ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit37.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.h ], [ %.pn23.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit37.i.i.i.i.i.i ], [ %i.x, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #26
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0JNS0_8StatusOrISt6vectorINSC_15ResolvedAddressESaISL_EEEEEEET_OT0_DpOT1_.exit": ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, %bb.ch, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESK_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !167
  %i.a = load ptr, ptr %1, align 8, !tbaa !167
  store ptr %i.a, ptr %2, align 8, !tbaa !167
  store ptr null, ptr %1, align 8, !tbaa !167
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_0D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !167 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_0D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val.pr, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_0D2Ev.exit", !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.val.pr) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr, i64 noundef 264) #30
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_0D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_0D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #30
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.a to i1
  br i1 %i.j, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !195
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !197
  %i.h = load i64, ptr %i.a, align 8, !tbaa !195
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !55

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !196, !range !147, !noundef !148
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !202
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !203
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #31
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !195
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !211 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !211

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !197
  %i.h = load i64, ptr %i.a, align 8, !tbaa !195
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !55

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !196, !range !147, !noundef !148
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !203
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #31, !inline_history !211
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

declare void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load ptr, ptr %0, align 8, !tbaa !123
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !123    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !124  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit ] ; 5 uses
  tail call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i) #26
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #26
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !127, !alias.scope !302 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128, !alias.scope !302
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #30
  br label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !123
  br label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit
  %i.aa = phi ptr [ %.pr, %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #30
  br label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !123
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.af, ptr %i.j, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

declare void @_ZN17grpc_event_engine12experimental25CreateGRPCResolvedAddressERKNS0_11EventEngine15ResolvedAddressE(ptr dead_on_unwind writable sret(%struct.grpc_resolved_address) align 4, ptr noundef nonnull align 4 dereferenceable(132)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper16OnResolvedLockedEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 6 uses
  %3 = alloca %"class.std::vector.86", align 8    ; 9 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr.138", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.95", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %15 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %16 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %17 = alloca %"struct.grpc_core::Resolver::Result", align 8 ; 42 uses
  %18 = alloca %"class.absl::lts_20250512::Status", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = load i8, ptr %i.i, align 8, !tbaa !178, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.l, align 8, !tbaa !205
  br label %bb.fn

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !164, !range !147, !noundef !148
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.q = load i8, ptr %i.p, align 1, !tbaa !171, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN17grpc_event_engine12experimental11EventEngine11DNSResolverEEERS2_RKT_:bb.a
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f
}

declare void @_ZN9grpc_core17ServiceConfigImpl6CreateERKNS_11ChannelArgsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.95") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !110
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !4
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = load i64, ptr %1, align 8, !tbaa !110    ; 5 uses
  store i64 55, ptr %1, align 8, !tbaa !110
  %i.l = load i64, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq i64 %i.k, %i.l
  br i1 %.not.i, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit
  store i64 %i.k, ptr %0, align 8, !tbaa !110
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %i.l to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit:        ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit
  %i.q = trunc i64 %i.k to i1
  br i1 %i.q, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.r = inttoptr i64 %i.k to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #31
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.f, %bb.e, %bb.h
  %.pr = load i64, ptr %0, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.u = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.k, %_ZN4absl12lts_202505126StatusaSEOS1_.exit ]
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit, !prof !55

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.j
  ret void
}

declare void @_ZN9grpc_core26SetGrpcLbBalancerAddressesERKNS_11ChannelArgsESt6vectorINS_17EndpointAddressesESaIS4_EE(ptr dead_on_unwind writable sret(%"class.grpc_core::ChannelArgs") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN9grpc_core17EndpointAddressesEE8allocateEmPKv.exit.i.i.i, !prof !55

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN9grpc_core17EndpointAddressesEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN9grpc_core17EndpointAddressesEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN9grpc_core17EndpointAddressesEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !114
  %i.m = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core17EndpointAddressesESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN9grpc_core17EndpointAddressesC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core17EndpointAddressesESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !311

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN9grpc_core17EndpointAddressesEEvT_S3_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9grpc_core17EndpointAddressesESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN9grpc_core17EndpointAddressesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !124
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !123    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @_ZN9grpc_core17EndpointAddressesC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE14_M_move_assignEOS3_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !205, !range !147, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i8, ptr %i.d, align 8, !range !147
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN9grpc_core8Resolver6ResultaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %1, align 8, !tbaa !110    ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !112
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  store ptr %i.o, ptr %i.m, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i64 1, ptr %0, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %0, align 8, !tbaa !110
  store i64 55, ptr %1, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !117
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !117
  store ptr %i.v, ptr %i.u, align 8, !tbaa !117
  store ptr null, ptr %i.t, align 8, !tbaa !117
  store i64 1, ptr %i.p, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

bb.h:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  store i64 %i.r, ptr %i.p, align 8, !tbaa !110
  store i64 55, ptr %i.q, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !31
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i
  store ptr %i.z, ptr %i.w, align 8, !tbaa !22
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !32
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !21
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !22
  store i64 0, ptr %i.ah, align 8, !tbaa !21
  store i8 0, ptr %i.aa, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !121
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 16, i1 false), !tbaa.struct !122
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !121
  store ptr %i.au, ptr %i.at, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %bb.j
  store i8 1, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.k:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.l, label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(121) %0) #26
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit: ; preds = %bb.l, %bb.k, %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(120) ptr @_ZN9grpc_core8Resolver6ResultaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.a, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !110
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE6AssignIS7_EEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !110  ; 3 uses
  %i.k = icmp eq i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !214
  store ptr null, ptr %i.i, align 8, !tbaa !214
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !214  ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !214
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26, !inline_history !312
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit

bb.j:                                             ; preds = %bb.f
  store ptr null, ptr %i.l, align 8, !tbaa !117
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !117
  store ptr %i.u, ptr %i.l, align 8, !tbaa !117
  store ptr null, ptr %i.i, align 8, !tbaa !117
  store i64 1, ptr %i.e, align 8, !tbaa !110
  %i.v = trunc i64 %i.j to i1
  br i1 %i.v, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = inttoptr i64 %i.j to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

bb.m:                                             ; preds = %bb.e
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit: ; preds = %bb.a, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !22  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit
  br i1 %i.ag, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit
  br i1 %i.ag, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.o, !prof !55

bb.o:                                             ; preds = %bb.n
  switch i64 %i.ai, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !32
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %i.am, align 8, !tbaa !21
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !32
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !32
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !32
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !21
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !32
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !22
  store i64 %i.at, ptr %i.af, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.ay = phi ptr [ %i.ab, %bb.r ], [ %i.af, %bb.s ], [ %i.ae, %bb.n ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.az, align 8, !tbaa !21
  store i8 0, ptr %i.ay, align 1, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #26 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !tbaa !23
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !121
  %.not.i.i.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 16, i1 false), !tbaa.struct !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i

_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 16, i1 false), !tbaa.struct !122
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !23
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  store <2 x ptr> %i.bk, ptr %i.bi, align 16, !tbaa !23
  store <2 x ptr> %i.bf, ptr %i.bj, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEaSEOS4_.exit, label %bb.u

end_hunk_1
begin_hunk_2_@"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
  %.pn45.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i.i.i.i.i ], [ %i.gs, %bb.bt ]
  call fastcc void @"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bs
  %.pn45.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gr, %bb.bs ], [ %.pn45.i.i.i.i.i.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !208 ; 2 uses
  %.not.i93.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not.i93.i.i.i.i.i.i, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i, label %.loopexit.thread.i.i.i.i.i.i

.loopexit.thread.i.i.i.i.i.i:                     ; preds = %.loopexit.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit72.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit68.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit.i.i.i.i.i.i, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i
  %i.gz = phi ptr [ %.pre.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.ao, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit.i.i.i.i.i.i ], [ %i.ao, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i ], [ %i.ao, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit72.i.i.i.i.i.i ], [ %i.ao, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit68.i.i.i.i.i.i ]
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gz)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %.loopexit.thread.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #31
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i: ; preds = %.loopexit.thread.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #31
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i
  call fastcc void @"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISE_EEEEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.he = load i8, ptr %i.al, align 8, !tbaa !205, !range !147, !noundef !148
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %bb.cc

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i.i.i, %bb.ba, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit73.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit69.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit64.i.i.i.i.i.i
  %.pn51.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn51.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit69.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit64.i.i.i.i.i.i ], [ %.pn39.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit73.i.i.i.i.i.i ], [ %.pn41.pn.i.i.i.i.i.i, %bb.ba ], [ %.pn45.pn.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %bb.n
  %.pn51.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn51.pn.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %i.at, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit95.i.i.i.i.i.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #31
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit95.i.i.i.i.i.i: ; preds = %bb.bz, %bb.m
  %.pn51.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.m ], [ %.pn51.pn.pn.i.i.i.i.i.i, %bb.bz ]
  call fastcc void @"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISE_EEEEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.hi = load i8, ptr %i.al, align 8, !tbaa !205, !range !147, !noundef !148
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.cb, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit96.i.i.i.i.i.i

bb.cb:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit95.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit96.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit96.i.i.i.i.i.i: ; preds = %bb.cb, %_ZN4absl12lts_202505129MutexLockD2Ev.exit95.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #26
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.body.i.i.i.i

bb.cc:                                            ; preds = %bb.by, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.hk = load i64, ptr %13, align 8, !tbaa !110  ; 3 uses
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i, label %bb.ce

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cc
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !217 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !218 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.hp
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hv, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.hn, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i ] ; 3 uses
  %i.hq = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i5.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i5.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !32
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #30
  br label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i5.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hv, %i.hp
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !219
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hn to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.ia) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ib = trunc i64 %i.hk to i1
  br i1 %i.ib, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ic = inttoptr i64 %i.hk to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ic)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd, %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.if = load ptr, ptr %0, align 8, !tbaa !210   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !210
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = atomicrmw add ptr %i.ig, i64 -1 acq_rel, align 8
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.ci, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, !prof !55

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.if) #26
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.ci, %bb.ch, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %12, align 8, !tbaa !50
  %i.ij = load i64, ptr %i.r, align 8, !tbaa !195
  %i.ik = or i64 %i.ij, 1
  store i64 %i.ik, ptr %i.r, align 8, !tbaa !195
  %i.il = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.cj unwind label %bb.cq, !inline_history !211 ; 0 uses

bb.cj:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.im = load ptr, ptr %i.w, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.cl unwind label %bb.cq, !inline_history !211

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store ptr %i.im, ptr %i.u, align 8, !tbaa !197
  %i.in = load i64, ptr %i.r, align 8, !tbaa !195
  %i.io = and i64 %i.in, 4
  %.not.i8.i.i.i.i.i = icmp eq i64 %i.io, 0
  br i1 %.not.i8.i.i.i.i.i, label %bb.cm, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.ip = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.cn, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !55

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.cq, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.ir = load i8, ptr %i.t, align 8, !tbaa !196, !range !147, !noundef !148
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.t, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.s, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i10.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i10.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i: ; preds = %bb.cp, %bb.co
  %i.iv = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !203
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cn, %bb.ck, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #31, !inline_history !211
  unreachable

bb.cr:                                            ; preds = %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i11.i.i.i.i.i, %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.iy = load i64, ptr %14, align 8, !tbaa !110  ; 3 uses
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, label %bb.ct

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i: ; preds = %bb.cr
  %i.ja = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !217 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !218 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.jb, %i.jd
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i3.i.i.i.i

.lr.ph.i.i.i.i3.i.i.i.i:                          ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.jj, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.jb, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i ] ; 3 uses
  %i.je = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3.i.i.i.i
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !32
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #30
  br label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.jj, %i.jd
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i3.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET_OT0_DpOT1_.exit", label %bb.cs

bb.cs:                                            ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !219
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jb to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jo) #30
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET_OT0_DpOT1_.exit"

bb.ct:                                            ; preds = %bb.cr
  %i.jp = trunc i64 %i.iy to i1
  br i1 %i.jp, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET_OT0_DpOT1_.exit", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jq = inttoptr i64 %i.iy to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.jq)
          to label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET_OT0_DpOT1_.exit" unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #31
  unreachable

.body.i.i.i.i:                                    ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit96.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn51.pn.pn.pn.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit96.i.i.i.i.i.i ], [ %i.z, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #26
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1JNS0_8StatusOrISt6vectorINSD_9SRVRecordESaISL_EEEEEEET_OT0_DpOT1_.exit": ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i, %bb.cs, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_1EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESK_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !167
  %i.a = load ptr, ptr %1, align 8, !tbaa !167
  store ptr %i.a, ptr %2, align 8, !tbaa !167
  store ptr null, ptr %1, align 8, !tbaa !167
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_1D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !167 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_1D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val.pr, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_1D2Ev.exit", !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.val.pr) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr, i64 noundef 264) #30
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_1D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_1D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i ], [ %i.d, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i

_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !217
  br label %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS4_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.s = trunc i64 %i.a to i1
  br i1 %i.s, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS4_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaIS4_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZSt8_DestroyIPN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordES4_EvT_S6_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.au, %_ZNSt8optionalIN9grpc_core8Resolver6ResultEEaSEOS3_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.az)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #31
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #31
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i.i.i.i.i.i
  call fastcc void @"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper27OnBalancerHostnamesResolvedENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaISJ_EEEEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.er = load i8, ptr %i.aw, align 8, !tbaa !205, !range !147, !noundef !148
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %bb.bg

bb.az:                                            ; preds = %bb.as
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !205, !range !147, !noundef !148
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.bb, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %12) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %.pn25.i.i.i.i.i.i = phi { ptr, i32 } [ %i.et, %bb.az ], [ %i.eu, %bb.ba ], [ %i.eu, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i, %bb.ar, %bb.x
  %.pn27.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn27.pn.i.i.i.i.i.i, %bb.ar ], [ %.pn25.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit53.i.i.i.i.i.i ], [ %i.cj, %bb.x ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i.i.i.i.i.i
  %.pn27.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn27.pn.pn.i.i.i.i.i.i, %bb.bc ], [ %.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit54.i.i.i.i.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #31
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit54.i.i.i.i.i.i: ; preds = %bb.bd, %bb.p
  %.pn27.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %.pn27.pn.pn.pn.i.i.i.i.i.i, %bb.bd ]
  call fastcc void @"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper27OnBalancerHostnamesResolvedENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaISJ_EEEEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.fa = load i8, ptr %i.aw, align 8, !tbaa !205, !range !147, !noundef !148
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.bf, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit55.i.i.i.i.i.i

bb.bf:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit54.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit55.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit55.i.i.i.i.i.i: ; preds = %bb.bf, %_ZN4absl12lts_202505129MutexLockD2Ev.exit54.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #26
  %i.fc = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ag
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i.i.i

bb.bg:                                            ; preds = %bb.ay, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.fe = load i64, ptr %15, align 8, !tbaa !110  ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i, label %bb.bi

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.bg
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !183
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fn = trunc i64 %i.fe to i1
  br i1 %i.fn, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fo = inttoptr i64 %i.fe to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fo)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i
  %i.fr = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ag
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i
  %i.ft = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fv = load ptr, ptr %i.af, align 8, !tbaa !210 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !210
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = atomicrmw add ptr %i.fw, i64 -1 acq_rel, align 8
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.bm, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, !prof !55

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fv) #26
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %13, align 8, !tbaa !50
  %i.fz = load i64, ptr %i.r, align 8, !tbaa !195
  %i.ga = or i64 %i.fz, 1
  store i64 %i.ga, ptr %i.r, align 8, !tbaa !195
  %i.gb = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.bn unwind label %bb.bu, !inline_history !211 ; 0 uses

bb.bn:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.bp unwind label %bb.bu, !inline_history !211

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store ptr %i.gc, ptr %i.u, align 8, !tbaa !197
  %i.gd = load i64, ptr %i.r, align 8, !tbaa !195
  %i.ge = and i64 %i.gd, 4
  %.not.i6.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i6.i.i.i.i.i, label %bb.bq, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.gf = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.br, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !55

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.bu, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.gh = load i8, ptr %i.t, align 8, !tbaa !196, !range !147, !noundef !148
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.t, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.s, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i8.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.gl = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !203
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br, %bb.bo, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #31, !inline_history !211
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit55.i.i.i.i.i.i
  %i.go = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.gp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit55.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i.i.i
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body.i.i.i.i

bb.bv:                                            ; preds = %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9.i.i.i.i.i, %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.gq = load i64, ptr %16, align 8, !tbaa !110  ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, label %bb.bx

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !181 ; 3 uses
  %.not.i.i.i.i3.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i3.i.i.i.i, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET_OT0_DpOT1_.exit", label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !183
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #30
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET_OT0_DpOT1_.exit"

bb.bx:                                            ; preds = %bb.bv
  %i.gz = trunc i64 %i.gq to i1
  br i1 %i.gz, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET_OT0_DpOT1_.exit", label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ha = inttoptr i64 %i.gq to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ha)
          to label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET_OT0_DpOT1_.exit" unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #31
  unreachable

.body.i.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn27.pn.pn.pn.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i.i.i ], [ %i.z, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #26
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1JNS7_IS8_INSB_15ResolvedAddressESaISJ_EEEEEEET_OT0_DpOT1_.exit": ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISD_EEEEE3$_1EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESK_"(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !32    ; 6 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !167 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.f, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i, !prof !55

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.val.i) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.i, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev.exit": ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper13OnSRVResolvedEN4absl12lts_202505128StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine11DNSResolver9SRVRecordESaISB_EEEEEN3$_1D2Ev.exit", %bb.b
  ret void
}

declare void @_ZNK9grpc_core11ChannelArgs3SetESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr dead_on_unwind writable sret(%"class.grpc_core::ChannelArgs") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr, ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper27OnBalancerHostnamesResolvedENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaISJ_EEEEE3$_0ED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.grpc_core::Resolver::Result", align 8 ; 22 uses
  %.val = load i8, ptr %0, align 8, !tbaa !225, !range !147, !noundef !148
  %i.a = trunc nuw i8 %.val to i1
  br i1 %i.a, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !336 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.c, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 120
  %i.e = load i8, ptr %i.d, align 8, !tbaa !205, !range !147, !noundef !148
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.h = load i64, ptr %.val1, align 8, !tbaa !110 ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !112
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  store ptr %i.o, ptr %i.m, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  store i64 55, ptr %.val1, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i: ; preds = %bb.e, %bb.d
  store i64 %i.h, ptr %1, align 8, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !117
  store ptr %i.v, ptr %i.u, align 8, !tbaa !117
  store ptr null, ptr %i.t, align 8, !tbaa !117
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  store i64 55, ptr %i.q, align 8, !tbaa !110
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i: ; preds = %bb.g, %bb.f
  store i64 %i.r, ptr %i.p, align 8, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %12) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit105.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit105.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cm
  %.pn50.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mp, %bb.cm ], [ %i.mq, %bb.cn ], [ %i.mq, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit105.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.i.i.i, %bb.bb, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i.i.i.i, %bb.r
  %.pn50.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn50.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit105.i.i.i.i.i.i ], [ %i.av, %bb.r ], [ %i.hm, %bb.au ], [ %.pn.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.i.i.i ], [ %.pn42.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i.i.i.i ], [ %.pn44.pn.pn.i.i.i.i.i.i, %bb.bb ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.n
  %.pn50.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn50.pn.i.i.i.i.i.i, %bb.cp ], [ %i.ar, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit106.i.i.i.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #31
  unreachable

bb.cs:                                            ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit.i.i.i.i.i.i
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8Resolver6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %13) #26
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit106.i.i.i.i.i.i

.critedge62.i.i.i.i.i.i:                          ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.am)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit108.i.i.i.i.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %.critedge62.i.i.i.i.i.i
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #31
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit108.i.i.i.i.i.i: ; preds = %.critedge62.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit108.i.i.i.i.i.i
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit108.i.i.i.i.i.i, %bb.ck, %bb.cj, %bb.ci, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  %i.nb = load i8, ptr %i.ak, align 8, !tbaa !205, !range !147, !noundef !148
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %bb.cx

_ZN4absl12lts_202505129MutexLockD2Ev.exit106.i.i.i.i.i.i: ; preds = %bb.cs, %bb.cq, %bb.m
  %.pn55.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mw, %bb.cs ], [ %i.aq, %bb.m ], [ %.pn50.pn.pn.i.i.i.i.i.i, %bb.cq ]
  %i.nd = load i8, ptr %i.ak, align 8, !tbaa !205, !range !147, !noundef !148
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.cw, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit111.i.i.i.i.i.i

bb.cw:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit106.i.i.i.i.i.i
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit111.i.i.i.i.i.i

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit111.i.i.i.i.i.i: ; preds = %bb.cw, %_ZN4absl12lts_202505129MutexLockD2Ev.exit106.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #26
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body.i.i.i.i

bb.cx:                                            ; preds = %bb.cv, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.nf = load i64, ptr %15, align 8, !tbaa !110  ; 3 uses
  %i.ng = icmp eq i64 %i.nf, 1
  br i1 %i.ng, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i, label %bb.cz

_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i: ; preds = %bb.cx
  %i.nh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !175 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ni, %i.nk
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i6.i.i.i.i.i

.lr.ph.i.i.i.i6.i.i.i.i.i:                        ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ni, %_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i ] ; 3 uses
  %i.nl = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i6.i.i.i.i.i
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !32
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i6.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i.i = icmp eq ptr %i.nq, %i.nk
  br i1 %.not.i.i.i.i7.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i6.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.nh, align 8, !tbaa !175
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i
  %i.nr = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.ni, %_ZN4absl12lts_202505126StatusD2Ev.exit.i5.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !177
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.nx = trunc i64 %i.nf to i1
  br i1 %i.nx, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ny = inttoptr i64 %i.nf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ny)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ob = load ptr, ptr %0, align 8, !tbaa !210   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !210
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = atomicrmw add ptr %i.oc, i64 -1 acq_rel, align 8
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.dd, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, !prof !55

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ob) #26
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %14, align 8, !tbaa !50
  %i.of = load i64, ptr %i.s, align 8, !tbaa !195
  %i.og = or i64 %i.of, 1
  store i64 %i.og, ptr %i.s, align 8, !tbaa !195
  %i.oh = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %14)
          to label %bb.de unwind label %bb.dl, !inline_history !211 ; 0 uses

bb.de:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.oi = load ptr, ptr %i.x, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.dg unwind label %bb.dl, !inline_history !211

bb.dg:                                            ; preds = %bb.df, %bb.de
  store ptr %i.oi, ptr %i.v, align 8, !tbaa !197
  %i.oj = load i64, ptr %i.s, align 8, !tbaa !195
  %i.ok = and i64 %i.oj, 4
  %.not.i10.i.i.i.i.i = icmp eq i64 %i.ok, 0
  br i1 %.not.i10.i.i.i.i.i, label %bb.dh, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.ol = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.di, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !55

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.dl, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.di, %bb.dh, %bb.dg
  %i.on = load i8, ptr %i.u, align 8, !tbaa !196, !range !147, !noundef !148
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.u, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.t, align 8, !tbaa !50
  %i.op = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i12.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i12.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i: ; preds = %bb.dk, %bb.dj
  %i.or = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !203
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di, %bb.df, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #31, !inline_history !211
  unreachable

bb.dm:                                            ; preds = %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i, %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ou = load i64, ptr %16, align 8, !tbaa !110  ; 3 uses
  %i.ov = icmp eq i64 %i.ou, 1
  br i1 %i.ov, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, label %bb.do

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i: ; preds = %bb.dm
  %i.ow = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !175 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ox, %i.oz
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.pf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ox, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i ] ; 3 uses
  %i.pa = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !32
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i3.i.i.i.i = icmp eq ptr %i.pf, %i.oz
  br i1 %.not.i.i.i.i3.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ox, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET_OT0_DpOT1_.exit", label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !177
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = ptrtoint ptr %i.ox to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pk) #30
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET_OT0_DpOT1_.exit"

bb.do:                                            ; preds = %bb.dm
  %i.pl = trunc i64 %i.ou to i1
  br i1 %i.pl, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET_OT0_DpOT1_.exit", label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pm = inttoptr i64 %i.ou to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.pm)
          to label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET_OT0_DpOT1_.exit" unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #31
  unreachable

.body.i.i.i.i:                                    ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit111.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn55.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit111.i.i.i.i.i.i ], [ %i.aa, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #26
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2JNS0_8StatusOrISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEET_OT0_DpOT1_.exit": ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.dn, %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_2EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESK_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !167
  %i.a = load ptr, ptr %1, align 8, !tbaa !167
  store ptr %i.a, ptr %2, align 8, !tbaa !167
  store ptr null, ptr %1, align 8, !tbaa !167
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_2D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !167 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_2D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val.pr, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_2D2Ev.exit", !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.val.pr) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr, i64 noundef 264) #30
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_2D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_2D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.d, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !175
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.s = trunc i64 %i.a to i1
  br i1 %i.s, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

end_hunk_4
begin_hunk_5_@"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_3JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE":bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load i8, ptr %i.d, align 8, !tbaa !196, !range !147, !noundef !148
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %common.resume.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.o = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !203
  br label %common.resume.i.i.i.i.i

common.resume.i.i.i.i.i:                          ; preds = %.body.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.j, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr %2, ptr %i.e, align 8, !tbaa !197
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !167 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.noexc.i.i.i.i.i unwind label %bb.ag

.noexc.i.i.i.i.i:                                 ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.q = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core42event_engine_client_channel_resolver_traceE, i64 8) monotonic, align 8, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %.critedge15.i.i.i.i.i.i, !prof !55

bb.i:                                             ; preds = %.noexc.i.i.i.i.i
  %i.s = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEvENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.t = icmp slt i32 %i.s, 2
  br i1 %i.t, label %.critedge15.i.i.i.i.i.i, label %bb.j, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEvENK3$_0clEvE4site", i32 noundef %i.s)
          to label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i.i.i.i unwind label %bb.p

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i.i.i.i: ; preds = %bb.j
  br i1 %i.u, label %bb.k, label %.critedge15.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 297) #27
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
          to label %bb.m unwind label %bb.r       ; 4 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 52, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi53EEERS2_RAT__Kc.exit.i.i.i.i.i.i unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi53EEERS2_RAT__Kc.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !134
  %i.x = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolverEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr %.val.i.i.i.i.i.i)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi53EEERS2_RAT__Kc.exit.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 10, ptr nonnull @.str.55)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit.i.i.i.i.i.i unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit.i.i.i.i.i.i: ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit.i.i.i.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.critedge15.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit.i.i.i.i.i.i, %bb.n, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi53EEERS2_RAT__Kc.exit.i.i.i.i.i.i, %bb.m, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i, %bb.s ], [ %i.y, %bb.p ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.body.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

.critedge15.i.i.i.i.i.i:                          ; preds = %bb.o, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i.i.i.i.i.i, %bb.i, %.noexc.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 248
  store i8 0, ptr %i.ad, align 8, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 256 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !131
  %.not.i.i.i2.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2.i.i.i.i.i, label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS3_EE5resetEPS3_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN17grpc_event_engine12experimental11EventEngine11DNSResolverEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN17grpc_event_engine12experimental11EventEngine11DNSResolverEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.critedge15.i.i.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #26, !inline_history !350
  br label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS3_EE5resetEPS3_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS3_EE5resetEPS3_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN17grpc_event_engine12experimental11EventEngine11DNSResolverEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.critedge15.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEv.exit.i.i.i.i.i unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS3_EE5resetEPS3_.exit.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS3_EE5resetEPS3_.exit.i.i.i.i.i.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !210   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !210
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEv.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw add ptr %i.am, i64 -1 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.x, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i, !prof !55

bb.x:                                             ; preds = %bb.w
  call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.al) #26
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 264) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w, %_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapper9OnTimeoutEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !50
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !195
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !195
  %i.ar = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.y unwind label %bb.af, !inline_history !211 ; 0 uses

bb.y:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.aa unwind label %bb.af, !inline_history !211

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.as, ptr %i.e, align 8, !tbaa !197
  %i.at = load i64, ptr %i.b, align 8, !tbaa !195
  %i.au = and i64 %i.at, 4
  %.not.i4.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.ab, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.av = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.ac, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !55

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.af, !inline_history !211

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ax = load i8, ptr %i.d, align 8, !tbaa !196, !range !147, !noundef !148
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.ad, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_3JEEET_OT0_DpOT1_.exit"

bb.ad:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.d, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !202
  %.not.i.i.i.i.i.i.i6.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i7.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #26, !inline_history !211
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i7.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i7.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.bb = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !203
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_3JEEET_OT0_DpOT1_.exit"

bb.af:                                            ; preds = %bb.ac, %bb.z, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperEE5resetEPS3_.exit.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31, !inline_history !211
  unreachable

bb.ag:                                            ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ag, %bb.t
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.ag ], [ %.pn.pn.pn.i.i.i.i.i.i, %bb.t ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume.i.i.i.i.i

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_3JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS3_13RefCountedPtrIS5_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteISD_EEE3$_3EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESK_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !167
  %i.a = load ptr, ptr %1, align 8, !tbaa !167
  store ptr %i.a, ptr %2, align 8, !tbaa !167
  store ptr null, ptr %1, align 8, !tbaa !167
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_3D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !167 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_3D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val.pr, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_3D2Ev.exit", !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.val.pr) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr, i64 noundef 264) #30
  br label %"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_3D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_135EventEngineClientChannelDNSResolver28EventEngineDNSRequestWrapperC1ENS_13RefCountedPtrIS1_EESt10unique_ptrIN17grpc_event_engine12experimental11EventEngine11DNSResolverESt14default_deleteIS9_EEEN3$_3D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !32
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !352

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core3URID2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !355  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9grpc_core3URI10QueryParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN9grpc_core3URI10QueryParamEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN9grpc_core3URI10QueryParamEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyIN9grpc_core3URI10QueryParamEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
end_hunk_5
