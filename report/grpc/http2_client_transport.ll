Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_client_transport?download=true
inline.NumInlined: 18551
inline.NumDeleted: 8994
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK9grpc_core3MapINS0_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS2_4ReadEmEUlvE0_EEZNS2_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ClientTransport17EndpointReadSliceEmEUlONS8_INS_5SliceEEEE_E7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena:bb.a
bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i13, %upb_Arena_Malloc.exit.thread.i.i8
  %.pre-phi.i9 = phi i64 [ %.pre.i14, %upb_Arena_Malloc.exit.i._crit_edge.i13 ], [ %i.ag, %upb_Arena_Malloc.exit.thread.i.i8 ]
  %.0.i11.i.i10 = phi ptr [ %i.ak, %upb_Arena_Malloc.exit.i._crit_edge.i13 ], [ %i.ae, %upb_Arena_Malloc.exit.thread.i.i8 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i10, i8 0, i64 %i.z, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1067
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !148
  %i.an = or i8 %i.am, 1
  store i8 %i.an, ptr %i.al, align 1, !tbaa !148
  store i64 %.pre-phi.i9, ptr %i.u, align 1
  br label %grpc_channelz_v2_Promise_Map_mutable_promise.exit

grpc_channelz_v2_Promise_Map_mutable_promise.exit: ; preds = %grpc_channelz_v2_Promise_mutable_map_promise.exit, %upb_Arena_Malloc.exit.i.i11, %bb.d
  %.0.i7 = phi ptr [ %.0.i11.i.i10, %bb.d ], [ %i.w, %grpc_channelz_v2_Promise_mutable_map_promise.exit ], [ null, %upb_Arena_Malloc.exit.i.i11 ]
  tail call void @_ZNK9grpc_core2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS1_4ReadEmEUlvE0_E7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.0.i7, ptr noundef %2)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.330, i64 45), ptr %i.ao, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 351, ptr %.sroa.56.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS1_4ReadEmEUlvE0_E7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__If_msg_init) #44, !srcloc !1067
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !492
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %grpc_channelz_v2_Promise_if_promise.exit.i, label %grpc_channelz_v2_Promise_if_promise.exit.thread.i

grpc_channelz_v2_Promise_if_promise.exit.i:       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.in.then.val.i.i = load i64, ptr %i.d, align 4 ; 2 uses
  %i.e = inttoptr i64 %.0.in.then.val.i.i to ptr
  %i.f = icmp eq i64 %.0.in.then.val.i.i, 0
  br i1 %i.f, label %grpc_channelz_v2_Promise_if_promise.exit.thread.i, label %grpc_channelz_v2_Promise_mutable_if_promise.exit

grpc_channelz_v2_Promise_if_promise.exit.thread.i: ; preds = %grpc_channelz_v2_Promise_if_promise.exit.i, %bb.a
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__If_msg_init, i64 8), align 8, !tbaa !1044
  %i.h = zext i16 %i.g to i64                     ; 5 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1046
  %i.m = load ptr, ptr %2, align 8, !tbaa !1047   ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, %i.h
  br i1 %i.q, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !138

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %grpc_channelz_v2_Promise_if_promise.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store ptr %i.r, ptr %2, align 8, !tbaa !1047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.b

upb_Arena_Malloc.exit.i.i:                        ; preds = %grpc_channelz_v2_Promise_if_promise.exit.thread.i
  %i.s = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.h) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %.pre.i = ptrtoint ptr %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %upb_Arena_Malloc.exit.i.i ], [ %i.o, %upb_Arena_Malloc.exit.thread.i.i ]
  %.0.i11.i.i = phi ptr [ %i.s, %upb_Arena_Malloc.exit.i.i ], [ %i.m, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i, i8 0, i64 %i.h, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__If_msg_init) #44, !srcloc !1067
  store i32 3, ptr %i.a, align 4, !tbaa !492
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.pre-phi.i, ptr %i.t, align 4
  br label %grpc_channelz_v2_Promise_mutable_if_promise.exit

grpc_channelz_v2_Promise_mutable_if_promise.exit: ; preds = %grpc_channelz_v2_Promise_if_promise.exit.i, %bb.b
  %.0.i = phi ptr [ %.0.i11.i.i, %bb.b ], [ %i.e, %grpc_channelz_v2_Promise_if_promise.exit.i ] ; 7 uses
  %i.u = load i8, ptr %0, align 8, !tbaa !617, !range !136, !noundef !137 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 9
  store i8 %i.u, ptr %i.v, align 1
  %i.w = trunc nuw i8 %i.u to i1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 1              ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0                     ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %grpc_channelz_v2_Promise_mutable_if_promise.exit
  br i1 %i.aa, label %bb.d, label %grpc_channelz_v2_Promise_If_mutable_promise.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !1044
  %i.ac = zext i16 %i.ab to i64                   ; 5 uses
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp eq i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1046
  %i.ah = load ptr, ptr %2, align 8, !tbaa !1047  ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ac
  br i1 %i.al, label %upb_Arena_Malloc.exit.i.i18, label %upb_Arena_Malloc.exit.thread.i.i15, !prof !138

upb_Arena_Malloc.exit.thread.i.i15:               ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  store ptr %i.am, ptr %2, align 8, !tbaa !1047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.e

upb_Arena_Malloc.exit.i.i18:                      ; preds = %bb.d
  %i.an = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.ac) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %.pre.i21 = ptrtoint ptr %i.an to i64
  br label %bb.e

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i18, %upb_Arena_Malloc.exit.thread.i.i15
  %.pre-phi.i16 = phi i64 [ %.pre.i21, %upb_Arena_Malloc.exit.i.i18 ], [ %i.aj, %upb_Arena_Malloc.exit.thread.i.i15 ]
  %.0.i11.i.i17 = phi ptr [ %i.an, %upb_Arena_Malloc.exit.i.i18 ], [ %i.ah, %upb_Arena_Malloc.exit.thread.i.i15 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i17, i8 0, i64 %i.ac, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1067
  br label %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split

bb.f:                                             ; preds = %grpc_channelz_v2_Promise_mutable_if_promise.exit
  br i1 %i.aa, label %bb.g, label %grpc_channelz_v2_Promise_If_mutable_promise.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !1044
  %i.ap = zext i16 %i.ao to i64                   ; 5 uses
  %i.aq = and i64 %i.ap, 7
  %i.ar = icmp eq i64 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1046
  %i.au = load ptr, ptr %2, align 8, !tbaa !1047  ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.ap
  br i1 %i.ay, label %upb_Arena_Malloc.exit.i.i26, label %upb_Arena_Malloc.exit.thread.i.i23, !prof !138

upb_Arena_Malloc.exit.thread.i.i23:               ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ap
  store ptr %i.az, ptr %2, align 8, !tbaa !1047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i26:                      ; preds = %bb.g
  %i.ba = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.ap) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %.pre.i29 = ptrtoint ptr %i.ba to i64
  br label %bb.h

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i26, %upb_Arena_Malloc.exit.thread.i.i23
  %.pre-phi.i24 = phi i64 [ %.pre.i29, %upb_Arena_Malloc.exit.i.i26 ], [ %i.aw, %upb_Arena_Malloc.exit.thread.i.i23 ]
  %.0.i11.i.i25 = phi ptr [ %i.ba, %upb_Arena_Malloc.exit.i.i26 ], [ %i.au, %upb_Arena_Malloc.exit.thread.i.i23 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i25, i8 0, i64 %i.ap, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1067
  br label %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split

grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split: ; preds = %bb.e, %bb.h
  %.pre-phi.i24.sink = phi i64 [ %.pre-phi.i24, %bb.h ], [ %.pre-phi.i16, %bb.e ]
  %.0.i22.sink45.ph = phi ptr [ %.0.i11.i.i25, %bb.h ], [ %.0.i11.i.i17, %bb.e ]
  %.sink41.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.327, i64 45), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @.str.326, i64 45), %bb.e ]
  %.sink.ph = phi i64 [ 85, %bb.h ], [ 86, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !148
  %i.bd = or i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !148
  store i64 %.pre-phi.i24.sink, ptr %i.x, align 1
  br label %grpc_channelz_v2_Promise_If_mutable_promise.exit

grpc_channelz_v2_Promise_If_mutable_promise.exit: ; preds = %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split, %bb.f, %bb.c
  %.0.i22.sink45 = phi ptr [ %i.z, %bb.c ], [ %i.z, %bb.f ], [ %.0.i22.sink45.ph, %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split ] ; 3 uses
  %.sink41 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.326, i64 45), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @.str.327, i64 45), %bb.f ], [ %.sink41.ph, %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split ]
  %.sink = phi i64 [ 86, %bb.c ], [ 85, %bb.f ], [ %.sink.ph, %grpc_channelz_v2_Promise_If_mutable_promise.exit.sink.split ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i22.sink45, i64 8
  store i32 2, ptr %i.be, align 4, !tbaa !492
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i22.sink45, i64 16
  store ptr %.sink41, ptr %i.bf, align 4
  %.sroa.56.0..sroa_idx.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0.i22.sink45, i64 24
  store i64 %.sink, ptr %.sroa.56.0..sroa_idx.i.i.i.i31, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.328, i64 45), ptr %i.bg, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 126, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @.str.329, i64 45), ptr %i.bh, align 1
  %.sroa.56.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 125, ptr %.sroa.56.0..sroa_idx.i34, align 1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core5Party15ParticipantImplINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEZNS8_15SpawnInfallibleISO_EEvNS_13RefCountedPtrIS0_EESt17basic_string_viewIcSt11char_traitsIcEESL_EUlSH_E_E22PollParticipantPromiseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.grpc_core::Waker::WakeableAndArg", align 8 ; 4 uses
  %2 = alloca %"class.grpc_core::Waker", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !720, !range !136, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge, label %bb.b

._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1302
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.phi.trans.insert, align 8, !tbaa !663
  %i.e = inttoptr i64 %i.d to ptr
  store i8 1, ptr %i.a, align 8, !tbaa !720
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit: ; preds = %bb.b, %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge
  %3 = phi ptr [ %.pre, %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load i8, ptr %3, align 2, !tbaa !775, !range !136, !noundef !137
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread.thread, label %bb.c

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread.thread: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !677, !range !136, !noundef !137
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.x, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i1.i

bb.c:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i13, label %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTHN9grpc_core8Activity19g_current_activity_E()
  br label %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i

_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !649  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i16 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !inline_history !75
  %i.r = load i16, ptr %i.k, align 2, !tbaa !776
  %i.s = or i16 %i.r, %i.q
  store i16 %i.s, ptr %i.k, align 2, !tbaa !776
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !677, !range !136, !noundef !137
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ClientTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ClientTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit: ; preds = %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i
  store i8 1, ptr %i.u, align 8, !tbaa !677
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !3486, !noalias !3487 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3376
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !591, !noalias !3487 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !3488 ; 0 uses
  %i.ad = ptrtoint ptr %i.y to i64
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !591
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !621
  br label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ClientTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit, %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, %bb.e
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !591, !noalias !3489 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 185
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !721, !noalias !3489
  switch i8 %i.ak, label %bb.k [
    i8 3, label %.critedge48
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !noalias !3489
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !591, !noalias !3489 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !449, !noalias !3489
  %.not.not.i = icmp eq i64 %i.ao, 0              ; 2 uses
  br i1 %.not.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 185
  store i8 1, ptr %i.ap, align 1, !tbaa !721, !noalias !3489
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i unwind label %bb.j, !noalias !3489

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #43, !noalias !3489
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i:      ; preds = %bb.i
  br i1 %.not.not.i, label %bb.k, label %.critedge48

bb.k:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44, !noalias !3489
  br i1 %.not.i.i.i.i.i.i13, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTHN9grpc_core8Activity19g_current_activity_E(), !noalias !3489
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i: ; preds = %bb.l, %bb.k
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !649, !noalias !3489 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135, !noalias !3489
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !3489
  call void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Waker") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !3489, !inline_history !3479
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !591, !noalias !3489
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !650, !noalias !3489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !650, !noalias !3489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !650, !noalias !3489
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !651, !noalias !3489 ; 2 uses
  %i.az = load i16, ptr %i.ah, align 8, !tbaa !652, !noalias !3489
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !135, !noalias !3489
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !3489
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i16 noundef zeroext %i.az)
          to label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit unwind label %bb.m, !noalias !3489, !inline_history !13

bb.m:                                             ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #43, !noalias !3489
  unreachable

.critedge48:                                      ; preds = %bb.f, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !3491, !noalias !3489 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3376
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !591, !noalias !3489
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 185 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !721, !noalias !3489
  switch i8 %i.bj, label %bb.n [
    i8 1, label %_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i
    i8 3, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread
  ]

_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i: ; preds = %.critedge48
  store i8 2, ptr %i.bi, align 1, !tbaa !721, !noalias !3489
  br label %bb.n

bb.n:                                             ; preds = %.critedge48, %_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i
  %i.bk = tail call noundef zeroext i1 @_ZN9grpc_core5http220Http2ClientTransport30TriggerWriteCycleOrHandleErrorENS_13DebugLocationE(ptr noundef nonnull align 8 dereferenceable(3416) %i.bf), !noalias !3489
  br i1 %i.bk, label %bb.o, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !591 ; 4 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i15, label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 acq_rel, align 8
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.q, label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, !prof !138

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNK9grpc_core11UnrefDeleteclIKNS_20SecurityFrameHandlerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
  br label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit

_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !3486, !noalias !3492 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3376
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !591, !noalias !3492 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !3493 ; 0 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  store ptr %i.br, ptr %i.af, align 8, !tbaa !591
  store i64 %i.bu, ptr %i.ag, align 8, !tbaa !621
  br label %bb.f

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44, !noalias !3489
  br label %.critedge

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread: ; preds = %bb.n, %.critedge48
  %.pre49 = load i8, ptr %i.a, align 8, !tbaa !720, !range !136
  %i.bv = trunc nuw i8 %.pre49 to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !677, !range !136, !noundef !137
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread
  br i1 %i.by, label %bb.s, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !591 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 acq_rel, align 8
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i, !prof !138

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK9grpc_core11UnrefDeleteclIKNS_20SecurityFrameHandlerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  br label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i

_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !440 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core5Party15ParticipantImplINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ClientTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEZNS8_15SpawnInfallibleISO_EEvNS_13RefCountedPtrIS0_EESt17basic_string_viewIcSt11char_traitsIcEESL_EUlSH_E_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ClientTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
end_hunk_0
