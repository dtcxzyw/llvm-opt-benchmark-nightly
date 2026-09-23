Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.09?download=true
inline.NumInlined: 1865
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB13_7Session3new000ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc:bb.a
    i8 1, label %bb.ll
    i8 2, label %bb.lm
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.lj
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i23.i, align 8, !noalias !2131
  br label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  %i.ul = load ptr, ptr %i.ap, align 8, !noalias !2131, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.ul, ptr %.phi.trans.insert.i23.i, align 8, !noalias !2131
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2132
  unreachable

bb.lm:                                            ; preds = %bb.lj
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2132
  unreachable

bb.ln:                                            ; preds = %bb.lk, %._crit_edge.i.i
  %.val.i24.i = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.ul, %bb.lk ]
  %i.um = invoke { i32, i32 } @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxmNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i24.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.lo, !noalias !2002 ; 3 uses

bb.lo:                                            ; preds = %bb.ln
  %i.un = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.ao, align 8, !noalias !2131
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.ln
  %i.uo = extractvalue { i32, i32 } %i.um, 0
  %i.up = icmp eq i32 %i.uo, 2                    ; 2 uses
  %i.uq = extractvalue { i32, i32 } %i.um, 1      ; 2 uses
  %i.ur = insertvalue { i32, i32 } { i32 2, i32 poison }, i32 %i.uq, 1
  %.sink.i.i = select i1 %i.up, i8 3, i8 1
  %common.ret.op.i.i = select i1 %i.up, { i32, i32 } %i.ur, { i32, i32 } %i.um
  store i8 %.sink.i.i, ptr %i.ao, align 8, !noalias !2131
  %i.us = extractvalue { i32, i32 } %common.ret.op.i.i, 0 ; 2 uses
  %i.ut = icmp eq i32 %i.us, 2
  br i1 %i.ut, label %bb.li, label %bb.lp

bb.lp:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceivermE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.uu = load i8, ptr %.val, align 1, !noalias !2003, !noundef !9
  %i.uv = or i8 %i.uu, 2
  store i8 %i.uv, ptr %.val, align 1, !noalias !2003
  store i16 46, ptr %0, align 8, !alias.scope !2002, !noalias !2004
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.us, ptr %.sroa.46.0..sroa_idx.i, align 4, !alias.scope !2002, !noalias !2004
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.uq, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !2002, !noalias !2004
  br label %_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.lq:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.uw = load i8, ptr %i.am, align 8, !range !19, !noalias !2133, !noundef !9
  switch i8 %i.uw, label %default.unreachable [
    i8 0, label %bb.lr
    i8 1, label %bb.ls
    i8 2, label %bb.lt
    i8 3, label %._crit_edge.i25.i
  ]

._crit_edge.i25.i:                                ; preds = %bb.lq
  %.val.pre.i27.i = load ptr, ptr %.phi.trans.insert.i26.i, align 8, !noalias !2133
  br label %bb.lu

bb.lr:                                            ; preds = %bb.lq
  %i.ux = load ptr, ptr %i.an, align 8, !noalias !2133, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.ux, ptr %.phi.trans.insert.i26.i, align 8, !noalias !2133
  br label %bb.lu

bb.ls:                                            ; preds = %bb.lq
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2134
  unreachable

bb.lt:                                            ; preds = %bb.lq
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2134
  unreachable

bb.lu:                                            ; preds = %bb.lr, %._crit_edge.i25.i
  %.val.i28.i = phi ptr [ %.val.pre.i27.i, %._crit_edge.i25.i ], [ %i.ux, %bb.lr ]
  %i.uy = invoke noundef range(i8 0, 3) i8 @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i28.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.lv, !noalias !2002 ; 2 uses

bb.lv:                                            ; preds = %bb.lu
  %i.uz = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.am, align 8, !noalias !2133
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.lu
  %i.va = icmp eq i8 %i.uy, 2                     ; 2 uses
  %..i.i = select i1 %i.va, i8 3, i8 1
  store i8 %..i.i, ptr %i.am, align 8, !noalias !2133
  br i1 %i.va, label %bb.li, label %bb.lw

bb.lw:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.vb = load i8, ptr %.val, align 1, !noalias !2003, !noundef !9
  %i.vc = or i8 %i.vb, 4
  store i8 %i.vc, ptr %.val, align 1, !noalias !2003
  store i16 47, ptr %0, align 8, !alias.scope !2002, !noalias !2004
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.uy, ptr %.sroa.412.0..sroa_idx.i, align 2, !alias.scope !2002, !noalias !2004
  br label %_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit

_RNCNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB8_7Session3new000Cs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b, %bb.e, %bb.f, %.loopexit20.i, %bb.lp, %bb.lw
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !41, !noalias !2276, !noundef !9
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, !prof !39

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.a
  %i.af = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ab), !noalias !2275 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.af, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ], [ %i.ab, %bb.a ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.ah, align 1, !range !23, !noalias !2275, !noundef !9
  %i.ai = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.ai, align 1, !noalias !2275
  %i.aj = trunc nuw i8 %.val.i.i to i1
  %i.ak = tail call noundef zeroext i1 @_RNvMNtNtCsc13h7DQFCSE_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.aj, i8 %.val5.i.i), !noalias !2275
  br i1 %i.ak, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  tail call void @_RNvNtNtCsc13h7DQFCSE_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !2275
  store i64 -2, ptr %0, align 8, !alias.scope !2275, !noalias !2277
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.al = tail call noundef i32 @_RNvNtNtCsc13h7DQFCSE_5tokio6macros7support12thread_rng_n(i32 noundef 2), !noalias !2275
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
  %.sroa.0.0838.i = phi i1 [ false, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ %.sroa.0.1.i, %bb.p ] ; 2 uses
  %i.cs = phi i1 [ true, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ false, %bb.p ]
  %.sroa.010.0837.i = phi i32 [ 0, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i ], [ 1, %bb.p ]
  %i.ct = add i32 %.sroa.010.0837.i, %i.al
  %trunc.i = trunc i32 %i.ct to i1
  %i.cu = load i8, ptr %.val, align 1, !noalias !2276, !noundef !9 ; 2 uses
  br i1 %trunc.i, label %bb.h, label %bb.g, !prof !44

bb.e:                                             ; preds = %bb.c
  store i64 88, ptr %0, align 8, !alias.scope !2275, !noalias !2277
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.f:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8, !alias.scope !2275, !noalias !2277
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
  %i.cx = load i8, ptr %i.am, align 8, !range !19, !noalias !2278, !noundef !9
  switch i8 %i.cx, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.i
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !2278
  br label %bb.m

default.unreachable:                              ; preds = %bb.le, %bb.la, %bb.kw, %bb.kr, %bb.hp, %bb.ha, %bb.gw, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fx, %bb.dt, %bb.dq, %bb.dn, %bb.dk, %bb.de, %bb.q, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr %.val1, align 8, !noalias !2278, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.cy, ptr %.phi.trans.insert.i.i, align 8, !noalias !2278
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2279
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !2279
  unreachable

bb.m:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.val.i13.i = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.cy, %bb.j ]
  %i.cz = invoke noundef range(i8 0, 3) i8 @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i13.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.n, !noalias !2275 ; 2 uses

common.resume.i:                                  ; preds = %.body.i.i, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.da, %bb.n ], [ %.pn104.pn.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.am, align 8, !noalias !2278
  br label %common.resume.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.m
  %i.db = icmp eq i8 %i.cz, 2                     ; 2 uses
  %..i.i = select i1 %i.db, i8 3, i8 1
  store i8 %..i.i, ptr %i.am, align 8, !noalias !2278
  br i1 %i.db, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.dc = load i8, ptr %.val, align 1, !noalias !2276, !noundef !9
  %i.dd = or i8 %i.dc, 1
  store i8 %i.dd, ptr %.val, align 1, !noalias !2276
  store i64 86, ptr %0, align 8, !alias.scope !2275, !noalias !2277
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2275, !noalias !2277
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.p:                                             ; preds = %bb.mj, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.h, %bb.g
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0838.i, %bb.g ], [ true, %bb.mj ], [ %.sroa.0.0838.i, %bb.h ], [ true, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i ] ; 2 uses
  br i1 %i.cs, label %bb.d, label %bb.c

bb.q:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11354.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9338.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5217.sroa.2.i.i)
  %i.de = load i8, ptr %i.ao, align 1, !range !30, !noalias !2280, !noundef !9
  switch i8 %i.de, label %default.unreachable [
    i8 0, label %bb.w
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
    i8 7, label %bb.u
    i8 8, label %bb.hp
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7246.i.i)
  br label %bb.ch

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2280
  br label %bb.ax

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2280
  %.val120.pre.i.i = load ptr, ptr %.phi.trans.insert416.i.i, align 8, !noalias !2280
  %.val121.pre.i.i = load ptr, ptr %.phi.trans.insert418.i.i, align 8, !noalias !2280
  br label %bb.da

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2280
  %.val122.pre.i.i = load ptr, ptr %.phi.trans.insert422.i.i, align 8, !noalias !2280
  %.val123.pre.i.i = load ptr, ptr %.phi.trans.insert424.i.i, align 8, !noalias !2280
  br label %bb.kn

bb.v:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.w:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.aq, i8 0, i64 5, i1 false), !noalias !2280
  %i.dg = load ptr, ptr %i.as, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %3 = load ptr, ptr %i.at, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.dh = load ptr, ptr %i.av, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %i.di = load ptr, ptr %i.ax, align 8, !noalias !2280, !nonnull !9, !noundef !9 ; 2 uses
  %i.dj = load i64, ptr %i.ay, align 8, !noalias !2280, !noundef !9 ; 2 uses
  store ptr %i.di, ptr %i.aw, align 8, !noalias !2280
  store i64 %i.dj, ptr %i.az, align 8, !noalias !2280
  %i.dk = load <2 x ptr>, ptr %i.bb, align 8, !noalias !2280
  %4 = insertelement <4 x ptr> poison, ptr %i.dg, i64 0
  %5 = insertelement <4 x ptr> %4, ptr %i.dh, i64 1
  %6 = shufflevector <2 x ptr> %i.dk, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x ptr> %5, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %7, ptr %i.ar, align 8, !noalias !2280
  %.val.i15.i = load ptr, ptr %3, align 8, !noalias !2281, !nonnull !9, !noundef !9
  %i.dl = getelementptr i8, ptr %3, i64 8
  %.val107.i.i = load ptr, ptr %i.dl, align 8, !noalias !2281, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val107.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !11, !invariant.load !9, !noalias !2281
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = and i64 %i.do, -16
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i15.i, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.val107.i.i, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !invariant.load !9, !noalias !2281, !nonnull !9
  %i.du = invoke { ptr, ptr } %i.dt(ptr noundef nonnull %i.dr, ptr noalias nofree noundef nonnull %i.di, i64 noundef %i.dj)
          to label %bb.x unwind label %bb.v, !noalias !2281 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.dv = extractvalue { ptr, ptr } %i.du, 0
  %i.dw = extractvalue { ptr, ptr } %i.du, 1
  store ptr %i.dv, ptr %i.bd, align 8, !noalias !2280
  store ptr %i.dw, ptr %i.ap, align 8, !noalias !2280
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29, !noalias !2281
  unreachable

bb.z:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29, !noalias !2281
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2280
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ac unwind label %bb.ab, !noalias !2281

bb.ab:                                            ; preds = %bb.aa
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2280
  %.val108.i.i = load ptr, ptr %i.bd, align 8, !noalias !2280
  %.val109.i.i = load ptr, ptr %i.ap, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val108.i.i, ptr nonnull %.val109.i.i) #27
          to label %.body.i.i unwind label %bb.aw, !noalias !2281

bb.ac:                                            ; preds = %bb.aa
  %i.dy = load i64, ptr %i.z, align 8, !range !43, !noalias !2280, !noundef !9 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, -2
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2280
  br label %bb.mj

bb.ae:                                            ; preds = %bb.ac
  %i.ea = load <2 x i64>, ptr %.sroa.3.0..sroa_idx215.i.i, align 8, !noalias !2280
  %.sroa.3.0.copyload216.i.i = load i64, ptr %.sroa.3.0..sroa_idx215.i.i, align 8, !noalias !2280 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.0..sroa.5217.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2280
  %.val110.i.i = load ptr, ptr %i.bd, align 8, !noalias !2280 ; 5 uses
  %.val111.i.i = load ptr, ptr %i.ap, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9 ; 5 uses
  %i.eb = load ptr, ptr %.val111.i.i, align 8, !invariant.load !9, !noalias !2281 ; 2 uses
  %.not.i.i124.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i124.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110.i.i) ]
  invoke void %i.eb(ptr noundef nonnull %.val110.i.i)
          to label %bb.ag unwind label %bb.ai, !noalias !2281

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !range !10, !invariant.load !9, !noalias !2281 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !11, !invariant.load !9, !noalias !2281
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110.i.i, i64 noundef range(i64 1, 0) %i.ed, i64 noundef range(i64 1, 536870913) %i.eg) #25, !noalias !2281
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.ai:                                            ; preds = %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !range !10, !invariant.load !9, !noalias !2281 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %.body.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %.val111.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !range !11, !invariant.load !9, !noalias !2281
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110.i.i, i64 noundef range(i64 1, 0) %i.ej, i64 noundef range(i64 1, 536870913) %i.em) #25, !noalias !2281
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.ah, %bb.ag
  %.not.i.i.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i.i.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2280
  %i.en = load i64, ptr %i.az, align 8, !noalias !2280, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.copyload216.i.i, %i.en
  br i1 %.not.i.i.i.i, label %bb.al, label %bb.an, !prof !31

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.3.0.copyload216.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.en, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
          to label %.noexc.i.i unwind label %bb.am, !noalias !2281

.noexc.i.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.ep = load ptr, ptr %i.aw, align 8, !noalias !2280, !nonnull !9, !noundef !9
  invoke void @_RNvNtCsbwH7Cv0ieDd_4dtls12record_layer15unpack_datagram(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %.sroa.3.0.copyload216.i.i)
          to label %bb.aq unwind label %bb.ap, !noalias !2281

bb.ao:                                            ; preds = %bb.ap, %bb.am
  %.pn30.i.i = phi { ptr, i32 } [ %i.eq, %bb.ap ], [ %i.eo, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2280
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aq:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.er = load i64, ptr %i.x, align 8, !range !14, !alias.scope !2283, !noalias !2284, !noundef !9 ; 2 uses
  %.not.i125.i.i = icmp eq i64 %i.er, -1
  %.sroa.8.sroa.0.0.copyload360.i.i = load i64, ptr %i.be, align 8, !alias.scope !2285, !noalias !2280 ; 3 uses
  %i.es = load <2 x i64>, ptr %.sroa.8.sroa.8.0..sroa_idx362.i.i, align 8, !alias.scope !2285, !noalias !2280 ; 4 uses
  br i1 %.not.i125.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2280
  store i64 %.sroa.8.sroa.0.0.copyload360.i.i, ptr %i.y, align 8, !noalias !2280
  store <2 x i64> %i.es, ptr %.sroa.4368.0..sroa_idx.i.i, align 8, !noalias !2280
  store i8 0, ptr %i.bg, align 8, !noalias !2280
  store i8 0, ptr %i.bf, align 8, !noalias !2280
  %i.et = extractelement <2 x i64> %i.es, i64 0
  %i.eu = inttoptr i64 %i.et to ptr               ; 4 uses
  %i.ev = extractelement <2 x i64> %i.es, i64 1   ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 384307168202282326
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  store ptr %i.eu, ptr %i.an, align 8, !noalias !2280
  store ptr %i.eu, ptr %.sroa.10229.0..sroa_idx.i.i, align 8, !noalias !2280
  store i64 %.sroa.8.sroa.0.0.copyload360.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !2280
  store ptr %i.ex, ptr %.sroa.12230.0..sroa_idx.i.i, align 8, !noalias !2280
  br label %bb.as

bb.as:                                            ; preds = %bb.cb, %bb.ar
  %i.ey = phi ptr [ %.pre415.i.i, %bb.cb ], [ %i.eu, %bb.ar ] ; 4 uses
  %i.ez = phi ptr [ %.pre.i.i, %bb.cb ], [ %i.ex, %bb.ar ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.at:                                            ; preds = %bb.aq
  %.sroa.10223.0..sroa_idx224.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11354.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10223.0..sroa_idx224.i.i, i64 32, i1 false), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2280
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %bb.cx, %bb.at
  %.sroa.7346.0.i.i = phi i64 [ %.sroa.420.i.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %.sroa.8.sroa.0.0.copyload360.i.i, %bb.at ], [ %.sroa.7346.1.i1382.i, %bb.cx ]
  %.sroa.0344.0.i.i = phi i64 [ %.sroa.018.1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %i.er, %bb.at ], [ %.sroa.0344.1.i1384.i, %bb.cx ]
  %i.fb = phi <2 x i64> [ %i.qg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ %i.es, %bb.at ], [ %i.hk, %bb.cx ]
  store i8 0, ptr %i.bf, align 8, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2280
  br label %bb.mk

bb.au:                                            ; preds = %bb.mi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.ao
  %.pn101.pn.i.i = phi { ptr, i32 } [ %.pn30.i.i, %bb.ao ], [ %.pn98.pn.i.i, %bb.mi ], [ %.pn98.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ]
  store i8 0, ptr %i.bf, align 8, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2280
  br label %.body.i.i

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCslqlypCAacxc_11webrtc_util5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11354.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.sroa.2.i.i, i64 16, i1 false), !noalias !2280
  br label %bb.mk

bb.aw:                                            ; preds = %bb.mi, %bb.mh, %bb.mf, %bb.me, %bb.md, %.body165.i.i, %bb.cv, %bb.ci, %.body152.i.i, %bb.bw, %.body130.i.i, %bb.ay, %bb.ab
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2281
  unreachable

.body.i.i:                                        ; preds = %bb.au, %bb.aj, %bb.ai, %bb.ab, %bb.v
  %.pn104.pn.i.i = phi { ptr, i32 } [ %.pn101.pn.i.i, %bb.au ], [ %i.eh, %bb.aj ], [ %i.df, %bb.v ], [ %i.dx, %bb.ab ], [ %i.eh, %bb.ai ]
  store i8 2, ptr %i.ao, align 1, !noalias !2280
  br label %common.resume.i

bb.ax:                                            ; preds = %bb.cu, %bb.s
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB13_8DTLSConn3new0s1_00ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc:bb.a

.loopexit14.i:                                    ; preds = %bb.by, %bb.bx
  %.pre.i = load i64, ptr %i.bi, align 8, !range !14, !noalias !2280
  %i.ga = icmp eq i64 %.pre.i, -1
  br i1 %i.ga, label %bb.cx, label %bb.cw

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  store i8 0, ptr %i.aq, align 4, !noalias !2280
  %.pre.i.i = load ptr, ptr %.sroa.12230.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2291
  %.pre415.i.i = load ptr, ptr %.sroa.10229.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2291
  br label %bb.as

bb.cc:                                            ; preds = %bb.ca
  store i8 1, ptr %i.bg, align 8, !noalias !2280
  br label %bb.cb

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.as
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.gb, ptr %.sroa.10229.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2291
  %.sroa.0234.0.copyload235.i.i = load i64, ptr %i.ey, align 8, !noalias !2292 ; 2 uses
  %.not33.i.i = icmp eq i64 %.sroa.0234.0.copyload235.i.i, -1
  br i1 %.not33.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i, label %bb.cg

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.as
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit140.i.i unwind label %.loopexit15.i, !noalias !2281

.loopexit15.i:                                    ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i
  %lpad.loopexit17.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

.loopexit.split-lp16.i:                           ; preds = %bb.cx
  %lpad.loopexit.split-lp18.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit140.i.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i
  %i.gc = load i8, ptr %i.bg, align 8, !range !23, !noalias !2280, !noundef !9
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.cd, label %.loopexit20.i

.loopexit20.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit140.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  store i8 0, ptr %i.bf, align 8, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2280
  br label %bb.mk

bb.cd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit140.i.i
  %i.ge = invoke { ptr, ptr } @_RINvNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded7channeluECs4KPtkQIfQGm_13libp2p_webrtc(i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %bb.cf unwind label %bb.ce, !noalias !2281 ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

.body205.i.i:                                     ; preds = %.body17.i, %bb.lo, %.loopexit.split-lp27.i, %.loopexit26.i, %bb.lh, %bb.ku, %bb.hn, %.loopexit.split-lp1386.i, %.loopexit1385.i, %.body152.i.i
  %.pn60.pn.i.i = phi { ptr, i32 } [ %.pn60.i.i, %.body17.i ], [ %i.th, %bb.lo ], [ %i.rp, %bb.ku ], [ %i.nx, %bb.hn ], [ %.pn37.pn.i.i, %.body152.i.i ], [ %i.sl, %bb.lh ], [ %lpad.loopexit.split-lp29.i, %.loopexit.split-lp27.i ], [ %lpad.loopexit28.i, %.loopexit26.i ], [ %lpad.loopexit1387.i, %.loopexit1385.i ], [ %lpad.loopexit.split-lp1388.i, %.loopexit.split-lp1386.i ]
  %i.gg = load i8, ptr %i.bu, align 2, !range !23, !noalias !2280, !noundef !9
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.mf, label %bb.me

bb.cf:                                            ; preds = %bb.cd
  %i.gi = extractvalue { ptr, ptr } %i.ge, 0      ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.ge, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2280
  store ptr %i.gi, ptr %i.r, align 8, !noalias !2280
  store ptr %i.gj, ptr %i.bt, align 8, !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2280
  %i.gk = load ptr, ptr %i.ar, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 136
  store i8 0, ptr %i.bs, align 1, !noalias !2280
  store ptr %i.gl, ptr %i.q, align 8, !noalias !2280
  store ptr %i.gi, ptr %i.bv, align 8, !noalias !2280
  store i8 0, ptr %i.bw, align 2, !noalias !2280
  store i8 0, ptr %i.by, align 1, !noalias !2280
  store i8 0, ptr %i.bu, align 2, !noalias !2280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bd, ptr noundef nonnull align 8 dereferenceable(216) %i.q, i64 216, i1 false), !noalias !2280
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 144
  store ptr %i.gm, ptr %.sroa.9260.0..sroa_idx.i.i, align 8, !noalias !2280
  store i8 0, ptr %.sroa.613.0..sroa_idx14.i.i, align 8, !noalias !2280
  store <2 x ptr> %i.bx, ptr %.phi.trans.insert416.i.i, align 8, !noalias !2280
  br label %bb.da

.body152.i.i:                                     ; preds = %.loopexit.split-lp22.i, %.loopexit21.i, %bb.hd, %bb.fu
  %.pn37.pn.i.i = phi { ptr, i32 } [ %i.nh, %bb.hd ], [ %.pn13.pn.i.i.i.i.i, %bb.fu ], [ %lpad.loopexit23.i, %.loopexit21.i ], [ %lpad.loopexit.split-lp24.i, %.loopexit.split-lp22.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtBI_8DTLSConn15read_and_buffer00ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.bd)
          to label %.body205.i.i unwind label %bb.aw, !noalias !2281

bb.cg:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %.sroa.13.0..sroa_idx236.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7246.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7246.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx236.i.i, i64 16, i1 false), !noalias !2281
  %i.gn = load ptr, ptr %i.ar, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  store i64 %.sroa.0234.0.copyload235.i.i, ptr %i.bd, align 8, !noalias !2280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7246.i.i, i64 16, i1 false), !noalias !2280
  store ptr %i.gn, ptr %.sroa.8247.0..sroa_idx.i.i, align 8, !noalias !2280
  store i8 1, ptr %.sroa.10249.0..sroa_idx.i.i, align 2, !noalias !2280
  store i8 0, ptr %.sroa.11250.0..sroa_idx.i.i, align 1, !noalias !2280
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2280
  invoke fastcc void @_RNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB4_8DTLSConn22handle_incoming_packet0Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.w, ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cj unwind label %bb.ci, !noalias !2281

bb.ci:                                            ; preds = %bb.ch
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2280
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtBG_8DTLSConn22handle_incoming_packet0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.bd) #27
          to label %bb.cm unwind label %bb.aw, !noalias !2281

bb.cj:                                            ; preds = %bb.ch
  %i.gp = load i64, ptr %i.bh, align 8, !range !35, !noalias !2280, !noundef !9
  %i.gq = icmp eq i64 %i.gp, -2
  br i1 %i.gq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7246.i.i)
  br label %bb.mj

bb.cl:                                            ; preds = %bb.cj
  %.sroa.03.0.copyload.i.i = load i8, ptr %i.w, align 8, !noalias !2280
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 1, !noalias !2280 ; 2 uses
  %.sroa.3.0.copyload.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i, align 2, !noalias !2280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(69) %.sroa.4.0..sroa_idx.i.i, i64 69, i1 false), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2280
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtBG_8DTLSConn22handle_incoming_packet0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.bd)
          to label %bb.co unwind label %bb.cn, !noalias !2281

bb.cm:                                            ; preds = %bb.cn, %bb.ci
  %.pn67.i.i = phi { ptr, i32 } [ %i.gr, %bb.cn ], [ %i.go, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7246.i.i)
  br label %bb.cv

bb.cn:                                            ; preds = %bb.cl
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %bb.cl
  store i8 %.sroa.03.0.copyload.i.i, ptr %i.bd, align 8, !noalias !2280
  store i8 1, ptr %i.aq, align 4, !noalias !2280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.4.8..sroa_idx.i.i, i64 64, i1 false), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7246.i.i)
  %.not69.i.i = icmp eq i8 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not69.i.i, label %bb.bz, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 %.sroa.2.0.copyload.i.i, ptr %i.bj, align 1, !noalias !2280
  store i8 %.sroa.3.0.copyload.i.i, ptr %i.bk, align 2, !noalias !2280
  %i.gs = load ptr, ptr %i.ar, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 152
  %.val116.i.i = load ptr, ptr %i.gt, align 8, !noalias !2281, !nonnull !9, !noundef !9
  %i.gu = getelementptr inbounds nuw i8, ptr %.val116.i.i, i64 16
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2281
  %i.gv = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 4, 1001) 192, i64 noundef range(i64 4, 9) 8) #25, !noalias !2281 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.cq, label %bb.cs, !prof !31

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #28
          to label %.noexc142.i.i unwind label %bb.cr, !noalias !2281

.noexc142.i.i:                                    ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i.i

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2280
  %i.gy = load ptr, ptr %i.ba, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %.val115.i.i = load ptr, ptr %i.gy, align 8, !noalias !2281, !nonnull !9, !noundef !9
  %i.gz = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 16
  %i.ha = load atomic i16, ptr %i.gz seq_cst, align 2, !noalias !2281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2280
  %i.hb = load i8, ptr %i.bj, align 1, !range !32, !noalias !2280, !noundef !9
  %i.hc = load i8, ptr %i.bk, align 2, !range !33, !noalias !2280, !noundef !9
  store i8 %i.hb, ptr %i.bl, align 8, !noalias !2280
  store i8 %i.hc, ptr %i.bm, align 1, !noalias !2280
  store i64 -9223372036854775798, ptr %i.u, align 8, !noalias !2280
  invoke void @_RNvMNtCsbwH7Cv0ieDd_4dtls12record_layerNtB2_11RecordLayer3new(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.v, i8 noundef -2, i8 noundef -3, i16 noundef %i.ha, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.u)
          to label %bb.cu unwind label %bb.ct, !noalias !2281

bb.ct:                                            ; preds = %bb.cs
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2280
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef 192, i64 noundef 8) #25, !noalias !2281
  br label %.body127.i.i

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2280
  %i.he = load ptr, ptr %i.bc, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %.val119.i.i = load ptr, ptr %i.he, align 8, !noalias !2281, !nonnull !9, !noundef !9
  %i.hf = getelementptr inbounds nuw i8, ptr %.val119.i.i, i64 16
  %i.hg = load atomic i8, ptr %i.hf seq_cst, align 1, !noalias !2281
  %i.hh = icmp ne i8 %i.hg, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.gv, ptr noundef nonnull align 8 dereferenceable(184) %i.v, i64 184, i1 false), !noalias !2281
  %i.hi = zext i1 %i.hh to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2280
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 184
  store i8 %i.hi, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2281
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 185
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !2281
  store i64 1, ptr %i.ap, align 8, !noalias !2280
  store ptr %i.gv, ptr %.sroa.0257.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2280
  store i64 1, ptr %.sroa.8247.0..sroa_idx.i.i, align 8, !noalias !2280
  store ptr null, ptr %.sroa.0257.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2280
  store ptr %i.gu, ptr %.sroa.7258.0..sroa_idx.i.i, align 8, !noalias !2280
  store i8 0, ptr %.sroa.9260.0..sroa_idx.i.i, align 8, !noalias !2280
  br label %bb.ax

bb.cv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit137.i.i, %bb.cm
  %.pn94.pn.i.i = phi { ptr, i32 } [ %.pn94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit137.i.i ], [ %.pn67.i.i, %bb.cm ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.aw, !noalias !2281

bb.cw:                                            ; preds = %.loopexit14.i
  %.pre = load i8, ptr %i.aq, align 4, !range !23, !noalias !2280
  %i.hj = trunc nuw i8 %.pre to i1
  br i1 %i.hj, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.thread, %bb.cy, %bb.cw, %.loopexit14.i
  %.sroa.0344.1.i1384.i = phi i64 [ 73, %bb.cy ], [ 73, %bb.cw ], [ 73, %.loopexit14.i ], [ %i.fw, %.thread ]
  %.sroa.7346.1.i1382.i = phi i64 [ undef, %bb.cy ], [ undef, %bb.cw ], [ undef, %.loopexit14.i ], [ %.sroa.4371.0.copyload.i.i, %.thread ]
  %i.hk = phi <2 x i64> [ undef, %bb.cy ], [ undef, %bb.cw ], [ undef, %.loopexit14.i ], [ %i.fx, %.thread ]
  store i8 0, ptr %i.aq, align 4, !noalias !2280
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i unwind label %.loopexit.split-lp16.i, !noalias !2281

bb.cy:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bi)
          to label %bb.cx unwind label %bb.cz, !noalias !2281

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit137.i.i: ; preds = %bb.cz, %bb.bw, %.body127.i.i
  %.pn94.i.i = phi { ptr, i32 } [ %i.hl, %bb.cz ], [ %.pn90.i.i, %bb.bw ], [ %.pn90.i.i, %.body127.i.i ]
  store i8 0, ptr %i.aq, align 4, !noalias !2280
  br label %bb.cv

bb.cz:                                            ; preds = %bb.cy
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbwH7Cv0ieDd_4dtls5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit137.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.mg, %bb.cv, %bb.ce, %.loopexit.split-lp16.i, %.loopexit15.i
  %.pn98.pn.i.i = phi { ptr, i32 } [ %i.gf, %bb.ce ], [ %.pn63.i.i, %bb.mg ], [ %.pn94.pn.i.i, %bb.cv ], [ %lpad.loopexit17.i, %.loopexit15.i ], [ %lpad.loopexit.split-lp18.i, %.loopexit.split-lp16.i ] ; 2 uses
  %i.hm = load i8, ptr %i.bf, align 8, !range !23, !noalias !2280, !noundef !9
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.mi, label %bb.au

bb.da:                                            ; preds = %bb.cf, %bb.t
  %.val121.i.i = phi ptr [ %.val121.pre.i.i, %bb.t ], [ %i.bd, %bb.cf ] ; 38 uses
  %.val120.i.i = phi ptr [ %.val120.pre.i.i, %bb.t ], [ %i.by, %bb.cf ] ; 8 uses
  %i.ho = load i8, ptr %i.ac, align 8, !range !41, !noalias !2293, !noundef !9
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i, !prof !39

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i: ; preds = %bb.da
  %i.hq = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ab)
          to label %.noexc146.i.i unwind label %.loopexit21.i, !noalias !2281 ; 2 uses

.noexc146.i.i:                                    ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %.noexc146.i.i, %bb.da
  %.sroa.0.0.i.i2.i.i.i.i.i = phi ptr [ %i.hq, %.noexc146.i.i ], [ %i.ab, %bb.da ] ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i.i.i.i, i64 68
  %.val.i.i.i.i.i = load i8, ptr %i.hs, align 1, !range !23, !noalias !2281, !noundef !9
  %i.ht = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i.i.i.i, i64 69
  %.val5.i.i.i.i.i = load i8, ptr %i.ht, align 1, !noalias !2281
  %i.hu = trunc nuw i8 %.val.i.i.i.i.i to i1
  %i.hv = invoke noundef zeroext i1 @_RNvMNtNtCsc13h7DQFCSE_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.hu, i8 %.val5.i.i.i.i.i)
          to label %.noexc147.i.i unwind label %.loopexit21.i, !noalias !2281

.noexc147.i.i:                                    ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  br i1 %i.hv, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.noexc147.i.i
  invoke void @_RNvNtNtCsc13h7DQFCSE_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.thread.i.i.i.i unwind label %.loopexit21.i, !noalias !2281

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i: ; preds = %.noexc147.i.i, %.noexc146.i.i
  %i.hw = invoke noundef i32 @_RNvNtNtCsc13h7DQFCSE_5tokio6macros7support12thread_rng_n(i32 noundef 2)
          to label %.noexc149.i.i unwind label %.loopexit21.i, !noalias !2281

.noexc149.i.i:                                    ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 18 ; 6 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 209 ; 11 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 32 ; 8 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 192 ; 12 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 113 ; 9 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 80 ; 8 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 120 ; 11 uses
  %.phi.trans.insert20.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 104 ; 4 uses
  %.phi.trans.insert36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 64 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 16 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 17 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 24 ; 11 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 8 ; 3 uses
  %.sroa.727.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 48 ; 4 uses
  %.sroa.828.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 56 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 200 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 208 ; 10 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 40 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 72 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 112 ; 12 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 88 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 96 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 128 ; 7 uses
  %.sroa.736.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 136 ; 5 uses
  %i.il = getelementptr i8, ptr %.val121.i.i, i64 152 ; 2 uses
  %.sroa.938.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 168 ; 2 uses
  %.sroa.1039.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 176 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 184 ; 2 uses
  %i.im = getelementptr i8, ptr %.val121.i.i, i64 144 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 232 ; 5 uses
  %.phi.trans.insert.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 224 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 216 ; 2 uses
  %trunc.i.i.i.i = trunc i32 %i.hw to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val120.i.i) ]
  %i.ip = load i8, ptr %.val120.i.i, align 1, !noalias !2294, !noundef !9 ; 4 uses
  br i1 %trunc.i.i.i.i, label %bb.dd, label %bb.dc, !prof !44

bb.dc:                                            ; preds = %.noexc149.i.i
  %i.iq = and i8 %i.ip, 1
  %.not11.i.i.i.i = icmp eq i8 %i.iq, 0           ; 2 uses
  br i1 %.not11.i.i.i.i, label %bb.de, label %bb.gv

bb.dd:                                            ; preds = %.noexc149.i.i
  %i.ir = and i8 %i.ip, 2
  %.not.i.i145.i.i = icmp eq i8 %i.ir, 0          ; 2 uses
  br i1 %.not.i.i145.i.i, label %bb.ha, label %bb.fw

bb.de:                                            ; preds = %bb.dc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121.i.i) ]
  %i.is = load i8, ptr %i.hx, align 2, !range !17, !noalias !2295, !noundef !9
  switch i8 %i.is, label %default.unreachable [
    i8 0, label %bb.df
    i8 1, label %.invoke451.i.i
    i8 2, label %.invoke.i.i
    i8 3, label %bb.dk
    i8 4, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  store i8 0, ptr %i.ia, align 8, !noalias !2295
  store i8 1, ptr %i.ib, align 1, !noalias !2295
  %i.it = invoke { ptr, ptr } @_RINvNtNtCsc13h7DQFCSE_5tokio4sync7oneshot7channeluECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.thread.i.i.i.i.i unwind label %bb.dh, !noalias !2281 ; 2 uses

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2296
  br label %bb.fh

bb.dh:                                            ; preds = %bb.gd, %bb.df
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.thread.i.i.i.i.i:                                ; preds = %bb.df
  %i.iv = extractvalue { ptr, ptr } %i.it, 0      ; 3 uses
  %i.iw = extractvalue { ptr, ptr } %i.it, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2296
  store ptr %i.iv, ptr %i.l, align 8, !noalias !2296
  store ptr %i.iw, ptr %i.ic, align 8, !noalias !2295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2296
  %i.ix = load ptr, ptr %.val121.i.i, align 8, !noalias !2295, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store i8 0, ptr %i.ia, align 8, !noalias !2295
  store i8 0, ptr %i.ib, align 1, !noalias !2295
  %i.iy = load ptr, ptr %i.id, align 8, !noalias !2295, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.iv, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295
  store ptr %i.iy, ptr %.sroa.828.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295
  store ptr %i.ix, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !noalias !2295
  %i.iz = insertelement <2 x ptr> poison, ptr %i.iv, i64 0
  %i.ja = insertelement <2 x ptr> %i.iz, ptr %i.iy, i64 1
  br label %.thread.i.i.i.i.i.i

bb.di:                                            ; preds = %.body.i.i.i.i.i, %.body18.i.i.i.i.i
  %.pn9.i.i.i.i.i = phi { ptr, i32 } [ %i.ku, %.body18.i.i.i.i.i ], [ %.pn7.i.i.i.i.i, %.body.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ic) #27
          to label %bb.fe unwind label %bb.fd, !noalias !2281

bb.dj:                                            ; preds = %.body22.i.i.i.i.i, %bb.ff, %bb.dh
  %.pn13.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn13.i.i.i.i.i, %.body22.i.i.i.i.i ], [ %i.iu, %bb.dh ], [ %.pn9.i.i.i.i.i, %bb.ff ]
  %i.jb = load i8, ptr %i.ib, align 1, !range !23, !noalias !2295, !noundef !9
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.fv, label %bb.fu

bb.dk:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2296
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB13_8DTLSConn3new0s1_00ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc:bb.a
bb.kw:                                            ; preds = %bb.kv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val123.i.i) ]
  %i.rt = load i8, ptr %i.rg, align 8, !range !19, !noalias !2337, !noundef !9
  switch i8 %i.rt, label %default.unreachable [
    i8 0, label %bb.kx
    i8 1, label %.invoke458.i.i
    i8 2, label %.invoke456.i.i
    i8 3, label %._crit_edge.i.1.i.i194.i.i
  ]

._crit_edge.i.1.i.i194.i.i:                       ; preds = %bb.kw
  %.val.pre.i.1.i.i195.i.i = load ptr, ptr %.phi.trans.insert.i.i.i179.i.i, align 8, !noalias !2337
  br label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.ru = load ptr, ptr %.val123.i.i, align 8, !noalias !2337, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.ru, ptr %.phi.trans.insert.i.i.i179.i.i, align 8, !noalias !2337
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %._crit_edge.i.1.i.i194.i.i
  %.val.i19.1.i.i.i.i = phi ptr [ %.val.pre.i.1.i.i195.i.i, %._crit_edge.i.1.i.i194.i.i ], [ %i.ru, %bb.kx ]
  %i.rv = invoke noundef range(i8 0, 3) i8 @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i19.1.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i196.i.i unwind label %bb.ku, !noalias !2338

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i196.i.i: ; preds = %bb.ky
  %i.rw = icmp eq i8 %i.rv, 2                     ; 2 uses
  %..i.1.i.i197.i.i = select i1 %i.rw, i8 3, i8 1
  store i8 %..i.1.i.i197.i.i, ptr %i.rg, align 8, !noalias !2337
  br i1 %i.rw, label %_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.li

bb.kz:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i._crit_edge.i191.i.i, %bb.kp
  %i.rx = phi i8 [ %.pre.i192.i.i, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i._crit_edge.i191.i.i ], [ %i.rj, %bb.kp ]
  %i.ry = and i8 %i.rx, 2
  %.not.1.i.i181.i.i = icmp eq i8 %i.ry, 0
  br i1 %.not.1.i.i181.i.i, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val123.i.i) ]
  %i.rz = load i8, ptr %i.rh, align 8, !range !19, !noalias !2339, !noundef !9
  switch i8 %i.rz, label %default.unreachable [
    i8 0, label %bb.lb
    i8 1, label %.invoke458.i.i
    i8 2, label %.invoke456.i.i
    i8 3, label %._crit_edge.i20.1.i.i.i.i
  ]

._crit_edge.i20.1.i.i.i.i:                        ; preds = %bb.la
  %.val.pre.i22.1.i.i.i.i = load ptr, ptr %.phi.trans.insert.i21.i.i.i.i, align 8, !noalias !2339
  br label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.sa = load ptr, ptr %i.ri, align 8, !noalias !2339, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.sa, ptr %.phi.trans.insert.i21.i.i.i.i, align 8, !noalias !2339
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %._crit_edge.i20.1.i.i.i.i
  %.val.i23.1.i.i.i.i = phi ptr [ %.val.pre.i22.1.i.i.i.i, %._crit_edge.i20.1.i.i.i.i ], [ %i.sa, %bb.lb ]
  %i.sb = invoke { i64, ptr } @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxINtNtB7_7bounded6SenderuENtBW_9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i23.1.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i.i.i unwind label %bb.lh, !noalias !2338 ; 3 uses

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i.i.i: ; preds = %bb.lc
  %i.sc = extractvalue { i64, ptr } %i.sb, 0
  %i.sd = trunc nuw i64 %i.sc to i1               ; 2 uses
  %i.se = extractvalue { i64, ptr } %i.sb, 1      ; 2 uses
  %i.sf = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.se, 1
  %.sink.i.1.i.i.i.i = select i1 %i.sd, i8 3, i8 1
  %common.ret.op.i.1.i.i.i.i = select i1 %i.sd, { i64, ptr } %i.sf, { i64, ptr } %i.sb
  store i8 %.sink.i.1.i.i.i.i, ptr %i.rh, align 8, !noalias !2339
  %i.sg = extractvalue { i64, ptr } %common.ret.op.i.1.i.i.i.i, 0
  %i.sh = trunc nuw i64 %i.sg to i1
  br i1 %i.sh, label %_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.lj

bb.ld:                                            ; preds = %bb.kz, %bb.kv
  %.sroa.0.1.i2.i.i.i = phi i1 [ %.not18.i.i.i.i, %bb.kz ], [ %.not.i.i193.i.i, %bb.kv ]
  br i1 %.sroa.0.1.i2.i.i.i, label %_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %bb.lp

bb.le:                                            ; preds = %bb.kq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val123.i.i) ]
  %i.si = load i8, ptr %i.rh, align 8, !range !19, !noalias !2339, !noundef !9
  switch i8 %i.si, label %default.unreachable [
    i8 0, label %bb.lf
    i8 1, label %.invoke458.i.i
    i8 2, label %.invoke456.i.i
    i8 3, label %._crit_edge.i20.i.i.i.i
  ]

._crit_edge.i20.i.i.i.i:                          ; preds = %bb.le
  %.val.pre.i22.i.i.i.i = load ptr, ptr %.phi.trans.insert.i21.i.i.i.i, align 8, !noalias !2339
  br label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.sj = load ptr, ptr %i.ri, align 8, !noalias !2339, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  store ptr %i.sj, ptr %.phi.trans.insert.i21.i.i.i.i, align 8, !noalias !2339
  br label %bb.lg

.invoke458.i.i:                                   ; preds = %bb.le, %bb.la, %bb.kw, %bb.kr
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29
          to label %.cont459.i.i unwind label %.loopexit.split-lp27.i, !noalias !2281

.cont459.i.i:                                     ; preds = %.invoke458.i.i
  unreachable

.invoke456.i.i:                                   ; preds = %bb.le, %bb.la, %bb.kw, %bb.kr
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29
          to label %.cont457.i.i unwind label %.loopexit.split-lp27.i, !noalias !2281

.cont457.i.i:                                     ; preds = %.invoke456.i.i
  unreachable

bb.lg:                                            ; preds = %bb.lf, %._crit_edge.i20.i.i.i.i
  %.val.i23.i.i.i.i = phi ptr [ %.val.pre.i22.i.i.i.i, %._crit_edge.i20.i.i.i.i ], [ %i.sj, %bb.lf ]
  %i.sk = invoke { i64, ptr } @_RNvMsa_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxINtNtB7_7bounded6SenderuENtBW_9SemaphoreE4recvCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i23.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i unwind label %bb.lh, !noalias !2338 ; 3 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lc
  %i.sl = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.rh, align 8, !noalias !2339
  br label %.body205.i.i

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %bb.lg
  %i.sm = extractvalue { i64, ptr } %i.sk, 0
  %i.sn = trunc nuw i64 %i.sm to i1               ; 2 uses
  %i.so = extractvalue { i64, ptr } %i.sk, 1      ; 2 uses
  %i.sp = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.so, 1
  %.sink.i.i.i.i.i = select i1 %i.sn, i8 3, i8 1
  %common.ret.op.i.i.i.i.i = select i1 %i.sn, { i64, ptr } %i.sp, { i64, ptr } %i.sk
  store i8 %.sink.i.i.i.i.i, ptr %i.rh, align 8, !noalias !2339
  %i.sq = extractvalue { i64, ptr } %common.ret.op.i.i.i.i.i, 0
  %i.sr = trunc nuw i64 %i.sq to i1
  br i1 %i.sr, label %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i._crit_edge.i.i.i, label %bb.lj

_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i._crit_edge.i.i.i: ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  %.pre4.i198.i.i = load i8, ptr %.val122.i.i, align 1, !noalias !2336
  br label %bb.kv

.loopexit26.i:                                    ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i178.i.i, %bb.ko, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i174.i.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i173.i.i
  %lpad.loopexit28.i = landingpad { ptr, i32 }
          cleanup
  br label %.body205.i.i

.loopexit.split-lp27.i:                           ; preds = %.invoke456.i.i, %.invoke458.i.i
  %lpad.loopexit.split-lp29.i = landingpad { ptr, i32 }
          cleanup
  br label %.body205.i.i

_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.ld, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i.i.i, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i196.i.i, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2280
  br label %bb.mj

bb.li:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i196.i.i, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiveruE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i188.i.i
  %i.ss = load i8, ptr %.val122.i.i, align 1, !noalias !2336, !noundef !9
  %i.st = or i8 %i.ss, 1
  store i8 %i.st, ptr %.val122.i.i, align 1, !noalias !2336
  store i8 0, ptr %i.bz, align 2, !noalias !2280
  br label %bb.hm

bb.lj:                                            ; preds = %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i.i.i
  %.pre-phi.i.i.i.i = phi ptr [ %i.se, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.1.i.i.i.i ], [ %i.so, %_RNCNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7boundedINtB4_8ReceiverINtB4_6SenderuEE4recv0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i ]
  %i.su = load i8, ptr %.val122.i.i, align 1, !noalias !2336, !noundef !9
  %i.sv = or i8 %i.su, 2
  store i8 %i.sv, ptr %.val122.i.i, align 1, !noalias !2336
  store i8 1, ptr %i.cc, align 1, !noalias !2280
  store ptr %.pre-phi.i.i.i.i, ptr %i.bd, align 8, !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2280
  %i.sw = load ptr, ptr %i.ar, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sx)
          to label %bb.ll unwind label %bb.lk, !noalias !2281

bb.lk:                                            ; preds = %bb.lj
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.o, i64 40, i1 false), !alias.scope !2341, !noalias !2342
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_hEEINtB2_12SpecFromIterBU_INtNtB4_5drain5DrainBU_EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.thread.i.i unwind label %bb.ln, !noalias !2281

bb.lm:                                            ; preds = %bb.ln, %bb.lk
  %.pn52.i.i = phi { ptr, i32 } [ %i.sz, %bb.ln ], [ %i.sy, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2280
  br label %.body171.i.i

bb.ln:                                            ; preds = %bb.ll
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.lm

.thread.i.i:                                      ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2280
  %i.ta = load ptr, ptr %i.ar, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !2280
  store ptr %i.ta, ptr %.sroa.0257.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2280
  %i.tb = load ptr, ptr %i.bc, align 8, !noalias !2280, !nonnull !9, !align !16, !noundef !9
  %i.tc = load <2 x ptr>, ptr %i.ba, align 8, !noalias !2280 ; 2 uses
  store <2 x ptr> %i.tc, ptr %.sroa.7258.0..sroa_idx.i.i, align 8, !noalias !2280
  store i8 0, ptr %.phi.trans.insert426.i.i, align 8, !noalias !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.420.i.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  %i.td = insertelement <2 x ptr> poison, ptr %i.ta, i64 0
  %i.te = shufflevector <2 x ptr> %i.td, <2 x ptr> %i.tc, <2 x i32> <i32 0, i32 2>
  br label %bb.hs

.body171.i.i:                                     ; preds = %.body165.i.i, %bb.lm, %bb.kj, %bb.kf, %bb.ke, %bb.ka
  %.pn57.pn.i.i = phi { ptr, i32 } [ %i.qk, %bb.ke ], [ %.pn52.i.i, %bb.lm ], [ %i.qs, %bb.kj ], [ %i.qk, %bb.kf ], [ %.pn54.i.i, %.body165.i.i ], [ %i.qh, %bb.ka ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2280
  %i.tf = load i8, ptr %i.cc, align 1, !range !23, !noalias !2280, !noundef !9
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.md, label %.body17.i

bb.lo:                                            ; preds = %bb.lp
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body205.i.i

bb.lp:                                            ; preds = %bb.ld
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 107 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %bb.ho unwind label %bb.lo, !noalias !2281

bb.lq:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11354.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9338.sroa.8.i.i, i64 32, i1 false), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2280
  %i.ti = load ptr, ptr %i.bd, align 8, !alias.scope !2343, !noalias !2344, !noundef !9
  %i.tj = icmp eq ptr %i.ti, null
  br i1 %i.tj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  invoke void @_RNvXs9_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2TxuNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.lu unwind label %bb.ls, !noalias !2281

bb.ls:                                            ; preds = %bb.lr
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2345), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2347), !noalias !2346
  %i.tl = load ptr, ptr %i.bd, align 8, !alias.scope !2348, !noalias !2344, !nonnull !9, !noundef !9
  %i.tm = atomicrmw sub ptr %i.tl, i64 1 release, align 8, !noalias !2349
  %i.tn = icmp eq i64 %i.tm, 1
  br i1 %i.tn, label %bb.lt, label %.body17.i

bb.lt:                                            ; preds = %bb.ls
  fence acquire, !noalias !2346
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chan4ChanuNtNtBL_7bounded9SemaphoreEE9drop_slowCslqlypCAacxc_11webrtc_util(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #26
          to label %.body17.i unwind label %bb.lw, !noalias !2281

bb.lu:                                            ; preds = %bb.lr
  call void @llvm.experimental.noalias.scope.decl(metadata !2350), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2351), !noalias !2346
  %i.to = load ptr, ptr %i.bd, align 8, !alias.scope !2352, !noalias !2344, !nonnull !9, !noundef !9
  %i.tp = atomicrmw sub ptr %i.to, i64 1 release, align 8, !noalias !2353
  %i.tq = icmp eq i64 %i.tp, 1
  br i1 %i.tq, label %bb.lv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.lv:                                            ; preds = %bb.lu
  fence acquire, !noalias !2346
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chan4ChanuNtNtBL_7bounded9SemaphoreEE9drop_slowCslqlypCAacxc_11webrtc_util(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.lx, !noalias !2275

bb.lw:                                            ; preds = %bb.lt
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2281
  unreachable

.body17.i:                                        ; preds = %bb.md, %bb.lx, %bb.lt, %bb.ls, %.body171.i.i
  %.pn60.i.i = phi { ptr, i32 } [ %.pn57.pn.i.i, %.body171.i.i ], [ %.pn57.pn.i.i, %bb.md ], [ %i.ts, %bb.lx ], [ %i.tk, %bb.lt ], [ %i.tk, %bb.ls ]
  store i8 0, ptr %i.cc, align 1, !noalias !2280
  br label %.body205.i.i

bb.lx:                                            ; preds = %bb.lv
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.lv, %bb.lu, %bb.lq
  store i8 0, ptr %i.cc, align 1, !noalias !2280
  store i8 0, ptr %i.bu, align 2, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2280
  invoke void @_RNvXsb_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2RxuNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.ma unwind label %bb.ly, !noalias !2281

bb.ly:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2354), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2355), !noalias !2346
  %i.tu = load ptr, ptr %i.bt, align 8, !alias.scope !2356, !noalias !2344, !nonnull !9, !noundef !9
  %i.tv = atomicrmw sub ptr %i.tu, i64 1 release, align 8, !noalias !2357
  %i.tw = icmp eq i64 %i.tv, 1
  br i1 %i.tw, label %bb.lz, label %.body159.i.i

bb.lz:                                            ; preds = %bb.ly
  fence acquire, !noalias !2346
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chan4ChanuNtNtBL_7bounded9SemaphoreEE9drop_slowCslqlypCAacxc_11webrtc_util(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #26
          to label %.body159.i.i unwind label %bb.mc, !noalias !2281

bb.ma:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2358), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2359), !noalias !2346
  %i.tx = load ptr, ptr %i.bt, align 8, !alias.scope !2360, !noalias !2344, !nonnull !9, !noundef !9
  %i.ty = atomicrmw sub ptr %i.tx, i64 1 release, align 8, !noalias !2361
  %i.tz = icmp eq i64 %i.ty, 1
  br i1 %i.tz, label %bb.mb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.mb:                                            ; preds = %bb.ma
  fence acquire, !noalias !2346
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chan4ChanuNtNtBL_7bounded9SemaphoreEE9drop_slowCslqlypCAacxc_11webrtc_util(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.kl, !noalias !2275

bb.mc:                                            ; preds = %bb.lz
  %i.ua = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2281
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.mb, %bb.ma
  store i8 0, ptr %i.bs, align 1, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2280
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i

.body165.i.i:                                     ; preds = %bb.jx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %.pn54.i.i = phi { ptr, i32 } [ %.pn57.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.qf, %bb.jx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtBG_8DTLSConn21handle_queued_packets0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.ap) #27
          to label %.body171.i.i unwind label %bb.aw, !noalias !2281

bb.md:                                            ; preds = %.body171.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bd) #27
          to label %.body17.i unwind label %bb.aw, !noalias !2281

bb.me:                                            ; preds = %bb.mf, %.body205.i.i
  store i8 0, ptr %i.bu, align 2, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2280
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded8ReceiveruEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bt) #27
          to label %.body159.i.i unwind label %bb.aw, !noalias !2281

bb.mf:                                            ; preds = %.body205.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtBI_8DTLSConn15read_and_buffer00ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.q) #27
          to label %bb.me unwind label %bb.aw, !noalias !2281

bb.mg:                                            ; preds = %bb.mh, %.body159.i.i
  store i8 0, ptr %i.bs, align 1, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2280
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.mh:                                            ; preds = %.body159.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc7bounded6SenderuEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(8) %i.r) #27
          to label %bb.mg unwind label %bb.aw, !noalias !2281

bb.mi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #27
          to label %bb.au unwind label %bb.aw, !noalias !2281

bb.mj:                                            ; preds = %_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %bb.jy, %.thread.i.i.i.i, %bb.ck, %bb.ba, %bb.ad
  %.sink.i.ph.i = phi i8 [ 3, %bb.ad ], [ 5, %bb.ba ], [ 4, %bb.ck ], [ 6, %.thread.i.i.i.i ], [ 8, %bb.jy ], [ 7, %_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB11_8DTLSConn15read_and_buffer0s0_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ]
  store i8 %.sink.i.ph.i, ptr %i.ao, align 1, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11354.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9338.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5217.sroa.2.i.i)
  br label %bb.p

bb.mk:                                            ; preds = %.loopexit20.i, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i
  %.sroa.7346.2.i.i = phi i64 [ %.sroa.7346.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i ], [ undef, %.loopexit20.i ], [ %i.dy, %bb.av ]
  %.sroa.0344.2.i.i = phi i64 [ %.sroa.0344.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i ], [ -1, %.loopexit20.i ], [ 76, %bb.av ]
  %i.ub = phi <2 x i64> [ %i.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBG_3VechEEECs4KPtkQIfQGm_13libp2p_webrtc.exit144.i.i ], [ undef, %.loopexit20.i ], [ %i.ea, %bb.av ]
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11354.sroa.5.i.i, i64 32, i1 false), !noalias !2277
  store i8 1, ptr %i.ao, align 1, !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11354.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9338.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5217.sroa.2.i.i)
  %i.uc = load i8, ptr %.val, align 1, !noalias !2276, !noundef !9
  %i.ud = or i8 %i.uc, 2
  store i8 %i.ud, ptr %.val, align 1, !noalias !2276
  store i64 %.sroa.0344.2.i.i, ptr %0, align 8, !alias.scope !2275, !noalias !2277
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7346.2.i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !2275, !noalias !2277
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ub, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !2275, !noalias !2277
  br label %_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit

_RNCNCNCNvMNtCsbwH7Cv0ieDd_4dtls4connNtB8_8DTLSConn3new0s1_00Cs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.o, %bb.mk
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNCNvMNtNtCsaXMnjnuL9zn_10webrtc_ice5agent14agent_internalNtB13_13AgentInternal19connectivity_checks00s_0ENtNtB7_6future6Future4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
