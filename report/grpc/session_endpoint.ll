Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/session_endpoint?download=true
inline.NumInlined: 515
inline.NumDeleted: 308
begin_hunk_0_@_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv:bb.a

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !83   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !167
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core19SessionEndpointImpl4ReadENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlbE_JbEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0, i1 noundef zeroext %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !75
  tail call void @_ZZN9grpc_core19SessionEndpointImpl4ReadEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEb(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core19SessionEndpointImpl4ReadENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlbE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESG_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !75    ; 5 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !59
  tail call void %i.e(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.c) #29, !inline_history !6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core19SessionEndpointImpl4ReadEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEb(ptr noundef nonnull align 16 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::latent_see::Scope", align 8 ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !94    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = load atomic ptr, ptr @_ZN9grpc_core10latent_see8Appender12active_sink_E acquire, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !64
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZZZZN9grpc_core19SessionEndpointImpl4ReadEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEbENKUlvE_clEvE8metadata, ptr %i.c, align 8, !tbaa !68
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !69
  br label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit

_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !170 ; 4 uses
  store ptr null, ptr %i.f, align 16, !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store atomic i8 0, ptr %i.h release, align 8
  %i.i = icmp ne ptr %i.g, null                   ; 2 uses
  %or.cond.not = select i1 %1, i1 %i.i, i1 false
  br i1 %or.cond.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @grpc_byte_buffer_destroy(ptr noundef nonnull %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.n, %bb.m, %bb.f, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %3, i64 13, ptr nonnull @.str.8)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  invoke void %i.m(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit unwind label %bb.l, !inline_history !14

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit: ; preds = %bb.g
  %i.n = load i64, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit
  %i.p = inttoptr i64 %i.n to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  %.not.i = icmp eq i64 %i.t, 1
  br i1 %.not.i, label %bb.j, label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !46, !range !56, !noundef !57
  %i.w = trunc nuw i8 %i.v to i1
  %.str..str.3.i.i = select i1 %i.w, ptr @.str, ptr @.str.3
  %i.x = load ptr, ptr %i.a, align 16, !tbaa !45  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(144) %i.x, ptr noundef nonnull %.str..str.3.i.i)
          to label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit.sink.split unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95
  invoke void @grpc_slice_buffer_move_into(ptr noundef nonnull %i.ae, ptr noundef %i.ag)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  invoke void @grpc_byte_buffer_destroy(ptr noundef nonnull %i.g)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %4, align 8, !tbaa !28, !alias.scope !171
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  invoke void %i.aj(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit14 unwind label %5, !inline_history !14

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit14: ; preds = %bb.o
  %i.ak = load i64, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %_ZN4absl12lts_202505126StatusD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit14
  %i.am = inttoptr i64 %i.ak to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit15 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit15:         ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit14, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 acq_rel, align 8
  %.not.i16 = icmp eq i64 %i.aq, 1
  br i1 %.not.i16, label %bb.r, label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit

bb.r:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !46, !range !56, !noundef !57
  %i.at = trunc nuw i8 %i.as to i1
  %.str..str.3.i.i17 = select i1 %i.at, ptr @.str, ptr @.str.3
  %i.au = load ptr, ptr %i.a, align 16, !tbaa !45 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull %.str..str.3.i.i17)
          to label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit.sink.split unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #30
  unreachable

_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit.sink.split: ; preds = %bb.r, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !47
  call void %i.bc(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.ba, ptr noundef nonnull align 16 dereferenceable(32) %i.ba) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !47
  call void %i.bf(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.bd, ptr noundef nonnull align 16 dereferenceable(32) %i.bd) #29
  call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(178) %i.a, i64 noundef 192) #28
  br label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit

_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit:  ; preds = %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit.sink.split, %_ZN4absl12lts_202505126StatusD2Ev.exit15, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.bg = load ptr, ptr %2, align 8, !tbaa !64
  %.not23 = icmp eq ptr %i.bg, null
  br i1 %.not23, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit13, label %bb.t, !prof !65

bb.t:                                             ; preds = %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !68
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bl = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.bi, i64 noundef %i.bk, i64 noundef %i.bl)
          to label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit13 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

_ZN9grpc_core10latent_see5ScopeD2Ev.exit13:       ; preds = %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

5:                                                ; preds = %bb.o
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %5
  %.sink = phi ptr [ %4, %5 ], [ %3, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %6, %5 ], [ %i.ad, %bb.l ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn.ph, %bb.w ]
  %i.bo = load ptr, ptr %2, align 8, !tbaa !64
  %.not22 = icmp eq ptr %i.bo, null
  br i1 %.not22, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit, label %bb.y, !prof !65

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !69
  %i.bt = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.bq, i64 noundef %i.bs, i64 noundef %i.bt)
          to label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #30
  unreachable

_ZN9grpc_core10latent_see5ScopeD2Ev.exit:         ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

declare void @grpc_byte_buffer_destroy(ptr noundef) local_unnamed_addr #2

declare void @grpc_slice_buffer_move_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core19SessionEndpointImpl4ReadENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlvE1_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !75
  tail call void @_ZZN9grpc_core19SessionEndpointImpl4ReadEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlvE1_clEv(ptr noundef nonnull align 16 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core19SessionEndpointImpl4ReadENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlvE1_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESG_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !75    ; 6 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47
  tail call void %i.d(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.a) #29, !inline_history !8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZZN9grpc_core19SessionEndpointImpl4ReadEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlvE1_clEv(ptr noundef nonnull align 16 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 4 uses
  br i1 %.not.i.i, label %_ZN9grpc_core7ExecCtx3GetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtx3GetEv.exit

_ZN9grpc_core7ExecCtx3GetEv.exit:                 ; preds = %bb.b, %bb.c
  %i.c = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.p

bb.d:                                             ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.i, align 8, !tbaa !116
  br i1 %.not.i.i, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !117
  %i.l = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !56, !noundef !57
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !84

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e
  br i1 %.not.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.g, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %1, ptr %i.c, align 8, !tbaa !104
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !48
  invoke void %i.n(ptr noundef nonnull align 16 dereferenceable(32) %0, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit unwind label %common.resume, !inline_history !13

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit: ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !31
  %i.o = load i64, ptr %i.g, align 8, !tbaa !115
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !tbaa !115
  %i.q = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.h unwind label %bb.o, !inline_history !118 ; 0 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !117
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.j unwind label %bb.o, !inline_history !118

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.r, ptr %i.c, align 8, !tbaa !104
  %i.s = load i64, ptr %i.g, align 8, !tbaa !115
  %i.t = and i64 %i.s, 4
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.k, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.u = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !56, !noundef !57
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.l, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !84

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.o, !inline_history !118

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.l, %bb.k, %bb.j
  %i.w = load i8, ptr %i.i, align 8, !tbaa !116, !range !56, !noundef !57
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.m:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store i8 0, ptr %i.i, align 8, !tbaa !116
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.h, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #29, !inline_history !118
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5: ; preds = %bb.n, %bb.m
  %i.aa = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !123
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.o:                                             ; preds = %bb.l, %bb.i, %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30, !inline_history !118
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.q

common.resume:                                    ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
end_hunk_0
begin_hunk_1_@_ZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlvE0_clEv:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.v, ptr %i.a, align 8, !tbaa !104
  %i.w = load i64, ptr %i.e, align 8, !tbaa !115
  %i.x = and i64 %i.w, 4
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.m, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.y = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.n, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !84

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.q, !inline_history !118

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.n, %bb.m, %bb.l
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !116, !range !56, !noundef !57
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.o, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.o:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store i8 0, ptr %i.g, align 8, !tbaa !116
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.f, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !122
  %.not.i.i.i.i.i.i.i8 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i8, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #29, !inline_history !118
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9: ; preds = %bb.p, %bb.o
  %i.ae = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !123
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.q:                                             ; preds = %bb.n, %bb.k, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #30, !inline_history !118
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit11

bb.r:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ah, %bb.r ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

bb.u:                                             ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit
  call void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %3, i64 13, ptr nonnull @.str.8)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  invoke void %i.ak(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit10 unwind label %bb.x, !inline_history !14

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit10: ; preds = %bb.u
  %i.al = load i64, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %_ZN4absl12lts_202505126StatusD2Ev.exit11, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit10
  %i.an = inttoptr i64 %i.al to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit11 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  br label %common.resume

_ZN4absl12lts_202505126StatusD2Ev.exit11:         ; preds = %bb.v, %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit10, %_ZN9grpc_core7ExecCtxD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core19SessionEndpointImpl5WriteENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlbE_JbEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0, i1 noundef zeroext %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !75
  tail call void @_ZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEb(ptr noundef nonnull align 16 dereferenceable(56) %i.a, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core19SessionEndpointImpl5WriteENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlbE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESG_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !75    ; 5 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !59
  tail call void %i.e(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.c) #29, !inline_history !11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEb(ptr noundef nonnull align 16 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::latent_see::Scope", align 8 ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !99    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = load atomic ptr, ptr @_ZN9grpc_core10latent_see8Appender12active_sink_E acquire, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !64
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZZZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlbE_clEbENKUlvE_clEvE8metadata, ptr %i.c, align 8, !tbaa !68
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !69
  br label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit

_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store atomic i8 0, ptr %i.f release, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !100
  invoke void @grpc_byte_buffer_destroy(ptr noundef %i.h)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit
  br i1 %1, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %3, align 8, !tbaa !28, !alias.scope !179
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  invoke void %i.k(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit unwind label %bb.h, !inline_history !14

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit: ; preds = %bb.d
  %i.l = load i64, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit
  %i.n = inttoptr i64 %i.l to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

bb.g:                                             ; preds = %bb.i, %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, i64 12, ptr nonnull @.str.13)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  invoke void %i.u(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit6 unwind label %bb.m, !inline_history !14

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit6: ; preds = %bb.j
  %i.v = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit6
  %i.x = inttoptr i64 %i.v to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.k, %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit6, %bb.e, %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_6StatusEEEclES3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %.not.i = icmp eq i64 %i.ac, 1
  br i1 %.not.i, label %bb.n, label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !46, !range !56, !noundef !57
  %i.af = trunc nuw i8 %i.ae to i1
  %.str..str.3.i.i = select i1 %i.af, ptr @.str, ptr @.str.3
  %i.ag = load ptr, ptr %i.a, align 16, !tbaa !45 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull %.str..str.3.i.i)
          to label %_ZN9grpc_core19SessionEndpointImplD2Ev.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZN9grpc_core19SessionEndpointImplD2Ev.exit.i:    ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !47
  call void %i.ao(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.am, ptr noundef nonnull align 16 dereferenceable(32) %i.am) #29, !inline_history !0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !47
  call void %i.ar(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.ap, ptr noundef nonnull align 16 dereferenceable(32) %i.ap) #29, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(178) %i.a, i64 noundef 192) #28
  br label %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit

_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit:  ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZN9grpc_core19SessionEndpointImplD2Ev.exit.i
  %i.as = load ptr, ptr %2, align 8, !tbaa !64
  %.not10 = icmp eq ptr %i.as, null
  br i1 %.not10, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit5, label %bb.p, !prof !65

bb.p:                                             ; preds = %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !69
  %i.ax = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.au, i64 noundef %i.aw, i64 noundef %i.ax)
          to label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit5 unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #30
  unreachable

_ZN9grpc_core10latent_see5ScopeD2Ev.exit5:        ; preds = %_ZN9grpc_core19SessionEndpointImpl5UnrefEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.sink.split:                                      ; preds = %bb.h, %bb.m
  %.sink = phi ptr [ %4, %bb.m ], [ %3, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.r, %bb.h ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #29
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %.pn.ph, %.sink.split ]
  %i.ba = load ptr, ptr %2, align 8, !tbaa !64
  %.not9 = icmp eq ptr %i.ba, null
  br i1 %.not9, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit, label %bb.t, !prof !65

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !69
  %i.bf = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.bc, i64 noundef %i.be, i64 noundef %i.bf)
          to label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #30
  unreachable

_ZN9grpc_core10latent_see5ScopeD2Ev.exit:         ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core19SessionEndpointImpl5WriteENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlvE1_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !75
  tail call void @_ZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlvE1_clEv(ptr noundef nonnull align 16 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core19SessionEndpointImpl5WriteENS0_12AnyInvocableIFvNS0_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEEUlvE1_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESG_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !75    ; 6 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47
  tail call void %i.d(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.a) #29, !inline_history !12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZZN9grpc_core19SessionEndpointImpl5WriteEN4absl12lts_2025051212AnyInvocableIFvNS2_6StatusEEEEPN17grpc_event_engine12experimental11SliceBufferEENUlvE1_clEv(ptr noundef nonnull align 16 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 4 uses
  br i1 %.not.i.i, label %_ZN9grpc_core7ExecCtx3GetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtx3GetEv.exit

_ZN9grpc_core7ExecCtx3GetEv.exit:                 ; preds = %bb.b, %bb.c
  %i.c = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.p

bb.d:                                             ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.i, align 8, !tbaa !116
  br i1 %.not.i.i, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !117
  %i.l = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !56, !noundef !57
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !84

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e
  br i1 %.not.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.g, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %1, ptr %i.c, align 8, !tbaa !104
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !48
  invoke void %i.n(ptr noundef nonnull align 16 dereferenceable(32) %0, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit unwind label %common.resume, !inline_history !13

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit: ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !31
  %i.o = load i64, ptr %i.g, align 8, !tbaa !115
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !tbaa !115
  %i.q = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.h unwind label %bb.o, !inline_history !118 ; 0 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !117
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.j unwind label %bb.o, !inline_history !118

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.r, ptr %i.c, align 8, !tbaa !104
  %i.s = load i64, ptr %i.g, align 8, !tbaa !115
  %i.t = and i64 %i.s, 4
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.k, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.u = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !56, !noundef !57
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.l, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !84

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.o, !inline_history !118

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.l, %bb.k, %bb.j
  %i.w = load i8, ptr %i.i, align 8, !tbaa !116, !range !56, !noundef !57
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.m:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store i8 0, ptr %i.i, align 8, !tbaa !116
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.h, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #29, !inline_history !118
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5: ; preds = %bb.n, %bb.m
  %i.aa = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !123
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.o:                                             ; preds = %bb.l, %bb.i, %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvbEEclEb.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30, !inline_history !118
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.q

common.resume:                                    ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.ad

bb.p:                                             ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !48
end_hunk_1
