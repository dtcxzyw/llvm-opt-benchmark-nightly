Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.09?download=true
inline.NumInlined: 1865
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB13_7Session3new000ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  br label %bb.ka

_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.thread11.i: ; preds = %bb.y, %bb.bn, %bb.bm, %bb.ah
  %.sroa.0.0.copyload1.ph.i = phi i16 [ 42, %bb.bn ], [ %i.fd, %bb.bm ], [ %i.fa, %bb.ah ], [ 30, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(46) %.sroa.10.i, ptr noundef nonnull align 2 dereferenceable(46) %.sroa.5383.0..sroa_idx.i.i, i64 46, i1 false), !noalias !2111
  store i8 1, ptr %i.aq, align 2, !noalias !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5363.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8279.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %.loopexit53.i

_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8Nt8RkXewNx_3rtp6header6HeaderEECs4KPtkQIfQGm_13libp2p_webrtc.exit147.invoke.i.i
  %.sroa.0.0.copyload1.pr.i = load i16, ptr %i.l, align 8, !noalias !2111 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(46) %.sroa.10.i, ptr noundef nonnull align 2 dereferenceable(46) %.sroa.5383.0..sroa_idx.i.i, i64 46, i1 false), !noalias !2111
  store i8 1, ptr %i.aq, align 2, !noalias !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5363.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8279.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.tu = icmp eq i16 %.sroa.0.0.copyload1.pr.i, -2
  br i1 %i.tu, label %bb.ka, label %.loopexit53.i

bb.ka:                                            ; preds = %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %bb.kb

.loopexit53.i:                                    ; preds = %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.thread11.i
  %.sroa.0.0.copyload114.i = phi i16 [ %.sroa.0.0.copyload1.ph.i, %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.thread11.i ], [ %.sroa.0.0.copyload1.pr.i, %_RNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB4_7Session8incoming0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(46) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(46) %.sroa.10.i, i64 46, i1 false), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.tv = load i8, ptr %.val, align 1, !noalias !1994, !noundef !9
  %i.tw = or i8 %i.tv, 1
  store i8 %i.tw, ptr %.val, align 1, !noalias !1994
  store i16 %.sroa.0.0.copyload114.i, ptr %0, align 8, !alias.scope !1993
  br label %_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.kb:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.ka, %bb.i, %bb.h, %bb.g
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0779.i, %bb.g ], [ true, %bb.ka ], [ %.sroa.0.0779.i, %bb.h ], [ true, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %.sroa.0.0779.i, %bb.i ], [ true, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ] ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.de, 3
  br i1 %exitcond.not.i, label %bb.c, label %bb.d

bb.kc:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.tx = load i8, ptr %i.ao, align 8, !range !19, !noalias !2113, !noundef !9
  switch i8 %i.tx, label %default.unreachable [
    i8 0, label %bb.kd
    i8 1, label %bb.ke
    i8 2, label %bb.kf
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.kc
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i23.i, align 8, !noalias !2113
  br label %bb.kg

bb.kd:                                            ; preds = %bb.kc
  %i.ty = load ptr, ptr %i.ap, align 8, !noalias !2113, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.ty, ptr %.phi.trans.insert.i23.i, align 8, !noalias !2113
  br label %bb.kg

bb.ke:                                            ; preds = %bb.kc
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2114
  unreachable

bb.kf:                                            ; preds = %bb.kc
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2114
  unreachable

bb.kg:                                            ; preds = %bb.kd, %._crit_edge.i.i
  %.val.i24.i = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.ty, %bb.kd ]
  %i.tz = invoke { i32, i32 } @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxmNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i24.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.kh, !noalias !1993 ; 3 uses

bb.kh:                                            ; preds = %bb.kg
  %i.ua = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.ao, align 8, !noalias !2113
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.kg
  %i.ub = extractvalue { i32, i32 } %i.tz, 0
  %i.uc = icmp eq i32 %i.ub, 2                    ; 2 uses
  %i.ud = extractvalue { i32, i32 } %i.tz, 1      ; 2 uses
  %i.ue = insertvalue { i32, i32 } { i32 2, i32 poison }, i32 %i.ud, 1
  %.sink.i.i = select i1 %i.uc, i8 3, i8 1
  %common.ret.op.i.i = select i1 %i.uc, { i32, i32 } %i.ue, { i32, i32 } %i.tz
  store i8 %.sink.i.i, ptr %i.ao, align 8, !noalias !2113
  %i.uf = extractvalue { i32, i32 } %common.ret.op.i.i, 0 ; 2 uses
  %i.ug = icmp eq i32 %i.uf, 2
  br i1 %i.ug, label %bb.kb, label %bb.ki

bb.ki:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.uh = load i8, ptr %.val, align 1, !noalias !1994, !noundef !9
  %i.ui = or i8 %i.uh, 2
  store i8 %i.ui, ptr %.val, align 1, !noalias !1994
  store i16 46, ptr %0, align 8, !alias.scope !1993
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.uf, ptr %.sroa.46.0..sroa_idx.i, align 4, !alias.scope !1993
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ud, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1993
  br label %_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.kj:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.uj = load i8, ptr %i.am, align 8, !range !19, !noalias !2115, !noundef !9
  switch i8 %i.uj, label %default.unreachable [
    i8 0, label %bb.kk
    i8 1, label %bb.kl
    i8 2, label %bb.km
    i8 3, label %._crit_edge.i25.i
  ]

._crit_edge.i25.i:                                ; preds = %bb.kj
  %.val.pre.i27.i = load ptr, ptr %.phi.trans.insert.i26.i, align 8, !noalias !2115
  br label %bb.kn

bb.kk:                                            ; preds = %bb.kj
  %i.uk = load ptr, ptr %i.an, align 8, !noalias !2115, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.uk, ptr %.phi.trans.insert.i26.i, align 8, !noalias !2115
  br label %bb.kn

bb.kl:                                            ; preds = %bb.kj
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2116
  unreachable

bb.km:                                            ; preds = %bb.kj
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2116
  unreachable

bb.kn:                                            ; preds = %bb.kk, %._crit_edge.i25.i
  %.val.i28.i = phi ptr [ %.val.pre.i27.i, %._crit_edge.i25.i ], [ %i.uk, %bb.kk ]
  %i.ul = invoke noundef range(i8 0, 3) i8 @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i28.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.ko, !noalias !1993 ; 2 uses

bb.ko:                                            ; preds = %bb.kn
  %i.um = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.am, align 8, !noalias !2115
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.kn
  %i.un = icmp eq i8 %i.ul, 2                     ; 2 uses
  %..i.i = select i1 %i.un, i8 3, i8 1
  store i8 %..i.i, ptr %i.am, align 8, !noalias !2115
  br i1 %i.un, label %bb.kb, label %bb.kp

bb.kp:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.uo = load i8, ptr %.val, align 1, !noalias !1994, !noundef !9
  %i.up = or i8 %i.uo, 4
  store i8 %i.up, ptr %.val, align 1, !noalias !1994
  store i16 47, ptr %0, align 8, !alias.scope !1993
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ul, ptr %.sroa.412.0..sroa_idx.i, align 2, !alias.scope !1993
  br label %_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit

_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b, %bb.e, %bb.f, %.loopexit53.i, %bb.ki, %bb.kp
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB13_8DTLSConn3new0s1_00ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.420.i.sroa.6.i.i = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.613.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.37.i.i.i = alloca [24 x i8], align 8     ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [168 x i8], align 8               ; 7 uses
  %i.i = alloca [184 x i8], align 8               ; 5 uses
  %.sroa.3.i.i.i = alloca [69 x i8], align 1      ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.794.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.k = alloca [16 x i8], align 16               ; 13 uses
  %i.l = alloca [8 x i8], align 8                 ; 16 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.11354.sroa.5.i.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.9338.sroa.8.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [216 x i8], align 8               ; 15 uses
  %i.r = alloca [8 x i8], align 8                 ; 12 uses
  %.sroa.613.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.37.i.i = alloca [24 x i8], align 8       ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [168 x i8], align 8               ; 7 uses
  %i.v = alloca [184 x i8], align 8               ; 5 uses
  %.sroa.4.i.i = alloca [69 x i8], align 1        ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.7246.i.i = alloca [16 x i8], align 8     ; 7 uses
  %i.x = alloca [64 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 17 uses
  %.sroa.5217.sroa.2.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.aa, align 8           ; 79 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !41, !noalias !2256, !noundef !9
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, !prof !39

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.a
  %i.af = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ab), !noalias !2255 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.af, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ], [ %i.ab, %bb.a ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.ah, align 1, !range !23, !noalias !2255, !noundef !9
  %i.ai = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.ai, align 1, !noalias !2255
  %i.aj = trunc nuw i8 %.val.i.i to i1
  %i.ak = tail call noundef zeroext i1 @_RNvMNtNtCsc13h7DQFCSE_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.aj, i8 %.val5.i.i), !noalias !2255
  br i1 %i.ak, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  tail call void @_RNvNtNtCsc13h7DQFCSE_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !2255
  store i64 -2, ptr %0, align 8, !alias.scope !2255
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.al = tail call noundef i32 @_RNvNtNtCsc13h7DQFCSE_5tokio6macros7support12thread_rng_n(i32 noundef 2), !noalias !2255
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val1, i64 24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1, i64 177 ; 4 uses
  %.phi.trans.insert426.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 296 ; 5 uses
  %i.ap = getelementptr i8, ptr %.val1, i64 192   ; 12 uses
  %.phi.trans.insert422.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 232 ; 5 uses
  %.phi.trans.insert424.i.i = getelementptr i8, ptr %.val1, i64 240 ; 4 uses
  %.phi.trans.insert416.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 424 ; 3 uses
  %.phi.trans.insert418.i.i = getelementptr i8, ptr %.val1, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1, i64 172 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1, i64 88 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %.val1, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %.val1, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %.val1, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %.val1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1, i64 152
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1, i64 112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1, i64 184 ; 27 uses
  %.sroa.3.0..sroa_idx215.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5217.sroa.2.0..sroa.5217.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.8.sroa.8.0..sroa_idx362.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1, i64 176 ; 5 uses
  %.sroa.4368.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1, i64 168 ; 3 uses
  %.sroa.10229.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 32 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %.sroa.12230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %.sroa.8247.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 208 ; 4 uses
  %.sroa.10249.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 562
  %.sroa.11250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 563
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1, i64 408 ; 11 uses
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1, i64 185 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1, i64 186 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %.sroa.0257.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 200 ; 3 uses
  %.sroa.0257.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 216 ; 3 uses
  %.sroa.7258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 224 ; 3 uses
  %.sroa.9260.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 4 uses
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1, i64 392
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1, i64 280 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1, i64 401 ; 2 uses
  %.sroa.37.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.613.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 416 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 175 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1, i64 120 ; 13 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 174 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, <2 x i64> <i64 169, i64 184>
  %i.by = getelementptr inbounds nuw i8, ptr %.val1, i64 169 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1, i64 170 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1, <2 x i64> <i64 171, i64 184>
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1, i64 171 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1, i64 173 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1, i64 297 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1, i64 248
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1, i64 256 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1, i64 264 ; 4 uses
  %.sroa.1081.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 288 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1, i64 304 ; 7 uses
  %.sroa.794.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 312 ; 5 uses
  %.sroa.895.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %.sroa.1097.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 682
  %.sroa.1198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 683
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1, i64 528 ; 11 uses
  %.sroa.3.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i.i, i64 5
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1, i64 305 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.0105.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %.sroa.0105.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 336
  %.sroa.7106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 344
  %.sroa.9108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 520 ; 2 uses
  %.sroa.37.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1, i64 512
  %i.co = getelementptr inbounds nuw i8, ptr %.val1, i64 352 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1, i64 521 ; 2 uses
  %.sroa.37.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.613.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 536 ; 3 uses
  %.sroa.420.i.sroa.4.0..sroa.423.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 544
  %.sroa.420.i.sroa.6.0..sroa.423.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.p
  br i1 %.sroa.0.1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.p, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i
  %.sroa.0.0796.i = phi i1 [ false, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ %.sroa.0.1.i, %bb.p ] ; 2 uses
  %i.cs = phi i1 [ true, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ false, %bb.p ]
  %.sroa.010.0795.i = phi i32 [ 0, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ 1, %bb.p ]
  %i.ct = add i32 %.sroa.010.0795.i, %i.al
  %trunc.i = trunc i32 %i.ct to i1
  %i.cu = load i8, ptr %.val, align 1, !noalias !2256, !noundef !9 ; 2 uses
  br i1 %trunc.i, label %bb.h, label %bb.g, !prof !44

bb.e:                                             ; preds = %bb.c
  store i64 88, ptr %0, align 8, !alias.scope !2255
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.f:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8, !alias.scope !2255
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.g:                                             ; preds = %bb.d
  %i.cv = and i8 %i.cu, 1
  %.not12.i = icmp eq i8 %i.cv, 0
  br i1 %.not12.i, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.d
  %i.cw = and i8 %i.cu, 2
  %.not.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.cx = load i8, ptr %i.am, align 8, !range !19, !noalias !2257, !noundef !9
  switch i8 %i.cx, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.i
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !2257
  br label %bb.m

default.unreachable:                              ; preds = %bb.kr, %bb.kn, %bb.kj, %bb.ke, %bb.hg, %bb.gt, %bb.gp, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fq, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.cx, %bb.q, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr %.val1, align 8, !noalias !2257, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.cy, ptr %.phi.trans.insert.i.i, align 8, !noalias !2257
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2258
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2258
  unreachable

bb.m:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.val.i13.i = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.cy, %bb.j ]
  %i.cz = invoke noundef range(i8 0, 3) i8 @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i13.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.n, !noalias !2255 ; 2 uses

common.resume.i:                                  ; preds = %.body.i.i, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.da, %bb.n ], [ %.pn104.pn.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.am, align 8, !noalias !2257
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.m
  %i.db = icmp eq i8 %i.cz, 2                     ; 2 uses
  %..i.i = select i1 %i.db, i8 3, i8 1
  store i8 %..i.i, ptr %i.am, align 8, !noalias !2257
  br i1 %i.db, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.dc = load i8, ptr %.val, align 1, !noalias !2256, !noundef !9
  %i.dd = or i8 %i.dc, 1
  store i8 %i.dd, ptr %.val, align 1, !noalias !2256
  store i64 86, ptr %0, align 8, !alias.scope !2255
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2255
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.p:                                             ; preds = %bb.ls, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.h, %bb.g
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0796.i, %bb.g ], [ true, %bb.ls ], [ %.sroa.0.0796.i, %bb.h ], [ true, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ] ; 2 uses
  br i1 %i.cs, label %bb.d, label %bb.c

bb.q:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11354.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9338.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5217.sroa.2.i.i)
  %i.de = load i8, ptr %i.ao, align 1, !range !30, !noalias !2259, !noundef !9
  switch i8 %i.de, label %default.unreachable [
    i8 0, label %bb.v
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
    i8 7, label %bb.u
    i8 8, label %bb.hg
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7246.i.i)
  br label %bb.cb

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2259
  br label %bb.au

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2259
  %.val120.pre.i.i = load ptr, ptr %.phi.trans.insert416.i.i, align 8, !noalias !2259
  %.val121.pre.i.i = load ptr, ptr %.phi.trans.insert418.i.i, align 8, !noalias !2259
  br label %bb.ct

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2259
  %.val122.pre.i.i = load ptr, ptr %.phi.trans.insert422.i.i, align 8, !noalias !2259
  %.val123.pre.i.i = load ptr, ptr %.phi.trans.insert424.i.i, align 8, !noalias !2259
  br label %bb.ka

bb.v:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.aq, i8 0, i64 5, i1 false), !noalias !2259
  %i.df = load ptr, ptr %i.as, align 8, !noalias !2259, !nonnull !9, !align !16, !noundef !9
  %i.dg = load ptr, ptr %i.at, align 8, !noalias !2259, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.dh = load ptr, ptr %i.av, align 8, !noalias !2259, !nonnull !9, !align !16, !noundef !9
  %i.di = load ptr, ptr %i.ax, align 8, !noalias !2259, !nonnull !9, !noundef !9 ; 2 uses
  %i.dj = load i64, ptr %i.ay, align 8, !noalias !2259, !noundef !9 ; 2 uses
  store ptr %i.di, ptr %i.aw, align 8, !noalias !2259
  store i64 %i.dj, ptr %i.az, align 8, !noalias !2259
  %i.dk = load <2 x ptr>, ptr %i.bb, align 8, !noalias !2259
  %i.dl = insertelement <4 x ptr> poison, ptr %i.df, i64 0
  %i.dm = insertelement <4 x ptr> %i.dl, ptr %i.dh, i64 1
  %i.dn = shufflevector <2 x ptr> %i.dk, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <4 x ptr> %i.dm, <4 x ptr> %i.dn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.do, ptr %i.ar, align 8, !noalias !2259
  %.val.i15.i = load ptr, ptr %i.dg, align 8, !noalias !2260, !nonnull !9, !noundef !9
  %i.dp = getelementptr i8, ptr %i.dg, i64 8
  %.val107.i.i = load ptr, ptr %i.dp, align 8, !noalias !2260, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val107.i.i, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !11, !invariant.load !9, !noalias !2260
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = and i64 %i.ds, -16
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i15.i, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.val107.i.i, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !9, !noalias !2260, !nonnull !9
  %i.dy = invoke { ptr, ptr } %i.dx(ptr noundef nonnull %i.dv, ptr noalias nofree noundef nonnull %i.di, i64 noundef %i.dj)
          to label %bb.w unwind label %bb.aj, !noalias !2260 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1
  store ptr %i.dz, ptr %i.bd, align 8, !noalias !2259
  store ptr %i.ea, ptr %i.ap, align 8, !noalias !2259
  br label %bb.z

bb.x:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29, !noalias !2260
  unreachable

bb.y:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29, !noalias !2260
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2259
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.aa, !noalias !2260

bb.aa:                                            ; preds = %bb.z
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2259
  %.val108.i.i = load ptr, ptr %i.bd, align 8, !noalias !2259
  %.val109.i.i = load ptr, ptr %i.ap, align 8, !noalias !2259, !nonnull !9, !align !16, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val108.i.i, ptr nonnull %.val109.i.i) #27
          to label %.body.i.i unwind label %bb.at, !noalias !2260

bb.ab:                                            ; preds = %bb.z
  %i.ec = load i64, ptr %i.z, align 8, !range !43, !noalias !2259, !noundef !9 ; 3 uses
  %i.ed = icmp eq i64 %i.ec, -2
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2259
  br label %bb.ls

bb.ad:                                            ; preds = %bb.ab
  %i.ee = load <2 x i64>, ptr %.sroa.3.0..sroa_idx215.i.i, align 8, !noalias !2259
  %.sroa.3.0.copyload216.i.i = load i64, ptr %.sroa.3.0..sroa_idx215.i.i, align 8, !noalias !2259 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.0..sroa.5217.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2259
  %.val110.i.i = load ptr, ptr %i.bd, align 8, !noalias !2259 ; 5 uses
  %.val111.i.i = load ptr, ptr %i.ap, align 8, !noalias !2259, !nonnull !9, !align !16, !noundef !9 ; 5 uses
  %i.ef = load ptr, ptr %.val111.i.i, align 8, !invariant.load !9, !noalias !2260 ; 2 uses
  %.not.i.i124.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i124.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110.i.i) ]
  invoke void %i.ef(ptr noundef nonnull %.val110.i.i)
          to label %bb.af unwind label %bb.ah, !noalias !2260

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !10, !invariant.load !9, !noalias !2260 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !11, !invariant.load !9, !noalias !2260
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110.i.i, i64 noundef range(i64 1, 0) %i.eh, i64 noundef range(i64 1, 536870913) %i.ek) #25, !noalias !2260
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !10, !invariant.load !9, !noalias !2260 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.body.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !11, !invariant.load !9, !noalias !2260
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110.i.i, i64 noundef range(i64 1, 0) %i.en, i64 noundef range(i64 1, 536870913) %i.eq) #25, !noalias !2260
  br label %.body.i.i

bb.aj:                                            ; preds = %bb.v
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.ag, %bb.af
  %.not.i.i.i = icmp eq i64 %i.ec, -1
  br i1 %.not.i.i.i, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2259
  %i.es = load i64, ptr %i.az, align 8, !noalias !2259, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.copyload216.i.i, %i.es
  br i1 %.not.i.i.i.i, label %bb.al, label %bb.am, !prof !31

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.3.0.copyload216.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2260

.noexc.i.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.et = load ptr, ptr %i.aw, align 8, !noalias !2259, !nonnull !9, !noundef !9
  invoke void @_RNvNtCsbwH7Cv0ieDd_4dtls12record_layer15unpack_datagram(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %.sroa.3.0.copyload216.i.i)
          to label %bb.an unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2260

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.al
  %lpad.loopexit.split-lp2088 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2259
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  %i.eu = load i64, ptr %i.x, align 8, !range !14, !alias.scope !2262, !noalias !2259, !noundef !9 ; 2 uses
  %.not.i125.i.i = icmp eq i64 %i.eu, -1
  %.sroa.8.sroa.0.0.copyload360.i.i = load i64, ptr %i.be, align 8, !alias.scope !2263, !noalias !2259 ; 3 uses
  %i.ev = load <2 x i64>, ptr %.sroa.8.sroa.8.0..sroa_idx362.i.i, align 8, !alias.scope !2263, !noalias !2259 ; 4 uses
  br i1 %.not.i125.i.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2259
  store i64 %.sroa.8.sroa.0.0.copyload360.i.i, ptr %i.y, align 8, !noalias !2259
  store <2 x i64> %i.ev, ptr %.sroa.4368.0..sroa_idx.i.i, align 8, !noalias !2259
  store i8 0, ptr %i.bg, align 8, !noalias !2259
  store i8 0, ptr %i.bf, align 8, !noalias !2259
  %3 = extractelement <2 x i64> %i.ev, i64 0
  %4 = inttoptr i64 %3 to ptr                     ; 4 uses
  %5 = extractelement <2 x i64> %i.ev, i64 1      ; 2 uses
  %i.ew = icmp ult i64 %5, 384307168202282326
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %5 ; 2 uses
  store ptr %4, ptr %i.an, align 8, !noalias !2259
  store ptr %4, ptr %.sroa.10229.0..sroa_idx.i.i, align 8, !noalias !2259
  store i64 %.sroa.8.sroa.0.0.copyload360.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !2259
  store ptr %i.ex, ptr %.sroa.12230.0..sroa_idx.i.i, align 8, !noalias !2259
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bw, %bb.ao
  %i.ey = phi ptr [ %.pre415.i.i, %bb.bw ], [ %4, %bb.ao ] ; 4 uses
  %i.ez = phi ptr [ %.pre.i.i, %bb.bw ], [ %i.ex, %bb.ao ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.aq:                                            ; preds = %bb.an
  %.sroa.10223.0..sroa_idx224.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11354.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10223.0..sroa_idx224.i.i, i64 32, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2259
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit143.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit143.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.cq, %bb.aq
  %.sroa.7346.0.i.i = phi i64 [ %.sroa.420.i.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %.sroa.8.sroa.0.0.copyload360.i.i, %bb.aq ], [ %.sroa.7346.1.i1298.i, %bb.cq ]
  %.sroa.0344.0.i.i = phi i64 [ %.sroa.018.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %i.eu, %bb.aq ], [ %.sroa.0344.1.i1300.i, %bb.cq ]
  %i.fb = phi <2 x i64> [ %i.qa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %i.ev, %bb.aq ], [ %i.hh, %bb.cq ]
  store i8 0, ptr %i.bf, align 8, !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2259
  br label %bb.lt

bb.ar:                                            ; preds = %bb.lr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn101.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2088, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn98.pn.i.i, %bb.lr ], [ %.pn98.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ]
  store i8 0, ptr %i.bf, align 8, !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2259
  br label %.body.i.i

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11354.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.i.i, i64 16, i1 false), !noalias !2259
  br label %bb.lt

bb.at:                                            ; preds = %bb.lr, %bb.lq, %bb.lo, %bb.ln, %bb.lm, %.body165.i.i, %.body151.i.i, %bb.co, %bb.cc, %bb.br, %.body130.i.i, %bb.av, %bb.aa
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2260
  unreachable

.body.i.i:                                        ; preds = %bb.ar, %bb.aj, %bb.ai, %bb.ah, %bb.aa
  %.pn104.pn.i.i = phi { ptr, i32 } [ %.pn101.pn.i.i, %bb.ar ], [ %i.el, %bb.ah ], [ %i.eb, %bb.aa ], [ %i.er, %bb.aj ], [ %i.el, %bb.ai ]
  store i8 2, ptr %i.ao, align 1, !noalias !2259
  br label %common.resume.i

bb.au:                                            ; preds = %bb.cn, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2259
  invoke fastcc void @_RNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB7_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtCskKLDkoKarTP_4core6option6OptionIBQ_INtNtB2h_6result6ResultuNtNtB1E_5error5ErrorEEEEE4send0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %bb.av, !noalias !2260

bb.av:                                            ; preds = %bb.au
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2259
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ap) #27
          to label %.body127.i.i unwind label %bb.at, !noalias !2260

bb.aw:                                            ; preds = %bb.au
  %i.fe = load i64, ptr %i.t, align 8, !range !45, !noalias !2259, !noundef !9 ; 3 uses
  %i.ff = icmp eq i64 %i.fe, -2
  br i1 %i.ff, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2259
  br label %bb.ls

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.0..sroa_idx.i.i, i64 24, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2259
  %i.fg = load i8, ptr %.sroa.9260.0..sroa_idx.i.i, align 8, !range !19, !noalias !2259, !noundef !9
  switch i8 %i.fg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i [
    i8 0, label %bb.az
    i8 3, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultuNtNtB1d_5error5ErrorEEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %.loopexit.split-lp15.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2260

bb.ba:                                            ; preds = %bb.ay
  %i.fh = load i8, ptr %i.bn, align 8, !range !19, !noalias !2259, !noundef !9
  %cond.i.i.i.i = icmp eq i8 %i.fh, 3
  br i1 %cond.i.i.i.i, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE7reserve0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE13reserve_inner0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE7reserve0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i unwind label %bb.bc, !noalias !2260

bb.bc:                                            ; preds = %bb.bb
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultuNtNtB1d_5error5ErrorEEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(32) %.phi.trans.insert422.i.i) #27
          to label %bb.bd unwind label %bb.bg, !noalias !2260

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE7reserve0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultuNtNtB1d_5error5ErrorEEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(32) %.phi.trans.insert422.i.i)
          to label %bb.bf unwind label %bb.be, !noalias !2260

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.be ], [ %i.fi, %bb.bc ]
  store i8 0, ptr %i.bp, align 1, !noalias !2259
  br label %.body127.i.i

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE7reserve0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE7reserve0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  store i8 0, ptr %i.bp, align 1, !noalias !2259
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.bg:                                            ; preds = %bb.bc
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2260
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.bf, %bb.az, %bb.ay
  %.not84.i.i = icmp eq i64 %i.fe, -1
  br i1 %.not84.i.i, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtBJ_6SenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionIB1s_INtNtB4_6result6ResultuNtNtB2g_5error5ErrorEEEEE4send0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2259
  store i64 %i.fe, ptr %i.s, align 8, !noalias !2259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i.i, i64 24, i1 false), !noalias !2259
  %.val112.i.i = load i64, ptr %i.bi, align 8, !range !14, !noalias !2259, !noundef !9
  %.not.i129.i.i = icmp eq i64 %.val112.i.i, -1
  br i1 %.not.i129.i.i, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2265
  store i64 0, ptr %i.n, align 8, !noalias !2265
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2265
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2265
  store i64 1610612768, ptr %i.bq, align 8, !noalias !2265
  store ptr %i.n, ptr %i.m, align 8, !noalias !2265
  store ptr @406, ptr %i.br, align 8, !noalias !2265
  %i.fl = invoke noundef zeroext i1 @_RNvXs_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc5errorINtB4_9SendErrorTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_7bounded6SenderINtNtB2f_6result6ResultuNtNtB1C_5error5ErrorEEEEENtNtB2f_3fmt7Display3fmtCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bj unwind label %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2266

.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.bk
  %lpad.loopexit.split-lp2093 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #27
          to label %.body130.i.i unwind label %bb.bl, !noalias !2266

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fl, label %bb.bk, label %bb.bn, !prof !31

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #29
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2266

.noexc.i.i.i.i:                                   ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2266
  unreachable

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.bh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultuNtNtB1d_5error5ErrorEEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc5error9SendErrorTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbwH7Cv0ieDd_4dtls6flight6PacketEINtNtB4_6option6OptionINtNtBG_7bounded6SenderINtNtB4_6result6ResultuNtNtB26_5error5ErrorEEEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.bq, !noalias !2260

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2265
  %i.fn = load i64, ptr %i.bi, align 8, !range !14, !alias.scope !2267, !noalias !2259, !noundef !9
  %i.fo = icmp eq i64 %i.fn, -1
  br i1 %i.fo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.bp, !noalias !2260

bb.bp:                                            ; preds = %bb.bo
  %i.fp = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.aq, align 4, !noalias !2259
  store i64 85, ptr %i.bi, align 8, !noalias !2259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.i.i, i64 24, i1 false), !noalias !2259
  br label %.body130.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.bo, %bb.bn
  store i8 1, ptr %i.aq, align 4, !noalias !2259
  store i64 85, ptr %i.bi, align 8, !noalias !2259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.i.i, i64 24, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i)
  br label %bb.bm

end_hunk_0
