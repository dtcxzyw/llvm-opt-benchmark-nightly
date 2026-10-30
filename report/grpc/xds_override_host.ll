Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_override_host?download=true
inline.NumInlined: 3659
inline.NumDeleted: 2069
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerD0Ev:bb.a
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerD2Ev.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %.val.i, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(56) %.val.i) #38, !inline_history !8
  br label %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerD2Ev.exit

_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #41
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef captures(none) %0) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::AnyInvocable.531", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !241
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E(), !inline_history !483
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !243
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv(), !inline_history !483
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E(), !inline_history !483
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i

_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr %1, ptr %i.e, align 8, !tbaa !242
  %.val5.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !219 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.j = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89, !noalias !489 ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !89, !alias.scope !489
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !489 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !86, !alias.scope !489
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44, !noalias !489
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !95, !noalias !489
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !95, !noalias !489
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !489 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !89
  %.pre16.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !219
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i
  %i.u = phi ptr [ %.pre16.i.i.i.i.i, %bb.h ], [ %.val5.i.i.i.i.i, %bb.g ], [ %.val5.i.i.i.i.i, %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i ]
  %i.v = phi ptr [ %.pre.i.i.i.i.i, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !219
  store ptr %i.u, ptr %3, align 16, !tbaa !219
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEEN3$_0clEvEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.w, align 8, !tbaa !221
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEEN3$_0clEvEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESE_", ptr %i.x, align 16, !tbaa !222
  invoke void @_ZN9grpc_core14WorkSerializer3RunEN4absl12lts_2025051212AnyInvocableIFvvEEENS_13DebugLocationE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 16 %3)
          to label %"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit.i.i.i.i.i" unwind label %"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit15.i.i.i.i.i", !inline_history !483

"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit.i.i.i.i.i": ; preds = %bb.i
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !222
  call void %i.y(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %3) #38, !inline_history !486
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !86   ; 8 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i8.i.i.i.i.i, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit.i.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aa, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !94
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38, !inline_history !487
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38, !inline_history !487
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i9.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i9.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.o, label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !72

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38, !inline_history !483
  br label %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !41
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !240
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !240
  %i.ar = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.p unwind label %bb.w, !inline_history !488 ; 0 uses

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !243
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.r unwind label %bb.w, !inline_history !488

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.as, ptr %i.e, align 8, !tbaa !242
  %i.at = load i64, ptr %i.b, align 8, !tbaa !240
  %i.au = and i64 %i.at, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.av = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.t, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, !prof !72

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i unwind label %bb.w, !inline_history !488

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ax = load i8, ptr %i.d, align 8, !tbaa !241, !range !147, !noundef !148
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.u, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEE3$_0JEEET_OT0_DpOT1_.exit"

bb.u:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i
  store i8 0, ptr %i.d, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !246
  %.not.i.i.i.i.i.i.i12.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i12.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #38, !inline_history !488
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %i.bb = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !183
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEE3$_0JEEET_OT0_DpOT1_.exit"

bb.w:                                             ; preds = %bb.t, %bb.q, %_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #40, !inline_history !488
  unreachable

"_ZZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0clEvENUlvE_D2Ev.exit15.i.i.i.i.i": ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %i.x, align 16, !tbaa !222
  call void %i.bf(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %3) #38, !inline_history !486
  call void @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #38, !inline_history !483
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #38, !inline_history !483
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.be

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEE3$_0JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i13.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESD_"(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %0, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !219
  %i.a = load ptr, ptr %1, align 8, !tbaa !219
  store ptr %i.a, ptr %2, align 8, !tbaa !219
  store ptr null, ptr %1, align 8, !tbaa !219
  br label %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit"

bb.b:                                             ; preds = %bb.a
  %.val.pr = load ptr, ptr %1, align 8, !tbaa !219 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i, label %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val.pr, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit", !prof !72

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZNK9grpc_core11UnrefDeleteclINS_12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %.val.pr)
  br label %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit"

"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit": ; preds = %.thread, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @_ZN9grpc_core14WorkSerializer3RunEN4absl12lts_2025051212AnyInvocableIFvvEEENS_13DebugLocationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 16) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !240
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !242
  %i.h = load i64, ptr %i.a, align 8, !tbaa !240
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !72

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !241, !range !147, !noundef !148
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #38
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !183
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #40
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !240
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !490 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !490

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !242
  %i.h = load i64, ptr %i.a, align 8, !tbaa !240
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !72

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !490

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !241, !range !147, !noundef !148
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #38, !inline_history !490
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !183
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #40, !inline_history !490
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #40
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #31

; Function Attrs: uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEEN3$_0clEvEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::Duration", align 8 ; 6 uses
  %2 = alloca %"class.std::vector.383", align 8   ; 13 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 10 uses
  %4 = alloca %"class.std::unique_ptr.166", align 8 ; 5 uses
  %5 = alloca %"class.grpc_core::RefCountedPtr.194", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !161, !range !147, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS3_13RefCountedPtrIS5_EENS3_8DurationEEN3$_0clEvEUlvE_JEEET_OT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !161
  %i.d = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core26xds_override_host_lb_traceE, i64 8) monotonic, align 8, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %.critedge13.i.i.i.i.i.i, !prof !72

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.16, i32 noundef 581) #42, !inline_history !491
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 22, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i.i.i unwind label %bb.bl, !inline_history !491

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val14.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.g = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_117XdsOverrideHostLbEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.val14.i.i.i.i.i.i)
          to label %bb.d unwind label %bb.bl, !inline_history !491 ; 0 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 13, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i.i unwind label %bb.bl, !inline_history !491

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.h = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull align 8 dereferenceable(48) %.val)
          to label %bb.e unwind label %bb.bl, !inline_history !491 ; 0 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 13, ptr nonnull @.str.55)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit17.i.i.i.i.i.i unwind label %bb.bl, !inline_history !491

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit17.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.f unwind label %bb.bl, !inline_history !491

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit17.i.i.i.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #43, !inline_history !491
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.critedge13.i.i.i.i.i.i

.critedge13.i.i.i.i.i.i:                          ; preds = %bb.f, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !164 ; 9 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge13.i.i.i.i.i.i
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E(), !inline_history !492
  br label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i

_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.critedge13.i.i.i.i.i.i
  %i.j = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !493 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 72 ; 2 uses
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !155 ; 7 uses
  %i.p = sub nsw i64 0, %.sroa.018.0.copyload.i.i.i.i.i.i.i ; 2 uses
  %i.q = icmp eq i64 %i.n, 9223372036854775807
  %i.r = icmp eq i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i, -9223372036854775807
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i
  %i.s = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.s, label %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp sgt i64 %i.n, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = sub nuw nsw i64 9223372036854775807, %i.n
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = sub nsw i64 -9223372036854775808, %i.n
  %i.x = icmp sgt i64 %i.w, %i.p
  br i1 %i.x, label %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = sub nsw i64 %i.n, %.sroa.018.0.copyload.i.i.i.i.i.i.i
  br label %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i

_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.h ], [ 9223372036854775807, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i.i ], [ -9223372036854775808, %bb.k ], [ %i.y, %bb.l ], [ 9223372036854775807, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  store i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i, ptr %1, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 120 ; 4 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i.i.i unwind label %bb.m, !inline_history !492

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i.i.i: ; preds = %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 168
  %.val63.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !178
  %i.ab = icmp eq i64 %.val63.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %.critedge48.i.i.i.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %_ZN9grpc_coremiENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit77.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 152
  %.val53.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !145 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 136 ; 2 uses
  %.not115.i.i.i.i.i.i.i = icmp eq ptr %.val53.i.i.i.i.i.i.i, %i.ae
  br i1 %.not115.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = sub nsw i64 0, %i.n                     ; 2 uses
  %i.ai = icmp eq i64 %i.n, -9223372036854775807  ; 2 uses
  %i.aj = icmp eq i64 %i.n, -9223372036854775808
  br label %bb.p

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapperEED2Ev.exit.i.i.i.i.i.i.i
  %i.ak = ptrtoint ptr %i.de to i64
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.n
  %.val1.i136.i.i.i.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i.i ]
  %i.al = phi ptr [ null, %bb.n ], [ %i.df, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.speculated109.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.copyload.i.i.i.i.i.i.i, %bb.n ], [ %.sroa.speculated108.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ]
  %.lcssa101.i.i.i.i.i.i.i = phi ptr [ null, %bb.n ], [ %i.dg, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %.lcssa101.i.i.i.i.i.i.i, ptr %2, align 8
  store i64 %.sroa.speculated109.lcssa.i.i.i.i.i.i.i, ptr %1, align 8
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.aw unwind label %bb.o, !inline_history !492

end_hunk_0
begin_hunk_1_@_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker4PickENS_19LoadBalancingPolicy8PickArgsE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ds
  %i.kn = load i64, ptr %i.jl, align 8, !tbaa !44, !noalias !678
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #41, !inline_history !627
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.val.i.i = load ptr, ptr %20, align 8, !tbaa !164, !noalias !678 ; 4 uses
  %.not.i.i253.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i253.i, label %"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i", label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.kq = atomicrmw add ptr %i.kp, i64 -1 acq_rel, align 8
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.du, label %"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i", !prof !72

bb.du:                                            ; preds = %bb.dt
  %i.ks = load ptr, ptr %.val.i.i, align 8, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(56) %.val.i.i) #38, !inline_history !658
  br label %"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i"

"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i": ; preds = %bb.du, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38, !noalias !678
  %i.kv = load ptr, ptr %i.iw, align 8, !tbaa !86, !noalias !678 ; 8 uses
  %.not.i.i254.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i254.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i"
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 4 uses
  %i.kx = load atomic i64, ptr %i.kw acquire, align 8 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 4294967297
  %i.kz = trunc i64 %i.kx to i32                  ; 2 uses
  br i1 %i.ky, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.kw, align 8, !tbaa !93
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.la, align 4, !tbaa !94
  %i.lb = load ptr, ptr %i.kv, align 8, !tbaa !41
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #38, !inline_history !654
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !41
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #38, !inline_history !654
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dv
  %i.lh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44, !noalias !678
  %.not.i.i.i255.i = icmp eq i8 %i.lh, 0
  br i1 %.not.i.i.i255.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.li = add nsw i32 %i.kz, -1
  store i32 %i.li, ptr %i.kw, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256.i

bb.dz:                                            ; preds = %bb.dx
  %i.lj = atomicrmw volatile add ptr %i.kw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256.i: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i257.i = phi i32 [ %i.kz, %bb.dy ], [ %i.lj, %bb.dz ]
  %i.lk = icmp eq i32 %.0.i.i.i.i257.i, 1
  br i1 %i.lk, label %bb.ea, label %bb.eb, !prof !72

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #38, !inline_history !627
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256.i, %bb.dw, %"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38, !noalias !678
  %i.ll = getelementptr inbounds nuw i8, ptr %21, i64 200
  store i8 1, ptr %i.ll, align 8, !tbaa !212, !alias.scope !678
  %i.lm = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 1, ptr %i.lm, align 8, !tbaa !680, !alias.scope !678
  br label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit

bb.ec:                                            ; preds = %bb.dg
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit.i, %bb.dh
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #43, !inline_history !627
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn124.i = phi { ptr, i32 } [ %i.lo, %bb.ed ], [ %i.ln, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38, !noalias !678
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit226.i

bb.ef:                                            ; preds = %bb.dp
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.dr
  %i.lq = landingpad { ptr, i32 }
          cleanup
  %i.lr = load ptr, ptr %i.ki, align 16, !tbaa !222, !noalias !678
  call void %i.lr(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %19, ptr noundef nonnull align 16 dereferenceable(32) %19) #38, !inline_history !653
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn126.i = phi { ptr, i32 } [ %i.lq, %bb.eg ], [ %i.lp, %bb.ef ]
  call fastcc void @"_ZZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeEEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #38, !inline_history !627
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i

bb.ei:                                            ; preds = %.noexc.i.i.i.i, %bb.dl
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val158.i = load ptr, ptr %20, align 8, !tbaa !164, !noalias !678 ; 4 uses
  %.not.i259.i = icmp eq ptr %.val158.i, null
  br i1 %.not.i259.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.lt = getelementptr inbounds nuw i8, ptr %.val158.i, i64 8
  %i.lu = atomicrmw add ptr %i.lt, i64 -1 acq_rel, align 8
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %bb.ek, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i, !prof !72

bb.ek:                                            ; preds = %bb.ej
  %i.lw = load ptr, ptr %.val158.i, align 8, !tbaa !41
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(56) %.val158.i) #38, !inline_history !659
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh
  %.pn126.pn340.i = phi { ptr, i32 } [ %.pn126.i, %bb.eh ], [ %i.ls, %bb.ei ], [ %i.ls, %bb.ej ], [ %i.ls, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38, !noalias !678
  call void @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #38, !inline_history !627
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38, !noalias !678
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit226.i

bb.el:                                            ; preds = %bb.de
  %i.lz = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 0, ptr %i.lz, align 8, !tbaa !680, !alias.scope !678
  br label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit

bb.em:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i
  br i1 %.not350.i, label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0290.0.lcssa.i, i64 8 ; 2 uses
  %i.mb = atomicrmw add ptr %i.ma, i64 -4294967295 acq_rel, align 8
  %.mask.i.i261.i = and i64 %i.mb, -4294967296
  %i.mc = icmp eq i64 %.mask.i.i261.i, 4294967296
  br i1 %i.mc, label %bb.eo, label %.noexc.i262.i, !prof !72

bb.eo:                                            ; preds = %bb.en
  %i.md = load ptr, ptr %.sroa.0290.0.lcssa.i, align 8, !tbaa !41
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  invoke void %i.mf(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0290.0.lcssa.i)
          to label %.noexc.i262.i unwind label %bb.eq, !inline_history !647

.noexc.i262.i:                                    ; preds = %bb.eo, %bb.en
  %i.mg = atomicrmw add ptr %i.ma, i64 -1 acq_rel, align 8
  %i.mh = icmp eq i64 %i.mg, 1
  br i1 %i.mh, label %bb.ep, label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit, !prof !72

bb.ep:                                            ; preds = %.noexc.i262.i
  %i.mi = load ptr, ptr %.sroa.0290.0.lcssa.i, align 8, !tbaa !41
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0290.0.lcssa.i) #38, !inline_history !650
  br label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit

bb.eq:                                            ; preds = %bb.eo
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #40, !inline_history !627
  unreachable

common.resume:                                    ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit40, %_ZN4absl12lts_202505129MutexLockD2Ev.exit226.i
  %common.resume.op = phi { ptr, i32 } [ %.pn135.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit226.i ], [ %.pn25, %_ZN4absl12lts_202505129MutexLockD2Ev.exit40 ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_202505129MutexLockD2Ev.exit226.i:   ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i, %bb.ee, %bb.dd, %bb.cv, %bb.cu, %.loopexit.split-lp.i, %bb.l
  %.sroa.0290.8.i = phi ptr [ null, %bb.cv ], [ %.sroa.0290.0.lcssa.i, %bb.cu ], [ null, %bb.dd ], [ null, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i ], [ null, %bb.ee ], [ null, %bb.l ], [ %.sroa.0290.5.i, %.loopexit.split-lp.i ]
  %.pn135.i = phi { ptr, i32 } [ %i.ij, %bb.cv ], [ %.pn131.i, %bb.cu ], [ %.pn129.i, %bb.dd ], [ %.pn126.pn340.i, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit.i ], [ %.pn124.i, %bb.ee ], [ %i.au, %bb.l ], [ %.pn118.pn.i, %.loopexit.split-lp.i ]
  call fastcc void @_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapperEED2Ev(ptr %.sroa.0290.8.i) #38, !inline_history !627
  br label %common.resume

_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit: ; preds = %bb.c, %bb.cr, %bb.da, %bb.eb, %bb.el, %bb.em, %.noexc.i262.i, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.mn = getelementptr inbounds nuw i8, ptr %21, i64 208 ; 3 uses
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !680, !range !147, !noundef !148
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.er, label %_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit32

bb.er:                                            ; preds = %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i8 -1, ptr %i.mq, align 8, !tbaa !212
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !212 ; 4 uses
  switch i8 %i.ms, label %bb.eu [
    i8 0, label %bb.es
    i8 1, label %.sink.split212
    i8 2, label %_ZN9grpc_core19LoadBalancingPolicy10PickResultC2EOS1_.exit.thread.sink.split
    i8 3, label %_ZN9grpc_core19LoadBalancingPolicy10PickResultC2EOS1_.exit.thread.sink.split
    i8 -1, label %.sink.split212
  ]

bb.es:                                            ; preds = %bb.er
  %i.mt = load ptr, ptr %21, align 8, !tbaa !217
  store ptr %i.mt, ptr %0, align 8, !tbaa !217
  store ptr null, ptr %21, align 8, !tbaa !217
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !214
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !214
  store ptr null, ptr %i.mv, align 8, !tbaa !214
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !155 ; 6 uses
  %i.na = trunc i64 %i.mz to i1
  br i1 %i.na, label %.critedge, label %bb.et

.critedge:                                        ; preds = %bb.es
  %i.nb = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !44
  %i.nd = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !44
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.nc, ptr %i.nf, align 8, !tbaa !44
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ne, ptr %i.ng, align 8, !tbaa !44
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !155
  store i64 0, ptr %i.my, align 8, !tbaa !155
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nh, ptr noundef nonnull align 8 dereferenceable(32) %i.ni, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ni, i8 0, i64 32, i1 false), !noalias !701
  br label %.sink.split212

bb.et:                                            ; preds = %bb.es
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.nk = lshr exact i64 %i.mz, 1                 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge211, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et
  %i.nl = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.nm = icmp eq i64 %i.mz, 2
  br i1 %i.nm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.nk, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.nn = getelementptr inbounds nuw [48 x i8], ptr %i.nj, i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nn, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !282
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %i.np, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.np, i8 0, i64 32, i1 false), !noalias !702
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nr = getelementptr inbounds nuw [48 x i8], ptr %i.nj, i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ns, ptr noundef nonnull align 8 dereferenceable(48) %i.nq, i64 16, i1 false), !tbaa.struct !282
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nt, ptr noundef nonnull align 8 dereferenceable(32) %i.nu, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nu, i8 0, i64 32, i1 false), !noalias !702
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.nw = add nuw i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !31

.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nx = and i64 %i.mz, 2
  %lcmp.mod.not = icmp eq i64 %i.nx, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.nl, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nv, %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nw, %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod292 = trunc i64 %i.nk to i1
  call void @llvm.assume(i1 %lcmp.mod292)
  %i.ny = getelementptr inbounds nuw [48 x i8], ptr %i.nj, i64 %.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ny, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, i64 16, i1 false), !tbaa.struct !282
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nz, ptr noundef nonnull align 8 dereferenceable(32) %i.oa, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oa, i8 0, i64 32, i1 false), !noalias !702
  br label %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.my, align 8, !tbaa !155
  %i.ob = and i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %.pre.i.i.i.i.i.i31.pre.pre = load i8, ptr %i.mr, align 8, !tbaa !212
  %.pre139.pre.pre = load i8, ptr %i.mn, align 8, !tbaa !680, !range !147
  %i.oc = trunc nuw i8 %.pre139.pre.pre to i1
  store i64 %i.ob, ptr %i.mx, align 8, !tbaa !155
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.oe = getelementptr inbounds nuw i8, ptr %21, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr noundef nonnull align 8 dereferenceable(32) %i.oe, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oe, i8 0, i64 32, i1 false), !noalias !701
  store i8 %.pre.i.i.i.i.i.i31.pre.pre, ptr %i.mq, align 8, !tbaa !212
  br i1 %i.oc, label %bb.ev, label %_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit

bb.eu:                                            ; preds = %bb.er
  unreachable

_ZN9grpc_core19LoadBalancingPolicy10PickResultC2EOS1_.exit.thread.sink.split: ; preds = %bb.er, %bb.er
  %i.of = load i64, ptr %21, align 8, !tbaa !69
  store i64 %i.of, ptr %0, align 8, !tbaa !69
  store i64 55, ptr %21, align 8, !tbaa !69
  br label %.sink.split212

.critedge211:                                     ; preds = %bb.et
  store i64 0, ptr %i.mx, align 8, !tbaa !155
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.oh = getelementptr inbounds nuw i8, ptr %21, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull align 8 dereferenceable(32) %i.oh, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, i8 0, i64 32, i1 false), !noalias !701
  br label %.sink.split212

.sink.split212:                                   ; preds = %.critedge, %_ZN9grpc_core19LoadBalancingPolicy10PickResultC2EOS1_.exit.thread.sink.split, %bb.er, %bb.er, %.critedge211
  %.sink213 = phi i8 [ 0, %.critedge211 ], [ 0, %.critedge ], [ %i.ms, %_ZN9grpc_core19LoadBalancingPolicy10PickResultC2EOS1_.exit.thread.sink.split ], [ %i.ms, %bb.er ], [ %i.ms, %bb.er ]
  store i8 %.sink213, ptr %i.mq, align 8, !tbaa !212
  br label %bb.ev

bb.ev:                                            ; preds = %.sink.split212, %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.mn, align 8, !tbaa !680
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEED2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(216) %21) #38
  br label %_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit: ; preds = %.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit32: ; preds = %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb6Picker18PickOverriddenHostEPNS_24XdsOverrideHostAttributeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core19LoadBalancingPolicy10PickResultELb0ELb0EED2Ev.exit32, %bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !153 ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %22, i64 51, ptr nonnull @.str.70)
  %i.ol = load i64, ptr %22, align 8, !tbaa !69   ; 4 uses
  %i.om = trunc i64 %i.ol to i1
  br i1 %i.om, label %_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.on = inttoptr i64 %i.ol to ptr
  %i.oo = atomicrmw add ptr %i.on, i32 1 monotonic, align 4 ; 0 uses
  %.pre140 = load i64, ptr %22, align 8, !tbaa !69
  br label %_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit

_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit: ; preds = %bb.ex, %bb.ey
  %i.op = phi i64 [ %i.ol, %bb.ex ], [ %.pre140, %bb.ey ] ; 2 uses
  store i64 %i.ol, ptr %0, align 8, !tbaa !69
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 2, ptr %i.oq, align 8, !tbaa !212
  %i.or = trunc i64 %i.op to i1
  br i1 %i.or, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit
  %i.os = inttoptr i64 %i.op to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.os)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  call void @__clang_call_terminate(ptr %i.ou) #40
  unreachable

bb.fb:                                            ; preds = %bb.ew
  %i.ov = load ptr, ptr %i.oj, align 8, !tbaa !41
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr dead_on_unwind writable sret(%"struct.grpc_core::LoadBalancingPolicy::PickResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef nonnull byval(%"struct.grpc_core::LoadBalancingPolicy::PickArgs") align 8 %2)
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.oz = load i8, ptr %i.oy, align 8
  %i.pa = icmp eq i8 %i.oz, 0
  br i1 %i.pa, label %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.fb
  %i.pb = load ptr, ptr %0, align 8, !tbaa !217   ; 3 uses
  br i1 %.not, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.pc = getelementptr i8, ptr %i.pb, i64 24
  %.val = load ptr, ptr %i.pc, align 8, !tbaa !164
  %i.pd = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pd)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.fk

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.fc
  %i.pe = getelementptr i8, ptr %i.pb, i64 32     ; 2 uses
  %.val29 = load ptr, ptr %i.pe, align 8, !tbaa !169
  %.not.i.i.i.i33 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i33, label %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb15SubchannelEntry18set_last_used_timeEv.exit.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb15SubchannelEntry18set_last_used_timeEv.exit.i unwind label %bb.fl

_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb15SubchannelEntry18set_last_used_timeEv.exit.i: ; preds = %bb.fd, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.pf = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !183 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !41
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = invoke i64 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %bb.fe unwind label %bb.fl, !inline_history !664

bb.fe:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb15SubchannelEntry18set_last_used_timeEv.exit.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.val29, i64 64
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !155
  %.val30 = load ptr, ptr %i.pe, align 8, !tbaa !169
  %i.pl = getelementptr inbounds nuw i8, ptr %.val30, i64 48 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !172, !noalias !703 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i35, label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapper12address_listEv.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pn = atomicrmw add ptr %i.pm, i64 1 monotonic, align 8, !noalias !703 ; 0 uses
  %.pre.i.i.i.i36 = load ptr, ptr %i.pl, align 8, !tbaa !172, !noalias !703
  br label %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapper12address_listEv.exit

_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapper12address_listEv.exit: ; preds = %bb.ff, %bb.fe
  %i.po = phi ptr [ %.pre.i.i.i.i36, %bb.ff ], [ null, %bb.fe ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !196 ; 3 uses
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !196
  %.not.i.i.i.i38 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i.i38, label %_ZN9grpc_core21RefCountedStringValueD2Ev.exit, label %bb.fg

bb.fg:                                            ; preds = %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapper12address_listEv.exit
  %i.pr = atomicrmw add ptr %i.pq, i64 -1 acq_rel, align 8
  %i.ps = icmp eq i64 %i.pr, 1
  br i1 %i.ps, label %bb.fh, label %_ZN9grpc_core21RefCountedStringValueD2Ev.exit

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZN9grpc_core16RefCountedString7DestroyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pq)
          to label %_ZN9grpc_core21RefCountedStringValueD2Ev.exit unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #40
  unreachable

_ZN9grpc_core21RefCountedStringValueD2Ev.exit:    ; preds = %bb.fh, %bb.fg, %_ZNK9grpc_core12_GLOBAL__N_117XdsOverrideHostLb17SubchannelWrapper12address_listEv.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pd)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.fj

bb.fj:                                            ; preds = %_ZN9grpc_core21RefCountedStringValueD2Ev.exit
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #40
  unreachable

bb.fk:                                            ; preds = %bb.fc
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit40

bb.fl:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb15SubchannelEntry18set_last_used_timeEv.exit.i, %bb.fd
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pd)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit40 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.pz = landingpad { ptr, i32 }
          catch ptr null
  %i.qa = extractvalue { ptr, i32 } %i.pz, 0
  call void @__clang_call_terminate(ptr %i.qa) #40
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZN9grpc_core21RefCountedStringValueD2Ev.exit, %_ZSt6get_ifIN9grpc_core19LoadBalancingPolicy10PickResult8CompleteEJS3_NS2_5QueueENS2_4FailENS2_4DropEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !217, !noalias !704 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i41, label %_ZNK9grpc_core20DelegatingSubchannel18wrapped_subchannelEv.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = atomicrmw add ptr %i.qd, i64 4294967296 monotonic, align 8, !noalias !704 ; 0 uses
  %.pre.i.i42 = load ptr, ptr %i.qb, align 8, !tbaa !217, !noalias !704
  br label %_ZNK9grpc_core20DelegatingSubchannel18wrapped_subchannelEv.exit

_ZNK9grpc_core20DelegatingSubchannel18wrapped_subchannelEv.exit: ; preds = %bb.fn, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.qf = phi ptr [ %.pre.i.i42, %bb.fn ], [ null, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ]
  %i.qg = load ptr, ptr %0, align 8, !tbaa !705   ; 6 uses
  store ptr %i.qf, ptr %0, align 8, !tbaa !705
  %.not.i.i43 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i43, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZNK9grpc_core20DelegatingSubchannel18wrapped_subchannelEv.exit
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = atomicrmw add ptr %i.qh, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i44 = and i64 %i.qi, -4294967296
  %i.qj = icmp eq i64 %.mask.i.i.i44, 4294967296
  br i1 %i.qj, label %bb.fp, label %.noexc.i45, !prof !72

bb.fp:                                            ; preds = %bb.fo
  %i.qk = load ptr, ptr %i.qg, align 8, !tbaa !41
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8
  invoke void %i.qm(ptr noundef nonnull align 8 dereferenceable(16) %i.qg)
          to label %.noexc.i45 unwind label %bb.fr, !inline_history !671

.noexc.i45:                                       ; preds = %bb.fp, %bb.fo
  %i.qn = atomicrmw add ptr %i.qh, i64 -1 acq_rel, align 8
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.fq, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !72

bb.fq:                                            ; preds = %.noexc.i45
  %i.qp = load ptr, ptr %i.qg, align 8, !tbaa !41
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #38, !inline_history !672
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

end_hunk_1
