Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/direct_channel?download=true
inline.NumInlined: 2008
inline.NumDeleted: 1529
begin_hunk_0_@_ZN9grpc_core7ChannelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11ChannelArgsE

declare void @_ZN9grpc_core5Party24MaybeAsyncAddParticipantEPNS0_11ParticipantE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN9grpc_core5Party11ParticipantD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZN9grpc_core5Party15ParticipantImplIZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ZNS_9CallSpine15SpawnInfallibleIS4_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E22PollParticipantPromiseEv"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::UnstartedCallHandler", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !79, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  store ptr %i.g, ptr %1, align 8, !tbaa !75
  store ptr null, ptr %i.f, align 8, !tbaa !75
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !75     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = atomicrmw sub ptr %i.l, i64 1099511627776 acq_rel, align 8
  %i.n = and i64 %i.m, -1099511627776
  %i.o = icmp eq i64 %i.n, 1099511627776
  br i1 %i.o, label %bb.e, label %"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit"

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %i.k)
          to label %"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core20UnstartedCallHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #25
  resume { ptr, i32 } %i.r

"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit": ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = atomicrmw sub ptr %i.t, i64 1099511627776 acq_rel, align 8
  %i.v = and i64 %i.u, -1099511627776
  %i.w = icmp eq i64 %i.v, 1099511627776
  br i1 %i.w, label %bb.i, label %_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %i.s)
          to label %_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %"_ZZN9grpc_core13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv.exit"
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !60   ; 6 uses
  %.not.i.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i4, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ED2Ev.exit", label %bb.k

bb.k:                                             ; preds = %_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = atomicrmw add ptr %i.aa, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i.i = and i64 %i.ab, -4294967296
  %i.ac = icmp eq i64 %.mask.i.i.i.i, 4294967296
  br i1 %i.ac, label %bb.l, label %.noexc.i.i.i, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc.i.i.i unwind label %bb.n, !inline_history !1

.noexc.i.i.i:                                     ; preds = %bb.l, %bb.k
  %i.ag = atomicrmw sub ptr %i.aa, i64 1 acq_rel, align 8
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ED2Ev.exit", !prof !22

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !7
  br label %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ED2Ev.exit"

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #26
  unreachable

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ED2Ev.exit": ; preds = %_ZN9grpc_core20UnstartedCallHandlerD2Ev.exit.i.i, %.noexc.i.i.i, %bb.m
  store i8 1, ptr %i.a, align 8, !tbaa !79
  br label %.critedge

.critedge:                                        ; preds = %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ED2Ev.exit", %bb.a
  call fastcc void @"_ZN9grpc_core5Party15ParticipantImplIZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ZNS_9CallSpine15SpawnInfallibleIS4_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev"(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %0) #25
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ZNS_9CallSpine15SpawnInfallibleIS4_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E7DestroyEv"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call fastcc void @"_ZN9grpc_core5Party15ParticipantImplIZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ZNS_9CallSpine15SpawnInfallibleIS4_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev"(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEE3$_0ZNS_9CallSpine15SpawnInfallibleIS4_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E18ChannelzPropertiesEv"(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.346, align 1            ; 3 uses
  %3 = alloca %class.anon.346, align 1            ; 3 uses
  %4 = alloca %class.anon.346, align 1            ; 3 uses
  %5 = alloca %class.anon.346, align 1            ; 3 uses
  %6 = alloca %"class.std::variant.300", align 8  ; 6 uses
  %7 = alloca %"class.std::optional.294", align 8 ; 9 uses
  %8 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %9 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %10 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %9, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 11, ptr nonnull @.str.17, i64 71, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 45))
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 7, ptr nonnull @.str.18, i64 84, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.24, i64 45))
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !238
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %8, align 8, !tbaa !24, !noalias !238
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !238
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !79, !range !71, !noalias !238, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !238
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !240
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc.i unwind label %bb.k, !noalias !238 ; 8 uses

.noexc.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !62, !noalias !241
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !63, !noalias !241
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !24, !noalias !241
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.k, align 8, !tbaa !24, !noalias !241
  %i.l = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !241 ; 5 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !105, !noalias !241
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !244, !noalias !241
  %i.o = zext i16 %i.n to i64                     ; 5 uses
  %i.p = and i64 %i.o, 7
  %i.q = icmp eq i64 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246, !noalias !241
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !247, !noalias !241 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !22

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store ptr %i.y, ptr %i.l, align 8, !tbaa !247, !noalias !241
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc.i.i.i.i.i.i.i
  %i.z = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.o)
          to label %bb.e unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !241

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #28, !noalias !241
  br label %.body.i

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.o, i1 false), !noalias !241
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !106, !noalias !241
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.ac, align 4, !tbaa !39, !noalias !241
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.26, i64 45), ptr %i.ad, align 4, !noalias !241
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 85, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !241
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 10, ptr %i.af, align 8, !tbaa !108, !noalias !240
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !250, !alias.scope !239, !noalias !238
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !37, !noalias !240
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !37, !alias.scope !239, !noalias !238
  store ptr null, ptr %6, align 8, !tbaa !250, !noalias !240
  store i8 10, ptr %i.ag, align 8, !tbaa !108, !alias.scope !239, !noalias !238
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.ai, align 8, !tbaa !110, !alias.scope !239, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !240
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESB_.exit.i.i" unwind label %bb.f, !noalias !240

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #26, !noalias !240
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESB_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !240
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 7, ptr nonnull @.str.25, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.j, !noalias !238

bb.g:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESB_.exit.i.i"
  %i.al = load i8, ptr %i.ai, align 8, !tbaa !110, !range !71, !noalias !238, !noundef !72
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !110, !noalias !238
  %i.an = load i8, ptr %i.ag, align 8, !noalias !238
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.an, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.am, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.h, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i", !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !238
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.i, !noalias !238

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !238
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #26, !noalias !238
  unreachable

bb.j:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESB_.exit.i.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #25, !noalias !238
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !238
  %i.ar = load <2 x ptr>, ptr %i.d, align 8, !tbaa !113, !noalias !238
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !115, !noalias !238
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ], [ %i.aq, %bb.j ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #25, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !238
  br label %.body

bb.l:                                             ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i", %bb.c
  %i.at = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i" ], [ null, %bb.c ]
  %i.au = phi <2 x ptr> [ %i.ar, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_13DirectChannel9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %10, align 8, !tbaa !24, !alias.scope !238
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x ptr> %i.au, ptr %i.av, align 8, !tbaa !113, !alias.scope !238
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !115, !alias.scope !238
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !238
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %10)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.u

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !116 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !117 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.n, !prof !22

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bf)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.o

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !38
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.av, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !115
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #28
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.p
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !117 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.cg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.bt, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.q, !prof !22

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.by)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.r

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
end_hunk_0
